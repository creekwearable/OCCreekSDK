//
//  CommandReplyViewController.swift
//  CreekSDKDemo
//
//  Created by bean on 2023/7/12.
//

import UIKit
import OCCreekSDK

class CommandReplyViewController: CreekBaseViewController, UITextViewDelegate {
    
    lazy var seedBtn:UIButton = {
        let btn = UIButton.init()
        btn.backgroundColor = .red
        btn.setTitle("Command", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.isUserInteractionEnabled = true
        btn.layer.cornerRadius = FBScale(20)
        btn.layer.masksToBounds = true
        btn.addTarget(self, action: #selector(commandClick), for: .touchUpInside)
        btn.isSelected = false
        return btn
    }()
    lazy var textView:UITextView = {
        let text = UITextView.init(frame: CGRect.zero)
        text.text = ""
        text.delegate = self
        text.textColor = .white
        text.backgroundColor = .gray
        text.isScrollEnabled = true
        text.isEditable = false
        return text
    }()
    
    var titleStr = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layOutUI()
    }
    
    func layOutUI(){
        view.addSubview(seedBtn)
        view.addSubview(textView)
        seedBtn.snp.makeConstraints {
            $0.top.equalTo(SAFEAREAINSETS.top + 44)
            $0.centerX.equalTo(view.snp.centerX)
            $0.width.equalTo(FBScale(300))
            $0.height.equalTo(FBScale(100))
        }
        textView.snp.makeConstraints {
            $0.top.equalTo(seedBtn.snp.bottom).offset(FBScale(20))
            $0.left.equalTo(FBScale(20))
            $0.right.equalTo(-FBScale(20))
            $0.height.greaterThanOrEqualTo(0)
            $0.bottom.equalTo(view.snp.bottom).offset(-FBScale(100))
        }
    }
    
    @objc func commandClick(){
        self.view.showRemark(msg: "loding....")
        switch titleStr{
        case "Get Device Information":
            
            CreekInterFace.instance().getFirmwareWithModel { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
                
//                CreekInterFace.instance().getSNFirmware(model: model) { sn in
//                    print("sn++++\(sn)")
//                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }


            break
        case "Get Device Bluetooth Status":
            CreekInterFace.instance().bluetoothStatus { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
        
       
            break
        case "connect Bluetooth Status":
            CreekInterFace.instance().firmwareReconnect(withReconnect: true) {
                
            } failure: { code, message in
                
            }
        
            break
            
        case "Sync Time":
            CreekInterFace.instance().syncTime {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
        case "Get Time":
            CreekInterFace.instance().getTimeWithModel { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
                
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
                
            }
       
            break
        case "Get User Information":
            CreekInterFace.instance().getUserInfo { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                    
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }


            break
        case "Set User Information":

            CreekInterFace.instance().getUserInfo { model in
                let data = model
                data.personalInfo.year = 2024
                data.personalInfo.month = 11
                data.goalSetting.workoutDay = 7
                data.goalSetting.steps = 100
                data.preferences.distUnit = 1
                data.goalSetting.notifyFlag = .close
                data.preferences.walkingRunningUnit = 2
                CreekInterFace.instance().setUserInfoWithModel(data) {
                    self.view.hideRemark()
                    self.textView.text = "success"
                } failure: { code, message in
                    self.view.hideRemark()
                    self.textView.text = message
                }

            } failure: { code, message in
                
            }
            break
        case "Get Alarm Clock":
            CreekInterFace.instance().getAlarmWithModel { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
        case "Set Alarm Clock":
            CreekInterFace.instance().getAlarmWithModel { model in
                let data = protocol_alarm_operate()
                let item = protocol_set_alarm_item()
                item.alarmId = 1;
                item.dispStatus = .dispOn
                item.type = .getUp
                item.hour = 22
                item.minute = 30
                item.switchFlag = false
                item.laterRemindRepeatTimes = 1
                item.vibrateOnOff = true
                item.name = "abc".data(using: .utf8)!
                item.repeatArray = GPBBoolArray.init(values: [true,true,true,true,true,false,false], count: 0)
                data.alarmItemArray.add(item)
                CreekInterFace.instance().setAlarmWithModel(data) {
                    self.view.hideRemark()
                    self.textView.text = "success"
                } failure: { code, message in
                    self.view.hideRemark()
                    self.textView.text = message
                }

            } failure: { code, message in
                
            }
            break
        case "Get Do Not Disturb":
            CreekInterFace.instance().getDisturbWithModel { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
            
        case "Set Do Not Disturb":
            let model = protocol_disturb_operate()
            model.disturbOnOff = true
            CreekInterFace.instance().setDisturbWithModel(model) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
        case "Get Screen Brightness":
            CreekInterFace.instance().getScreenWithModel { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
            
        case "Set Screen Brightness":
            let model =  protocol_screen_brightness_operate()
            model.nightAutoAdjust.startHour = 20
            CreekInterFace.instance().setScreenWithModel(model) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
            
        case "Get Health Monitoring":
            let data =  protocol_health_monitor_operate()
            data.healthType = health_type.heartRate
            CreekInterFace.instance().getMonitorWith(data) { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
        case "Health monitoring setting":
            
            let data =  protocol_health_monitor_operate()
            data.healthType = health_type.heartRate
            data.measurementInterval = 5
            CreekInterFace.instance().setMonitorWithModel(data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
            
        case "Sleep monitoring setting":
            let data =  protocol_sleep_monitor_operate()
            data.switchFlag = true
            CreekInterFace.instance().setSleepMonitorWithModel(data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
            
        case "Sleep monitoring acquisition":
            CreekInterFace.instance().getSleepMonitor { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
            
        case "World clock setting":
            let data =  protocol_world_time_operate()
            let item = protocol_world_time_item()
            item.cityName =  "shenzheng".data(using: .utf8)!
            item.offestMin = 120
            data.worldTimeItemArray.add(item)
            CreekInterFace.instance().setWorldTimeWithModel(data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
        case "World clock acquisition":
            CreekInterFace.instance().getWorldTime { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
        
        case "Message switch query":
            CreekInterFace.instance().getMessageOnOff { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }


            break
        case "Message switch setting":
            let data =  protocol_message_notify_switch()
            data.notifySwitch = true
            CreekInterFace.instance().setMessageOnOffWithModel(data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
        case "Set weather":
            let data =  protocol_weather_operate()
            data.switchFlag = true
            let item = protocol_weather_detail_data_item()
            item.hour = 14
            item.curTemp = 30
            item.curMaxTemp = 33
            item.curMinTemp = 26
            data.detailDataItemArray.add(item)
            CreekInterFace.instance().setWeatherWithModel(data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
            
        case "Incoming call configuration query":
            CreekInterFace.instance().getCallWithModel { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
        case "Incoming call configuration settings":
            let data =  protocol_call_switch()
            data.callSwitch = true
            data.callDelay = 5
            CreekInterFace.instance().setCallWithModel(data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
            
        case "Contacts query":
            CreekInterFace.instance().getContactsWithModel { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
        case "Contacts settings":
            let data =  protocol_frequent_contacts_operate()
            let item =  protocol_frequent_contacts_item()
            item.phoneNumber = "12345678912".data(using: .utf8)!
            item.contactName = "bean".data(using: .utf8)!
            data.contactsItemArray.add(item)
            CreekInterFace.instance().setContactsWithModel(data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
        case "Exercise self-identification query":
            CreekInterFace.instance().getSportIdentification { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
            
        case "Exercise self-identification settings":
            let data =  protocol_exercise_intelligent_recognition()
            data.walkTypeSwitch = true
            CreekInterFace.instance().setSportIdentificationWithModel(data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
        case "Exercise sub-item data query":
            CreekInterFace.instance().getSportSub { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
            
        case "Exercise sub-item data setting":
            let data =  protocol_exercise_sporting_param_sort()
            data.sportType = UInt32(sport_type.barbell.rawValue)
            CreekInterFace.instance().setSportSubWithModel(data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
            
        case "Inquiry about the arrangement order of device exercise":
            CreekInterFace.instance().getSportSort { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
        case "Setting the arrangement order of device exercise":
            let data =  protocol_exercise_sport_mode_sort()
            data.sportItemsArray.addValue(sport_type.badminton.rawValue)
            CreekInterFace.instance().setSportSortWithModel(data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
            
        case "Get the type of exercise supported by the device":
            CreekInterFace.instance().getSportType { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }

            break
            
        case "Setting the heart rate interval":
            let data =  protocol_exercise_heart_rate_zone()
            data.zone1 = 133
            data.zone2 = 144
            data.zone3 = 155
            data.zone4 = 166
            data.zone5 = 177
            data.zone6 = 190
            CreekInterFace.instance().setSportHeartRateWithModel(data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
            
        case "Delete the dial":
            let data =  protocol_watch_dial_plate_operate()
            data.dialNameArray = ["internal01.bin".data(using: .utf8)!]
            CreekInterFace.instance().delWatchDial(withModel: data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
        case "Set the dial":
            let data =  protocol_watch_dial_plate_operate()
            data.dialNameArray = ["1".data(using: .utf8)!]
            CreekInterFace.instance().setWatchDialWithModel(data) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
        case "Query the dial":
            CreekInterFace.instance().getWatchDial { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
        case "Set Language":
            CreekInterFace.instance().setLanguageWithType(.japanese) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
        case "Get Language":
            CreekInterFace.instance().getLanguageWithModel { model in
                self.view.hideRemark()
                let str =  model.description
                dispatch_main_sync_safe {
                    self.textView.text = str
                }
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
        case "System operation":
            CreekInterFace.instance().setSystemWithType(1) {
                self.view.hideRemark()
                self.textView.text = "success"
            } failure: { code, message in
                self.view.hideRemark()
                self.textView.text = message
            }
            break
        case "Query activity data":
            CreekInterFace.instance().getActivityNewTimeData(withStartTime: "2024-02-27", endTime: "2024-02-27") { model in
                self.view.hideRemark()
                self.textView.text = "success"
                let json = ActivityModel.initWithModelArray(model)
                if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    dispatch_main_sync_safe {
                        self.textView.text = jsonString
                    }
                }
            }
        
            break
        case "Query sleep data":
            CreekInterFace.instance().getSleepNewTimeData(withStartTime: "2024-02-28", endTime: "2024-02-28") { model in
                self.view.hideRemark()
                self.textView.text = "success"
                let json = SleepModel.initWithModelArray(model)
                if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    dispatch_main_sync_safe {
                        self.textView.text = jsonString
                    }
                }
            }
            break
        case "Query heart rate data":
            CreekInterFace.instance().getHeartRateNewTimeData(withStartTime: "2024-02-27", endTime: "2024-02-27") { model in
                self.view.hideRemark()
                self.textView.text = "success"
                let json = HeartRateModel.initWithModelArray(model)
                if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    dispatch_main_sync_safe {
                        self.textView.text = jsonString
                    }
                }
            }
            break
        case "Query pressure data":
            CreekInterFace.instance().getStressNewTimeData(withStartTime: "2024-02-27", endTime: "2024-02-27") { model in
                self.view.hideRemark()
                self.textView.text = "success"
                let json = StressModel.initWithModelArray(model)
                if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    dispatch_main_sync_safe {
                        self.textView.text = jsonString
                    }
                }
            }

            break
        case "Query noise data":
            CreekInterFace.instance().getNoiseNewTimeData(withStartTime: "2024-02-27", endTime: "2024-02-27") { model in
                self.view.hideRemark()
                self.textView.text = "success"
                let json = NoiseModel.initWithModelArray(model)
                if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    dispatch_main_sync_safe {
                        self.textView.text = jsonString
                    }
                }
            }
            break
        case "Query blood oxygen data":
            CreekInterFace.instance().getSpoNewTimeData(withStartTime: "2024-02-27", endTime: "2024-02-27") { model in
                self.view.hideRemark()
                self.textView.text = "success"
                let json = OxygenModel.initWithModelArray(model)
                if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    dispatch_main_sync_safe {
                        self.textView.text = jsonString
                    }
                }
            }
            break
        case "Exercise record list":
//            CreekInterFace.instance().getSportRecord(withType: nil) { model in
//                self.view.hideRemark()
//                self.textView.text = "success"
//                let json = SportModel.initWithModelArray(model)
//                if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
//                   let jsonString = String(data: jsonData, encoding: .utf8) {
//                    dispatch_main_sync_safe {
//                        self.textView.text = jsonString
//                    }
//                }
//            }
            
            CreekInterFace.instance().getSportRecord(withType: NSNumber(value: SportType.ORUN.rawValue)) { model in
                self.view.hideRemark()
                self.textView.text = "success"
                let json = SportModel.initWithModelArray(model)
                if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    dispatch_main_sync_safe {
                        self.textView.text = jsonString
                    }
                }
            }
 
            break
            
        case "Query exercise details":
            
            CreekInterFace.instance().getSportDetails(withId: 1) { model in
                self.view.hideRemark()
                self.textView.text = "success"
                let json = model.toDictionary()
                if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    dispatch_main_sync_safe {
                        self.textView.text = jsonString
                    }
                }
            }
            break
//            
        case "Range query exercise record":
            
            CreekInterFace.instance().getSportTimeData(withStartTime: "2024-02-27", endTime: "2024-02-27", type: nil) { model in
                self.view.hideRemark()
                self.textView.text = "success"
                let json = SportModel.initWithModelArray(model)
                if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    dispatch_main_sync_safe {
                        self.textView.text = jsonString
                    }
                }
            }
            
            break
            
        case "Delete exercise record":
            CreekInterFace.instance().delSportRecord(withId: 1) {
                self.view.hideRemark()
                self.textView.text = "success"
            }
            break
            
        case "Get bound device":
            CreekInterFace.instance().getBindDevice { model in
                self.view.hideRemark()
                var json  = [];
                model.forEach { model in
                    json.append(model.jsonDictionary())
                }
                if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted),
                   let jsonString = String(data: jsonData, encoding: .utf8) {
                    dispatch_main_sync_safe {
                        self.textView.text = jsonString
                    }
                }
            }
            break
        case "setDBUserID":
            CreekInterFace.instance().setDBUserWithUserID(1000)
            self.view.hideRemark()
            
            break
        case "rawQueryDB":
            CreekInterFace.instance().rawQueryDB(withSQL: "select * from SPORT_DATA_HEAD") { jsonString in
                self.view.hideRemark()
                self.textView.text = jsonString
            }
           
            break
        case "Off-line ephemeris":
            if let path =  Bundle.main.path(forResource: "offlineEphemeris", ofType: "agnss"){
                do {
                    let fileData:Data = try Data(contentsOf: URL(fileURLWithPath: path))
                    let ephemerisModel = EphemerisModel.init()
                    ephemerisModel.startUtcTime = 1233
                    ephemerisModel.socName = ""
                    ephemerisModel.endUtcTime = 1233
                    ephemerisModel.isVaild = true
                    ephemerisModel.latitude = 22621883
                    ephemerisModel.latitudeDire = "N"
                    ephemerisModel.longitude = 114022530
                    ephemerisModel.longitudeDire = "E"
                    ephemerisModel.altitude = 10
                    ephemerisModel.fileSize = fileData.count
                    ephemerisModel.filePath = path
                    CreekInterFace.instance().encodeOfflineFile(with: ephemerisModel) { model in
                        CreekInterFace.instance().backstageUpload(withFileName: "offlineEphemeris.agnss", fileData: model) { progress in
                            print("offlineEphemeris progress\(progress)")
                        } uploadSuccess: {
                            self.view.hideRemark()
                            print("offlineEphemeris Success")
                        } uploadFailure: { code, message in
                            self.view.hideRemark()
                            print("offlineEphemeris Failure")
                        }

                    } failure: { code, message in
                        self.view.hideRemark()
                    }

                } catch {
                    print("\(error)")
                }


            }else{
                self.view.hideRemark()
                print("file does not exist")
            }
            break
        case "ephemeris":
            if let path =  Bundle.main.path(forResource: "ephemeris", ofType: "gnss"){
                do {
                    let fileData:Data = try Data(contentsOf: URL(fileURLWithPath: path))
                    let ephemerisModel = EphemerisModel.init()
                    ephemerisModel.startUtcTime = 1233
                    ephemerisModel.socName = "1"
                    ephemerisModel.endUtcTime = 1233
                    ephemerisModel.isVaild = true
                    ephemerisModel.latitude = 22621928
                    ephemerisModel.latitudeDire = "N"
                    ephemerisModel.longitude = 114023064
                    ephemerisModel.longitudeDire = "E"
                    ephemerisModel.altitude = 137
                    ephemerisModel.fileSize = fileData.count
                    ephemerisModel.filePath = path
                    CreekInterFace.instance().encodeOnlineFile(with: ephemerisModel) { model in
                        CreekInterFace.instance().backstageUpload(withFileName: "ephemeris.gnss", fileData: model) { progress in
                            print("realEphemeris progress\(progress)")
                        } uploadSuccess: {
                            self.view.hideRemark()
                            print("realEphemeris Success")
                        } uploadFailure: { code, message in
                            self.view.hideRemark()
                            print("realEphemeris Failure")
                        }
                    } failure: { code, message in
                        self.view.hideRemark()
                    }

                } catch {
                    print("\(error)")
                }
            }else{
                self.view.hideRemark()
                print("file does not exist")
            }
            break
            
        case "phone book":
            let phone =  PhoneModel()
            phone.contactName = "bean"
            phone.phoneNumber = "13420902893"
            let phone2 =  PhoneModel.init()
            phone2.contactName = "bean1"
            phone2.phoneNumber = "13420902898"
            CreekInterFace.instance().encodePhoneFile(withPhoneModel: [phone,phone2]) { model in
                CreekInterFace.instance().backstageUpload(withFileName: "creek.phone", fileData: model) { progress in
                    print("encodePhoneFile progress\(progress)")
                } uploadSuccess: {
                    self.view.hideRemark()
                    print("encodePhoneFile Success")
                } uploadFailure: { code, message in
                    self.view.hideRemark()
                    print("encodePhoneFile Failure")
                }
            } failure: { code, message in
                self.view.hideRemark()
            }
            
            break
        default:
            break
            
        }
    }
}

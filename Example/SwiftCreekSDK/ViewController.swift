//
//  ViewController.swift
//  CreekSDKDemo
//
//  Created by bean on 2023/6/27.
//

import UIKit
import OCCreekSDK
import Contacts

class ViewController: CreekBaseViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCmd.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? HomeCell
        cell?.selectionStyle = .none
        cell?.titleLab.text = listCmd[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = CommandReplyViewController()
        vc.title = listCmd[indexPath.row]
        vc.titleStr = listCmd[indexPath.row]
        switch listCmd[indexPath.row]{
        case "Sync":
            
            CreekInterFace.instance().sync { progress in
                print("sync \(progress)")
            } syncSuccess: {
                print("syncSuccess")
            } syncFailure: {
                print("syncFailure")
            }
            //            CreekInterFace.instance().getBindDevice { models in
            //                models.forEach { model in
            //                    if model.isLastBind == true{
            //                        CreekInterFace.instance().bindingDevice(with: .bindRemove, idString: model.device.identifier, code: nil) {
            //                            print("Success")
            //                        } failure: {
            //                            print("Failure")
            //                        }
            //                    }
            //                }
            //            }
            
            
            break
        case "Upload":
            if let path =  Bundle.main.path(forResource: "lw10_v1.0.42_24020401", ofType: "ota"){
                do {
                    let fileData:Data = try Data(contentsOf: URL(fileURLWithPath: path))
                    CreekInterFace.instance().upload(withFileName: "res.ota", fileData: fileData) { progress in
                        print(progress)
                    } uploadSuccess: {
                        print("uploadSuccess")
                    } uploadFailure: { code, message in
                        print(message)
                    }
                    
                } catch {
                    print("\(error)")
                }
                
                
            }else{
                print("file does not exist")
            }
            
            
            break
        case "Upload(zip)":
            
            CreekInterFace.instance().getOTAUpgradeVersion { model in
                print("OTA version：\(model)")
            }
            if let path =  Bundle.main.path(forResource: "titan", ofType: "zip"){
                
                do {
                    let fileData:Data = try Data(contentsOf: URL(fileURLWithPath: path))
                    
                    
                    CreekInterFace.instance().getOTAUpgradeState(withFileName: "titan.zip", fileData: fileData) { model in
                        print("totalResource:\(model.totalResource.intValue)  step:\(model.step.intValue)")
                        CreekInterFace.instance().upload(withFileName: "titan.zip", fileData: fileData) { progress in
                            print(progress)
                        } uploadSuccess: {
                            print("uploadSuccess")
                        } uploadFailure: { code, message in
                            print(message)
                        }
                        
                    } uploadFailure: { code, msg in
                        print(msg)
                    }
                    
                    
                    
                    
                } catch {
                    print("\(error)")
                }
                
                
            }else{
                print("file does not exist")
            }
            
            
            break
        case "Binding":
            CreekInterFace.instance().bindingDevice(with: .binNormal, idString: nil, code: nil) {
                print("Success")
            } failure: {
                print("Failure")
            }
            
            //
            //            if(textField.text == "123"){
            //                CreekInterFace.instance().bindingDevice(with: .bindPairingCode, idString: nil, code: nil) {
            //
            //                } failure: {
            //
            //                }
            //
            //            }else{
            //                CreekInterFace.instance().bindingDevice(with: .bindPairingCode, idString: nil, code: textField.text) {
            //                    print("Success")
            //                } failure: {
            //                    print("Failure")
            //                }
            //            }
            break
            
        case "getLogPath":
            self.view.showRemark(msg: "")
            CreekInterFace.instance().getLogPath { path in
                self.view.hideRemark()
                let activityViewController = UIActivityViewController(activityItems: [NSURL(fileURLWithPath: path)], applicationActivities: nil)
                self.present(activityViewController, animated: true, completion: nil)
            }
            
            break
        case "getFirmwareLogPath":
            self.view.showRemark(msg: "")
            CreekInterFace.instance().getFirmwareLogPath { path in
                self.view.hideRemark()
                let activityViewController = UIActivityViewController(activityItems: [NSURL(fileURLWithPath: path)], applicationActivities: nil)
                self.present(activityViewController, animated: true, completion: nil)
            }
            break
            
        case "requst contacts permission":
            
            //           CreekInterFace.instance().checkPhoneBookPermissions { model in
            //              if !model{
            //                  CreekInterFace.instance().requestPhoneBookPermissions { model in
            //                     if model {
            //                        print("Permissions  Success")
            //                     }else{
            //                        print("Permissions  Failure")
            //                     }
            //                  }
            //              }
            //           }
            
            CreekInterFace.instance().requestPhoneBookPermissions { model in
                if model {
                    print("Permissions  Success")
                }else{
                    print("Permissions  Failure")
                }
            }
            
            
            break
            
        default:
            self.navigationController?.pushViewController(vc, animated: true)
            break
        }
    }
    
    func checkContactPermission() {
        let contactStore = CNContactStore()
        switch CNContactStore.authorizationStatus(for: .contacts) {
        case .authorized:
            // 已经授权，你可以获取和使用联系人数据
            break
            
        case .denied, .notDetermined:
            // 用户还未决定或者已经拒绝，你需要请求权限
            contactStore.requestAccess(for: .contacts) { granted, error in
                if granted {
                    // 用户授权成功，你可以获取和使用联系人数据
                } else {
                    // 用户拒绝授权，你不能获取和使用联系人数据
                }
            }
        default:
            // 其他情况，例如权限被系统限制
            break
        }
    }
    
    lazy var textField:UITextField = {
        let tab = UITextField(frame: CGRect.zero)
        tab.backgroundColor = .red
        tab.text = "123"
        return tab
    }()
    
    lazy var deviceView:DeviceView = {
        let aview = DeviceView(frame: CGRect.zero)
        return aview
    }()
    
    
    
    
    
    lazy var tableView:UITableView = {
        let tab = UITableView.init(frame: CGRect.zero, style: UITableView.Style.plain)
        tab.delegate = self
        tab.dataSource = self
        tab.estimatedRowHeight = 44
        tab.estimatedSectionHeaderHeight = 0
        tab.estimatedSectionFooterHeight = 0
        tab.showsVerticalScrollIndicator = false
        tab.showsHorizontalScrollIndicator = false
        tab.backgroundColor = .darkGray
        tab.separatorStyle = UITableViewCell.SeparatorStyle.none
        tab.separatorColor = UIColor.clear
        tab.register(HomeCell.self, forCellReuseIdentifier: "cell")
        return tab
    }()
    
    var listCmd:[String] = ["requst contacts permission","Binding", "Get Device Information", "Sync", "Upload","Upload(zip)", "Get Device Bluetooth Status","connect Bluetooth Status", "Get Language", "Set Language", "Sync Time", "Get Time", "Get User Information", "Set User Information", "Get Alarm Clock", "Set Alarm Clock", "Get Do Not Disturb", "Set Do Not Disturb", "Get Screen Brightness", "Set Screen Brightness", "Get Health Monitoring", "Health monitoring setting", "Sleep monitoring acquisition", "Sleep monitoring setting","Get card", "Set card","World clock acquisition", "World clock setting", "Message switch query", "Message switch setting", "Set weather", "Incoming call configuration query","Incoming call configuration settings", "Contacts query", "Contacts settings", "Exercise self-identification query", "Exercise self-identification settings", "Exercise sub-item data query", "Exercise sub-item data setting","Inquiry about the arrangement order of device exercise","Setting the arrangement order of device exercise","Get the type of exercise supported by the device","Setting the heart rate interval","Delete the dial","Query the dial","Set the dial","System operation","Query activity data", "Query sleep data", "Query heart rate data", "Query pressure data", "Query noise data", "Query blood oxygen data", "Exercise record list", "Query exercise details" ,"Range query exercise record","Delete exercise record","Get bound device","setDBUserID","rawQueryDB","Off-line ephemeris","ephemeris","phone book","getLogPath","getFirmwareLogPath","getStand","setStand","getWater","setWater","getAppList","setAppList","getFocus","setFocus","functionTable"]
    
    var deviceModel:ScanDeviceModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "operating platform"
        setRight()
        view.addSubview(deviceView)
        view.addSubview(textField)
        view.addSubview(tableView)
        deviceView.snp.makeConstraints{
            $0.top.equalTo(SAFEAREAINSETS.top + 44)
            $0.height.equalTo(FBScale(200))
            $0.left.right.equalTo(self.view)
        }
        textField.snp.makeConstraints{
            $0.top.equalTo(deviceView.snp.bottom).offset(20)
            $0.height.equalTo(40)
            $0.left.right.equalTo(self.view)
        }
        tableView.snp.makeConstraints {
            //            $0.top.equalTo(SAFEAREAINSETS.top)
            $0.top.equalTo(textField.snp.bottom)
            $0.left.right.bottom.equalTo(self.view)
            
            
        }
        CreekInterFace.instance().listenDeviceState { status, deviceName in
            if status == .connect{
                self.getBindDevice()
            }else{
                self.deviceView.setUI(device: self.deviceModel, state: CreekInterFace.instance().connectStatus)
                
            }
            print("\(status) \(deviceName)")
        }
        
        CreekInterFace.instance().phoneBookInit()
        
        CreekInterFace.instance().bluetoothStateListen { state in
            switch(state){
            case .unknown:
                print("State unknown")
                break
            case .unauthorized:
                print("The application is not authorized to use the Bluetooth Low Energy role")
                break
            case .on:
                print("Bluetooth is currently powered on and available to use")
                break
            case .off:
                print("Bluetooth is currently powered off")
                break
            default:
                print("State unknown")
            }
        }
        
        let keyId = "******"
        let publicKey = "**********"
        CreekInterFace.instance().ephemerisInit(withKeyId: keyId, publicKey: publicKey) {
            let model = EphemerisGPSModel()
            model.altitude = 10
            model.latitude = Int(22.312653 * 1000000)
            model.longitude = Int(114.027986 * 1000000)
            model.isVaild = true
            return model
        }
        
        CreekInterFace.instance().noticeUpdateListen { model in
            print("noticeUpdateListen \(model.toDictionary())")
            
        }
        deviceView.connect = {
            CreekInterFace.instance().inTransitionDevice(withId: self.deviceModel!.device.identifier) { isBool in
                
            }
        }
        deviceView.disconnect = {
            CreekInterFace.instance().autoConnect(0)
            CreekInterFace.instance().disconnect {
                
            } failure: { code, message in
                
            }
            
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getBindDevice()
    }
    
    func getBindDevice(){
        CreekInterFace.instance().getBindDevice { model in
            model.forEach { devide in
                if devide.isLastBind{
                    self.deviceModel = devide
                    self.deviceView.setUI(device: self.deviceModel!, state: CreekInterFace.instance().connectStatus)
                }
            }
        }
    }
    
    
    func setRight(){
        let but = UIButton(type: .custom)
        but.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        but.setTitleColor(.black, for: .normal)
        but.setTitle("Bluetooth", for: .normal)
        but.addTarget(self, action: #selector(blueClick), for: .touchUpInside)
        let itemmeunbut = UIBarButtonItem.init(customView: but)
        self.navigationItem.rightBarButtonItem = itemmeunbut
    }
    
    @objc func blueClick()  {
        let vc = ScanDeviceViewController()
        UIViewController.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

class HomeCell:UITableViewCell{
    
    lazy var titleLab:UILabel = {
        let lab = UILabel.init()
        lab.text = "sssss"
        lab.font = UIFont(name: "PingFangSC-Regular", size: FBScale(42))!
        lab.textColor = .white
        return lab
    }()
    lazy var lineLab:UILabel = {
        let lab = UILabel.init()
        lab.backgroundColor = .white
        return lab
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        layoutUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layoutUI(){
        contentView.addSubview(titleLab)
        contentView.addSubview(lineLab)
        titleLab.snp.makeConstraints {
            $0.top.equalTo(contentView.snp.top).offset(20)
            $0.height.width.greaterThanOrEqualTo(0)
            $0.center.equalTo(contentView)
            $0.bottom.equalTo(contentView.snp.bottom).offset(-20)
        }
        lineLab.snp.makeConstraints {
            $0.right.equalTo(contentView.snp.right).offset(-FBScale(20))
            $0.left.equalTo(contentView.snp.left).offset(FBScale(20))
            $0.height.equalTo(1)
            $0.bottom.equalTo(self.contentView.snp.bottom).offset(-1)
        }
        
    }
}

class DeviceView:UIView{
    
    //connect Button
    lazy var connectBtn:UIButton = {
        let btn = UIButton.init()
        btn.backgroundColor = .black
        btn.setTitle("connect", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.isUserInteractionEnabled = true
        btn.layer.cornerRadius = FBScale(20)
        btn.layer.masksToBounds = true
        btn.addTarget(self, action: #selector(connectDevice), for: .touchUpInside)
        btn.isSelected = false
        return btn
    }()
    
    lazy var titleLab:UILabel = {
        let lab = UILabel.init()
        lab.text = "cw"
        lab.font = UIFont(name: "PingFangSC-Regular", size: FBScale(42))!
        lab.textColor = .white
        return lab
    }()
    
    lazy var titleLab2:UILabel = {
        let lab = UILabel.init()
        lab.text = "no bind device"
        lab.font = UIFont(name: "PingFangSC-Regular", size: FBScale(42))!
        lab.textColor = .white
        return lab
    }()
    
    
    
    var connect:(() -> ())?
    var disconnect:(() -> ())?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
        layoutUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func layoutUI() {
        self.addSubview(connectBtn)
        self.addSubview(titleLab)
        self.addSubview(titleLab2)
        titleLab2.isHidden = true;
        titleLab.snp.makeConstraints {
            $0.top.equalTo(self).offset(FBScale(20))
            $0.left.equalTo(FBScale(40))
            $0.right.equalTo(connectBtn.snp.left).offset(-FBScale(40))
        }
        connectBtn.snp.makeConstraints {
            $0.top.equalTo(self.snp.top).offset(FBScale(20))
            $0.right.equalTo(self.snp.right).offset(-FBScale(40))
            $0.width.equalTo(FBScale(300))
            $0.height.equalTo(FBScale(100))
        }
        
        titleLab2.snp.makeConstraints {
            $0.center.equalTo(self.snp.center)
            $0.height.equalTo(FBScale(100))
            $0.width.equalTo(FBScale(400))
            
        }
    }
    func setUI(device:ScanDeviceModel?,state:ConnectionStatus){
        if let d = device{
            titleLab2.isHidden = true
            titleLab.isHidden = false
            connectBtn.isHidden = false
            titleLab.text = d.device.name
            if(state == .connect){
                connectBtn.setTitle("disconnect", for: .normal)
            }else if(state == .unconnected){
                connectBtn.setTitle("connect", for: .normal)
            }
        }else{
            titleLab2.isHidden = false
            titleLab.isHidden = true
            connectBtn.isHidden = true
        }
        
    }
    //MARK:connect to Device
    @objc func connectDevice() {
        if connectBtn.titleLabel?.text == "disconnect"{
            if let disconnect = disconnect {
                disconnect()
            }
        }else{
            if let connect = connect {
                connect()
            }
        }
    }
    
}


//
//  CreekSDK.h
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/21.
//  Copyright © 2024 bean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flutter/Flutter.h"
#import "ScanDeviceModel.h"
#import "EnumValue.h"
#import "Disturb.pbobjc.h"
#import "Enums.pbobjc.h"
#import "Time.pbobjc.h"
#import "Mtu.pbobjc.h"
#import "Voice.pbobjc.h"
#import "Healthhead.pbobjc.h"
#import "Log.pbobjc.h"
#import "SleepMonitor.pbobjc.h"
#import "Contacts.pbobjc.h"
#import "Screen.pbobjc.h"
#import "Contactssos.pbobjc.h"
#import "WaterMonitor.pbobjc.h"
#import "Sport.pbobjc.h"
#import "Music.pbobjc.h"
#import "Wordtime.pbobjc.h"
#import "HotKey.pbobjc.h"
#import "Health.pbobjc.h"
#import "Message.pbobjc.h"
#import "Call.pbobjc.h"
#import "Schedule.pbobjc.h"
#import "Event.pbobjc.h"
#import "Monitor.pbobjc.h"
#import "Table.pbobjc.h"
#import "Language.pbobjc.h"
#import "Gesture.pbobjc.h"
#import "Focus.pbobjc.h"
#import "Menstrual.pbobjc.h"
#import "Userinfo.pbobjc.h"
#import "Binding.pbobjc.h"
#import "Findphone.pbobjc.h"
#import "Standing.pbobjc.h"
#import "Weather.pbobjc.h"
#import "Watchdial.pbobjc.h"
#import "Sensor.pbobjc.h"
#import "Deviceinfo.pbobjc.h"
#import "Update.pbobjc.h"
#import "System.pbobjc.h"
#import "Card.pbobjc.h"
#import "Alarm.pbobjc.h"
#import "NoticeUpdateModel.h"
#import "EventReportModel.h"
#import "ActivityModel.h"
#import "HeartRateModel.h"
#import "StressModel.h"
#import "NoiseModel.h"
#import "OxygenModel.h"
#import "SleepModel.h"
#import "SportModel.h"
#import "HrvModel.h"
#import "EphemerisModel.h"
#import "PhoneModel.h"
#import "DialParseModel.h"
#import "AppList.pbobjc.h"
#import "EventTracking.pbobjc.h"




NS_ASSUME_NONNULL_BEGIN

typedef void(^DevicesBack)(NSArray<ScanDeviceModel *>* scanDevices);
typedef void(^DeviceBack)(ScanDeviceModel* scanDevice);
typedef void(^EndScanBase)(void);
typedef void(^ConnectBack)(BOOL isBool);
typedef void(^InTransitionDeviceBack)(BOOL isBool);
typedef void(^ProgressBase)(NSInteger progress);
typedef void(^SuccessBase)(void);
typedef void(^FailureBase)(void);
typedef void(^FailureArgument)(NSInteger code,NSString* message);
typedef void(^ListenDeviceState)(ConnectionStatus status,NSString* deviceName);
typedef void(^NoticeUpdateListen)(NoticeUpdateModel* noticeUpdateModel);
typedef void(^EventReportListen)(EventReportModel* eventReportModel);
typedef void(^ExceptionListen)(NSString* exception);
typedef void(^SNFirmwareBase)(NSString* snf);
typedef void(^RawQueryDBClosure)(NSString* DBdata);
typedef void(^EphemerisData)(NSData* ephemerisData);
typedef void(^LogPathClosure)(NSString* path);

typedef void (^FirmwareBase)(protocol_device_info * model);
typedef void (^ATimeBase)(protocol_device_time_inquire_reply* model);
typedef void (^LanguageBase)(protocol_language_inquire_reply* model);
typedef void (^UserBase)(protocol_user_info_operate* model);
typedef void (^AlarmBase)(protocol_alarm_inquire_reply* model);
typedef void (^DisturbBase)(protocol_disturb_inquire_reply* model);
typedef void (^ScreenBase)(protocol_screen_brightness_inquire_reply* model);
typedef void (^MonitorBase)(protocol_health_monitor_inquire_reply* model);
typedef void (^SleepMonitorBase)(protocol_sleep_monitor_inquire_reply* model);
typedef void (^WaterBase)(protocol_drink_water_inquire_reply* model);
typedef void (^FindPhoneWatchBase)(protocol_find_phone_watch_inquire_reply* model);
typedef void (^VoiceBase)(protocol_voice_assistant_inquire_reply* model);
typedef void (^WorldTimeBase)(protocol_world_time_inquire_reply* model);
typedef void (^StandingBase)(protocol_standing_remind_inquire_reply* model);
typedef void (^MessageTypeBase)(protocol_message_notify_func_support_reply* model);
typedef void (^MessageAppBase)(protocol_message_notify_data_inquire_reply* model);
typedef void (^MessageOnOffBase)(protocol_message_notify_switch_inquire_reply* model);
typedef void (^CallBase)(protocol_call_switch_inquire_reply* model);
typedef void (^ContactsBase)(protocol_frequent_contacts_inquire_reply* model);
typedef void (^SosContactsBase)(protocol_emergency_contacts_inquire_reply* model);
typedef void (^CardBase)(protocol_quick_card_inquire_reply* model);
typedef void (^SportTypeBase)(protocol_exercise_func_support_reply* model);
typedef void (^SportSortBase)(protocol_exercise_sport_mode_sort_inquire_reply* model);
typedef void (^SportSubBase)(protocol_exercise_sporting_param_sort_inquire_reply* model);
typedef void (^SportIdentificationBase)(protocol_exercise_intelligent_recognition_inquire_reply* model);
typedef void (^WatchDialBase)(protocol_watch_dial_plate_inquire_reply* model);
typedef void (^HotKeyBase)(protocol_button_crown_inquire_reply* model);
typedef void (^MenstrualBase)(protocol_menstruation_inquire_reply* model);
typedef void (^FocusBase)(protocol_focus_mode_inquire_reply* model);
typedef void (^TableBase)(protocol_function_table* model);
typedef void (^BluetoothStatusBase)(protocol_connect_status_inquire_reply* model);
typedef void (^AppListBase)(protocol_app_list_inquire_reply *model);
typedef void (^EventTrackingBase)(protocol_event_tracking_inquire_reply *model);
typedef void(^ActivitysClosure)(NSArray<ActivityModel *>* activitys);
typedef void(^HeartRatesClosure)(NSArray<HeartRateModel *>* heartRates);
typedef void(^StresssClosure)(NSArray<StressModel *>* stresss);
typedef void(^NoisesClosure)(NSArray<NoiseModel *>* noises);
typedef void(^OxygensClosure)(NSArray<OxygenModel *>* oxygens);
typedef void(^SleepsClosure)(NSArray<SleepModel *>* sleeps);
typedef void(^SportsClosure)(NSArray<SportModel *>* sports);
typedef void(^HrvsClosure)(NSArray<HrvModel *>* hrvs);
typedef void(^SportClosure)(SportModel* sportModel);
typedef void (^ParseDialBase)(DialParseModel *model);
typedef void (^PreviewImageBase)(NSData *model);
typedef void (^DialDataBase)(NSData *model);





@interface CreekInterFace : NSObject

@property (nonatomic) ConnectionStatus connectStatus;


+(CreekInterFace *) instance;



///MARK : initialization SDK
-(void) setupInit;

///MARK : Authorization code verification
/// - Parameter :
///     -type : 1 verify  0 none
/// - Returns:
///
-(void)authorization:(NSInteger)type;

///MARK : automatic connection
/// - Parameter :
///     -type : 1 Supported  0 cancel
/// - Returns:
-(void)autoConnect:(NSInteger)type;

///MARK : Bluetooth scan
/// - Parameter :
///      - timeOut :  automatically stops the scan after a specified
///      - devices :  Returned device information  [ScanDeviceModel]
///      - endScan : A callback at the end of the scan
/// - Returns:
- (void)scanWithTimeOut:(NSInteger)timeOut devices:(DevicesBack)devices endScan:(EndScanBase)endScan;

///MARK : connect
/// - Parameter :
///      - id :  DeviceModel.id
///      - connect :   call back connect state   true false
/// - Returns:
-(void)connect:(NSString*)deviceID connectBack:(ConnectBack)connectBack;



-(void)listenDeviceState:(ListenDeviceState)listenDeviceState;

///MARK : connect
/// - Parameter :
///      - id :  DeviceModel.id
///      - connect :   call back connect state   true false
/// - Returns:
- (void)scanConnectWithId:(NSString *)deviceID
                   device:(DeviceBack)deviceBlock
                  failure:(FailureArgument)failureBlock;


///MARK : connect
/// - Parameter :
///      - id :  DeviceModel.id
///      - connect :   call back connect state   true false
/// - Returns:
- (void)inTransitionDeviceWithId:(NSString *)deviceID
              inTransitionDevice:(InTransitionDeviceBack)inTransitionDeviceBlock;

///MARK : disconnect
- (void)disconnectWithSuccess:(SuccessBase)successBlock
                      failure:(FailureArgument)failureBlock;


///MARK : Stop scanning
- (void)stopScan;


///MARK :Get Firmware Information
/// - Parameter :
///      - model: call back protocol_device_info
///      - failure: (code: error code message: content)
/// - Returns:
- (void)getFirmwareWithModel:(FirmwareBase)modelBlock
                     failure:(FailureArgument)failureBlock;


///MARK :Sync health data
/// - Parameter :
///      - syncProgress: sync progress
/// - Returns:
- (void)syncWithProgress:(ProgressBase)progressBlock
             syncSuccess:(SuccessBase)successBlock
             syncFailure:(FailureBase)failureBlock;


///MARK :upload
/// - Parameter :
///      - fileName：The filename needs to include the suffix
///    .ota Airlift firmware file
///    .log Firmware log file
///    .rawdata sensor raw data file
///    .phone phone book
///    .pcm mic voice file
///    .bin watch face file
///    .agnss offline ephemeris file
///    .gnss online ephemeris file
///      - fileData :  File Data
///      - uploadProgress：upload progress
///
/// - Returns
- (void)uploadWithFileName:(NSString *)fileName
                  fileData:(NSData *)fileData
            uploadProgress:(ProgressBase)uploadProgress
             uploadSuccess:(SuccessBase)uploadSuccess
             uploadFailure:(FailureArgument)uploadFailure;


///MARK :backstageUpload
/// - Parameter :
///      - fileName：The filename needs to include the suffix
///    .ota Airlift firmware file
///    .log Firmware log file
///    .rawdata sensor raw data file
///    .phone phone book
///    .pcm mic voice file
///    .bin watch face file
///    .agnss offline ephemeris file
///    .gnss online ephemeris file
///      - fileData :  File Data
///      - uploadProgress：upload progress
///
/// - Returns:
- (void)backstageUploadWithFileName:(NSString *)fileName
                           fileData:(NSData *)fileData
                     uploadProgress:(ProgressBase)uploadProgress
                      uploadSuccess:(SuccessBase)uploadSuccess
                      uploadFailure:(FailureArgument)uploadFailure;



///MARK :Device bluetooth status
/// - Parameter :
///      - model: call back protocol_connect_status_inquire_reply
/// - Returns:
- (void)bluetoothStatusWithModel:(BluetoothStatusBase)modelBlock
                         failure:(FailureArgument)failureBlock ;

///MARK :retrigger bt connect
/// - Parameter :
///      - reconnect ： true false
/// - Returns:
- (void)firmwareReconnectWithReconnect:(BOOL)reconnect
                               success:(SuccessBase)successBlock
                               failure:(FailureArgument)failureBlock;


///MARK :Synchronize phone time to firmware
- (void)syncTimeWithSuccess:(SuccessBase)successBlock
                    failure:(FailureArgument)failureBlock ;

///MARK :Get firmware time
/// - Parameter :
///      - model：call back protocol_device_time_inquire_reply
/// - Returns:
- (void)getTimeWithModel:(ATimeBase)modelBlock
                 failure:(FailureArgument)failureBlock ;

///MARK :get Language
/// - Parameter :
///      - model：call back protocol_language_inquire_reply
/// - Returns:
- (void)getLanguageWithModel:(LanguageBase)modelBlock
                     failure:(FailureArgument)failureBlock ;

///MARK : set Language
/// - Parameter :
///      - type：language
/// - Returns:
- (void)setLanguageWithType:(language)type
                    success:(SuccessBase)successBlock
                    failure:(FailureArgument)failureBlock ;

///MARK : bind device
/// - Parameter :
///      - bindType：
///                 BindType.bindeNcrypted     address-> nil  code-> nil
///                 BindType.binNormal      address-> nil  code-> nil
///                 BindType.bindRemove   address-> DeviceModel.id  code-> nil
///                 BindType.bindPairingCode   address-> nil  code-> nil    get pairing code
///                 BindType.bindPairingCode   address-> nil  code-> 1234    Pair code verification
///       -id: DeviceModel.id
///       -code:pairing code
/// - Returns:LanguageModel

- (void)bindingDeviceWithBindType:(BindType)bindType
                         idString:(NSString * _Nullable)idString
                             code:(NSString * _Nullable)code
                          success:(SuccessBase)successBlock
                          failure:(FailureBase)failureBlock;

///MARK :Get firmware user information and preferences
/// - Parameter :
///      - model：call back protocol_user_info_operate
/// - Returns:
- (void)getUserInfoWithModel:(UserBase)modelBlock
                     failure:(FailureArgument)failureBlock ;


///MARK :Set firmware user information and preferences
/// - Parameter :
///      - model: protocol_user_info_operate
/// - Returns:
- (void)setUserInfoWithModel:(protocol_user_info_operate *)model
                     success:(SuccessBase)successBlock
                     failure:(FailureArgument)failureBlock;


///MARK :Get an alarm clock
/// - Parameter :
///      - model：call back protocol_alarm_inquire_reply
/// - Returns:
- (void)getAlarmWithModel:(AlarmBase)modelBlock
                  failure:(FailureArgument)failureBlock ;


///MARK :set an alarm
/// - Parameter :
///      - model ：protocol_alarm_operate
/// - Returns:
- (void)setAlarmWithModel:(protocol_alarm_operate *)model
                  success:(SuccessBase)successBlock
                  failure:(FailureArgument)failureBlock ;


///MARK :Get do not disturb
/// - Parameter :
///      - model：call back protocol_disturb_inquire_reply
/// - Returns:protocol_alarm_inquire_reply
- (void)getDisturbWithModel:(DisturbBase)modelBlock
                    failure:(FailureArgument)failureBlock ;


///MARK :Set do not disturb
/// - Parameter :
///      - model: protocol_disturb_operate
/// - Returns:
- (void)setDisturbWithModel:(protocol_disturb_operate *)model
                    success:(SuccessBase)successBlock
                    failure:(FailureArgument)failureBlock ;


///MARK :Get screen brightness
/// - Parameter :
///      - model:call back protocol_screen_brightness_inquire_reply
/// - Returns:
- (void)getScreenWithModel:(ScreenBase)modelBlock
                   failure:(FailureArgument)failureBlock ;


///MARK :Screen Brightness Settings
/// - Parameter :
///      - model: protocol_screen_brightness_operate
/// - Returns:
- (void)setScreenWithModel:(protocol_screen_brightness_operate *)model
                   success:(SuccessBase)successBlock
                   failure:(FailureArgument)failureBlock ;


///MARK :Health Monitoring Acquisition
/// - Parameter :
///      - operate: protocol_health_monitor_operate
///      - model : call back protocol_health_monitor_inquire_reply
/// - Returns:
- (void)getMonitorWithOperate:(protocol_health_monitor_operate *)operate
                        model:(MonitorBase)modelBlock
                      failure:(FailureArgument)failureBlock ;


///MARK :Health Monitoring Settings
/// - Parameter :
///      - model :protocol_health_monitor_operate
/// - Returns:
- (void)setMonitorWithModel:(protocol_health_monitor_operate *)model
                    success:(SuccessBase)successBlock
                    failure:(FailureArgument)failureBlock ;


///MARK :Sleep Monitoring Acquisition
/// - Parameter :
///      - model: protocol_sleep_monitor_inquire_reply
/// - Returns:
- (void)getSleepMonitorWithModel:(SleepMonitorBase)modelBlock
                         failure:(FailureArgument)failureBlock ;


///MARK :Sleep Monitoring Settings
/// - Parameter :
///      - model：protocol_sleep_monitor_operate
/// - Returns:
- (void)setSleepMonitorWithModel:(protocol_sleep_monitor_operate *)model
                         success:(SuccessBase)successBlock
                         failure:(FailureArgument)failureBlock ;


- (void)getFindPhoneWatchWithModel:(FindPhoneWatchBase)modelBlock
                           failure:(FailureArgument)failureBlock ;

- (void)setFindPhoneWatchWithModel:(protocol_find_phone_watch_operate *)model
                           success:(SuccessBase)successBlock
                           failure:(FailureArgument)failureBlock ;

///MARK :World Clock Fetch
/// - Parameter :
///      - model: protocol_world_time_inquire_reply
/// - Returns:

- (void)getWorldTimeWithModel:(WorldTimeBase)modelBlock
                      failure:(FailureArgument)failureBlock ;


///MARK :world clock setting
/// - Parameter :
///      - model ：protocol_world_time_operate
/// - Returns:
- (void)setWorldTimeWithModel:(protocol_world_time_operate *)model
                      success:(SuccessBase)successBlock
                      failure:(FailureArgument)failureBlock ;


///MARK :Get message switch
/// - Parameter :
///      - model: protocol_message_notify_switch_inquire_reply
/// - Returns:
- (void)getMessageOnOffWithModel:(MessageOnOffBase)modelBlock
                         failure:(FailureArgument)failureBlock ;

///MARK :message switch settings
/// - Parameter :
///      - model ：protocol_message_notify_switch
/// - Returns:
- (void)setMessageOnOffWithModel:(protocol_message_notify_switch *)model
                         success:(SuccessBase)successBlock
                         failure:(FailureArgument)failureBlock ;

///MARK :music control
/// - Parameter :
///      - model ：protocol_music_control_operate
/// - Returns:
- (void)setMusicWithModel:(protocol_music_control_operate *)model
                  success:(SuccessBase)successBlock
                  failure:(FailureArgument)failureBlock ;

///MARK :set weather
/// - Parameter :
///      - model: protocol_weather_operate
/// - Returns:
- (void)setWeatherWithModel:(protocol_weather_operate *)model
                    success:(SuccessBase)successBlock
                    failure:(FailureArgument)failureBlock ;

///MARK :Incoming call configuration query
/// - Parameter :
///      - model : call back protocol_call_switch_inquire_reply
/// - Returns:protocol_alarm_inquire_reply
- (void)getCallWithModel:(CallBase)modelBlock
                 failure:(FailureArgument)failureBlock ;

///MARK :caller configuration settings
/// - Parameter :
///      - model : protocol_call_switch
/// - Returns:
- (void)setCallWithModel:(protocol_call_switch *)model
                 success:(SuccessBase)successBlock
                 failure:(FailureArgument)failureBlock ;



///MARK :contact acquisition
/// - Parameter :
///      - model ：protocol_frequent_contacts_inquire_reply
/// - Returns:
- (void)getContactsWithModel:(ContactsBase)modelBlock
                     failure:(FailureArgument)failureBlock ;

///MARK :contact settings
/// - Parameter :
///      - model ：protocol_frequent_contacts_operate
/// - Returns:
- (void)setContactsWithModel:(protocol_frequent_contacts_operate *)model
                     success:(SuccessBase)successBlock
                     failure:(FailureArgument)failureBlock ;

///MARK :Set up quick cards
/// - Parameter :
///           -model : protocol_quick_card_operate
/// - Returns:
- (void)getCardWithModel:(CardBase)modelBlock
                 failure:(FailureArgument)failureBlock ;
///MARK :Set up quick cards
/// - Parameter :
///           -model : protocol_quick_card_operate
/// - Returns:
- (void)setCardWithModel:(protocol_quick_card_operate *)model
                 success:(SuccessBase)successBlock
                 failure:(FailureArgument)failureBlock ;

///MARK :Set heart rate interval
/// - Parameter :
///      - protocol_exercise_heart_rate_zone
/// - Returns:
- (void)setSportHeartRateWithModel:(protocol_exercise_heart_rate_zone *)model
                           success:(SuccessBase)successBlock
                           failure:(FailureArgument)failureBlock ;

///MARK :Obtain the type of movement supported by the device
/// - Parameter :
///      - model ：protocol_exercise_sporting_param_sort_inquire_reply
/// - Returns:
- (void)getSportTypeWithModel:(SportTypeBase)modelBlock
                      failure:(FailureArgument)failureBlock ;

///MARK :Equipment motion arrangement order setting
/// - Parameter :
///      - model ：protocol_exercise_sport_mode_sort
/// - Returns:
- (void)setSportSortWithModel:(protocol_exercise_sport_mode_sort *)model
                      success:(SuccessBase)successBlock
                      failure:(FailureArgument)failureBlock ;


///MARK :Query the sequence of equipment movement
/// - Parameter :
///      - model ： call back protocol_exercise_sport_mode_sort_inquire_reply
/// - Returns:protocol_exercise_sport_mode_sort_inquire_reply
- (void)getSportSortWithModel:(SportSortBase)modelBlock
                      failure:(FailureArgument)failureBlock ;

///MARK :Child item data setting in sports
/// - Parameter :
///      - model: protocol_exercise_sporting_param_sort
/// - Returns:
- (void)setSportSubWithModel:(protocol_exercise_sporting_param_sort *)model
                     success:(SuccessBase)successBlock
                     failure:(FailureArgument)failureBlock;


///MARK :Data acquisition of children in sports
/// - Parameter :
///      - model：call back protocol_exercise_sporting_param_sort_inquire_reply
/// - Returns:protocol_exercise_sporting_param_sort_inquire_reply
- (void)getSportSubWithModel:(SportSubBase)modelBlock
                     failure:(FailureArgument)failureBlock ;

///MARK :Sports self-recognition settings
/// - Parameter :
///      - model : protocol_exercise_intelligent_recognition
/// - Returns:
- (void)setSportIdentificationWithModel:(protocol_exercise_intelligent_recognition *)model
                                success:(SuccessBase)successBlock
                                failure:(FailureArgument)failureBlock ;


///MARK :Sports self-identification query
/// - Parameter :
///      - model : call back protocol_exercise_intelligent_recognition_inquire_reply
/// - Returns:
- (void)getSportIdentificationWithModel:(SportIdentificationBase)modelBlock
                                failure:(FailureArgument)failureBlock ;


///MARK :set dial
/// - Parameter :
///      - model : protocol_watch_dial_plate_operate
/// - Returns:
- (void)setWatchDialWithModel:(protocol_watch_dial_plate_operate *)model
                      success:(SuccessBase)successBlock
                      failure:(FailureArgument)failureBlock;

///MARK :Remove dial
/// - Parameter :
///      - model : protocol_watch_dial_plate_operate
/// - Returns:
- (void)delWatchDialWithModel:(protocol_watch_dial_plate_operate *)model
                      success:(SuccessBase)successBlock
                      failure:(FailureArgument)failureBlock ;

///MARK :Query dial
/// - Parameter :
///      - model : call back protocol_watch_dial_plate_operate
/// - Returns:
- (void)getWatchDialWithModel:(WatchDialBase)modelBlock
                      failure:(FailureArgument)failureBlock;


///MARK :Firmware Settings
/// - Parameter :
///      - type ：1 Restart operation 2 Shut down operation
/// - Returns:
- (void)setSystemWithType:(NSInteger)type
                  success:(SuccessBase)successBlock
                  failure:(FailureArgument)failureBlock ;


- (void)getHotKey:(HotKeyBase)modelBlock
          failure:(FailureArgument)failureBlock ;

- (void)setHotKey:(protocol_button_crown_operate*)model
          success:(SuccessBase)successBlock
          failure:(FailureArgument)failureBlock ;
- (void)getTableWithModel:(TableBase)modelBlock
                  failure:(FailureArgument)failureBlock ;

- (void)getContactsSOSWithModel:(SosContactsBase)modelBlock
                        failure:(FailureArgument)failureBlock ;

- (void)setContactsSOSWithModel:(protocol_emergency_contacts_operate*)model
                        success:(SuccessBase)successBlock
                        failure:(FailureArgument)failureBlock;


- (void)getMenstrualWithModel:(MenstrualBase)modelBlock
                      failure:(FailureArgument)failureBlock ;

- (void)setMenstrualWithModel:(protocol_menstruation_operate*)model
                      success:(SuccessBase)successBlock
                      failure:(FailureArgument)failureBlock ;

- (void)getBindDeviceWithModel:(DevicesBack)modelBlock;

- (void)noticeUpdateListenWithBlock:(NoticeUpdateListen)modelBlock;
- (void)eventReportListenWithBlock:(EventReportListen)modelBlock;

- (void)exceptionListenWithBlock:(ExceptionListen)modelBlock;

- (void)getLogPath:(LogPathClosure)modelBlock;

- (void)getFirmwareLogPath:(LogPathClosure)modelBlock;


///MARK :Get Active Health Data
/// - Parameter :
///      - startTime 2023-08-03
///      - endTime 2023-08-03
/// - Returns:

- (void)getActivityNewTimeDataWithStartTime:(NSString *)startTime
                                    endTime:(NSString *)endTime
                                      model:(ActivitysClosure)model ;


///MARK :Get Sleep Health Data
/// - Parameter :
///      - startTime   2023-08-03
///      - endTime    2023-08-03
/// - Returns:

- (void)getSleepNewTimeDataWithStartTime:(NSString *)startTime
                                 endTime:(NSString *)endTime
                                   model:(SleepsClosure)model ;

///MARK :Get Heart Rate Health Data
/// - Parameter :
///      - startTime   2023-08-03
///      - endTime    2023-08-03
/// - Returns:

- (void)getHeartRateNewTimeDataWithStartTime:(NSString *)startTime
                                     endTime:(NSString *)endTime
                                       model:(HeartRatesClosure)model ;

///MARK :Get Stress Health Data
/// - Parameter :
///      - startTime   2023-08-03
///      - endTime    2023-08-03
/// - Returns:

- (void)getStressNewTimeDataWithStartTime:(NSString *)startTime
                                  endTime:(NSString *)endTime
                                    model:(StresssClosure)model ;

///MARK :Get Noise Health Data
/// - Parameter :
///      - startTime   2023-08-03
///      - endTime    2023-08-03
/// - Returns:

- (void)getNoiseNewTimeDataWithStartTime:(NSString *)startTime
                                 endTime:(NSString *)endTime
                                   model:(NoisesClosure)model ;

///MARK :Obtain blood oxygen health data
/// - Parameter :
///      - startTime   2023-08-03
///      - endTime    2023-08-03
/// - Returns:
- (void)getSpoNewTimeDataWithStartTime:(NSString *)startTime
                               endTime:(NSString *)endTime
                                 model:(OxygensClosure)model ;


///MARK :Get all motion data by type
/// - Parameter :
///        - type : nil query all type
/// - Returns:

- (void)getSportRecordWithType:(nullable NSNumber *)type
                         model:(SportsClosure)model ;

///MARK :Get sport details
/// - Parameter :
///         -sportId：
/// - Returns:
- (void)getSportDetailsWithId:(NSInteger)sportId
                        model:(SportClosure)model ;


///MARK :Query sports data by time range and type
/// - Parameter :
///      - startTime   2023-08-03
///      - endTime    2023-08-03
///      - type : nil query all type
/// - Returns:
- (void)getSportTimeDataWithStartTime:(NSString *)startTime
                              endTime:(NSString *)endTime
                                 type:(nullable NSNumber *)type
                                model:(SportsClosure)model;

///MARK:  Delete a piece of exercise data
/// - Parameter :
///    sportId
/// - Returns:
- (void)delSportRecordWithId:(NSInteger)sportId
                       model:(SuccessBase)model;

///MARK :Get HRV Health Data
/// - Parameter :
///      - startTime   2023-08-03
///      - endTime    2023-08-03
/// - Returns:

- (void)getHrvNewTimeDataWithStartTime:(NSString *)startTime
                               endTime:(NSString *)endTime
                                 model:(HrvsClosure)model ;


///*******************************
///Query unuploaded data
///*******************************


- (void)getSportUploadStatusWithModel:(SportsClosure)model ;

- (void)getActivityUploadStatusWithModel:(ActivitysClosure)model ;

- (void)getHeartRateUploadStatusWithModel:(HeartRatesClosure)model ;

- (void)getHrvUploadStatusWithModel:(HrvsClosure)model ;
- (void)getNoiseUploadStatusWithModel:(NoisesClosure)model;

- (void)getStressUploadStatusWithModel:(StresssClosure)model ;

- (void)getSleepUploadDaysWithModel:(SleepsClosure)model;

- (void)getSpoUploadStatusWithModel:(OxygensClosure)model ;

- (void)setDBUserWithUserID:(NSInteger)userID ;

- (void)updateDBUploadStatusWithType:(SyncServerType)type ;



//Custom sql queries
- (void)rawQueryDBWithSQL:(NSString *)sql model:(RawQueryDBClosure)model ;


//Online ephemeris
- (void)encodeOnlineFileWithEphemerisModel:(EphemerisModel *)ephemerisModel
                                     model:(EphemerisData)model
                                   failure:(FailureArgument)failure ;

//Off-line ephemeris
- (void)encodeOfflineFileWithEphemerisModel:(EphemerisModel *)ephemerisModel
                                      model:(EphemerisData)model
                                    failure:(FailureArgument)failure ;

- (void)encodePhoneFileWithPhoneModel:(NSArray<PhoneModel *> *)phoneModel
                                model:(EphemerisData)model
                              failure:(FailureArgument)failure ;

- (void)checkLogFile ;

- (void)parseDialWithPath:(NSString *)path
                    width:(NSInteger)width
                   height:(NSInteger)height
                   radius:(NSInteger)radius
             platformType:(Platform)platformType
                    model:(ParseDialBase)model;

- (void)getPreviewImageWithModel:(PreviewImageBase)model ;

- (void)setCurrentColorWithSelectIndex:(NSInteger)selectIndex
                                 model:(ParseDialBase)model ;

- (void)setCurrentBackgroundImagePathWithSelectIndex:(NSInteger)selectIndex
                                               model:(ParseDialBase)model ;

- (void)setCurrentFunctionWithSelectIndex:(NSArray<NSNumber *> *)selectIndex
                                    model:(ParseDialBase)model ;

- (void)encodeDialWithModel:(DialDataBase)model ;


/**
 * Get focus mode
 *

 */
- (void)getFocusSleep:(FocusBase)modelBlock failure:(FailureArgument)failureBlock;

/**
 * Set focus mode
 *
 */
- (void)setFocusSleep:(protocol_focus_mode_operate *)model success:(SuccessBase)successBlock failure:(FailureArgument)failureBlock ;

/**
 * Get app List
 *
 */
- (void)getAppList:(AppListBase)modelBlock failure:(FailureArgument)failureBlock ;

/**
 * Set app List
 *
 */
- (void)setAppList:(protocol_app_list_operate *)model success:(SuccessBase)successBlock failure:(FailureArgument)failureBlock;

/**
 * Event Tracking
 *
 */
- (void)getEventTracking:(EventTrackingBase)modelBlock failure:(FailureArgument)failureBlock;

/**
 * Drink Water Reminder
 *

 */
- (void)getWater:(WaterBase)modelBlock failure:(FailureArgument)failureBlock ;

/**
 * Drink Water Settings
 *
 */
- (void)setWater:(protocol_drink_water_operate *)model success:(SuccessBase)successBlock failure:(FailureArgument)failureBlock;

/**
 * Get Standing
 *
 */
- (void)getStanding:(StandingBase)modelBlock failure:(FailureArgument)failureBlock;

/**
 * Set Standing
 *
 */
- (void)setStanding:(protocol_standing_remind_operate *)model success:(SuccessBase)successBlock failure:(FailureArgument)failureBlock;


@end

NS_ASSUME_NONNULL_END

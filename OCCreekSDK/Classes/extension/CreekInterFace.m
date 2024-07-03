//
//  CreekSDK.m
//  OCCreekSDK_Example
//
//  Created by bean on 2024/2/21.
//  Copyright © 2024 bean. All rights reserved.
//

#import "CreekInterFace.h"
#import "Flutter/Flutter.h"
#import "FlutterPluginRegistrant/FlutterPluginRegistrant-umbrella.h"
#import "ScanDeviceModel.h"
#import "creek_blue_manage/creek_blue_manage-umbrella.h"







@interface CreekInterFace()
@property (nonatomic, strong) FlutterMethodChannel *methodChannel;
@property (nonatomic, strong) FlutterEngine* flutterEngine;
@property (nonatomic) NSInteger requestId;
@property (nonatomic, strong) NSMutableDictionary<NSString*,DevicesBack> *devicesBackDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,DeviceBack> *deviceBackDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,ProgressBase> *progressDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,SuccessBase> *successDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,FailureBase> *failureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,FailureArgument> *failureArgumentDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,EndScanBase> *endScanDic;

@property (nonatomic, strong) NSMutableDictionary<NSString*,FirmwareBase> *firmwareDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,ATimeBase> *timeDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,LanguageBase> *languageDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,UserBase> *userDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,AlarmBase> *alarmDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,DisturbBase> *disturbDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,ScreenBase> *screenDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,MonitorBase> *monitorDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,SleepMonitorBase> *sleepMonitorDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,WaterBase> *waterDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,FindPhoneWatchBase> *findPhoneWatchDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,VoiceBase> *voiceDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,WorldTimeBase> *worldTimeDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,StandingBase> *standingDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,MessageTypeBase> *messageTypeDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,MessageAppBase> *messageAppDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,MessageOnOffBase> *messageOnOffDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,CallBase> *callDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,ContactsBase> *contactsDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,SosContactsBase> *sosContactsDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,CardBase> *cardDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,SportTypeBase> *sportTypeDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,SportSortBase> *sportSortDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,SportSubBase> *sportSubDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,SportIdentificationBase> *sportIdentificationDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,WatchDialBase> *watchDialDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,HotKeyBase> *hotKeyDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,MenstrualBase> *menstrualDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,FocusBase> *focusDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,TableBase> *tableDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,BluetoothStatusBase> *bluetoothStatusDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,SNFirmwareBase> *SNFirmwareDic;

@property (nonatomic, strong) NSMutableDictionary<NSString*,RawQueryDBClosure> *rawQueryDBClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,ActivitysClosure> *activitysClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,HeartRatesClosure> *heartRatesClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,StresssClosure> *stresssClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,NoisesClosure> *noisesClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,OxygensClosure> *oxygensClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,SleepsClosure> *sleepsClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,SportsClosure> *sportsClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,SportClosure> *sportClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,HrvsClosure> *hrvsClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,EphemerisData> *ephemerisClosureDic;

@property (nonatomic, strong) NSMutableDictionary<NSString*,ParseDialBase> *parseDialClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,ParsePhotoDialBase> *parsePhotoDialClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,PreviewImageBase> *previewImageClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,DialDataBase> *dialDataClosureDic;

@property (nonatomic, strong) NSMutableDictionary<NSString*,AppListBase> *appListDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,EventTrackingBase> *eventTrackingDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,BoolBase> *boolClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,ValueBase> *valueClosureDic;
@property (nonatomic, strong) NSMutableDictionary<NSString*,UpgradeStateBase> *upgradeStateClosureDic;



@property (nonatomic, copy) ConnectBack connectBlock;
@property (nonatomic, copy) InTransitionDeviceBack inTransitionDeviceBlock;
@property (nonatomic, copy) ListenDeviceState listenDeviceStateBlock;
@property (nonatomic, copy) BluetoothStateListen bluetoothStateBlock;
@property (nonatomic, copy) NoticeUpdateListen noticeUpdateListen;
@property (nonatomic, copy) EventReportListen eventReportListen;
@property (nonatomic, copy) ExceptionListen exceptionListen;
@property (nonatomic, copy) LogPathClosure logPathClosure;
@property (nonatomic, copy) gpsBase gpsClosure;


@end


@implementation CreekInterFace



static CreekInterFace * instance =nil;

+(CreekInterFace *) instance{
    
    @synchronized(self)
    {
        if (instance ==nil){
            instance = [[CreekInterFace alloc]init];
            [instance initData];
        }
    }
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    @synchronized(self)
    {
        if (instance ==nil) {
            instance = [super allocWithZone:zone];
            [instance initData];
            return instance;
        }
    }
    return nil;
}

-(void)initData{
    self.requestId = 0;
    self.connectStatus = ConnectionStatusNone;
    self.devicesBackDic = [NSMutableDictionary dictionary];
    self.deviceBackDic = [NSMutableDictionary dictionary];
    self.progressDic = [NSMutableDictionary dictionary];
    self.successDic = [NSMutableDictionary dictionary];
    self.failureDic = [NSMutableDictionary dictionary];
    self.failureArgumentDic = [NSMutableDictionary dictionary];
    self.endScanDic = [NSMutableDictionary dictionary];
    self.firmwareDic = [NSMutableDictionary dictionary];
    self.timeDic = [NSMutableDictionary dictionary];
    self.languageDic = [NSMutableDictionary dictionary];
    self.userDic = [NSMutableDictionary dictionary];
    self.alarmDic = [NSMutableDictionary dictionary];
    self.disturbDic = [NSMutableDictionary dictionary];
    self.screenDic = [NSMutableDictionary dictionary];
    self.monitorDic = [NSMutableDictionary dictionary];
    self.sleepMonitorDic = [NSMutableDictionary dictionary];
    self.waterDic = [NSMutableDictionary dictionary];
    self.findPhoneWatchDic = [NSMutableDictionary dictionary];
    self.voiceDic = [NSMutableDictionary dictionary];
    self.worldTimeDic = [NSMutableDictionary dictionary];
    self.standingDic = [NSMutableDictionary dictionary];
    self.messageTypeDic = [NSMutableDictionary dictionary];
    self.messageAppDic = [NSMutableDictionary dictionary];
    self.messageOnOffDic = [NSMutableDictionary dictionary];
    self.callDic = [NSMutableDictionary dictionary];
    self.contactsDic = [NSMutableDictionary dictionary];
    self.sosContactsDic = [NSMutableDictionary dictionary];
    self.cardDic = [NSMutableDictionary dictionary];
    self.sportTypeDic = [NSMutableDictionary dictionary];
    self.sportSortDic = [NSMutableDictionary dictionary];
    self.sportSubDic = [NSMutableDictionary dictionary];
    self.sportIdentificationDic = [NSMutableDictionary dictionary];
    self.watchDialDic = [NSMutableDictionary dictionary];
    self.hotKeyDic = [NSMutableDictionary dictionary];
    self.menstrualDic = [NSMutableDictionary dictionary];
    self.focusDic = [NSMutableDictionary dictionary];
    self.tableDic = [NSMutableDictionary dictionary];
    self.bluetoothStatusDic = [NSMutableDictionary dictionary];
    self.rawQueryDBClosureDic = [NSMutableDictionary dictionary];
    self.activitysClosureDic = [NSMutableDictionary dictionary];
    self.heartRatesClosureDic = [NSMutableDictionary dictionary];
    self.stresssClosureDic = [NSMutableDictionary dictionary];
    self.noisesClosureDic = [NSMutableDictionary dictionary];
    self.oxygensClosureDic = [NSMutableDictionary dictionary];
    self.sleepsClosureDic = [NSMutableDictionary dictionary];
    self.sportsClosureDic = [NSMutableDictionary dictionary];
    self.sportClosureDic = [NSMutableDictionary dictionary];
    self.hrvsClosureDic = [NSMutableDictionary dictionary];
    self.ephemerisClosureDic = [NSMutableDictionary dictionary];
    self.parseDialClosureDic = [NSMutableDictionary dictionary];
    self.previewImageClosureDic = [NSMutableDictionary dictionary];
    self.dialDataClosureDic = [NSMutableDictionary dictionary];
    self.appListDic = [NSMutableDictionary dictionary];
    self.eventTrackingDic = [NSMutableDictionary dictionary];
    self.parsePhotoDialClosureDic = [NSMutableDictionary dictionary];
    self.boolClosureDic = [NSMutableDictionary dictionary];
    self.valueClosureDic = [NSMutableDictionary dictionary];
    self.upgradeStateClosureDic = [NSMutableDictionary dictionary];
}

-(void) setupInit{
    
    _flutterEngine = [[FlutterEngine alloc] initWithName:@"io.flutter"];
    [_flutterEngine run];
    [GeneratedPluginRegistrant registerWithRegistry:_flutterEngine];
    _methodChannel = [FlutterMethodChannel methodChannelWithName:@"com.watchic.app/sdk" binaryMessenger: [_flutterEngine binaryMessenger]];
    __unsafe_unretained typeof(self) weakSelf = self;
    [_methodChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        
        [weakSelf handleMethodCall:call result:result];
    }];
    [self initSDK];
}

-(void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result{
    NSLog(@"ios%@",[call method]);
    if ([[call method] containsString:@"scanBase"]) {
        NSString * json = (NSString*)[call arguments];
        NSError *error = nil;
        ScanDeviceArray* arr =  ScanDeviceArrayFromJSON(json, &error);
        DevicesBack block = [self.devicesBackDic objectForKey:[call method]];
        if(block){
            block(arr);
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
    }else if ([[call method] containsString:@"endScan"]){
        EndScanBase block = [self.endScanDic objectForKey:[call method]];
        if(block){
            block();
            [self.endScanDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    } else if ([[call method] containsString:@"scanConnect"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        ScanDeviceModel *model = [ScanDeviceModel fromJSONDictionary:dict];
        DeviceBack block = [self.deviceBackDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.deviceBackDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
        
    }else if ([@"connect" isEqualToString:[call method]]){
        BOOL isBool = (BOOL)[call arguments];
        if (self.connectBlock) {
            self.connectBlock(isBool);
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([@"inTransitionDevice" isEqualToString:[call method]]){
        BOOL isBool = (BOOL)[call arguments];
        if (self.inTransitionDeviceBlock) {
            self.inTransitionDeviceBlock(isBool);
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getFirmware"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        
        protocol_device_info* model = [[protocol_device_info alloc] initWithData:data.data error:&error];
        FirmwareBase block = [self.firmwareDic objectForKey:[call method]];
        if(block){
            block(model);
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([@"progress" isEqualToString:[call method]]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSInteger message = 0;
        NSString* key = @"";
        if ([dict objectForKey:@"message"]) {
            message = [[dict objectForKey:@"message"] intValue];
        }
        if ([dict objectForKey:@"key"]) {
            key = [dict objectForKey:@"key"];
        }
        ProgressBase block = [self.progressDic objectForKey:key];
        if(block){
            block(message);
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([@"success" isEqualToString:[call method]]){
        SuccessBase block = [self.successDic objectForKey:[call arguments]];
        if(block){
            block();
            [self.successDic removeObjectForKey:[call arguments]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call arguments]);
        }
        
    }else if ([@"failure" isEqualToString:[call method]]){
        FailureBase block = [self.failureDic objectForKey:[call arguments]];
        if(block){
            block();
            [self.failureDic removeObjectForKey:[call arguments]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call arguments]);
        }
        
    }else if ([[call method] isEqualToString:@"failureArgument"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSInteger code = 0;
        NSString* message = @"";
        NSString* key = @"";
        if ([dict objectForKey:@"message"]) {
            message = [dict objectForKey:@"message"];
        }
        if ([dict objectForKey:@"key"]) {
            key = [dict objectForKey:@"key"];
        }
        if ([dict objectForKey:@"code"]) {
            code = [[dict objectForKey:@"code"] intValue];
        }
        FailureArgument block = [self.failureArgumentDic objectForKey:key];
        if(block){
            block(code,message);
            [self.failureArgumentDic removeObjectForKey:key];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", key);
        }
        
        
    }else if ([@"listenDeviceState" isEqualToString:[call method]]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSInteger status = 0;
        NSString* deviceName = @"";
        if ([dict objectForKey:@"status"]) {
            status = [[dict objectForKey:@"status"] intValue];
        }
        if ([dict objectForKey:@"deviceName"]) {
            deviceName = [dict objectForKey:@"deviceName"];
        }
        ConnectionStatus cStatus = (ConnectionStatus)status;
        if(cStatus != ConnectionStatusSync || cStatus != ConnectionStatusSyncComplete){
            self.connectStatus = (ConnectionStatus)status;
        }
        if (self.listenDeviceStateBlock) {
            self.listenDeviceStateBlock(self.connectStatus,deviceName);
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
        
        
        
    }else if ([[call method] containsString:@"bluetoothStatus"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_connect_status_inquire_reply* model = [[protocol_connect_status_inquire_reply alloc] initWithData:[data data] error:&error];
        BluetoothStatusBase block = [self.bluetoothStatusDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.bluetoothStatusDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getTime"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_device_time_inquire_reply* model = [[protocol_device_time_inquire_reply alloc] initWithData:[data data] error:&error];
        ATimeBase block = [self.timeDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.timeDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getLanguage"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_language_inquire_reply* model = [[protocol_language_inquire_reply alloc] initWithData:[data data] error:&error];
        LanguageBase block = [self.languageDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.languageDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getUserInfo"]){
        
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_user_info_operate* model = [[protocol_user_info_operate alloc] initWithData:[data data] error:&error];
        UserBase block = [self.userDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.userDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getAlarm"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_alarm_inquire_reply* model = [[protocol_alarm_inquire_reply alloc] initWithData:[data data] error:&error];
        AlarmBase block = [self.alarmDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.alarmDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getDisturb"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_disturb_inquire_reply* model = [[protocol_disturb_inquire_reply alloc] initWithData:[data data] error:&error];
        DisturbBase block = [self.disturbDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.disturbDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getScreen"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_screen_brightness_inquire_reply* model = [[protocol_screen_brightness_inquire_reply alloc] initWithData:[data data] error:&error];
        ScreenBase block = [self.screenDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.screenDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getMonitor"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_health_monitor_inquire_reply* model = [[protocol_health_monitor_inquire_reply alloc] initWithData:[data data] error:&error];
        MonitorBase block = [self.monitorDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.monitorDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getSleepMonitor"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_sleep_monitor_inquire_reply* model = [[protocol_sleep_monitor_inquire_reply alloc] initWithData:[data data] error:&error];
        SleepMonitorBase block = [self.sleepMonitorDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.sleepMonitorDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getWater"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_drink_water_inquire_reply* model = [[protocol_drink_water_inquire_reply alloc] initWithData:[data data] error:&error];
        WaterBase block = [self.waterDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.waterDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([ [call method] containsString:@"getFindPhoneWatch"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_find_phone_watch_inquire_reply* model = [[protocol_find_phone_watch_inquire_reply alloc] initWithData:[data data] error:&error];
        FindPhoneWatchBase block = [self.findPhoneWatchDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.findPhoneWatchDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getVoice"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_voice_assistant_inquire_reply* model = [[protocol_voice_assistant_inquire_reply alloc] initWithData:[data data] error:&error];
        VoiceBase block = [self.voiceDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.voiceDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getWorldTime"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_world_time_inquire_reply* model = [[protocol_world_time_inquire_reply alloc] initWithData:[data data] error:&error];
        WorldTimeBase block = [self.worldTimeDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.voiceDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getStanding"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_standing_remind_inquire_reply* model = [[protocol_standing_remind_inquire_reply alloc] initWithData:[data data] error:&error];
        StandingBase block = [self.standingDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.standingDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getMessageType"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_message_notify_func_support_reply* model = [[protocol_message_notify_func_support_reply alloc] initWithData:[data data] error:&error];
        MessageTypeBase block = [self.messageTypeDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.messageTypeDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getMessageApp"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_message_notify_data_inquire_reply* model = [[protocol_message_notify_data_inquire_reply alloc] initWithData:[data data] error:&error];
        MessageAppBase block = [self.messageAppDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.messageAppDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getMessageOnOff"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_message_notify_switch_inquire_reply* model = [[protocol_message_notify_switch_inquire_reply alloc] initWithData:[data data] error:&error];
        MessageOnOffBase block = [self.messageOnOffDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.messageOnOffDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getCall"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_call_switch_inquire_reply* model = [[protocol_call_switch_inquire_reply alloc] initWithData:[data data] error:&error];
        CallBase block = [self.callDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.callDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getContacts"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_frequent_contacts_inquire_reply* model = [[protocol_frequent_contacts_inquire_reply alloc] initWithData:[data data] error:&error];
        ContactsBase block = [self.contactsDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.contactsDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getCard"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_quick_card_inquire_reply* model = [[protocol_quick_card_inquire_reply alloc] initWithData:[data data] error:&error];
        CardBase block = [self.cardDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.cardDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getSportIdentification"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_exercise_intelligent_recognition_inquire_reply* model = [[protocol_exercise_intelligent_recognition_inquire_reply alloc] initWithData:[data data] error:&error];
        SportIdentificationBase block = [self.sportIdentificationDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.sportIdentificationDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getSportSub"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_exercise_sporting_param_sort_inquire_reply* model = [[protocol_exercise_sporting_param_sort_inquire_reply alloc] initWithData:[data data] error:&error];
        SportSubBase block = [self.sportSubDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.sportSubDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getSportSort"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_exercise_sport_mode_sort_inquire_reply* model = [[protocol_exercise_sport_mode_sort_inquire_reply alloc] initWithData:[data data] error:&error];
        SportSortBase block = [self.sportSortDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.sportSortDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([ [call method] containsString:@"getSportType"]){
        
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_exercise_func_support_reply* model = [[protocol_exercise_func_support_reply alloc] initWithData:[data data] error:&error];
        SportTypeBase block = [self.sportTypeDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.sportTypeDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([ [call method] containsString:@"getWatchDial"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_watch_dial_plate_inquire_reply* model = [[protocol_watch_dial_plate_inquire_reply alloc] initWithData:[data data] error:&error];
        WatchDialBase block = [self.watchDialDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.watchDialDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getActivityNewTimeData"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<ActivityModel *> * modelArr = [ActivityModel initWithArray:dic[@"data"]];
        ActivitysClosure block = [self.activitysClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.watchDialDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getSleepNewTimeData"]){
        
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<SleepModel *> * modelArr = [SleepModel initWithArray:dic[@"data"]];
        SleepsClosure block = [self.sleepsClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.sleepsClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getHeartRateNewTimeData"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<HeartRateModel *> * modelArr = [HeartRateModel initWithArray:dic[@"data"]];
        HeartRatesClosure block = [self.heartRatesClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.heartRatesClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getStressNewTimeData"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<StressModel *> * modelArr = [StressModel initWithArray:dic[@"data"]];
        StresssClosure block = [self.stresssClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.stresssClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([ [call method] containsString:@"getNoiseNewTimeData"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<NoiseModel *> * modelArr = [NoiseModel initWithArray:dic[@"data"]];
        NoisesClosure block = [self.noisesClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.noisesClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([ [call method] containsString:@"getSpoNewTimeData"]){
        
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<OxygenModel *> * modelArr = [OxygenModel initWithArray:dic[@"data"]];
        OxygensClosure block = [self.oxygensClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.oxygensClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([ [call method] containsString:@"getSportRecord"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<SportModel *> * modelArr = [SportModel initWithArray:dic[@"data"]];
        SportsClosure block = [self.sportsClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.sportsClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([ [call method] containsString:@"getSportDetails"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        SportModel * model = [[SportModel alloc] initWithDictionary: dic[@"data"]];
        SportClosure block = [self.sportClosureDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.sportClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getSportTimeData"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<SportModel *> * modelArr = [SportModel initWithArray:dic[@"data"]];
        SportsClosure block = [self.sportsClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.sportsClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"delSportRecord"]){
        SuccessBase block = [self.successDic objectForKey:[call method]];
        if(block){
            block();
            [self.successDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getHrvNewTimeData"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<HrvModel *> * modelArr = [HrvModel initWithArray:dic[@"data"]];
        HrvsClosure block = [self.hrvsClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.sportsClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getBindDevice"]){
        NSString * json = (NSString*)[call arguments];
        NSError *error = nil;
        ScanDeviceArray* arr =  ScanDeviceArrayFromJSON(json, &error);
        DevicesBack block = [self.devicesBackDic objectForKey:[call method]];
        if(block){
            block(arr);
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getHotKey"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_button_crown_inquire_reply* model = [[protocol_button_crown_inquire_reply alloc] initWithData:[data data] error:&error];
        HotKeyBase block = [self.hotKeyDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.hotKeyDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([ [call method] containsString:@"getMenstrual"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_menstruation_inquire_reply* model = [[protocol_menstruation_inquire_reply alloc] initWithData:[data data] error:&error];
        MenstrualBase block = [self.menstrualDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.menstrualDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getTable"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_function_table* model = [[protocol_function_table alloc] initWithData:[data data] error:&error];
        TableBase block = [self.tableDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.tableDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getSOSContacts"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_emergency_contacts_inquire_reply* model = [[protocol_emergency_contacts_inquire_reply alloc] initWithData:[data data] error:&error];
        SosContactsBase block = [self.sosContactsDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.sosContactsDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getFocus"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_focus_mode_inquire_reply* model = [[protocol_focus_mode_inquire_reply alloc] initWithData:[data data] error:&error];
        FocusBase block = [self.focusDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.focusDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getAppList"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_app_list_inquire_reply* model = [[protocol_app_list_inquire_reply alloc] initWithData:[data data] error:&error];
        AppListBase block = [self.appListDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.appListDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getEventTracking"]){
        FlutterStandardTypedData *data = [call arguments];
        NSError *error = nil;
        protocol_event_tracking_inquire_reply* model = [[protocol_event_tracking_inquire_reply alloc] initWithData:[data data] error:&error];
        EventTrackingBase block = [self.eventTrackingDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.eventTrackingDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([@"noticeUpdate" isEqualToString:[call method]]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NoticeUpdateModel * model = [[NoticeUpdateModel alloc] initWithDictionary:dic];
        if(self.noticeUpdateListen){
            self.noticeUpdateListen(model);
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([@"eventReport" isEqualToString:[call method]]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        EventReportModel * model = [[EventReportModel alloc] initWithDictionary:dic];
        if(self.eventReportListen){
            self.eventReportListen(model);
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
        
    }else if ([@"exceptionListen" isEqualToString:[call method]]){
        NSString * json = (NSString*)[call arguments];
        if(self.exceptionListen){
            self.exceptionListen(json);
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getSportUploadStatus"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<SportModel *> * modelArr = [SportModel initWithArray:dic[@"data"]];
        SportsClosure block = [self.sportsClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.sportsClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getActivityUploadStatus"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<ActivityModel *> * modelArr = [ActivityModel initWithArray:dic[@"data"]];
        ActivitysClosure block = [self.activitysClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.activitysClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getHeartRateUploadStatus"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<HeartRateModel *> * modelArr = [HeartRateModel initWithArray:dic[@"data"]];
        HeartRatesClosure block = [self.heartRatesClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.heartRatesClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getHrvUploadStatus"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<HrvModel *> * modelArr = [HrvModel initWithArray:dic[@"data"]];
        HrvsClosure block = [self.hrvsClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.sportsClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getNoiseUploadStatus"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<NoiseModel *> * modelArr = [NoiseModel initWithArray:dic[@"data"]];
        NoisesClosure block = [self.noisesClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.noisesClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getStressUploadStatus"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<StressModel *> * modelArr = [StressModel initWithArray:dic[@"data"]];
        StresssClosure block = [self.stresssClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.stresssClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getSleepUploadDays"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<SleepModel *> * modelArr = [SleepModel initWithArray:dic[@"data"]];
        SleepsClosure block = [self.sleepsClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.sleepsClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getSpoUploadStatus"]){
        NSString * json = (NSString*)[call arguments];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray<OxygenModel *> * modelArr = [OxygenModel initWithArray:dic[@"data"]];
        OxygensClosure block = [self.oxygensClosureDic objectForKey:[call method]];
        if(block){
            block(modelArr);
            [self.oxygensClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"rawQueryDB"]){
        NSString * json = (NSString*)[call arguments];
        RawQueryDBClosure block = [self.rawQueryDBClosureDic objectForKey:[call method]];
        if(block){
            block(json);
            [self.rawQueryDBClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
        
    }else if ([[call method] containsString:@"encodeOnlineFile"] || [ [call method] containsString:@"encodeOfflineFile"] || [ [call method] containsString:@"encodePhoneFile"]){
        FlutterStandardTypedData *data = [call arguments];
        EphemerisData block = [self.ephemerisClosureDic objectForKey:[call method]];
        if(block){
            block(data.data);
            [self.ephemerisClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([@"logPath" isEqualToString:[call method]]){
        NSString * json = (NSString*)[call arguments];
        if(self.logPathClosure){
            self.logPathClosure(json);
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getSNFirmware"]){
        NSString * json = (NSString*)[call arguments];
        SNFirmwareBase block = [self.SNFirmwareDic objectForKey:[call method]];
        if(block){
            block(json);
            [self.SNFirmwareDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"parseDial"]){
        NSDictionary * dic = (NSDictionary*)[call arguments];
        DialParseModel* model =  [[DialParseModel alloc] initWithDictionary:dic];
        ParseDialBase block = [self.parseDialClosureDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.parseDialClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"parsePhotoDial"]){
        NSDictionary * dic = (NSDictionary*)[call arguments];
        DialPhotoParseModel* model =  [[DialPhotoParseModel alloc] initWithDictionary:dic];
        ParsePhotoDialBase block = [self.parsePhotoDialClosureDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.parsePhotoDialClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"setCurrentColor"]){
        NSDictionary * dic = (NSDictionary*)[call arguments];
        DialParseModel* model =  [[DialParseModel alloc] initWithDictionary:dic];
        ParseDialBase block = [self.parseDialClosureDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.parseDialClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"setCurrentPhotoColor"]){
        NSDictionary * dic = (NSDictionary*)[call arguments];
        DialPhotoParseModel* model =  [[DialPhotoParseModel alloc] initWithDictionary:dic];
        ParsePhotoDialBase block = [self.parsePhotoDialClosureDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.parsePhotoDialClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"setCurrentBackgroundImagePath"]){
        NSDictionary * dic = (NSDictionary*)[call arguments];
        DialParseModel* model =  [[DialParseModel alloc] initWithDictionary:dic];
        ParseDialBase block = [self.parseDialClosureDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.parseDialClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"setCurrentClockPosition"]){
        NSDictionary * dic = (NSDictionary*)[call arguments];
        DialPhotoParseModel* model =  [[DialPhotoParseModel alloc] initWithDictionary:dic];
        ParsePhotoDialBase block = [self.parsePhotoDialClosureDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.parsePhotoDialClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"setCurrentPhotoBackgroundImagePath"]){
        NSDictionary * dic = (NSDictionary*)[call arguments];
        DialPhotoParseModel* model =  [[DialPhotoParseModel alloc] initWithDictionary:dic];
        ParsePhotoDialBase block = [self.parsePhotoDialClosureDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.parsePhotoDialClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"setCurrentFunction"]){
        NSDictionary * dic = (NSDictionary*)[call arguments];
        DialParseModel* model =  [[DialParseModel alloc] initWithDictionary:dic];
        ParseDialBase block = [self.parseDialClosureDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.parseDialClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getPreviewImage"]){
        FlutterStandardTypedData *data = [call arguments];
        
        PreviewImageBase block = [self.previewImageClosureDic objectForKey:[call method]];
        if(block){
            block(data.data);
            [self.previewImageClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"encodeDial"]){
        FlutterStandardTypedData *data = [call arguments];
        
        DialDataBase block = [self.dialDataClosureDic objectForKey:[call method]];
        if(block){
            block(data.data);
            [self.previewImageClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"encodePhotoDial"]){
        FlutterStandardTypedData *data = [call arguments];
        
        DialDataBase block = [self.dialDataClosureDic objectForKey:[call method]];
        if(block){
            block(data.data);
            [self.previewImageClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"ephemerisInit"]){
        if (_gpsClosure) {
            EphemerisGPSModel *result = _gpsClosure();
            [self ephemerisInitGPSWithEphemerisGPSModel:result];
        }
        
    }else if ([[call method] containsString:@"ephemerisGPS"]){
        
        
    }else if ([[call method] containsString:@"checkPhoneBookPermissions"]){
        NSLog(@"checkPhoneBookPermissions %@ ", [call arguments]);
        int isBool = [[call arguments] intValue];
        BoolBase block = [self.boolClosureDic objectForKey:[call method]];
        if (block) {
            block(isBool == 0 ? NO : YES);
            [self.boolClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"requestPhoneBookPermissions"]){
        int isBool = [[call arguments] intValue];
        BoolBase block = [self.boolClosureDic objectForKey:[call method]];
        if (block) {
            block(isBool == 0 ? NO : YES);
            [self.boolClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getOTAUpgradeVersion"]){
        int value = [[call arguments] intValue];
        
        ValueBase block = [self.valueClosureDic objectForKey:[call method]];
        if(block){
            block(@(value));
            [self.valueClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"getOTAUpgradeState"]){
        NSDictionary * dic = (NSDictionary*)[call arguments];
        UpgradeModel* model =  [[UpgradeModel alloc] initWithDictionary:dic];
        UpgradeStateBase block = [self.upgradeStateClosureDic objectForKey:[call method]];
        if(block){
            block(model);
            [self.upgradeStateClosureDic removeObjectForKey:[call method]];
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else if ([[call method] containsString:@"bluetoothStateListen"]){
        int value = [[call arguments] intValue];
        BluetoothState blueState;
        switch (value) {
            case 0:
                blueState = BluetoothStateUnknown;
                break;
            case 2:
                blueState = BluetoothStateUnauthorized;
                break;
            case 4:
                blueState = BluetoothStateOn;
                break;
            case 6:
                blueState = BluetoothStateOff;
                break;
                
            default:
                blueState = BluetoothStateUnknown;
                break;
        }
        
        if (self.bluetoothStateBlock) {
            self.bluetoothStateBlock(blueState);
        }else{
            NSLog(@"Method %@ not found or not a valid block.", [call method]);
        }
        
    }else {
        
        result(FlutterMethodNotImplemented);
    }
    
}

-(void)initSDK{
    [self.methodChannel invokeMethod:@"initSDK" arguments:@""];
}

-(void)authorization:(NSInteger)type{
    [self.methodChannel invokeMethod:@"authorization" arguments:[NSNumber numberWithInteger:type]];
}

-(void)autoConnect:(NSInteger)type{
    [self.methodChannel invokeMethod:@"autoConnect" arguments:[NSNumber numberWithInteger:type]];
}

- (void)scanWithTimeOut:(NSInteger)timeOut devices:(DevicesBack)devices endScan:(EndScanBase)endScan {
    self.requestId++;
    NSString *key = [NSString stringWithFormat:@"scanBase%ld", (long)self.requestId];
    [self.devicesBackDic setObject:devices forKey:key];
    [self.endScanDic setObject:endScan forKey:[NSString stringWithFormat:@"endScan%ld", (long)self.requestId]];
    NSNumber *timeOutNumber = [NSNumber numberWithInteger:timeOut];
    [self.methodChannel invokeMethod:key arguments:timeOutNumber];
}

-(void)connect:(NSString*)deviceID connectBack:(ConnectBack)connectBack{
    self.connectBlock = connectBack;
    [self.methodChannel invokeMethod:@"connect" arguments:deviceID];
}

-(void)listenDeviceState:(ListenDeviceState)listenDeviceState{
    self.listenDeviceStateBlock = listenDeviceState;
}

- (void)scanConnectWithId:(NSString *)deviceID
                   device:(DeviceBack)deviceBlock
                  failure:(FailureArgument)failureBlock {
    _requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"scanConnect%ld", (long)self.requestId];
    [self.deviceBackDic setObject:deviceBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    [self.methodChannel invokeMethod:requestKey arguments:deviceID];
}

- (void)inTransitionDeviceWithId:(NSString *)deviceID
              inTransitionDevice:(InTransitionDeviceBack)inTransitionDeviceBlock {
    self.inTransitionDeviceBlock = inTransitionDeviceBlock;
    [self.methodChannel invokeMethod:@"inTransitionDevice" arguments:deviceID];
}

- (void)disconnectWithSuccess:(SuccessBase)successBlock
                      failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"disconnect%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)stopScan {
    [self.methodChannel invokeMethod:@"stopScan" arguments:@""];
}

- (void)getFirmwareWithModel:(FirmwareBase)modelBlock
                     failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getFirmware%ld", (long)self.requestId];
    [self.firmwareDic setObject:modelBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)syncWithProgress:(ProgressBase)progressBlock
             syncSuccess:(SuccessBase)successBlock
             syncFailure:(FailureBase)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"syncBase%ld", (long)self.requestId];
    self.progressDic[requestKey] = progressBlock;
    self.successDic[requestKey] = successBlock;
    self.failureDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)uploadWithFileName:(NSString *)fileName
                  fileData:(NSData *)fileData
            uploadProgress:(ProgressBase)uploadProgress
             uploadSuccess:(SuccessBase)uploadSuccess
             uploadFailure:(FailureArgument)uploadFailure {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"upload%ld", (long)self.requestId];
    self.progressDic[requestKey] = uploadProgress;
    self.successDic[requestKey] = uploadSuccess;
    self.failureArgumentDic[requestKey] = uploadFailure;
    
    NSMutableArray *intArray = [[NSMutableArray alloc] initWithCapacity:fileData.length];
    const uint8_t *bytes = (const uint8_t *)fileData.bytes;
    for (NSUInteger i = 0; i < fileData.length; i++) {
        [intArray addObject:@(bytes[i])];
    }
    
    NSDictionary *dic = @{@"fileName": fileName, @"fileData": intArray};
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:&error];
    if (!error) {
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        [self.methodChannel invokeMethod:requestKey arguments:jsonString];
    } else {
        NSLog(@"Error converting dictionary to JSON: %@", error.localizedDescription);
    }
}

- (void)backstageUploadWithFileName:(NSString *)fileName
                           fileData:(NSData *)fileData
                     uploadProgress:(ProgressBase)uploadProgress
                      uploadSuccess:(SuccessBase)uploadSuccess
                      uploadFailure:(FailureArgument)uploadFailure {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"backstageUpload%ld", (long)self.requestId];
    self.progressDic[requestKey] = uploadProgress;
    self.successDic[requestKey] = uploadSuccess;
    self.failureArgumentDic[requestKey] = uploadFailure;
    
    NSMutableArray *intArray = [[NSMutableArray alloc] initWithCapacity:fileData.length];
    const uint8_t *bytes = (const uint8_t *)fileData.bytes;
    for (NSUInteger i = 0; i < fileData.length; i++) {
        [intArray addObject:@(bytes[i])];
    }
    
    NSDictionary *dic = @{@"fileName": fileName, @"fileData": intArray};
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:&error];
    if (!error) {
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        [self.methodChannel invokeMethod:requestKey arguments:jsonString];
    } else {
        NSLog(@"Error converting dictionary to JSON: %@", error.localizedDescription);
    }
}
- (void)bluetoothStatusWithModel:(BluetoothStatusBase)modelBlock
                         failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"bluetoothStatus%ld", (long)self.requestId];
    self.bluetoothStatusDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)firmwareReconnectWithReconnect:(BOOL)reconnect
                               success:(SuccessBase)successBlock
                               failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"firmwareReconnect%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    protocol_connect_status_operate *model = [[protocol_connect_status_operate alloc] init];
    model.reconnectOperate = reconnect;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

- (void)syncTimeWithSuccess:(SuccessBase)successBlock
                    failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"syncTime%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)getTimeWithModel:(ATimeBase)modelBlock
                 failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getTime%ld", (long)self.requestId];
    self.timeDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}
- (void)getLanguageWithModel:(LanguageBase)modelBlock
                     failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getLanguage%ld", (long)self.requestId];
    self.languageDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)setLanguageWithType:(language)type
                    success:(SuccessBase)successBlock
                    failure:(FailureArgument)failureBlock {
    self.requestId++;
    protocol_language_operate *model = [[protocol_language_operate alloc] init];
    model.curLanguage = type;
    
    NSString *requestKey = [NSString stringWithFormat:@"setLanguage%ld", (long)self.requestId];
    [self.successDic setObject:successBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}
- (void)bindingDeviceWithBindType:(BindType)bindType
                         idString:(NSString * _Nullable)idString
                             code:(NSString * _Nullable)code
                          success:(SuccessBase)successBlock
                          failure:(FailureBase)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"bindDevice%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureDic[requestKey] = failureBlock;
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[@"bindType"] = @(bindType);
    dic[@"address"] = idString;
    dic[@"pairCode"] = code;
    
    @try {
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        [self.methodChannel invokeMethod:requestKey arguments:jsonString];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

- (void)bindingDeviceWithBindType:(BindType)bindType
                         idString:(NSString * _Nullable)idString
                             code:(NSString * _Nullable)code
                         saveDate:(BOOL)saveDate
                          success:(SuccessBase)successBlock
                          failure:(FailureBase)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"bindDevice%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureDic[requestKey] = failureBlock;
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[@"bindType"] = @(bindType);
    dic[@"address"] = idString;
    dic[@"pairCode"] = code;
    dic[@"saveDate"] = @(saveDate ? 1 : 0);
    @try {
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        [self.methodChannel invokeMethod:requestKey arguments:jsonString];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

- (void)getUserInfoWithModel:(UserBase)modelBlock
                     failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getUserInfo%ld", (long)self.requestId];
    self.userDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}
- (void)setUserInfoWithModel:(protocol_user_info_operate *)model
                     success:(SuccessBase)successBlock
                     failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setUserInfo%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        protocol_user_info_inquire_reply *operate = [[protocol_user_info_inquire_reply alloc] init];
        operate.goalSetting = model.goalSetting;
        operate.personalInfo = model.personalInfo;
        operate.preferences = model.preferences;
        
        NSData *data = [operate data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

- (void)getAlarmWithModel:(AlarmBase)modelBlock
                  failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getAlarm%ld", (long)self.requestId];
    self.alarmDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}
- (void)setAlarmWithModel:(protocol_alarm_operate *)model
                  success:(SuccessBase)successBlock
                  failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setAlarm%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

- (void)getDisturbWithModel:(DisturbBase)modelBlock
                    failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getDisturb%ld", (long)self.requestId];
    self.disturbDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)setDisturbWithModel:(protocol_disturb_operate *)model
                    success:(SuccessBase)successBlock
                    failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setDisturb%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/**
 * Get focus mode
 *
 
 */
- (void)getFocusSleep:(FocusBase)modelBlock failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getFocus%ld", (long)self.requestId];
    [self.focusDic setObject:modelBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    [self.methodChannel invokeMethod:requestKey arguments:@""];
    
}

/**
 * Set focus mode
 *
 */
- (void)setFocusSleep:(protocol_focus_mode_operate *)model success:(SuccessBase)successBlock failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setFocus%ld", (long)self.requestId];
    [self.successDic setObject:successBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/**
 * Get app List
 *
 */
- (void)getAppList:(AppListBase)modelBlock failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getAppList%ld", (long)self.requestId];
    [self.appListDic setObject:modelBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

/**
 * Set app List
 *
 */
- (void)setAppList:(protocol_app_list_operate *)model success:(SuccessBase)successBlock failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setAppList%ld", (long)self.requestId];
    [self.successDic setObject:successBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    } @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/**
 * Event Tracking
 *
 */
- (void)getEventTracking:(EventTrackingBase)modelBlock failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getEventTracking%ld", (long)self.requestId];
    [self.eventTrackingDic setObject:modelBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

/**
 * Drink Water Reminder
 *
 
 */
- (void)getWater:(WaterBase)modelBlock failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getWater%ld", (long)self.requestId];
    [self.waterDic setObject:modelBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

/**
 * Drink Water Settings
 *
 */
- (void)setWater:(protocol_drink_water_operate *)model success:(SuccessBase)successBlock failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setWater%ld", (long)self.requestId];
    [self.successDic setObject:successBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    } @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/**
 * Get Standing
 *
 */
- (void)getStanding:(StandingBase)modelBlock failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getStanding%ld", (long)self.requestId];
    [self.standingDic setObject:modelBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

/**
 * Set Standing
 *
 */
- (void)setStanding:(protocol_standing_remind_operate *)model success:(SuccessBase)successBlock failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setStanding%ld", (long)self.requestId];
    [self.successDic setObject:successBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    } @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}








- (void)getScreenWithModel:(ScreenBase)modelBlock
                   failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getScreen%ld", (long)self.requestId];
    self.screenDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}


- (void)setScreenWithModel:(protocol_screen_brightness_operate *)model
                   success:(SuccessBase)successBlock
                   failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setScreen%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

- (void)getMonitorWithOperate:(protocol_health_monitor_operate *)operate
                        model:(MonitorBase)modelBlock
                      failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getMonitor%ld", (long)self.requestId];
    self.monitorDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [operate data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}


- (void)setMonitorWithModel:(protocol_health_monitor_operate *)model
                    success:(SuccessBase)successBlock
                    failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setMonitor%ld", (long)self.requestId];
    [self.successDic setObject:successBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

- (void)getSleepMonitorWithModel:(SleepMonitorBase)modelBlock
                         failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getSleepMonitor%ld", (long)self.requestId];
    [self.sleepMonitorDic setObject:modelBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}


- (void)setSleepMonitorWithModel:(protocol_sleep_monitor_operate *)model
                         success:(SuccessBase)successBlock
                         failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setSleepMonitor%ld", (long)self.requestId];
    [self.successDic setObject:successBlock forKey:requestKey];
    [self.failureArgumentDic setObject:failureBlock forKey:requestKey];
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}


- (void)getFindPhoneWatchWithModel:(FindPhoneWatchBase)modelBlock
                           failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getFindPhoneWatch%ld", (long)self.requestId];
    self.findPhoneWatchDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}


- (void)setFindPhoneWatchWithModel:(protocol_find_phone_watch_operate *)model
                           success:(SuccessBase)successBlock
                           failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setFindPhoneWatch%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

- (void)getWorldTimeWithModel:(WorldTimeBase)modelBlock
                      failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getWorldTime%ld", (long)self.requestId];
    self.worldTimeDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}


- (void)setWorldTimeWithModel:(protocol_world_time_operate *)model
                      success:(SuccessBase)successBlock
                      failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setWorldTime%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}


- (void)getMessageOnOffWithModel:(MessageOnOffBase)modelBlock
                         failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getMessageOnOff%ld", (long)self.requestId];
    self.messageOnOffDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}


- (void)setMessageOnOffWithModel:(protocol_message_notify_switch *)model
                         success:(SuccessBase)successBlock
                         failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setMessageOnOff%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/// 设置音乐
- (void)setMusicWithModel:(protocol_music_control_operate *)model
                  success:(SuccessBase)successBlock
                  failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setMusic%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/// 设置天气
- (void)setWeatherWithModel:(protocol_weather_operate *)model
                    success:(SuccessBase)successBlock
                    failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setWeather%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/// 获取呼叫配置
- (void)getCallWithModel:(CallBase)modelBlock
                 failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getCall%ld", (long)self.requestId];
    self.callDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

/// 设置呼叫配置
- (void)setCallWithModel:(protocol_call_switch *)model
                 success:(SuccessBase)successBlock
                 failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setCall%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}



/// 获取联系人
- (void)getContactsWithModel:(ContactsBase)modelBlock
                     failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getContacts%ld", (long)self.requestId];
    self.contactsDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

/// 设置联系人
- (void)setContactsWithModel:(protocol_frequent_contacts_operate *)model
                     success:(SuccessBase)successBlock
                     failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setContacts%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/// 获取卡片信息
- (void)getCardWithModel:(CardBase)modelBlock
                 failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getCard%ld", (long)self.requestId];
    self.cardDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

/// 设置快捷卡片
- (void)setCardWithModel:(protocol_quick_card_operate *)model
                 success:(SuccessBase)successBlock
                 failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setCard%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/// 设置运动心率
- (void)setSportHeartRateWithModel:(protocol_exercise_heart_rate_zone *)model
                           success:(SuccessBase)successBlock
                           failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setSportHeartRate%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/// 获取设备支持的运动类型
- (void)getSportTypeWithModel:(SportTypeBase)modelBlock
                      failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getSportType%ld", (long)self.requestId];
    self.sportTypeDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

/// 设置设备的运动排序
- (void)setSportSortWithModel:(protocol_exercise_sport_mode_sort *)model
                      success:(SuccessBase)successBlock
                      failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setSportSort%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/// 获取运动排序
- (void)getSportSortWithModel:(SportSortBase)modelBlock
                      failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getSportSort%ld", (long)self.requestId];
    self.sportSortDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

/// 设置运动子项目数据
- (void)setSportSubWithModel:(protocol_exercise_sporting_param_sort *)model
                     success:(SuccessBase)successBlock
                     failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setSportSub%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/// 获取运动子项目数据
- (void)getSportSubWithModel:(SportSubBase)modelBlock
                     failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getSportSub%ld", (long)self.requestId];
    self.sportSubDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

/// 设置运动自我识别
- (void)setSportIdentificationWithModel:(protocol_exercise_intelligent_recognition *)model
                                success:(SuccessBase)successBlock
                                failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setSportIdentification%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/// 获取运动自我识别查询
- (void)getSportIdentificationWithModel:(SportIdentificationBase)modelBlock
                                failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getSportIdentification%ld", (long)self.requestId];
    self.sportIdentificationDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

/// 设置手表表盘
- (void)setWatchDialWithModel:(protocol_watch_dial_plate_operate *)model
                      success:(SuccessBase)successBlock
                      failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"setWatchDial%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/// 删除表盘
- (void)delWatchDialWithModel:(protocol_watch_dial_plate_operate *)model
                      success:(SuccessBase)successBlock
                      failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"delWatchDial%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

/// 查询表盘
- (void)getWatchDialWithModel:(WatchDialBase)modelBlock
                      failure:(FailureArgument)failureBlock {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getWatchDial%ld", (long)self.requestId];
    self.watchDialDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)setSystemWithType:(NSInteger)type
                  success:(SuccessBase)successBlock
                  failure:(FailureArgument)failureBlock {
    self.requestId += 1;
    NSString *requestKey = [NSString stringWithFormat:@"setSystem%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:[NSNumber numberWithInteger:type]];
}


- (void)getHotKey:(HotKeyBase)modelBlock
          failure:(FailureArgument)failureBlock {
    self.requestId += 1;
    NSString *requestKey = [NSString stringWithFormat:@"getHotKey%ld", (long)self.requestId];
    self.hotKeyDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)setHotKey:(protocol_button_crown_operate*)model
          success:(SuccessBase)successBlock
          failure:(FailureArgument)failureBlock {
    self.requestId += 1;
    NSString *requestKey = [NSString stringWithFormat:@"setHotKey%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    } @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}
- (void)getTableWithModel:(TableBase)modelBlock
                  failure:(FailureArgument)failureBlock {
    self.requestId += 1;
    NSString *requestKey = [NSString stringWithFormat:@"getTable%ld", (long)self.requestId];
    self.tableDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)getContactsSOSWithModel:(SosContactsBase)modelBlock
                        failure:(FailureArgument)failureBlock {
    self.requestId += 1;
    NSString *requestKey = [NSString stringWithFormat:@"getSOSContacts%ld", (long)self.requestId];
    self.sosContactsDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)setContactsSOSWithModel:(protocol_emergency_contacts_operate*)model
                        success:(SuccessBase)successBlock
                        failure:(FailureArgument)failureBlock {
    self.requestId += 1;
    NSString *requestKey = [NSString stringWithFormat:@"setSOSContacts%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    } @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}

- (void)getMenstrualWithModel:(MenstrualBase)modelBlock
                      failure:(FailureArgument)failureBlock {
    self.requestId += 1;
    NSString *requestKey = [NSString stringWithFormat:@"getMenstrual%ld", (long)self.requestId];
    self.menstrualDic[requestKey] = modelBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)setMenstrualWithModel:(protocol_menstruation_operate*)model
                      success:(SuccessBase)successBlock
                      failure:(FailureArgument)failureBlock {
    self.requestId += 1;
    NSString *requestKey = [NSString stringWithFormat:@"setMenstrual%ld", (long)self.requestId];
    self.successDic[requestKey] = successBlock;
    self.failureArgumentDic[requestKey] = failureBlock;
    @try {
        NSData *data = [model data];
        [self.methodChannel invokeMethod:requestKey arguments:data];
    } @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
    }
}


- (void)getBindDeviceWithModel:(DevicesBack)modelBlock {
    self.requestId += 1;
    NSString *requestKey = [NSString stringWithFormat:@"getBindDevice%ld", (long)self.requestId];
    self.devicesBackDic[requestKey] = modelBlock;
    [self.methodChannel invokeMethod:requestKey arguments:@""];
}

- (void)noticeUpdateListenWithBlock:(NoticeUpdateListen)modelBlock {
    self.noticeUpdateListen = modelBlock;
}

- (void)eventReportListenWithBlock:(EventReportListen)modelBlock {
    self.eventReportListen = modelBlock;
}

- (void)exceptionListenWithBlock:(ExceptionListen)modelBlock {
    self.exceptionListen = modelBlock;
}

- (void)getLogPath:(LogPathClosure)modelBlock {
    self.logPathClosure = modelBlock;
    [self.methodChannel invokeMethod:@"getLogPath" arguments:@""];
}

- (void)getFirmwareLogPath:(LogPathClosure)modelBlock {
    self.logPathClosure = modelBlock;
    [self.methodChannel invokeMethod:@"firmwareLogPath" arguments:@""];
}

- (void)getActivityNewTimeDataWithStartTime:(NSString *)startTime
                                    endTime:(NSString *)endTime
                                      model:(ActivitysClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getActivityNewTimeData%ld", (long)self.requestId];
    [self.activitysClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[startTime, endTime]];
}

- (void)getSleepNewTimeDataWithStartTime:(NSString *)startTime
                                 endTime:(NSString *)endTime
                                   model:(SleepsClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getSleepNewTimeData%ld", (long)self.requestId];
    [self.sleepsClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[startTime, endTime]];
}

- (void)getHeartRateNewTimeDataWithStartTime:(NSString *)startTime
                                     endTime:(NSString *)endTime
                                       model:(HeartRatesClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getHeartRateNewTimeData%ld", (long)self.requestId];
    [self.heartRatesClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[startTime, endTime]];
}

- (void)getStressNewTimeDataWithStartTime:(NSString *)startTime
                                  endTime:(NSString *)endTime
                                    model:(StresssClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getStressNewTimeData%ld", (long)self.requestId];
    [self.stresssClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[startTime, endTime]];
}

- (void)getNoiseNewTimeDataWithStartTime:(NSString *)startTime
                                 endTime:(NSString *)endTime
                                   model:(NoisesClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getNoiseNewTimeData%ld", (long)self.requestId];
    [self.noisesClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[startTime, endTime]];
}

- (void)getSpoNewTimeDataWithStartTime:(NSString *)startTime
                               endTime:(NSString *)endTime
                                 model:(OxygensClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getSpoNewTimeData%ld", (long)self.requestId];
    [self.oxygensClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[startTime, endTime]];
}

- (void)getSportRecordWithType:(nullable NSNumber *)type
                         model:(SportsClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getSportRecord%ld", (long)self.requestId];
    [self.sportsClosureDic setObject:model forKey:requestIdString];
    NSNumber *typeValue = (type != nil) ? type : @(1000);
    [self.methodChannel invokeMethod:requestIdString arguments:typeValue];
}

- (void)getSportDetailsWithId:(NSInteger)sportId
                        model:(SportClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getSportDetails%ld", (long)self.requestId];
    [self.sportClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@(sportId)];
}

- (void)getSportTimeDataWithStartTime:(NSString *)startTime
                              endTime:(NSString *)endTime
                                 type:(nullable NSNumber *)type
                                model:(SportsClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getSportTimeData%ld", (long)self.requestId];
    [self.sportsClosureDic setObject:model forKey:requestIdString];
    NSNumber *typeValue = (type != nil) ? type : @(1000);
    [self.methodChannel invokeMethod:requestIdString arguments:@[startTime, endTime, typeValue]];
}
- (void)delSportRecordWithId:(NSInteger)sportId
                       model:(SuccessBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"delSportRecord%ld", (long)self.requestId];
    [self.successDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@(sportId)];
}

- (void)getHrvNewTimeDataWithStartTime:(NSString *)startTime
                               endTime:(NSString *)endTime
                                 model:(HrvsClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getHrvNewTimeData%ld", (long)self.requestId];
    [self.hrvsClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[startTime, endTime]];
}

- (void)getSportUploadStatusWithModel:(SportsClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getSportUploadStatus%ld", (long)self.requestId];
    [self.sportsClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[@""]];
}

- (void)getActivityUploadStatusWithModel:(ActivitysClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getActivityUploadStatus%ld", (long)self.requestId];
    [self.activitysClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[]];
}

- (void)getHeartRateUploadStatusWithModel:(HeartRatesClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getHeartRateUploadStatus%ld", (long)self.requestId];
    [self.heartRatesClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[]];
}

- (void)getHrvUploadStatusWithModel:(HrvsClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getHrvUploadStatus%ld", (long)self.requestId];
    [self.hrvsClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[]];
}
- (void)getNoiseUploadStatusWithModel:(NoisesClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getNoiseUploadStatus%ld", (long)self.requestId];
    [self.noisesClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[]];
}

- (void)getStressUploadStatusWithModel:(StresssClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getStressUploadStatus%ld", (long)self.requestId];
    [self.stresssClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[]];
}

- (void)getSleepUploadDaysWithModel:(SleepsClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getSleepUploadDays%ld", (long)self.requestId];
    [self.sleepsClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[]];
}

- (void)getSpoUploadStatusWithModel:(OxygensClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getSpoUploadStatus%ld", (long)self.requestId];
    [self.oxygensClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@[]];
}


- (void)setDBUserWithUserID:(NSInteger)userID {
    if (userID == 0) {
        userID = 1;
    }
    [self.methodChannel invokeMethod:@"setDBUser" arguments:@(userID)];
}

- (void)updateDBUploadStatusWithType:(SyncServerType)type {
    [self.methodChannel invokeMethod:@"updateDBUploadStatus" arguments:@(type)];
}

- (void)rawQueryDBWithSQL:(NSString *)sql model:(RawQueryDBClosure)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"rawQueryDB%ld", (long)self.requestId];
    [self.rawQueryDBClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:sql];
}

- (void)encodeOnlineFileWithEphemerisModel:(EphemerisModel *)ephemerisModel
                                     model:(EphemerisData)model
                                   failure:(FailureArgument)failure {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"encodeOnlineFile%ld", (long)self.requestId];
    [self.ephemerisClosureDic setObject:model forKey:requestIdString];
    [self.failureArgumentDic setObject:failure forKey:requestIdString];
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[ephemerisModel toDictionary] options:NSJSONWritingPrettyPrinted error:&error];
    if (jsonData) {
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        [self.methodChannel invokeMethod:requestIdString arguments:jsonString];
    } else {
        NSLog(@"Failed to serialize EphemerisModel to JSON: %@", error);
    }
}

- (void)encodeOfflineFileWithEphemerisModel:(EphemerisModel *)ephemerisModel
                                      model:(EphemerisData)model
                                    failure:(FailureArgument)failure {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"encodeOfflineFile%ld", (long)self.requestId];
    [self.ephemerisClosureDic setObject:model forKey:requestIdString];
    [self.failureArgumentDic setObject:failure forKey:requestIdString];
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[ephemerisModel toDictionary] options:NSJSONWritingPrettyPrinted error:&error];
    if (jsonData) {
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        [self.methodChannel invokeMethod:requestIdString arguments:jsonString];
    } else {
        NSLog(@"Failed to serialize EphemerisModel to JSON: %@", error);
    }
}

- (void)encodePhoneFileWithPhoneModel:(NSArray<PhoneModel *> *)phoneModel
                                model:(EphemerisData)model
                              failure:(FailureArgument)failure {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"encodePhoneFile%ld", (long)self.requestId];
    [self.ephemerisClosureDic setObject:model forKey:requestIdString];
    [self.failureArgumentDic setObject:failure forKey:requestIdString];
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[self convertPhoneModelsToArrayOfDictionaries:phoneModel] options:NSJSONWritingPrettyPrinted error:&error];
    if (jsonData) {
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        [self.methodChannel invokeMethod:requestIdString arguments:jsonString];
    } else {
        NSLog(@"Failed to serialize PhoneModel array to JSON: %@", error);
    }
}

- (NSArray<NSDictionary *> *)convertPhoneModelsToArrayOfDictionaries:(NSArray<PhoneModel *> *)phoneModels {
    NSMutableArray<NSDictionary *> *dictionaries = [NSMutableArray array];
    for (PhoneModel *phoneModel in phoneModels) {
        NSDictionary *dictionaryRepresentation = [phoneModel toDictionary];
        [dictionaries addObject:dictionaryRepresentation];
    }
    return [dictionaries copy];
}


- (void)checkLogFile {
    [self.methodChannel invokeMethod:@"checkLogFile" arguments:@""];
}

- (void)parseDialWithPath:(NSString *)path
                    width:(NSInteger)width
                   height:(NSInteger)height
                   radius:(NSInteger)radius
             platformType:(Platform)platformType
                    model:(ParseDialBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"parseDial%ld", (long)self.requestId];
    [self.parseDialClosureDic setObject:model forKey:requestIdString];
    
    [self.methodChannel invokeMethod:requestIdString arguments:@[path,[NSNumber numberWithInteger:width],[NSNumber numberWithInteger:height],[NSNumber numberWithInteger:radius],[NSNumber numberWithInteger:platformType]]];
    
}

- (void)parsePhotoDialWithPath:(NSString *)path
                         width:(NSInteger)width
                        height:(NSInteger)height
                        radius:(NSInteger)radius
                  platformType:(Platform)platformType
                         model:(ParsePhotoDialBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"parsePhotoDial%ld", (long)self.requestId];
    [self.parsePhotoDialClosureDic setObject:model forKey:requestIdString];
    NSArray *arguments = @[path, @(width), @(height), @(radius), @(platformType)];
    [self.methodChannel invokeMethod:requestIdString arguments:arguments];
}

- (void)getPreviewImageWithModel:(PreviewImageBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getPreviewImage%ld", (long)self.requestId];
    [self.previewImageClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@""];
}

- (void)setCurrentColorWithSelectIndex:(NSInteger)selectIndex
                                 model:(ParseDialBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"setCurrentColor%ld", (long)self.requestId];
    [self.parseDialClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:[NSNumber numberWithInteger:selectIndex]];
}

- (void)setCurrentPhotoColorWithPhotoSelectIndex:(NSInteger)photoSelectIndex
                                     selectIndex:(NSInteger)selectIndex
                                           model:(ParsePhotoDialBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"setCurrentPhotoColor%ld", (long)self.requestId];
    [self.parsePhotoDialClosureDic setObject:model forKey:requestIdString];
    NSArray *arguments = @[@(photoSelectIndex), @(selectIndex)];
    [self.methodChannel invokeMethod:requestIdString arguments:arguments];
}

- (void)setCurrentBackgroundImagePathWithSelectIndex:(NSInteger)selectIndex
                                               model:(ParseDialBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"setCurrentBackgroundImagePath%ld", (long)self.requestId];
    [self.parseDialClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:[NSNumber numberWithInteger:selectIndex]];
}

- (void)setCurrentClockPositionWithPhotoSelectIndex:(NSInteger)photoSelectIndex
                                        selectIndex:(NSInteger)selectIndex
                                              model:(ParsePhotoDialBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"setCurrentClockPosition%ld", (long)self.requestId];
    [self.parsePhotoDialClosureDic setObject:model forKey:requestIdString];
    NSArray *arguments = @[@(photoSelectIndex), @(selectIndex)];
    [self.methodChannel invokeMethod:requestIdString arguments:arguments];
}

- (void)setCurrentPhotoBackgroundImagePathWithPhotoImagePaths:(NSArray<NSString *> *)photoImagePaths
                                                  selectIndex:(NSInteger)selectIndex
                                                        model:(ParsePhotoDialBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"setCurrentPhotoBackgroundImagePath%ld", (long)self.requestId];
    [self.parsePhotoDialClosureDic setObject:model forKey:requestIdString];
    NSDictionary *arguments = @{
        @"photoImagePaths": photoImagePaths,
        @"photoSelectIndex": @(selectIndex)
    };
    [self.methodChannel invokeMethod:requestIdString arguments:arguments];
}

- (void)setCurrentFunctionWithSelectIndex:(NSArray<NSNumber *> *)selectIndex
                                    model:(ParseDialBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"setCurrentFunction%ld", (long)self.requestId];
    [self.parseDialClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:selectIndex];
}

- (void)encodeDialWithModel:(DialDataBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"encodeDial%ld", (long)self.requestId];
    [self.dialDataClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@""];
}

- (void)encodePhotoDialWithModel:(DialDataBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"encodePhotoDial%ld", (long)self.requestId];
    [self.dialDataClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@""];
}


- (void)ephemerisInitWithKeyId:(NSString *)keyId publicKey:(NSString *)publicKey model:(gpsBase)model {
    self.requestId += 1;
    _gpsClosure = model;
    NSString *requestIdString = [NSString stringWithFormat:@"ephemerisInit%ld", (long)self.requestId];
    [self.methodChannel invokeMethod:requestIdString arguments:@[keyId, publicKey]];
}

- (void)ephemerisInitGPSWithEphemerisGPSModel:(EphemerisGPSModel *)ephemerisGPSModel{
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"ephemerisGPS%ld", (long)self.requestId];
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[ephemerisGPSModel toDictionary] options:NSJSONWritingPrettyPrinted error:&error];
    if (jsonData) {
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        [self.methodChannel invokeMethod:requestIdString arguments:jsonString];
    } else {
        NSLog(@"Failed to serialize EphemerisModel to JSON: %@", error);
    }
}

- (void)phoneBookInit {
    [self.methodChannel invokeMethod:@"phoneBookInit" arguments:@""];
}

- (void)monitorPhone {
    [self.methodChannel invokeMethod:@"monitorPhone" arguments:@""];
}

- (void)checkPhoneBookPermissions:(BoolBase)model {
    self.requestId += 1;
    
    NSString *requestIdString = [NSString stringWithFormat:@"checkPhoneBookPermissions%ld", (long)self.requestId];
    [self.boolClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@""];
}

- (void)requestPhoneBookPermissions:(BoolBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"requestPhoneBookPermissions%ld", (long)self.requestId];
    [self.boolClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@""];
}

- (void)getOTAUpgradeVersion:(ValueBase)model {
    self.requestId += 1;
    NSString *requestIdString = [NSString stringWithFormat:@"getOTAUpgradeVersion%ld", (long)self.requestId];
    [self.valueClosureDic setObject:model forKey:requestIdString];
    [self.methodChannel invokeMethod:requestIdString arguments:@""];
}

- (void)getOTAUpgradeStateWithFileName:(NSString *)fileName
                              fileData:(NSData *)fileData
                                 model:(UpgradeStateBase)upgradeStateBase
                         uploadFailure:(FailureArgument)uploadFailure {
    self.requestId++;
    NSString *requestKey = [NSString stringWithFormat:@"getOTAUpgradeState%ld", (long)self.requestId];

    self.failureArgumentDic[requestKey] = uploadFailure;
    self.upgradeStateClosureDic[requestKey] = upgradeStateBase;
    
    NSMutableArray *intArray = [[NSMutableArray alloc] initWithCapacity:fileData.length];
    const uint8_t *bytes = (const uint8_t *)fileData.bytes;
    for (NSUInteger i = 0; i < fileData.length; i++) {
        [intArray addObject:@(bytes[i])];
    }
    
    NSDictionary *dic = @{@"fileName": fileName, @"fileData": intArray};
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:&error];
    if (!error) {
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        [self.methodChannel invokeMethod:requestKey arguments:jsonString];
    } else {
        NSLog(@"Error converting dictionary to JSON: %@", error.localizedDescription);
    }
}

- (void)bluetoothStateListen:(BluetoothStateListen)state {
    self.bluetoothStateBlock = state;
}

@end

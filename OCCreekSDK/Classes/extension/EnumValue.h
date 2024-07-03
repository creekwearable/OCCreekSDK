//
//  EnumValue.h
//  OCCreekSDK
//
//  Created by bean on 2024/2/22.
//  Copyright © 2024 bean. All rights reserved.
//

#ifndef EnumValue_h
#define EnumValue_h

typedef NS_ENUM(NSInteger, ConnectionStatus) {
    ConnectionStatusNone = 0,           // no equipment
    ConnectionStatusConnect,            // Connected
    ConnectionStatusConnecting,         // Connecting
    ConnectionStatusSync,               // In sync
    ConnectionStatusSyncComplete,       // Synchronous completion
    ConnectionStatusUnconnected,        // unconnected
    ConnectionStatusInTransition        // Switch device connection
};

// Authorization
typedef NS_ENUM(NSInteger, Authorization) {
    AuthorizationNone = 0,
    AuthorizationVerify
};

// health_storage_sleep_stage_type
typedef NS_ENUM(NSInteger, HealthStorageSleepStageType) {
    SLEEP_STAGE_TYPE_NULL = 0,
    SLEEP_STAGE_TYPE_WEEK,     //Sleep Stages - Waking
    SLEEP_STAGE_TYPE_LIGHT,    //Sleep Stages - Light Sleep
    SLEEP_STAGE_TYPE_DEEP,     //Sleep Stages - Deep Sleep
    SLEEP_STAGE_TYPE_REM       //Sleep Stages - REM
};

// eventIdType
typedef NS_ENUM(NSInteger, EventIdType) {
    EVENT_ID_NULL = 0,
    EVENT_ID_MUSIC_CONTROL,    // Music control
    EVENT_ID_FINE_PHONE,       // Find a mobile phone
    EVENT_ID_SYNC_DATA,        // Notification update data
    EVENT_ID_FINE_WATCH        // Find a watch
};

// SyncServerType
typedef NS_ENUM(NSInteger, SyncServerType) {
    SyncServerTypeActivity = 0,
    SyncServerTypeHearRate,
    SyncServerTypeNoise,
    SyncServerTypePressure,
    SyncServerTypeSleep,
    SyncServerTypeSPO,
    SyncServerTypeSport,
    SyncServerTypeHRV
};

// Sport_goal_type
typedef NS_ENUM(NSInteger, SportGoalType) {
    ENUM_SPORT_GOAL_NO_TARGET = 0,
    ENUM_SPORT_GOAL_DURATION,
    ENUM_SPORT_GOAL_CALORIE,
    ENUM_SPORT_GOAL_PACE,
    ENUM_SPORT_GOAL_SPEED,
    ENUM_SPORT_GOAL_DISTANCE,
    ENUM_SPORT_GOAL_LAP,
    ENUM_SPORT_GOAL_SWIM_DISTANCE
};
// SportType
typedef NS_ENUM(NSInteger, SportType) {
    ORUN = 0,                          // outdoor running
    IRUN,                              // indoor running
    OWALK,                             // walk outdoors
    IWALK,                             // indoor walk
    HIKING,                            // on foot
    OCYCLE,                            // outdoor riding
    ICYCLE,                            // indoor cycling
    CRICKET,                           // cricket
    FOOTBALL,                          // football
    PSWIM,                             // swimming pool
    OSWIM,                             // open area swimming
    YOGA,                              // yoga
    PILATES,                           // Pilates
    DANCE,                             // Dance
    ZUMBA,                             // Zumba
    ROWER,                             // rowing machine
    ELLIPTICAL,                        // elliptical machine
    CTRAINING,                         // core training
    TSTRAINING,                        // traditional strength training
    FSTRAINING,                        // functional strength training
    HIIT,                              // HIIT
    COOLDOWN,                          // Tidy up and relax
    WORKOUT,                           // free training
    FITNESS,                           // fitness
    TRAIL_RUNNING,                     // Trail running
    TREADMILL,                         // Stepper
    AEROBICS,                          // Aerobics
    SIT_UP,                            // Sit-ups
    PLANK,                             // Plank
    JUMPING_JACK,                      // Jackpot
    CHIN_UP,                           // pull up
    PUSH_UP,                           // push ups
    DEEP_SQUAT,                        // squat
    HIGH_KNEE_LIFT,                    // high leg
    DUMBBELL,                          // dumbbel
    BARBELL,                           // barbell
    BOXING,                            // boxing
    KICKBOXING,                        // free sparring
    HORIZONTAL_BAR,                    // horizontal bar
    PARALLEL_BARS,                     // parallel bars
    WALKING_MACHINE,                   // walking machine
    SUMMIT_TRAINERS,                   // climbing machine
    BOWLING,                           // bowling
    TENNIS,                            // tennis
    TABLE_TENNIS,                      // pingpong
    GOLF,                              // golf
    BASKETBALL,                        // basketball
    BADMINTON,                         // badminton
    HOCKEY,                            // hockey
    RUGBY,                             // football
    HANDBALL,                          // handball
    SQUASH,                            // squash
    BASEBALL,                          // baseball
    SOFTBALL,                          // softball
    SHUTTLECOCK,                       // shuttlecock
    SEPAKTAKRAW,                       // sepak takraw
    STREET_DANCE,                      // street dance
    MOUNTAIN_CLINBING,                 // mountaineering
    ROPE_SKIPPING,                     // jump rope
    CLIMB_STAIRS,                      // climbing stairs
    BALLET,                            // ballet
    SOCIAL_DANCE,                      // social dance
    DARTS,                             // darts
    HORSEBACK_RIDING,                  // horse riding
    ROLLER_SKATING,                    // roller skating
    TAI_CHI,                           // Tai Chi
    FRISBEE,                           // Frisbee
    HULA_HOOP,                         // Hula Hoop
    SLEIGH,                            // sled
    SKATING,                           // skate
    BOBSLEIGH_AND_TOBOGGANING,         // snowmobile
    CURLING,                           // Curling
    ICE_HOCKEY,                        // puck
    SURFING,                           // surf
    SAILBOAT,                          // sailboat
    SAILBOARD,                         // windsurfing
    FOLDBOATING,                       // kayak
    CANOEING,                          // rowing
    BOAT_RACE,                         // rowing
    MOTORBOAT,                         // motor boat
    WATER_POLO,                        // water polo
    SLIDING_PLATE,                     // skateboard
    ROCK_CLIMBING,                     // rock climbing
    BUNGEE_JUMPING,                    // bungee jumping
    PARKOUR,                           // Parkour
    OTHER,                             // other
    SPINNING,                          // Spinning bike
    MARTIAL_ARTS,                      // Martial Arts
    TAEKWONDO,                         // Taekwondo
    KARATE,                            // Karate
    GYMNASTICS,                        // gymnastics
    PADEL,                             // cage tennis
    PICKLEBALL,                        // pickleball
    SNOWBOARDING,                      // Snowboarding
    SKIING,                            // Skiing
    PADDLING,                          // Paddle
    BMX,                               // BMX
    FENCING,                           // Fencing
    BILLIARDS,                         // Billiards
    BEACH_SOCCER,                      // Beach Soccer
    BEACH_VOLLEYBALL,                  // Beach volleyball
    DODGEBALL,                         // Dodgeball
    JAZZ,                              // Jazz dance
    LATIN,                             // Latin dance
    SQUARE_DANCE,                      // Square dance
    VOLLEYBALL,                        // Volleyball
    KITE_FLYING,                       // Kite flying
    FISHING,                           // Fishing
    ARCHERY,                           // Archery
    SHOOTING,                          // shooting
    WHITE_WATER_RAFTING,               // Rafting
    ALPINE_SKIING,                     // Alpine skiing
    CROSS_COUNTRY_SKIING,              // cross-country skiing
    BIATHON,                           // biathlon
    DRAGON_BOAT_RACING,                // Dragon boat
    RACING                             // racing
};
typedef NS_ENUM(NSInteger, LanguageType) {
    LanguageTypeInvalid = 0,
    LanguageTypeChinese,
    LanguageTypeEnglish,
    LanguageTypeGerman,
    LanguageTypeSpanish,
    LanguageTypeItalian,
    LanguageTypeJapanese,
    LanguageTypeRussian,
    LanguageTypePortuguese,
    LanguageTypeFrench
};

// BindType
typedef NS_ENUM(NSInteger, BindType) {
    BindTypeBindeNcrypted = 0,    // Authorization code verification
    BindTypeBinNormal,            // direct binding
    BindTypeBindRemove,           // unbind
    BindTypeBindPairingCode       // Pairing code binding
};


typedef NS_ENUM(NSInteger, BluetoothState) {
    BluetoothStateUnknown = 0,    // State unknown, update imminent.
    BluetoothStateUnauthorized,   // The application is not authorized to use the Bluetooth Low Energy role
    BluetoothStateOn,             // Bluetooth is currently powered on and available to use.
    BluetoothStateOff             // Bluetooth is currently powered off
};





#endif /* EnumValue_h */

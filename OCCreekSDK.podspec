#
# Be sure to run `pod lib lint OCCreekSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OCCreekSDK'
  s.version          = '0.1.7'
  s.summary          = 'A short description of OCCreekSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/bean/OCCreekSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bean' => 'huy_1714@126.com' }
  s.source           = { :git => 'https://github.com/bean/OCCreekSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform = :ios, '12.0'
  
  s.vendored_frameworks = [
  'Creek/sbc.framework',
  'Creek/App.framework',
  'Creek/creek_blue_manage.framework',
  'Creek/flutter_blue_plus.framework',
  'Creek/Flutter.framework',
  'Creek/sqflite.framework',
  'Creek/permission_handler_apple.framework',
  'Creek/Protobuf.framework',
  'Creek/shared_preferences_foundation.framework',
  'Creek/FMDB.framework',
  'Creek/FlutterPluginRegistrant.framework',
  'Creek/actres.framework',
  'Creek/image_clipper.framework',
  'Creek/lz4.framework',
  'Creek/ActResSdk.framework',
  'Creek/flutter_contacts.framework',
  'Creek/path_provider_foundation.framework']
  
#  s.dependency 'Flutter'

#  s.source_files = 'OCCreekSDK/Classes/extension/*','OCCreekSDK/Classes/gen/*'
  s.source_files = 'OCCreekSDK/Classes/extension/*'
  s.public_header_files = 'OCCreekSDK/Classes/extension/*.h'
#  s.public_header_files = 'OCCreekSDK/Classes/extension/*.h','OCCreekSDK/Classes/gen/*.h'
  s.subspec "Protos" do |ss|
    ss.source_files = "OCCreekSDK/Classes/gen/*.pbobjc.{h,m}"
    ss.header_mappings_dir = "OCCreekSDK/Classes/gen"
    ss.requires_arc = false
    ss.dependency "Protobuf", '~> 3.11'
  end
#  s.requires_arc = false
#  s.dependency "Protobuf", '~> 3.24.4'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1', }
  s.resource_bundles = {'permission_handler_apple_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
  
  
end

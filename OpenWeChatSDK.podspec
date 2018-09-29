#
# Be sure to run `pod lib lint OpenWeChatSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

  s.name = "OpenWeChatSDK"
  s.version = "1.8.3+10"
  s.license = {
    :type => "MIT",
    :text => "LICENSE"
  }
  s.summary = "WeChatSDK for Cocoapods convenience."
  s.homepage = "https://github.com/JarvanMo/OpenWeChatSDK"
  s.authors = { "JarvanMo" => "jarvan.mo@gmail.com" }
  s.source = {
    :git => "https://github.com/JarvanMo/OpenWeChatSDK.git",
    :tag => "#{s.version}"
  }

  s.source_files = 'OpenWeChatSDK/Classes/**/*'
  s.vendored_libraries = "**/*.a"
  s.static_framework=true
  s.preserve_paths = "OpenWeChatSDK/libWeChatSDK.a"
  s.vendored_libraries = "OpenWeChatSDK/libWeChatSDK.a"
  s.public_header_files = 'OpenWeChatSDK/Classes/**/*.h'
  s.requires_arc = true
  s.frameworks = 'SystemConfiguration','CoreTelephony'
  s.libraries = 'z', 'sqlite3.0', 'c++'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load' }
  


  s.ios.deployment_target = '8.0'


  
  # s.resource_bundles = {
  #   'OpenWeChatSDK' => ['OpenWeChatSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

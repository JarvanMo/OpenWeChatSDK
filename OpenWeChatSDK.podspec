Pod::Spec.new do |s|

  s.name = "OpenWeChatSDK"
  s.version = "1.8.3+9"
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
  s.platform = :ios,'8.0'
  s.module_name = 'OpenWeChatSDK'
  s.source_files = "Headers/**/*.{h,m}"
  s.public_header_files = "Headers/**/*.h"
  s.vendored_libraries = "**/*.a"
  s.static_framework=true
  s.preserve_paths = "libWeChatSDK.a"
#  s.vendored_libraries = "libWeChatSDK.a"

  s.requires_arc = true
  s.frameworks = 'SystemConfiguration','CoreTelephony'
  s.libraries = 'z', 'sqlite3.0', 'c++'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load' }
  


end

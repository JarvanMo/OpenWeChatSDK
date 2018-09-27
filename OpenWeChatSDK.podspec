Pod::Spec.new do |s|

  s.name = "OpenWeChatSDK"
  s.version = "1.8.3"
  s.license = {
    :type => "MIT",
    :text => "LICENSE"
  }
  s.summary = "WeChatSDK for Cocoapods convenience."
  s.homepage = "https://github.com/JarvanMo/OpenWeChatSDK"
  s.authors = {
    "JarvanMo" => "jarvan.mo@gmail.com"
  }
  s.source = {
    :git => "https://github.com/JarvanMo/OpenWeChatSDK.git",
    :tag => "#{s.version}"
  }
  s.platform = :ios,'8.0'
  s.source_files = "Classes/*.h"
  s.public_header_files = "Classes/*.h"
  s.preserve_paths = "libWeChatSDK.a"
  s.vendored_libraries = "libWeChatSDK.a"

  s.requires_arc = false
  s.frameworks = 'SystemConfiguration','CoreTelephony'
  s.libraries = 'z', 'sqlite3.0', 'c++'

end

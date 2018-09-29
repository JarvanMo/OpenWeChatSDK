Pod::Spec.new do |s|
  s.name = "OpenWeChatSDK"
  s.version = "1.8.3+10"
  s.summary = "WeChatSDK for Cocoapods convenience."
  s.license = {"type"=>"MIT", "text"=>"LICENSE"}
  s.authors = {"JarvanMo"=>"jarvan.mo@gmail.com"}
  s.homepage = "https://github.com/JarvanMo/OpenWeChatSDK"
  s.frameworks = ["SystemConfiguration", "CoreTelephony"]
  s.libraries = ["z", "sqlite3.0", "c++"]
  s.requires_arc = true
   s.source = {
    :git => "https://github.com/JarvanMo/OpenWeChatSDK.git",
    :tag => "#{s.version}"
  }

  s.preserve_paths = "libWeChatSDK.a"
  s.vendored_libraries = "libWeChatSDK.a"

  s.platform      = :ios,'8.0'
  s.vendored_framework   = 'OpenWeChatSDK.framework'
end

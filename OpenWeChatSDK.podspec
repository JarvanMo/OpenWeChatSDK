Pod::Spec.new do |s|
  s.name = "OpenWeChatSDK"
  s.version = "1.8.3+6"
  s.summary = "WeChatSDK for Cocoapods convenience."
  s.license = {"type"=>"MIT", "text"=>"LICENSE"}
  s.authors = {"JarvanMo"=>"jarvan.mo@gmail.com"}
  s.source = {
    :git => "https://github.com/JarvanMo/OpenWeChatSDK.git",
    :tag => "#{s.version}"
  }
  s.homepage = "https://github.com/JarvanMo/OpenWeChatSDK"
  s.frameworks = ["SystemConfiguration", "CoreTelephony"]
  s.libraries = ["z", "sqlite3.0", "c++"]
  s.requires_arc = true
  

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'OpenWeChatSDK.framework'
   s.prepare_command = <<-EOF
    # 创建Base Module
    rm -rf OpenWeChatSDK.framework/Modules
    mkdir OpenWeChatSDK.framework/Modules
    touch OpenWeChatSDK.framework/Modules/module.modulemap
    cat <<-EOF > OpenWeChatSDK.framework/Modules/module.modulemap
    framework module OpenWeChatSDK {
      umbrella header "WechatAuthSDK.h"
      umbrella header "WXApi.h"
      umbrella header "WXApiObject.h"
      export *
      link "c++"
      link "z"
      link "sqlite3.0"
    }
    \EOF
  EOF
end

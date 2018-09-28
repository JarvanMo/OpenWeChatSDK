Pod::Spec.new do |s|

  s.name = "OpenWeChatSDK"
  s.version = "1.8.3+4"
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
  s.source_files = "**/*.{h,m}"
  s.public_header_files = "**/*.h"
  s.vendored_libraries = "**/*.a"
  s.static_framework=true
  s.preserve_paths = "libWeChatSDK.a"
#  s.vendored_libraries = "libWeChatSDK.a"

  s.requires_arc = true
  s.frameworks = 'SystemConfiguration','CoreTelephony'
  s.libraries = 'z', 'sqlite3.0', 'c++'

  s.prepare_command = <<-EOF
    # 创建Base Module
    rm -rf Modules
    mkdir Modules
    touch Modules/module.modulemap
    cat <<-EOF > Modules/module.modulemap
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

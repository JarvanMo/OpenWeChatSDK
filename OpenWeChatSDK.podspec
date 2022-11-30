Pod::Spec.new do |s|
  s.name = "OpenWeChatSDK"
  s.version = "1.9.9"
  s.summary = "WeChatSDK for Cocoapods convenience."
  s.license = {"type"=>"MIT", "text"=>"LICENSE"}
  s.authors = {"JarvanMo"=>"jarvan.mo@gmail.com"}
  s.homepage = "https://github.com/JarvanMo/OpenWeChatSDK"

  
   s.source = {
    :git => "https://github.com/JarvanMo/OpenWeChatSDK.git",
    :tag => "#{s.version}"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.public_header_files = "Pod/Library/include/WeChat/*.h"
  s.source_files = 'Pod/Library/include/**/*.h'
  s.vendored_libraries = 'Pod/Library/lib/**/*.a'
  s.frameworks  = 'CFNetwork', 'Security', 'CoreTelephony', 'SystemConfiguration', 'UIKit', 'CoreGraphics', 'Foundation', 'WebKit'
  s.libraries = 'z', 'sqlite3.0', 'c++'

  # s.default_subspec = "precompiled"
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  
  # s.subspec "precompiled" do |ss|
  #   ss.preserve_paths         = "Pod/Library/include/WeChat/*.h", 'Pod/Library/lib/*.a'
  #   ss.vendored_libraries   = 'Pod/Library/lib/*.a'
  #   ss.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Headers/Public/#{s.name}" }
  # end
end

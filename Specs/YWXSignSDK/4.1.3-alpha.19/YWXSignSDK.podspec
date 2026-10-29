Pod::Spec.new do |s|
  s.name = 'YWXSignSDK'
  s.version = '4.1.3-alpha.19'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '15.0'
  s.source = { http: 'https://nexus-inner.51trust.com/repository/sdk-cdn/ywxnow/ios/4.1.3-alpha.19/YWXSignSDK-4.1.3-alpha.19.zip', sha256: '4246819183926418ff6804dd59d9c97c758bcfbcb6ae98d1e4007c74b5155425' }
  s.license = { type: 'MIT' }
  s.vendored_frameworks = 'Core/YWXSignSDK.xcframework', 'Support/Required/YWXSignFoundation.xcframework'
  s.resources = 'Core/YWXSignSDK.bundle'
  s.preserve_paths = 'Core/Vendor/**'
  s.frameworks = 'Foundation', 'Security', 'UIKit', 'CoreTelephony', 'AVFoundation', 'LocalAuthentication', 'CoreBluetooth', 'Photos', 'SystemConfiguration'
  s.libraries = 'c++', 'z', 'resolv'
  # 供应商四核心只有真机切片；模拟器不链接这些二进制，主 SDK 自身提供模拟器切片。
  # Development Pod的宿主目标没有PODS_TARGET_SRCROOT；在spec作用域解析本地源根。
  vendor_root = '${PODS_ROOT}/YWXSignSDK'
  s.swift_version = '5.0'
  s.user_target_xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '$(inherited) $(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME)',
    'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES',
    'OTHER_LDFLAGS' => '$(inherited) -ObjC',
    'OTHER_LDFLAGS[sdk=iphoneos*]' => '$(inherited) -framework UniTrust -framework ShecaSecKitService -framework CAFeatureKit -lscsk',
    'FRAMEWORK_SEARCH_PATHS[sdk=iphoneos*]' => "$(inherited) \"#{vendor_root}/Core/Vendor/UniTrust-6.2.2\" \"#{vendor_root}/Core/Vendor/UniTrust-6.2.2/SSKS\" \"#{vendor_root}/Core/Vendor/UniTrust-6.2.2/BASE\"",
    'LIBRARY_SEARCH_PATHS[sdk=iphoneos*]' => "$(inherited) \"#{vendor_root}/Core/Vendor/UniTrust-6.2.2/SSKS/libscsk\""
  }
end

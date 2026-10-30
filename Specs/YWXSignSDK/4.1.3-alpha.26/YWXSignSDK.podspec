Pod::Spec.new do |s|
  s.name = 'YWXSignSDK'
  s.version = '4.1.3-alpha.26'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://github.com/yiwangxin/YWXSignSDK-Specs/releases/download/ios-4.1.3-alpha.26/YWXSignSDK-4.1.3-alpha.26.zip', sha256: '738e615272a76deb743b834099a4ca36d6ee70dcac804ebfbc1ad87e51272cd4' }
  s.license = { type: 'MIT' }
  # 默认仅安装主入口；兼容入口由宿主显式选择，保持旧Podfile接入方式。
  s.default_subspecs = 'Core'
  s.subspec 'YWXSignFoundation' do |sp|
    sp.vendored_frameworks = 'Support/Required/YWXSignFoundation.xcframework'
  end
  s.subspec 'Core' do |sp|
    # 直接选择Core或兼容子规格时也必须保留上海CA链接依赖。
    sp.preserve_paths = 'Core/Vendor/**'
    sp.vendored_frameworks = 'Core/YWXSignSDK.xcframework'
    sp.resources = 'Core/YWXSignSDK.bundle'
    sp.dependency 'YWXSignSDK/YWXSignFoundation'
  end
  s.subspec 'YWXBjcaSignSDK' do |sp|
    sp.vendored_frameworks = 'Support/Optional/YWXBjcaSignSDK/YWXBjcaSignSDK.xcframework'
    sp.resources = 'Support/Optional/YWXBjcaSignSDK/keyBoard.bundle', 'Support/Optional/YWXBjcaSignSDK/Signet-SDK-Bundle.bundle'
    sp.dependency 'YWXSignSDK/Core'
  end
  s.frameworks = 'Foundation', 'Security', 'UIKit', 'CoreTelephony', 'AVFoundation', 'LocalAuthentication', 'CoreBluetooth', 'Photos', 'SystemConfiguration'
  s.libraries = 'c++', 'z', 'resolv'
  # SDK及上海CA依赖仅支持arm64真机。
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

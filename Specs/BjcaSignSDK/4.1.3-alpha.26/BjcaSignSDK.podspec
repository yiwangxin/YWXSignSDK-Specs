Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.1.3-alpha.26'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://github.com/yiwangxin/YWXSignSDK-Specs/releases/download/ios-4.1.3-alpha.26/YWXSignSDK-4.1.3-alpha.26.zip', sha256: '738e615272a76deb743b834099a4ca36d6ee70dcac804ebfbc1ad87e51272cd4' }
  s.license = { type: 'MIT' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.1.3-alpha.26'
end

Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.1.3-alpha.21'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '15.0'
  s.source = { http: 'https://nexus-inner.51trust.com/repository/sdk-cdn/ywxnow/ios/4.1.3-alpha.21/YWXSignSDK-4.1.3-alpha.21.zip', sha256: '0206a75fa44f37c8b7ab73dc762bac70687afadbe4a30c6e5cd6da639dd743ff' }
  s.license = { type: 'MIT' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.1.3-alpha.21'
end

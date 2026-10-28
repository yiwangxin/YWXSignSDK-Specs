Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.1.3-alpha.16'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '15.0'
  s.source = { http: 'https://nexus-inner.51trust.com/repository/sdk-cdn/ywxnow/ios/4.1.3-alpha.16/YWXSignSDK-4.1.3-alpha.16.zip', sha256: '436ab92c651eea259be5472dc1cb548de692d43fd35ec69783bb14debbbeb46f' }
  s.license = { type: 'MIT' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.1.3-alpha.16'
end

Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.1.2-alpha.9'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '15.0'
  s.source = { http: 'https://nexus-inner.51trust.com/repository/sdk-cdn/ywxnow/ios/4.1.2-alpha.9/YWXSignSDK-4.1.2-alpha.9.zip', sha256: '898fbf4f4b33685eee92c6bf65b7edd47996a76d7109b9e053039bae9bd14448' }
  s.license = { type: 'MIT' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.1.2-alpha.9'
end

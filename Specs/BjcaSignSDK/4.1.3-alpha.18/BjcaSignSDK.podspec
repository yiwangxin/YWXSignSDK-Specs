Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.1.3-alpha.18'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '15.0'
  s.source = { http: 'https://nexus-inner.51trust.com/repository/sdk-cdn/ywxnow/ios/4.1.3-alpha.18/YWXSignSDK-4.1.3-alpha.18.zip', sha256: '2ee8ddd9c98b90e8a0b6f5d9582baacdde77b5fe36c7e2839998dd2bcd765136' }
  s.license = { type: 'MIT' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.1.3-alpha.18'
end


Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.2.2-alpha.10'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://nexus-inner.51trust.com/repository/sdk-cdn/ywxnow/ios/4.2.2-alpha.10/YWXSignSDK-4.2.2-alpha.10.zip', sha256: 'db3f50628cedfb093b8f6b5a34e12612e0b56d045cb6de5f7e163c2407683017' }
  s.license = { type: 'Commercial', file: 'LICENSE' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.2.2-alpha.10'
end

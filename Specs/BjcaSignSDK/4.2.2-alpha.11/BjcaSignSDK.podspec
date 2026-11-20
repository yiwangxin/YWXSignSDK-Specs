Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.2.2-alpha.11'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://nexus-inner.51trust.com/repository/sdk-cdn/ywxnow/ios/4.2.2-alpha.11/YWXSignSDK-4.2.2-alpha.11.zip', sha256: '8f2218052ba5b14da0c01f5c54cfae00540547405d9ead7514c31cff7a68c94c' }
  s.license = { type: 'Commercial', file: 'LICENSE' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.2.2-alpha.11'
end

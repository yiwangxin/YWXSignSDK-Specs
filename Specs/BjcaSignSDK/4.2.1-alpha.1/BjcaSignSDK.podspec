Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.2.1-alpha.1'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://nexus-inner.51trust.com/repository/sdk-cdn/ywxnow/ios/4.2.1-alpha.1/YWXSignSDK-4.2.1-alpha.1.zip', sha256: 'e3ffb3f79bfc5b3197510df5097fac2998eeeca01ff6566a8d16326c53ae0518' }
  s.license = { type: 'Commercial', file: 'LICENSE' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.2.1-alpha.1'
end

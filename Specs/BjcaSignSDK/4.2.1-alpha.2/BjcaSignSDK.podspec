Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.2.1-alpha.2'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://nexus-inner.51trust.com/repository/sdk-cdn/ywxnow/ios/4.2.1-alpha.2/YWXSignSDK-4.2.1-alpha.2.zip', sha256: '489dd3d2882891473848503b05742c3c6ffacab5b862973c7cc2df3bbd3e1234' }
  s.license = { type: 'Commercial', file: 'LICENSE' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.2.1-alpha.2'
end

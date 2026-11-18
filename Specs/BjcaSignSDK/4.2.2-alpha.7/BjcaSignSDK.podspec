Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.2.2-alpha.7'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://nexus-inner.51trust.com/repository/sdk-cdn/ywxnow/ios/4.2.2-alpha.7/YWXSignSDK-4.2.2-alpha.7.zip', sha256: '344be4497f0c5c0c7834aa82ea9721e65ab28f8ed1d81e862e6a0a84f248aacc' }
  s.license = { type: 'Commercial', file: 'LICENSE' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.2.2-alpha.7'
end

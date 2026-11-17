Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.2.2-alpha.4'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://nexus-inner.51trust.com/repository/sdk-cdn/ywxnow/ios/4.2.2-alpha.4/YWXSignSDK-4.2.2-alpha.4.zip', sha256: 'b5661310bad022a0dd785b9c2e402241b3581c80e158f30eaa8fde80b9a10529' }
  s.license = { type: 'Commercial', file: 'LICENSE' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.2.2-alpha.4'
end

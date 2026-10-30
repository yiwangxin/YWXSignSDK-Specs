Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.1.3-alpha.27'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://github.com/yiwangxin/YWXSignSDK-Specs/releases/download/ios-4.1.3-alpha.27/YWXSignSDK-4.1.3-alpha.27.zip', sha256: '111a55b60a298a4f6e9e754587cd81d08c2e890c48318f2829ab1a8248edb75a' }
  s.license = { type: 'MIT' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.1.3-alpha.27'
end

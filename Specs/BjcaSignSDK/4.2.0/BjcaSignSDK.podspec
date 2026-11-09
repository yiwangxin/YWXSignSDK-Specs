Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.2.0'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://github.com/yiwangxin/YWXSignSDK-Specs/releases/download/ios-4.2.0/YWXSignSDK-4.2.0.zip', sha256: '3b597dad86768478b3795d16807de19b826302d3e0faa5f812e971d57f0ff1d3' }
  s.license = { type: 'Commercial', file: 'LICENSE' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.2.0'
end

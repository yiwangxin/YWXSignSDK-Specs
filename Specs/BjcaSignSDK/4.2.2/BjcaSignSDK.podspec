Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.2.2'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://github.com/yiwangxin/YWXSignSDK-Specs/releases/download/ios-4.2.2/YWXSignSDK-4.2.2.zip', sha256: '3a97777427c115b3cff61b3610c55146740cef426c8c6ad55cf71bffc0603237' }
  s.license = { type: 'Commercial', file: 'LICENSE' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.2.2'
end

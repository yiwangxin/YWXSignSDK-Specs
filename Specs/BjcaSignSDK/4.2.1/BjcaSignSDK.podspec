Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.2.1'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://github.com/yiwangxin/YWXSignSDK-Specs/releases/download/ios-4.2.1/YWXSignSDK-4.2.1.zip', sha256: '386eefbf9bd1bacb717b395689737ea80f51ab82e9f2ebb2a966f8c202d72951' }
  s.license = { type: 'Commercial', file: 'LICENSE' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.2.1'
end

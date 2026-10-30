Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.1.3-alpha.25'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://github.com/yiwangxin/YWXSignSDK-Specs/releases/download/ios-4.1.3-alpha.25/YWXSignSDK-4.1.3-alpha.25.zip', sha256: '99e425020a670f8e27a24fd1bc5242e22beafe4887b05159ac7db3a5bdac09c1' }
  s.license = { type: 'MIT' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.1.3-alpha.25'
end

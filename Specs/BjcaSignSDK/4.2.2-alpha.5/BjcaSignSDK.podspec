Pod::Spec.new do |s|
  s.name = 'BjcaSignSDK'
  s.version = '4.2.2-alpha.5'
  s.summary = '医网信当前维护线 iOS 签名 SDK 预发布'
  s.homepage = 'https://doc.51trust.com'
  s.author = { '51Trust' => 'szyx@bjca.org.cn' }
  s.platform = :ios, '13.0'
  s.source = { http: 'https://nexus-inner.51trust.com/repository/sdk-cdn/ywxnow/ios/4.2.2-alpha.5/YWXSignSDK-4.2.2-alpha.5.zip', sha256: 'e60ac86df89dbcbc01104a91a6be7a214df872f24286ca9b709c6ca4187c4a1d' }
  s.license = { type: 'Commercial', file: 'LICENSE' }
  s.vendored_frameworks = 'BjcaSignSDK/BjcaSignSDK.xcframework'
  s.dependency 'YWXSignSDK', '= 4.2.2-alpha.5'
end

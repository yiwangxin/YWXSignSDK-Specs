# 医网信 iOS 签名 SDK

```ruby
source 'https://github.com/yiwangxin/YWXSignSDK-Specs.git'
source 'https://cdn.cocoapods.org/'

platform :ios, '15.0'

target 'YourApp' do
  pod 'BjcaSignSDK', '4.1.3-alpha.13'
end
```

```sh
pod install --repo-update
```

`BjcaSignSDK` 自动安装同版本 `YWXSignSDK`。仅使用 `YWXSignSDK` 接口时，可直接声明对应 Pod。

SDK 二进制从公司 Nexus 通过 HTTPS 下载，客户读取 Specs 和下载包均无需公司账号。

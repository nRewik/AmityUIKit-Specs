
Pod::Spec.new do |s|
    s.name         = "AmityUIKit"
    s.version      = "2.0.3"
    s.summary      = "A brief description of AmityUIKit project."
    s.description  = "An extended description of AmityUIKit project."
    s.homepage     = "https://github.com/EkoCommunications/EkoMessagingSDKUIKit"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2020
                   Permission is granted to...
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source       = { :http => 'https://s3-ap-southeast-1.amazonaws.com/ekosdk-release/ios/amityuikit.zip' }
    s.vendored_frameworks = 'AmityUIKit.xcframework', 'AmitySDK.xcframework', 'Realm.xcframework'
    s.platform = :ios
    s.swift_version = "5"
    s.ios.deployment_target  = '12.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
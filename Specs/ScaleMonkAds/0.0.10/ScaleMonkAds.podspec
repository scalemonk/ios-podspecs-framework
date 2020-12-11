Pod::Spec.new do |s|
  s.name         = 'ScaleMonkAds'
  s.version      = '0.0.10'
  s.summary      = 'TODO'
  s.homepage     = 'TODO'
  s.license      = 'TODO'
  s.author       = { 'TODO (name)' => 'TODO (email)' }
  s.source       = { :git => 'git@github.com:scalemonk/mediation-sdk-ios-framework.git', :tag => s.version.to_s }
  s.swift_version = '5.1'
  
  s.dependency 'Google-Mobile-Ads-SDK', '7.64.0'
  s.dependency 'AppLovinSDK', '6.14.8'
  s.dependency 'FBAudienceNetwork', '6.2.0'
  s.dependency 'UnityAds', '3.5.0'
  s.dependency 'VungleSDK-iOS', '6.8.1'
  s.dependency 'UAObfuscatedString', '~> 0.3.2'
  s.dependency 'DTFoundation/DTASN1', '1.7.13'
  
  s.frameworks = 'iAd', 'WebKit', 'CoreTelephony', 'SystemConfiguration', 'AdSupport'
  
  s.ios.deployment_target = '10.0'
  s.static_framework = true
  s.vendored_framework = "ScaleMonkAds.xcframework"
  s.requires_arc = true
end

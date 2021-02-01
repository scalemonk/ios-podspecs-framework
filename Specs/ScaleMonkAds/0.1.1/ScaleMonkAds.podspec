Pod::Spec.new do |s|
  s.name         = 'ScaleMonkAds'
  s.version      = '0.1.1'
  s.summary      = 'TODO'
  s.homepage     = 'https://www.scalemonk.com'
  s.license      = 'https://www.scalemonk.com/legal/en-US/mediation-license-agreement/index.html'
  s.authors      = { 'ScaleMonk' => 'mediation@scalemonk.com' }
  
  s.swift_version = '5.1'
  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  
  s.frameworks = 'iAd', 'WebKit', 'CoreTelephony', 'SystemConfiguration', 'AdSupport'
  
  s.dependency 'RxSwift', '~> 5'
  s.dependency 'Willow', '~> 5.0'
  
  s.dependency 'UAObfuscatedString', '~> 0.3.2'
  s.dependency 'DTFoundation/DTASN1', '1.7.13'
  
  s.dependency 'Google-Mobile-Ads-SDK', '7.64.0'
  s.dependency 'AppLovinSDK', '6.14.5'
  s.dependency 'FBAudienceNetwork', '6.2.0'
  s.dependency 'IronSourceSDK', '7.0.3.0'
  s.dependency 'UnityAds', '3.5.1'
  s.dependency 'VungleSDK-iOS', '6.8.0'
  
  s.source = { :http => 'https://github.com/nravasi/scalemonk-releases/releases/download/0.1.1/ScaleMonkAds.xcframework.zip'}
  
  s.vendored_framework = 'ScaleMonkAds.xcframework'
end

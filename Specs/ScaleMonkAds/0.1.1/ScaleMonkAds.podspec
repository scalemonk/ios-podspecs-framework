Pod::Spec.new do |s|
  s.name         = 'ScaleMonkAds'
  s.version      = '0.1.1'
  s.summary      = 'TODO'
  s.homepage     = 'https://www.scalemonk.com'
  s.license      = 'https://www.scalemonk.com/legal/en-US/mediation-license-agreement/index.html'
  s.authors      = { 'ScaleMonk' => 'mediation@scalemonk.com' }
  s.source       = { :git => 'git@github.com:scalemonk/mediation-sdk-ios.git', :tag => s.version.to_s }
  
  s.swift_version = '5.1'
  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  
  s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
  
  s.static_framework = true
  s.vendored_framework = 'ScaleMonkAds.xcframework'
  
  s.frameworks = 'iAd', 'WebKit', 'CoreTelephony', 'SystemConfiguration', 'AdSupport'
  
  s.dependency 'RxSwift', '~> 5'
  s.dependency 'Willow', '~> 5.0'
  s.dependency 'SMAnalytics' , '~> 0.2'
  s.dependency 'SMDeviceInfo', '~> 0.1'
  
  s.dependency 'Google-Mobile-Ads-SDK', '7.68.0'
  s.dependency 'AppLovinSDK', '6.14.5'
  s.dependency 'FBAudienceNetwork', '6.2.0'
  s.dependency 'IronSourceSDK', '7.0.3.0'
  s.dependency 'UnityAds', '3.5.1'
  s.dependency 'VungleSDK-iOS', '6.8.0'
end

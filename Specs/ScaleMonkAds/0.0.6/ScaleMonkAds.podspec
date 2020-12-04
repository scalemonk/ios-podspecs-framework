Pod::Spec.new do |s|
  s.name         = 'ScaleMonkAds'
  s.version      = '0.0.6'
  s.summary      = 'TODO'
  s.homepage     = 'TODO'
  s.license      = 'TODO'
  s.author       = { 'TODO (name)' => 'TODO (email)' }
  s.source       = { :git => 'git@github.com:scalemonk/mediation-sdk-ios.git', :tag => s.version.to_s }
  s.default_subspec = 'Core'
  s.swift_version = '5.1'
  
  s.dependency 'RxSwift', '~> 5'
  s.dependency 'SMAnalytics' , '~> 0.1.0'
  s.dependency 'SMDeviceInfo', '~> 0.1.0'
  s.dependency 'Willow', '~> 5.0'
  s.dependency 'Google-Mobile-Ads-SDK', '7.64.0'
  s.dependency 'AppLovinSDK', '6.14.8'
  s.dependency 'FBAudienceNetwork', '6.2.0'
  s.dependency 'UnityAds', '3.5.0'
  s.dependency 'VungleSDK-iOS', '6.8.1'
  s.source = { :http => 'https://github.com/scalemonk/mediation-sdk-ios-framework/releases/download/0.0.6/ScaleMonkAds.xcframework.zip' }
  
  s.subspec 'Core' do |core|
    core.name = 'Core'
    core.ios.deployment_target = '10.0'
    core.vendored_frameworks = "ScaleMonkAds.xcframework"
    core.requires_arc = true
  end
end

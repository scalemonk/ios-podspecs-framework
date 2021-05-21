Pod::Spec.new do |s|
  s.name         = 'ScaleMonkAds-Chartboost'
  s.version      = '8.4.0.1'
  s.summary      = 'ScaleMonk Mediation Adapter for Chartboost'
  s.homepage     = 'https://www.scalemonk.com'
  s.license      = 'https://www.scalemonk.com/legal/en-US/mediation-license-agreement/index.html'
  s.authors      = { 'ScaleMonk' => 'mediation@scalemonk.com' }
  s.source       = { :http => 'https://github.com/scalemonk/ios-podspecs-framework/releases/download/ScaleMonkAds-Chartboost-8.4.0.1/ScaleMonkAds_Chartboost.zip'}
  
  s.swift_version = '5.1'
  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  
  s.dependency 'ScaleMonkAds', '~> 1.0'
  s.dependency 'ChartboostSDK', '8.4.0'
  
  s.static_framework = true
  s.vendored_framework = "ScaleMonkAds_Chartboost/ScaleMonkAds_Chartboost.xcframework"
end

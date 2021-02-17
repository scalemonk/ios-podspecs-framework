Pod::Spec.new do |s|
  s.name         = 'ScaleMonkAds-Tapjoy'
  s.version      = '12.7.0.0'
  s.summary      = 'ScaleMonk Mediation Adapter for Tapjoy'
  s.homepage     = 'https://www.scalemonk.com'
  s.license      = 'https://www.scalemonk.com/legal/en-US/mediation-license-agreement/index.html'
  s.authors      = { 'ScaleMonk' => 'mediation@scalemonk.com' }
  s.source       = { :http => 'https://github.com/scalemonk/mediation-sdk-ios-framework/releases/download/1.0.0-alpha.1/ScaleMonkAds_Tapjoy.zip'}
  
  s.swift_version = '5.1'
  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  
  s.dependency 'ScaleMonkAds', '1.0.0-alpha.1'
  s.dependency 'TapjoySDK', '12.7.0'
  
  s.static_framework = true
  s.vendored_framework = "ScaleMonkAds_Tapjoy/ScaleMonkAds_Tapjoy.xcframework"
end

Pod::Spec.new do |s|
  s.name         = 'ScaleMonkAds-InMobi'
  s.version      = '9.1.1.1'
  s.summary      = 'ScaleMonk Mediation Adapter for InMobi'
  s.homepage     = 'https://www.scalemonk.com'
  s.license      = 'https://www.scalemonk.com/legal/en-US/mediation-license-agreement/index.html'
  s.authors      = { 'ScaleMonk' => 'mediation@scalemonk.com' }
  s.source       = { :http => 'https://github.com/scalemonk/mediation-sdk-ios-framework/releases/download/scalemonk-inmobi-9.1.1.1/ScaleMonkAds_InMobi.zip'}
  
  s.swift_version = '5.1'
  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  
  s.dependency 'ScaleMonkAds', '1.0.0-alpha.6'
  s.dependency 'InMobiSDK', '9.1.1'
  
  s.static_framework = true
  s.vendored_framework = "ScaleMonkAds_InMobi/ScaleMonkAds_InMobi.xcframework"
end

Pod::Spec.new do |s|
  s.name         = 'ScaleMonkAds-Tiktok'
  s.version      = '3.3.6.3'
  s.summary      = 'ScaleMonk Mediation Adapter for Tiktok'
  s.homepage     = 'https://www.scalemonk.com'
  s.license      = 'https://www.scalemonk.com/legal/en-US/mediation-license-agreement/index.html'
  s.authors      = { 'ScaleMonk' => 'mediation@scalemonk.com' }
  s.source       = { :http => 'https://github.com/scalemonk/mediation-sdk-ios-framework/releases/download/1.0.0/ScaleMonkAds_Tiktok.zip'}
  
  s.swift_version = '5.1'
  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  
  s.dependency 'ScaleMonkAds', '~> 1.0'
  s.dependency 'Bytedance-UnionAD', '3.3.6.2'
  
  s.static_framework = true
  s.vendored_framework = "ScaleMonkAds_Tiktok/ScaleMonkAds_Tiktok.xcframework"
end

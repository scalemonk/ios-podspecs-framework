Pod::Spec.new do |s|
  s.name         = 'SMAdsRenderer'
  s.version      = '2.0.4'
  s.summary      = 'Inhouse ad renderer solution for Scalemonk Ads Mediation iOS SDK'

  s.homepage     = 'https://github.com/scalemonk/renderer-sdk-ios.git'
  s.license      = 'Commercial'
  s.author       = 'ScaleMonk'
  s.platform     = :ios, '9.0'
  s.source       = { :http => 'https://github.com/scalemonk/mediation-sdk-ios-framework/releases/download/1.0.0-alpha.6/SMAdsRenderer.zip'}
  
  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.dependency 'GoogleAds-IMA-iOS-SDK', '3.11.3'
  
  s.static_framework = true
  s.vendored_framework = "SMAdsRenderer/SMAdsRenderer.framework"
end

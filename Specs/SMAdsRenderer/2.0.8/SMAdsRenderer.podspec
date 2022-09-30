Pod::Spec.new do |s|
  s.name         = 'SMAdsRenderer'
  s.version      = '2.0.8'
  s.summary      = 'Inhouse ad renderer solution for Scalemonk Ads Mediation iOS SDK'

  s.homepage     = 'https://github.com/scalemonk/renderer-sdk-ios.git'
  s.license      = 'Commercial'
  s.author       = 'ScaleMonk'
  s.platform     = :ios, '9.0'
  s.source       = { :http => 'https://github.com/scalemonk/ios-podspecs-framework/releases/download/smadsrenderer-2.0.8/SMAdsRenderer-2.0.8.framework.zip'}
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.dependency 'GoogleAds-IMA-iOS-SDK', '3.11.3'
  
  s.static_framework = true
  s.vendored_framework = "SMAdsRenderer-2.0.8/ios/SMAdsRenderer.framework"
end

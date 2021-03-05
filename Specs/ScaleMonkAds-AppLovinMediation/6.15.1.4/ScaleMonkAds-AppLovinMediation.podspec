Pod::Spec.new do |s|
  s.name         = 'ScaleMonkAds-AppLovinMediation'
  s.version      = '6.15.1.4'
  s.summary      = 'ScaleMonk Mediation Adapter for AppLovinMediation'
  s.homepage     = 'https://www.scalemonk.com'
  s.license      = 'https://www.scalemonk.com/legal/en-US/mediation-license-agreement/index.html'
  s.authors      = { 'ScaleMonk' => 'mediation@scalemonk.com' }
  s.source       = { :http => 'https://github.com/scalemonk/mediation-sdk-ios-framework/releases/download/1.0.0/ScaleMonkAds_AppLovinMediation.zip' }
  
  s.swift_version = '5.1'
  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  
  s.dependency 'ScaleMonkAds-AppLovin', '6.15.1.1'
  
  s.dependency 'AppLovinMediationAdColonyAdapter', '4.3.1.0'
  s.dependency 'AppLovinMediationByteDanceAdapter', '3.3.6.2.0'
  s.dependency 'AppLovinMediationChartboostAdapter', '8.4.0.1'
  s.dependency 'AppLovinMediationFacebookAdapter', '6.2.1.0'
  s.dependency 'AppLovinMediationFyberAdapter', '7.8.0.0'
  s.dependency 'AppLovinMediationGoogleAdapter', '7.69.0.1'
  s.dependency 'AppLovinMediationInMobiAdapter', '9.1.1.1'
  s.dependency 'AppLovinMediationIronSourceAdapter', '7.0.3.0.2'
  s.dependency 'AppLovinMediationSmaatoAdapter', '21.6.10.0'
  s.dependency 'AppLovinMediationTapjoyAdapter', '12.7.0.0'
  s.dependency 'AppLovinMediationUnityAdsAdapter', '3.5.1.1'
  s.dependency 'AppLovinMediationVungleAdapter', '6.8.1.0'
  
  s.static_framework = true
  s.vendored_framework = "ScaleMonkAds_AppLovinMediation/ScaleMonkAds_AppLovinMediation.xcframework"
end

Pod::Spec.new do |s|
  s.name         = 'ScaleMonkAds'
  s.version      = '1.0.0-alpha.4'
  s.summary      = 'TODO'
  s.homepage     = 'https://www.scalemonk.com'
  s.license      = 'https://www.scalemonk.com/legal/en-US/mediation-license-agreement/index.html'
  s.authors      = { 'ScaleMonk' => 'mediation@scalemonk.com' }
  s.source       = { :git => 'git@github.com:scalemonk/mediation-sdk-ios-framework.git', :tag => s.version.to_s }
  
  s.swift_version = '5.1'
  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  
  s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
  
  s.static_framework = true
  s.vendored_framework = 'ScaleMonkAds.xcframework'
  
  s.frameworks = 'iAd', 'WebKit', 'CoreTelephony', 'SystemConfiguration', 'AdSupport'
  
  s.dependency 'RxSwift', '~> 5'
  s.dependency 'Willow', '~> 5.0'
  s.dependency 'SMAnalytics' , '~> 0.3'
  s.dependency 'SMDeviceInfo', '~> 0.1'
end

provider = "Fyber"

Pod::Spec.new do |s|
    s.name         = 'ScaleMonkAds-' + provider
    s.version      = '7.8.1.6.2.0-test.1'
    s.summary      = 'ScaleMonk Mediation Adapter for Fyber'
    s.homepage     = 'https://www.scalemonk.com'
    s.license      = 'https://www.scalemonk.com/legal/en-US/mediation-license-agreement/index.html'
    s.author       = { 'ScaleMonk' => 'mediation@scalemonk.com' }
    s.source       = { :git => 'git@git.topfreegames.com:scalemonk/mediation/mediation-sdk-ios.git', :tag => provider + "-" + s.version.to_s }
    s.swift_version = '5.1'
    s.ios.deployment_target = '10.0'
    s.macos.deployment_target = '10.0'
    s.requires_arc = true
    s.source_files = 'Mediation/ScaleMonkAds-Fyber/*.{h,m}'
    s.dependency 'Fyber_Marketplace_SDK', '8.1.4'
    s.dependency 'ScaleMonkAds/Core', '~> 6'
    
    s.test_spec 'AdapterTests' do |test_spec|
      test_spec.name = 'AdapterTests'
      test_spec.source_files = 'Mediation/ScaleMonkAds-Fyber/Tests/**/*.{swift,h,m}'
      test_spec.platform = :ios
      test_spec.requires_app_host = false
      test_spec.dependency 'Cuckoo/OCMock'
    end
end

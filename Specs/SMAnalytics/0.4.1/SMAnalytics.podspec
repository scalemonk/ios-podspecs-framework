Pod::Spec.new do |s|
  s.name         = 'SMAnalytics'
  s.version      = '0.4.1'
  s.summary      = 'Objective-C library for analytics'
  s.license      = 'MIT'
  s.author       = 'ScaleMonk'
  s.homepage     = 'https://github.com/scalemonk/ios-analytics-framework.git'
  s.source       = { :http => 'https://github.com/scalemonk/ios-podspecs-framework/releases/download/smanalytics-0.4.1/SMAnalytics.framework.zip' }
  s.ios.deployment_target = '9.0'

  s.libraries = 'sqlite3', 'z'

  s.compiler_flags = "-DSM_ANALYTICS_VERSION=\@\\\"%s\\\"" % [s.version.to_s]
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.default_subspecs = 'Core'
  
  s.subspec 'Core' do |core|
    core.name = 'Core'
    core.vendored_frameworks = "SMAnalytics.framework"
    core.requires_arc = true
    core.frameworks = 'iAd'
    core.frameworks = 'WebKit'
    core.frameworks = 'CoreTelephony'

    core.dependency 'SMDeviceInfo', '~> 0'
  end
end
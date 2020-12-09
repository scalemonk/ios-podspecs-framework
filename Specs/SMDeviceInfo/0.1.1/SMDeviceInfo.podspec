Pod::Spec.new do |s|
  s.name = 'SMDeviceInfo'
  s.version  = '0.1.1'
  s.summary  = 'Objective-C library that standardize basic info about the device'
  s.license  = 'MIT'
  s.author   = 'ScaleMonk'
  s.homepage = 'https://github.com/scalemonk/ios-deviceinfo-framework.git'
  s.source   = { :git => 'git@github.com:scalemonk/ios-deviceinfo-framework', :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.frameworks = 'AdSupport', 'CoreTelephony'
  s.compiler_flags = "-DSM_DEVICE_INFO_VERSION=\@\\\"%s\\\"" % [s.version.to_s]
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.dependency 'UAObfuscatedString', '~> 0.3.2'
  s.dependency 'DTFoundation/DTASN1', '1.7.13'
  
  s.source = { :http => 'https://github.com/scalemonk/ios-deviceinfo-framework/releases/download/0.1.1/SMDeviceInfo.framework.zip' }

  s.vendored_frameworks = "SMDeviceInfo.framework"
end


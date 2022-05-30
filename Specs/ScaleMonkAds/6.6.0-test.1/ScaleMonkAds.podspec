Pod::Spec.new do |s|
    
    if File.exist?("Mediation/MediationTests")
        File.write('Mediation/MediationTests/GeneratedMocks.swift', "")
    end
    
    s.name         = 'ScaleMonkAds'
    s.version      = '6.6.0-test.1'
    s.summary      = 'ScaleMonk Mediation for iOS'
    s.homepage     = 'https://www.scalemonk.com'
    s.license      = 'https://www.scalemonk.com/legal/en-US/mediation-license-agreement/index.html'
    s.author       = { 'ScaleMonk' => 'mediation@scalemonk.com' }
    s.source       = { :git => 'git@git.topfreegames.com:scalemonk/mediation/mediation-sdk-ios.git', :tag => "ScaleMonkAds-" + s.version.to_s }
    s.default_subspec = 'Core'
    s.swift_version = '5.1'
    s.ios.deployment_target = '10.0'
    s.macos.deployment_target = '10.0'

    s.subspec 'Core' do |core|
        core.name = 'Core'
        core.source_files = 'Mediation/Mediation/**/*.{swift,m,h}'
        core.exclude_files = 'Mediation/MediationTests/*.{swift,m,h}', 'Mediation/Mediation/ScaleMonkAds-'
        core.requires_arc = true
        
        core.dependency 'RxSwift', '~> 5'
        core.dependency 'SMAnalytics', '~> 0.4'
        core.dependency 'SMDeviceInfo', '~> 0.1'
        core.dependency 'SMAdsRenderer', '~> 2.0'
        core.dependency 'Willow', '~> 5.0'
    end
    
     s.test_spec 'CoreTests' do |test_spec|
         test_spec.name = 'CoreTests'
         test_spec.source_files = 'Mediation/MediationTests/**/*.{swift,h,m}'
         test_spec.exclude_files = 'Mediation/MediationTests/InfoPListTests.swift', 'Mediation/MediationTests/ProviderTests' # Remove ProviderTests folder once the migration to each podspec is done.
         test_spec.platform = :ios
         test_spec.requires_app_host = false
         test_spec.dependency 'Cuckoo', '1.7.1'
         test_spec.dependency 'Cuckoo/OCMock'
         test_spec.dependency 'Nimble', '~> 10'
         test_spec.dependency 'RxBlocking', '~> 5'
         test_spec.dependency 'RxTest', '~> 5'
         test_spec.dependency 'SwiftProtobuf'

         test_spec.script_phase = {
             :name => 'Cuckoo Script',
             
             :script =>
             '
             OUTPUT_FILE="${PROJECT_DIR}/../../Mediation/MediationTests/GeneratedMocks.swift"
             echo "Generated Mocks File = ${OUTPUT_FILE}"
             INPUT_DIR="${PROJECT_DIR}/../../Mediation/Mediation*"
             echo "Mocks Input Directory = ${INPUT_DIR}"
             FILES=`echo $(egrep -irl --include="*.swift" --exclude="GeneratedMocks.swift" "//cuckoo.mock" ${INPUT_DIR} | tr "\n" " ") | sed "s/ *$//g"`
             echo "Files to include = ${FILES}"
             "${PODS_ROOT}/Cuckoo/run" generate --testable "ScaleMonkAds" \
             --output "${OUTPUT_FILE}" $(echo $FILES)
             ',
             
             :execution_position => :before_compile
         }
     end
     
     s.test_spec 'InfoPlistTests' do |test_spec|
         test_spec.name = 'InfoPlistTests'
         test_spec.source_files = 'Mediation/MediationTests/InfoPListTests.swift'
         test_spec.platform = :ios
         test_spec.requires_app_host = false
         test_spec.dependency 'Nimble', '~> 10'
         test_spec.dependency 'RxBlocking', '~> 5'

         test_spec.info_plist = {
             'ScaleMonkApplicationId' => 'some-test-app-id',
             'ScaleMonkLogVerbosityLevel' => 'DEBUG'
         }
     end
     
#      s.subspec 'Provider-AdMob' do |admob|
#          admob.name         = 'Provider-AdMob'
#          admob.source_files = 'Mediation/ScaleMonkAds-AdMob/*.{h,m}'
#          admob.exclude_files = 'Mediation/ScaleMonkAds-AdMob/ScaleMonkAds-AdMob.h'
#          admob.requires_arc = true
#          admob.dependency 'Google-Mobile-Ads-SDK', '8.7.0'
#          admob.dependency 'ScaleMonkAds/Core', '~> 6'
#      end
     
#      s.subspec 'Provider-AppLovin' do |applovin|
#          applovin.name         = 'Provider-AppLovin'
#          applovin.source_files = 'Mediation/ScaleMonkAds-AppLovin/*.{h,m}'
#          applovin.exclude_files = 'Mediation/ScaleMonkAds-AppLovin/ScaleMonkAds-AppLovin.h'
#          applovin.requires_arc = true
#          applovin.dependency 'AppLovinSDK', '11.3.3'
#          applovin.dependency 'ScaleMonkAds/Core', '~> 6'
#      end
     
#      s.subspec 'Provider-Facebook' do |facebook|
#          facebook.name         = 'Provider-Facebook'
#          facebook.source_files = 'Mediation/ScaleMonkAds-Facebook/*.{h,m}'
#          facebook.exclude_files = 'Mediation/ScaleMonkAds-Facebook/ScaleMonkAds-Facebook.h'
#          facebook.requires_arc = true
#          facebook.dependency 'FBAudienceNetwork', '6.9.0'
#          facebook.dependency 'ScaleMonkAds/Core', '~> 6'
#      end

#      s.subspec 'Provider-IronSource' do |ironsource|
#          ironsource.name         = 'Provider-IronSource'
#          ironsource.source_files = 'Mediation/ScaleMonkAds-IronSource/*.{h,m}'
#          ironsource.exclude_files = 'Mediation/ScaleMonkAds-IronSource/ScaleMonkAds-IronSource.h'
#          ironsource.requires_arc = true
#          ironsource.dependency 'IronSourceSDK', '7.1.5.0'
#          ironsource.dependency 'ScaleMonkAds/Core', '~> 6'
#      end
     
#      s.subspec 'Provider-UnityAds' do |unityads|
#          unityads.name         = 'Provider-UnityAds'
#          unityads.source_files = 'Mediation/ScaleMonkAds-UnityAds/*.{h,m}'
#          unityads.exclude_files = 'Mediation/ScaleMonkAds-UnityAds/ScaleMonkAds-UnityAds.h'
#          unityads.requires_arc = true
#          unityads.dependency 'ScaleMonkAds/Core', '~> 6'
#          unityads.dependency 'UnityAds', '3.6.0'
#      end
     
#      s.subspec 'Provider-Vungle' do |vungle|
#          vungle.name         = 'Provider-Vungle'
#          vungle.source_files = 'Mediation/ScaleMonkAds-Vungle/*.{h,m}'
#          vungle.exclude_files = 'Mediation/ScaleMonkAds-Vungle/ScaleMonkAds-Vungle.h'
#          vungle.requires_arc = true

#          vungle.dependency 'VungleSDK-iOS', '6.10.3'
#          vungle.dependency 'ScaleMonkAds/Core', '~> 6'
#      end

#      s.subspec 'Provider-Chartboost' do |chartboost|
#          chartboost.name         = 'Provider-Chartboost'
#          chartboost.source_files = 'Mediation/ScaleMonkAds-Chartboost/*.{h,m}'
#          chartboost.exclude_files = 'Mediation/ScaleMonkAds-Chartboost/ScaleMonkAds-Chartboost.h'
#          chartboost.requires_arc = true
#          chartboost.dependency 'ChartboostSDK', '8.4.0'
#          chartboost.dependency 'ScaleMonkAds/Core', '~> 6'
#      end
     
#      s.subspec 'Provider-AdColony' do |adcolony|
#          adcolony.name         = 'Provider-AdColony'
#          adcolony.source_files = 'Mediation/ScaleMonkAds-AdColony/*.{h,m}'
#          adcolony.exclude_files = 'Mediation/ScaleMonkAds-AdColony/ScaleMonkAds-AdColony.h'
#          adcolony.requires_arc = true
#          adcolony.dependency 'AdColony', '4.3.1'
#          adcolony.dependency 'ScaleMonkAds/Core', '~> 6'
#     end
     
#      s.subspec 'Provider-TestProvider' do |testprovider|
#          testprovider.name = 'Provider-TestProvider'
#          testprovider.source_files = 'Mediation/Providers/TestProvider/*.{h,m}'
#          testprovider.requires_arc = true
#          testprovider.dependency 'ScaleMonkAds/Core', '~> 6'
#      end
     
#      s.subspec 'Provider-Smaato' do |smaato|
#          smaato.name         = 'Provider-Smaato'
#          smaato.source_files = 'Mediation/ScaleMonkAds-Smaato/*.{h,m}'
#          smaato.exclude_files = 'Mediation/ScaleMonkAds-Smaato/ScaleMonkAds-Smaato.h'
#          smaato.requires_arc = true
#          smaato.dependency 'smaato-ios-sdk', '21.6.10'
#          smaato.dependency 'ScaleMonkAds/Core', '~> 6'
#      end
     
#      s.subspec 'Provider-Amazon' do |amazon|
#          amazon.name         = 'Provider-Amazon'
#          amazon.requires_arc = true
#          amazon.source_files = 'Mediation/ScaleMonkAds-Amazon/*.{h,m}'
#          amazon.exclude_files = 'Mediation/ScaleMonkAds-Amazon/ScaleMonkAds-Amazon.h'
#          amazon.dependency 'AmazonPublisherServicesSDK', '3.2.1'
#          amazon.dependency 'SMAdsRenderer', '2.0.6'
#          amazon.dependency 'ScaleMonkAds/Core', '~> 6'
#      end

#      s.subspec 'Provider-Tiktok' do |tiktok|
#         tiktok.name         = 'Provider-Tiktok'
#         tiktok.source_files = 'Mediation/ScaleMonkAds-Tiktok/*.{h,m}'
#         tiktok.exclude_files = 'Mediation/ScaleMonkAds-Tiktok/ScaleMonkAds-Tiktok.h'
#         tiktok.requires_arc = true
#         tiktok.dependency 'Bytedance-UnionAD', '3.3.6.2'
#         tiktok.dependency 'ScaleMonkAds/Core', '~> 6'
#      end

#      s.subspec 'Provider-Tapjoy' do |tapjoy|
#          tapjoy.name         = 'Provider-Tapjoy'
#          tapjoy.source_files = 'Mediation/ScaleMonkAds-Tapjoy/*.{h,m}'
#          tapjoy.exclude_files = 'Mediation/ScaleMonkAds-Tapjoy/ScaleMonkAds-Tapjoy.h'
#          tapjoy.requires_arc = true
#          tapjoy.dependency 'TapjoySDK', '12.7.1'
#          tapjoy.dependency 'ScaleMonkAds/Core', '~> 6'
#      end

#      s.subspec 'Provider-Maio' do |maio|
#         maio.name         = 'Provider-Maio'
#         maio.source_files = 'Mediation/ScaleMonkAds-Maio/*.{h,m}'
#         maio.exclude_files = 'Mediation/ScaleMonkAds-Maio/ScaleMonkAds-Maio.h'
#         maio.requires_arc = true
#         maio.dependency 'MaioSDK', '1.5.8'
#         maio.dependency 'ScaleMonkAds/Core', '~> 6'
#      end

#      s.subspec 'Provider-InMobi' do |inmobi|
#          inmobi.name         = 'Provider-InMobi'
#          inmobi.source_files = 'Mediation/ScaleMonkAds-InMobi/*.{h,m}'
#          inmobi.exclude_files = 'Mediation/ScaleMonkAds-InMobi/ScaleMonkAds-InMobi.h'
#          inmobi.requires_arc = true
#          inmobi.dependency 'InMobiSDK/Core', '9.1.7'
#          inmobi.dependency 'ScaleMonkAds/Core', '~> 6'
#      end

#      s.subspec 'Provider-Mintegral' do |mintegral|
#           mintegral.name         = 'Provider-Mintegral'
#           mintegral.source_files = 'Mediation/ScaleMonkAds-Mintegral/*.{h,m}'
#           mintegral.exclude_files = 'Mediation/ScaleMonkAds-Mintegral/ScaleMonkAds-Mintegral.h'
#           mintegral.requires_arc = true
#           mintegral.dependency 'MintegralAdSDK', '6.9.1.0'
#           mintegral.dependency 'ScaleMonkAds/Core', '~> 6'
#       end

#      s.subspec 'Provider-MyTarget' do |mytarget|
#          mytarget.name         = 'Provider-MyTarget'
#          mytarget.source_files = 'Mediation/ScaleMonkAds-MyTarget/*.{h,m}'
#          mytarget.exclude_files = 'Mediation/ScaleMonkAds-MyTarget/ScaleMonkAds-MyTarget.h'
#          mytarget.requires_arc = true
#          mytarget.dependency 'myTargetSDK', '5.10.3'
#          mytarget.dependency 'ScaleMonkAds/Core', '~> 6'
#      end

#      s.subspec 'Provider-Yandex' do |yandex|
#          yandex.name         = 'Provider-Yandex'
#          yandex.source_files = 'Mediation/ScaleMonkAds-Yandex/*.{h,m}'
#          yandex.exclude_files = 'Mediation/ScaleMonkAds-Yandex/ScaleMonkAds-Yandex.h'
#          yandex.requires_arc = true
#          yandex.dependency 'YandexMobileAds', '4.4.1'
#          yandex.dependency 'ScaleMonkAds/Core', '~> 6'
#      end

#      s.subspec 'Provider-HyprMX' do |hyprmx|
#          hyprmx.name         = 'Provider-HyprMX'
#          hyprmx.source_files = 'Mediation/ScaleMonkAds-HyprMX/*.{h,m}'
#          hyprmx.exclude_files = 'Mediation/ScaleMonkAds-HyprMX/ScaleMonkAds-HyprMX.h'
#          hyprmx.requires_arc = true
#          hyprmx.dependency 'HyprMX', '6.0.1'
#          hyprmx.dependency 'ScaleMonkAds/Core', '~> 6'
#      end

#      s.subspec 'Provider-Ogury' do |ogury|
#          ogury.name         = 'Provider-Ogury'
#          ogury.source_files = 'Mediation/ScaleMonkAds-Ogury/*.{h,m}'
#          ogury.exclude_files = 'Mediation/ScaleMonkAds-Ogury/ScaleMonkAds-Ogury.h'
#          ogury.requires_arc = true
#          ogury.dependency 'OguryAds', '2.5.1'
#          ogury.dependency 'OguryChoiceManager', '3.1.8'
#          ogury.dependency 'ScaleMonkAds/Core', '~> 6'
#      end

#       s.subspec 'Provider-AppLovinMediation' do |applovinmediation|
#          applovinmediation.name          = 'Provider-AppLovinMediation'
#          applovinmediation.source_files  = 'Mediation/ScaleMonkAds-AppLovinMediation/*.{h,m}'
#          applovinmediation.exclude_files = 'Mediation/ScaleMonkAds-AppLovinMediation/ScaleMonkAds-AppLovinMediation.h'
#          applovinmediation.requires_arc  = true
#          applovinmediation.dependency 'AppLovinSDK', '11.3.3'
#          applovinmediation.dependency 'AppLovinMediationGoogleAdapter', '8.7.0.0'
#          applovinmediation.dependency 'AppLovinMediationByteDanceAdapter', '3.3.6.2.1'
#          applovinmediation.dependency 'AppLovinMediationChartboostAdapter', '8.4.0.2'
#          applovinmediation.dependency 'AppLovinMediationFacebookAdapter', '6.9.0.3'
#          applovinmediation.dependency 'AppLovinMediationFyberAdapter', '8.1.4.1'
#          applovinmediation.dependency 'AppLovinMediationInMobiAdapter', '9.1.7.0'
#          applovinmediation.dependency 'AppLovinMediationIronSourceAdapter', '7.1.5.0.0'
#          applovinmediation.dependency 'AppLovinMediationMintegralAdapter', '6.9.1.0.0'
#          applovinmediation.dependency 'AppLovinMediationSmaatoAdapter', '21.6.10.2'
#          applovinmediation.dependency 'AppLovinMediationTapjoyAdapter', '12.7.1.2'
#          applovinmediation.dependency 'AppLovinMediationUnityAdsAdapter', '3.6.0.1'
#          applovinmediation.dependency 'AppLovinMediationVungleAdapter', '6.10.3.0'
#          applovinmediation.dependency 'AppLovinMediationMyTargetAdapter', '5.10.3.0'
#          applovinmediation.dependency 'AppLovinMediationMaioAdapter', '1.5.8.0'
#          applovinmediation.dependency 'AppLovinMediationYandexAdapter', '4.4.1.0'
#          applovinmediation.dependency 'AppLovinMediationHyprMXAdapter', '6.0.1.0'
#          applovinmediation.dependency 'AppLovinMediationOguryPresageAdapter', '2.5.1.0'
#          applovinmediation.dependency 'ScaleMonkAds/Core', '~> 6'
#      end
end

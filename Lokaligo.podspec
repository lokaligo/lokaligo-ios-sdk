Pod::Spec.new do |spec|
  spec.name             = 'Lokaligo'
  spec.version          = '1.0.7'
  spec.license          = { :type => 'Commercial', :text => "See https://lokaligo.com/terms" }
  spec.homepage         = 'https://lokaligo.com'
  spec.authors          = { 'Lokaligo' => 'mateusz@lokaligo.com' }
  spec.description = <<-DESC
                     Lokaligo SDK for iOS allows for quick and easy management of localization process for your app.
                     It gives you several advantages, including the ability to update the translation strings remotely without the need to update the app itself. It can also capture the screenshots of your app, which can help your translators to understand the usage context of a given phrase.
                    DESC
  spec.libraries        = 'c++', 'xml2', 'z'
  spec.platform         = :ios
  spec.pod_target_xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Lokaligo/"' }
  spec.public_header_files = "LokaligoSDK.framework/**/*.h"
  spec.preserve_paths   = "LokaligoSDK.framework"
  spec.summary          = 'Quick and easy management of the localization process for your app.'
  spec.source           = { :http => 'https://ocs-pl.oktawave.com/v1/AUTH_f6c4cb3b-0d15-4229-a596-a8677b4f5606/downloads/lokaligo_ios_sdk.zip' }
  spec.requires_arc     = true
  spec.ios.deployment_target = "7.0"
  spec.vendored_frameworks = 'LokaligoSDK.framework'
end

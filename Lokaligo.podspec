Pod::Spec.new do |spec|
  spec.name             = 'Lokaligo'
  spec.version          = '1.0.0'
  spec.license          = { :type => 'Commercial', :text => "See https://lokaligo.com/terms" }
  spec.homepage         = 'https://lokaligo.com'
  spec.authors          = { 'Lokaligo' => 'mateusz@lokaligo.com' }
  spec.libraries        = 'c++', 'xml2', 'z'
  spec.platform         = :ios
  spec.pod_target_xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Lokaligo/"' }
  spec.public_header_files = "LokaligoSDK.framework/**/*.h"
  spec.preserve_paths   = "LokaligoSDK.framework"
  spec.summary          = 'Quick and easy management of the localization process for your app.'
  spec.source           = { :http => 'http://ocs-pl.oktawave.com/v1/AUTH_f6c4cb3b-0d15-4229-a596-a8677b4f5606/downloads/lokaligo_ios_sdk.zip' }
  spec.requires_arc     = true
  spec.vendored_frameworks = 'LokaligoSDK.framework'
end

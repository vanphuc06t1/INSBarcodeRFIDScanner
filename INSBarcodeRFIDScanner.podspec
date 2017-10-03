#
# Be sure to run `pod lib lint INSBarcodeRFIDScanner.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'INSBarcodeRFIDScanner'
  s.version          = '1.1.7'
  s.summary          = 'INSBarcodeRFIDScanner for reading barcode and RFID.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
INSBarcodeRFIDScanner for reading barcode and RFID then compare barcode and RFID is match or not
                       DESC

  s.homepage         = 'https://github.com/vanphuc06t1/INSBarcodeRFIDScanner'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'PhucBui' => 'phuc@inspectorio.com' }
  s.source           = { :git => 'https://github.com/vanphuc06t1/INSBarcodeRFIDScanner.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  #s.source_files =  'INSBarcodeRFIDScanner/Classes/**/*.{h,m,swift,plist,a}'
   #s.source_files =  'INSBarcodeRFIDScanner/Classes/Public/*.{h,m,swift,plist,a}', 'INSBarcodeRFIDScanner/Classes/Private/RFID/symbolrfid-sdk/include/*.{h}', 'INSBarcodeRFIDScanner/Classes/Private/RFID/symbolrfid-sdk/*.{a}'
  s.source_files = "INSBarcodeRFIDScanner", "INSBarcodeRFIDScanner/INSBarcodeRFIDScanner.framework"
  s.pod_target_xcconfig = {'SWIFT_VERSION' => '3' ,'ENABLE_BITCODE' => "NO"}
  #s.xcconfig     = {'OTHER_LDFLAGS' => '-lObjC' ,  "ENABLE_BITCODE" => "NO" }
  # s.resource_bundles = {
  #   'INSBarcodeRFIDScanner' => ['INSBarcodeRFIDScanner/Assets/**/**/*.png', 'INSBarcodeRFIDScanner/Classes/Private/*.{storyboard,xib}']
  # }

 # s.frameworks = "CoreBluetooth", "ExternalAccessory"
  s.dependency "ZXingObjC"
  s.vendored_frameworks = ['Pod/Frameworks/ZXingObjC.framework', 'INSBarcodeRFIDScanner/INSBarcodeRFIDScanner.framework', 'Pod/Frameworks/INSBarcodeRFIDScanner.framework',]
 # s.ios.library = 'Pods/INSBarcodeRFIDScanner/INSBarcodeRFIDScanner/Classes/Private/RFID/symbolrfid-sdk/*'
   #s.xcconfig     = {'LIBRARY_SEARCH_PATHS' => "$(SRCROOT)/Pods/**", 'USER_HEADER_SEARCH_PATHS' => '"${PROJECT_DIR}/.."/**' , "ENABLE_BITCODE" => "NO" }
   s.xcconfig     = {
   	'OTHER_LDFLAGS' => '$(inherited) -framework "INSBarcodeRFIDScanner" -framework "ZXingObjC"',
   	'USER_HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_ROOT}/INSBarcodeRFIDScanner/INSBarcodeRFIDScanner/INSBarcodeRFIDScanner.framework/*.h' ,
   	 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/INSBarcodeRFIDScanner/INSBarcodeRFIDScanner/INSBarcodeRFIDScanner.framework/*.{h, a}',
   	  'FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/INSBarcodeRFIDScanner/** $PODS_CONFIGURATION_BUILD_DIR/INSBarcodeRFIDScanner/INSBarcodeRFIDScanner',
   	  'LIBRARY_SEARCH_PATHS' => "$PODS_CONFIGURATION_BUILD_DIR/INSBarcodeRFIDScanner/INSBarcodeRFIDScanner/INSBarcodeRFIDScanner.framework/Headers",
      'ENABLE_BITCODE' => "NO"
   	}
   #	s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2", 'OTHER_LDFLAGS' => "-ObjC" }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

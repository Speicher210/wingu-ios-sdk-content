#
#  Be sure to run `pod spec lint wingu-ios-sdk-content.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "wingu-ios-sdk-content"
  s.version          = '0.1.7'                  #sh_replace_version
  s.summary      = "Content part of wingu iOS SDK"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Content part of wingu iOS SDK. Visit www.wingu.de to know more.
                    DESC

  s.homepage     = "https://github.com/wingu-GmbH/wingu-ios-sdk-content"
 # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license         = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author           = { 'Jakub Mazur' => 'jakub.mazur@wingu.de', 'Mateusz Staruchowicz' => 'mateusz.staruchowicz@wingu.de' }
  s.source           = { :git => 'https://github.com/wingu-GmbH/wingu-ios-sdk-content.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/wingude'
  s.frameworks = 'UIKit','Foundation','CoreLocation','AVFoundation','MapKit'
  s.ios.deployment_target = '9.0'

  s.source_files = 'winguSDKContent.framework/Headers/*'
  s.vendored_frameworks = 'winguSDKContent.framework'
  s.dependency 'wingu-ios-sdk-essentials'

end




#
# Be sure to run `pod lib lint xModalController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'xModalController'
  s.version          = '0.1.0'
  s.summary          = 'xModalController helps you present custom sized modal view controllers.'
  s.swift_version    = '4.1'
  
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'You can show any sized modal views with xModalController. It uses Apple\'s default modal animation.'
  

  s.homepage         = 'https://github.com/akinogunc/xModalController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'akinogunc' => 'akinogunc@gmail.com' }
  s.source           = { :git => 'https://github.com/akinogunc/xModalController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'xModalController/Classes/**/*'
  
  # s.resource_bundles = {
  #   'xModalController' => ['xModalController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

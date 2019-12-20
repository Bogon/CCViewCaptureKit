#
# Be sure to run `pod lib lint CCViewCaptureKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CCViewCaptureKit'
  s.version          = "1.5.0"
  s.summary          = 'A nice iOS View Capture Library which can capture all content.'
  s.swift_version    = '4.0'
  
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                 A nice iOS View Capture Library. SwViewCapture could capture all content of UIWebView & UIScrollView.
  支持swift最低版本4.0，支持iOS最低版本10.0
                  DESC

  s.homepage         = 'https://github.com/Bogon/CCViewCaptureKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bogon' => 'zhangqixcu@gmail' }
  s.source           = { :git => 'https://github.com/Bogon/CCViewCaptureKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files  = ["CCViewCaptureKit/Classes/*.swift", "CCViewCaptureKit/Classes/SwViewCapture.h"]
  s.public_header_files = ["CCViewCaptureKit/Classes/SwViewCapture.h"]
  
  # s.resource_bundles = {
  #   'CCViewCaptureKit' => ['CCViewCaptureKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

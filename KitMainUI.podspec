#
# Be sure to run `pod lib lint KitMainUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KitMainUI'
  s.version          = '1.0'
  s.summary          = 'basic ui class for kit development.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
convince method for coding ui
                       DESC

  s.homepage         = 'https://github.com/anan131435/KitMainUI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anan131435' => 'hanzhifeng@kuaishou.com' }
  s.source           = { :git => 'https://github.com/anan131435/KitMainUI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'KitMainUI/Classes/**/*'
  
   s.resource_bundles = {
     'KitMainUI' => ['KitMainUI/Assets/*.png']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'SVProgressHUD'
   s.dependency 'KitBase' ,'1.2'
   s.dependency 'SnapKit', '~> 5.0.0'
   s.swift_versions = '5.0'
end

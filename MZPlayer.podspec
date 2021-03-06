#
# Be sure to run `pod lib lint MZPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MZPlayer'
  s.version          = '0.1.15'
  s.summary          = 'A short description of MZPlayer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/derek-x-wang/MZPlayer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'derek-x-wang' => 'derekxinzhewang@gmail.com' }
  s.source           = { :git => 'https://github.com/derek-x-wang/MZPlayer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '4.2'
  s.ios.deployment_target = '14.0'
  s.ios.vendored_frameworks = 'MZPlayer.framework'

  s.source_files = 'MZPlayer/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MZPlayer' => ['MZPlayer/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.libraries = 'z'
  s.frameworks = 'CoreMedia', 'CoreVideo', 'AudioToolbox', 'VideoToolbox', 'AVFoundation'
  s.dependency 'MZStreamCore'
  s.dependency 'MZCameraCore'

  s.xcconfig = {
    # GoogleWebRTC (MZCameraCore) wasn't compiled with bitcode
    'ENABLE_BITCODE' => 'NO',
  }
end

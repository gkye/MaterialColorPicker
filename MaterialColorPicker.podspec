#
# Be sure to run `pod lib lint MaterialColorPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MaterialColorPicker'
  s.version          = '0.1.2'
  s.summary          = 'Drop in customizable color picker with material color support.'


  s.description      = 'Customizable color picker with material color support.'

  s.homepage         = 'https://github.com/gkye/MaterialColorPicker.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '=' => 'qwstnz@gmail.com' }
  s.source           = { :git => 'https://github.com/gkye/MaterialColorPicker.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kyegeorge'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Source/**/*'
  s.frameworks = 'UIKit'

end

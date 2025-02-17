#
# Be sure to run `pod lib lint FlexLayoutView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FlexLayoutView'
  s.version          = '1.0.1'
  s.summary          = 'This tool enables developers to create flexible, precise layouts with simple controls and advanced customization options'
  s.description      = <<-DESC
    'This tool provides an intuitive interface for creating flexible layouts, enabling developers to customise elements effortlessly and manage alignment for a tailored design experience.'
                       DESC

  s.homepage         = 'https://github.com/RamDeveloper19/FlexLayoutView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ramkumar' => 'ram.developer19@gmail.com' }
  s.source           = { :git => 'https://github.com/RamDeveloper19/FlexLayoutView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.requires_arc = true

  s.source_files = 'FlexLayoutView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FlexLayoutView' => ['FlexLayoutView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

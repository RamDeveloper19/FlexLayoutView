#
# Be sure to run `pod lib lint FlexLayoutView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FlexLayoutView'
  s.version          = '1.0'
  s.summary          = 'This tool provides an intuitive interface for creating flexible layouts, enabling developers to customise elements effortlessly and manage alignment for a tailored design experience.'
  s.description      = <<-DESC
    'This custom tool is designed to provide developers with an intuitive and efficient way to create flexible layouts. With an emphasis on simplicity and user control, it offers advanced customization options that allow developers to easily tailor elements to their specific needs. The tool includes powerful alignment controls, enabling precise placement and organization of content. Whether you are building a complex interface or a straightforward design, this tool streamlines the process, providing flexibility and ensuring that every layout is polished and perfectly aligned.'
                       DESC

  s.homepage         = 'https://github.com/RamDeveloper19/FlexLayoutView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ramkumar' => 'ram.developer19@gmail.com' }
  s.source           = { :git => 'https://github.com/RamDeveloper19/FlexLayoutView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'FlexLayoutView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FlexLayoutView' => ['FlexLayoutView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

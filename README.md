# FlexLayoutView

[![Platform](https://img.shields.io/cocoapods/p/FlexLayoutView.svg?style=flat)](https://cocoapods.org/pods/FlexLayoutView)
[![Version](https://img.shields.io/cocoapods/v/FlexLayoutView.svg?style=flat)](https://cocoapods.org/pods/FlexLayoutView)
[![License](https://img.shields.io/cocoapods/l/FlexLayoutView.svg?style=flat)](https://cocoapods.org/pods/FlexLayoutView)

# FlexLayoutView

FlexLayoutView is a simple UI component of flexible layout for iOS platform.

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Author](#author)
- [License](#license)

## Features

- [x] Easy To Use
- [x] Flexible In Any Layout View
- [x] Written All By SwiftUI

## Requirements
- iOS 13.0+
- Xcode 15.0+
- SwiftUI

## Example
<p align="center">
    <img src="https://github.com/RamDeveloper19/FlexLayoutView/blob/ff6486cbe9fc5cbc3d11e1a8444a1c0fb05d2375/FlexLayoutViewPreview.png?raw=true" width="250"/>
    <img src="https://github.com/RamDeveloper19/FlexLayoutView/blob/ff6486cbe9fc5cbc3d11e1a8444a1c0fb05d2375/FlexLayoutViewPreview1.png?raw=true" width="250"/>
</p>

## Installation

FlexLayoutView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '12.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'FlexLayoutView'
end
```

## Usage
This SwiftUI view uses a `ZStack` with a `HStack` inside, designed to display a vertical scrollable list of items (in this case, random words).

 * `ZStack & HStack`: The outer `ZStack` ensures that its content is centered, while the `HStack` ensures that all its child views are placed in a horizontal alignment.
 * ScrollView: The ScrollView allows for vertical scrolling without showing scroll indicators (showsIndicators: false). This provides a smooth scrolling experience for a dynamic list of items.
 ``` swift 
 struct ContentView: View {
    
    @State var randomWords = ["Ram kumar", "iOS", "App Developer", "Model", "Mac Book Pro", "Xcode", "Simulator", "SwiftUI", "Swift", "FlexibleLayout", "Apple", "iPhone", "Cocopods", "Pods", "GitHub", "Test Case", "Height & Width", "Size of screen", "Command line", "Terminal", "iOS", "Ready to Install on your project"]
    
    var body: some View {
        ZStack(alignment: .center) {
            HStack {
                ScrollView(.vertical, showsIndicators: false) {
                    FlexCollection(HContentOuterPadding: 12.0, VContentOuterPadding: 10.0 ,alignmentOfView: .leading, itemCount: randomWords.count, layoutWidth: UIScreen.main.bounds.width - 50) { index in
                            FlexLayoutView(title: randomWords[index])
                                .fixedSize()
                        }
                }
                .scrollDisabled(true) // iOS 16.4 Above only
                .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}
 ```
 FlexCollection: A custom view that arranges items based on the specified parameters:
   
   1、HContentOuterPadding: Horizontal padding applied to the content.
   
   2、VContentOuterPadding: Vertical padding applied to the content.
   
   3、alignmentOfView: Aligns the content inside the collection (in this case, leading).
   
   4、itemCount: Defines how many items to display in the collection based on the length of randomWords.
   
   5、layoutWidth: The width of the layout is dynamically set to the screen width minus a margin.
   
   6、FlexLayoutView: Each item in the collection is rendered with a custom layout (FlexLayoutView) that displays the title from randomWords[index] and has a fixed size for better layout control.
   
   7、scrollDisabled(true): Disables scrolling on the ScrollView, ensuring that the content does not scroll independently of the `ZStack` and `HStack`.
   
   8、fixedSize: The .fixedSize(horizontal: false, vertical: true) modifier ensures that the ScrollView can expand vertically based on the content but does not grow horizontally.
 
 This layout is useful for creating a vertically scrollable, dynamically sized list of items with custom padding and alignment.

## Author

Ramkumar, ram.developer19@gmail.com

## License

FlexLayoutView is available under the MIT license. See the LICENSE file for more info.

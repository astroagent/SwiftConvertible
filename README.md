# SwiftConvertible

[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

SwiftConvertible is a light converter library written in Swift.

## Features

- [x] StringConvertible
- [x] IntConvertible
- [x] BoolConvertible
- [x] URLConvertible
- [x] DateConvertible

## Examples

```swift
let date: Date = Date(timeIntervalSince1970: 0)

// Strict converting
do {
    let string = try date.toString()
    print(string)  // "1970-01-01T00:00:00Z"
} catch {
    let origin = error[ConvertErrorOriginKey] as! Date
    print(origin)  // 1970-01-01 00:00:00 +0000
}

// Optional converting (These are same implementations.)
let string = try? date.toString()
let string = date.asString()
print(number)  // Optinal("1970-01-01T00:00:00Z")
```

## Requirements

- iOS 10.0+ / macOS 10.12+ / tvOS 10.0+ / watchOS 3.0+
- Xcode 10.1+
- Swift 4.2+

## Installation

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate SwiftConvertible into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "astroagent/SwiftConvertible" ~> 0.2.0
```

### Manually

If you prefer not to use any of the aforementioned dependency managers, you can integrate SwiftConvertible into your project manually.

#### Embedded Framework

- Open up Terminal, `cd` into your top-level project directory, and run the following command "if" your project is not initialized as a git repository:

  ```bash
  $ git init
  ```

- Add SwiftConvertible as a git [submodule](https://git-scm.com/docs/git-submodule) by running the following command:

  ```bash
  $ git submodule add https://github.com/astroagent/SwiftConvertible.git
  ```

- Open the new `SwiftConvertible` folder, and drag the `SwiftConvertible.xcodeproj` into the Project Navigator of your application's Xcode project.

    > It should appear nested underneath your application's blue project icon. Whether it is above or below all the other Xcode groups does not matter.

- Select the `SwiftConvertible.xcodeproj` in the Project Navigator and verify the deployment target matches that of your application target.
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- You will see two different `SwiftConvertible.xcodeproj` folders each with two different versions of the `SwiftConvertible.framework` nested inside a `Products` folder.

    > It does not matter which `Products` folder you choose from, but it does matter whether you choose the top or bottom `SwiftConvertible.framework`.

- Select the top `SwiftConvertible.framework` for iOS and the bottom one for macOS.

    > You can verify which one you selected by inspecting the build log for your project. The build target for `SwiftConvertible` will be listed as either `SwiftConvertible iOS`, `SwiftConvertible macOS`, `SwiftConvertible tvOS` or `SwiftConvertible watchOS`.

- And that's it!

  > The `SwiftConvertible.framework` is automagically added as a target dependency, linked framework and embedded framework in a copy files build phase which is all you need to build on the simulator and a device.

## License

SwiftConvertible is released under the MIT license. [See LICENSE](https://github.com/astroagent/SwiftConvertible/blob/master/LICENSE.md) for details.

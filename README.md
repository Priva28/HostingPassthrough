# HostingPassthrough

UIHostingController blocks all touches behind it. You basically have to choose SwiftUI, or UIKit? If you want a SwiftUI overlay over a UIKit view for example, you can't have that.

## But SwiftUI and UIKit views deserve to live in harmony.

HostingPassthrough allows you to fix this by inheriting `HostingParentViewController` instead of `UIViewController` in the places where you will be adding SwiftUI views through UIHostingController.

Some cool logic will then be applied overriding the `hitTest` method, which ignores any touches in parts of a `UIHostingController` that don't contain a SwiftUI view and pass it to whatever is underneath instead.

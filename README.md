# HostingPassthrough

UIHostingController blocks all touches behind it. You basically have to choose SwiftUI, or UIKit? If you want a SwiftUI overlay over a UIKit view for example, you can't have that.

### But SwiftUI and UIKit views deserve to live in harmony.

HostingPassthrough allows you to fix this by inheriting `HostingParentViewController` instead of `UIViewController` in the places where you will be adding SwiftUI views through UIHostingController.

Some cool logic will then be applied overriding the `hitTest` method, which ignores any touches in parts of a `UIHostingController` that don't contain a SwiftUI view and pass it to whatever is underneath instead.

<br />
<br />

All these views are tappable, even behind the 3 UIHostingController's!

<img width="564" alt="Screenshot 2023-01-10 at 11 17 47 pm" src="https://user-images.githubusercontent.com/40876121/211558009-617f0ec3-966b-4e0a-b47b-8e39c1f04bcd.png">



https://user-images.githubusercontent.com/40876121/211558172-e02bb348-51f7-4a60-ae39-2dd3d29de06b.mov


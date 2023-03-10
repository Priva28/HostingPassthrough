# HostingPassthrough

UIHostingController blocks all touches behind it. You basically have to choose SwiftUI, or UIKit? If you want a SwiftUI overlay over a UIKit view for example, you can't have that.

### But SwiftUI and UIKit views deserve to live in harmony.

HostingPassthrough allows you to fix this by inheriting `HostingParentController` instead of `UIViewController` in the places where you will be adding SwiftUI views through UIHostingController.

<img width="646" alt="image" src="https://user-images.githubusercontent.com/40876121/211562840-6cecd964-78ee-4f48-839f-6ad93faa0a4a.png">

* If you don't want to force your UIHostingControllers to have clear backgrounds, set `makeBackgroundsClear = false` in `viewDidLoad()`.
* If you want to forward touches on the base view of the HostingParentController to another view, set `forwardBaseTouchesTo` to another UIView you want to handle your touches.
* You can also now inherit or initalise a `HostingParentView` instead of `UIView`, in the case that you aren't adding the `UIHostingController` to a parent view controller. While you should always add the `UIHostingController` to a parent view controller if possible to correctly manage view lifecycle, there may be instances where you are for example adding SwiftUI components to a reusable custom UIView in which case using `HostingParentView` would be acceptable.
* If SwiftUI `ScrollView` is messing up your tap targets, you can set `ignoreTouchesOnSwiftUIScrollView` to `true` so any touches that reach the bottom of a SwiftUI `ScrollView` (*not* the content), are passed to whatever is under it.

Some cool logic will then be applied overriding the `hitTest` method, which ignores any touches in parts of a `UIHostingController` that don't contain a SwiftUI view and pass it to whatever is underneath instead.

#

**TODO:**
* [ ] Fix SwiftUI `.contentShape()` not working.

#

All these views are tappable, even behind the 3 UIHostingController's!

<img width="564" alt="Screenshot 2023-01-10 at 11 17 47 pm" src="https://user-images.githubusercontent.com/40876121/211558009-617f0ec3-966b-4e0a-b47b-8e39c1f04bcd.png">



https://user-images.githubusercontent.com/40876121/211558172-e02bb348-51f7-4a60-ae39-2dd3d29de06b.mov


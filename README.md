# KCDownloadProgressButton

A download button with progress in masked text color.

# Preview

![](https://github.com/songkuixi/KCDownloadProgressButton/blob/master/Preview.gif)

# Usage

Clone this repo and drag `KCDownloadProgressButton.swift` into your project.

## Code

__The type of this button MUST BE Custom.__

```
/// 1. Initialize a button and set other properties
let kcButton = KCDownloadProgressButton(type: .custom)
kcButton.frame = CGRect(x: 30, y: 30, width: 100, height: 30)
kcButton.backgroundColor = .red

/// Set the initial title
kcButton.setTitle("Download", for: .normal)

/// Set the value formatter
kcButton.valueFormatter = {
  return String(format: "Downloaded %d%%", Int($0 * 100))
}

/// Set the title when download is finished
kcButton.finishDownloadTitle = "Done"

/// Set the border width
kcButton.borderWidth = 3.0

self.view.addSubview(kcButton)
```
## StoryBoard / xib

1. Drag a `UIButton` into your view, and set its class to `KCDownloadProgressButton`, and set its type to `Custom`.
2. Set other properties like above.

# TODO

* Enhance efficiency to save memory usage.

# License

__GNU General Public License v3.0__


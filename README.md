# VBPiledView
> simple but highly effective animation and interactivity!

By [v-braun - viktor-braun.de](https://viktor-braun.de).

[![CocoaPods](https://img.shields.io/cocoapods/v/VBPiledView.svg)](https://cocoapods.org/pods/VBPiledView)

## Preview
![image](screen.gif)

## Description
Very simple and beautiful stacked UIView to use as a replacement for an UITableView, UIImageView or as a menu.

Inspired by [this](http://theultralinx.com/2015/10/inspirational-ui-design-15/) post from [ULTRALINX](http://theultralinx.com/):

![image](http://a4.files.theultralinx.com/image/upload/MTMzNjc1NDE5MTIyNTQzMjM1.gif)


## Installation

### CocoaPods
VBPiledView is available on [CocoaPods](http://cocoapods.org). Just add the following to your project Podfile:

```ruby
pod 'VBPiledView', '~> 1.3'
```

Or from GitHub:

```ruby
pod 'VBPiledView', :git => 'https://github.com/v-braun/VBPiledView.git'
```

### Manually
1. Download and drop ```VBPiledView.swift``` in your project.  
2. Congratulations!  

## Usage
See the *Example* Project.

Here is a sample ViewController that use the VBPiledView:

```swift
import VBPiledView
class ViewController: UIViewController, VBPiledViewDataSource {

    @IBOutlet var piledView: VBPiledView!
    
    private var _subViews = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _subViews.append(UIImageView(image: UIImage(named: "ant.jpg")))
        _subViews.append(UIImageView(image: UIImage(named: "bigban.jpg")))
        _subViews.append(UIImageView(image: UIImage(named: "leopard.jpg")))
        _subViews.append(UIImageView(image: UIImage(named: "libertystate.jpg")))
        _subViews.append(UIImageView(image: UIImage(named: "Moonrise.jpg")))
        _subViews.append(UIImageView(image: UIImage(named: "photographer.jpg")))
        
        for v in _subViews{
            v.contentMode = UIViewContentMode.ScaleAspectFill
            v.clipsToBounds = true
            v.backgroundColor = UIColor.grayColor()
        }
        
        piledView.dataSource = self
    }
    
    func piledView(numberOfItemsForPiledView: VBPiledView) -> Int {
        return _subViews.count
    }
    
    func piledView(viewForPiledView: VBPiledView, itemAtIndex index: Int) -> UIView {
        return _subViews[index]
    }
}
```

## Configuration
The sizes of an expanded item and of all collapsed items can be configured relative to the size of the VBPiledView.

```swift

self.piledView.expandedContentHeightInPercent = 70 // expanded content height -> 70% of screen
self.piledView.collapsedContentHeightInPercent = 15 // collapsed content heigt of single item -> 15% of screen

```


### Known Issues

If you discover any bugs, feel free to create an issue on GitHub fork and
send me a pull request.

[Issues List](https://github.com/v-braun/VBPiledView/issues).

## Authors

![image](https://avatars3.githubusercontent.com/u/4738210?v=3&s=50)  
[v-braun](https://github.com/v-braun/)



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

See [LICENSE](https://github.com/v-braun/VBPiledView/blob/master/LICENSE).


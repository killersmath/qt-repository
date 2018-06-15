# Rounded Image
This is a preview of how you can implement a mask and animation to stylize your image container.

## Prerequisites
 * Qt 5.6 or better
 * Qt QML Module
 
### Documentation

Rounded Image Component supports all Item qml Type proprities changes and some extra proprieties: 

* [Item Qml Documentation](http://doc.qt.io/qt-5/qml-qtquick-item.html)
* radius: real
* border
  * border.width: int
  * border.color: color
* backgroundcolor: color - set color of image container
* source: url

 ## Demonstration
 
```
RoundedImage{
  width: 250
  height: 250
  radius: math.min(width, height) / 2
  border.color: "#385d8a"
  border.width: math.min(width, height) / 20
  backgroundColor: "#f2f2f2"
  source: "https://www.gnu.org/graphics/nu-gnu.svg"
}
```

![Demonstration Example Image](https://ddgobkiprc33d.cloudfront.net/f326aae8-7203-4de3-9161-cf356ac4612c.gif)

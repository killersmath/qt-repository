# Rounded Image
This is a preview of how you can implement a mask and animation to stylize your image container.

## Prequisites
 * Qt 5.*
 * Qt QML Module
 
 ## Demo
 
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

### Documentation

Rounded Image Component supports all Item qml Type proprities changes and some extra proprieties: 

* [Item Qml Documentation](http://doc.qt.io/qt-5/qml-qtquick-item.html)
* radius: real
* border
  * border.width: int
  * border.color: color
* backgroundcolor: color - set color of image container
* source: url

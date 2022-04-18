import UIKit

enum SomeEnumeration {
    //Aquí iría la definición del enumerado
}
enum CompassPoint: Int{
    case north = 1
    case south
    case east
    case west
}
enum BarCode{
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}
var capuccino = BarCode.upc(8, 12332, 45624, 4)
capuccino = .qrCode("ASKDFJHKL")

switch capuccino{
    case let .upc(num1, num2, num3, num4):
    print(num1, num2, num3, num4)
case let .qrCode(codeName):
    print(codeName)
}

var compassTwo = CompassPoint.east
compassTwo.rawValue
var compassNorth = CompassPoint(rawValue: 1)

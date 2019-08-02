import UIKit

var str = "Hello, playground"
var st = [1,2,3,4]
print(st)
var shoppingList = ["a","b","c"]
//MySyrup.remove(at: 1)
//print(MySyrup)
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}





enum CompassPoint {
    case north
    case south
    case east
    case west
}
//Binary search
func Bin(arr:[Int],ser:Int)
{var l = 0
    var r = arr.count
    var mid = 0
    while(l<=r)
    {
        mid = (l + r - 1)/2
        if mid == ser
        {
            print("Element found ")
            break
        }
        else
        {
            if ser>=mid
            {l = mid}
            else
            {r = mid}
        }
    
        
    
   
    
}
}

Bin(arr:[1,2,3,4,5,6,7],ser :3)


//example
func Function( _ name:String, _ id:Int)->(String,Int){
    let name1 = name + "hello"
    let id1 = id + 1
    return (name1 , id1)
}
print(Function("Ka",3455))


struct Resolution {
    var width  = 0
    var height = 0
}
let res = Resolution()
print(res.width)
let vga = Resolution(width: 640, height: 480)
print(vga.height)

var shippingCosts = Resolution()

//
class ObservedCirlce {
var radius:Double = 1.0 {
 willSet{
    print("Radius is changing from \(radius) to \(newValue).")
}

}
 var area:Double {
return(3.14 * radius * radius)
 }
}

var oc = ObservedCirlce()
oc.radius = 2.5 // prints "Radius is changing from 1.0 to 2.5."
 oc.area // 19.625
/*

struct Color {
    var red, green, blue: Double
    init( red: Double,green: Double,blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}
let magenta = Color(1,1,0)
let halfGray = Color(white: 0.5)
print(magenta)
*/

class hand{
    
    
    var a = ["rr","jkg","JKI"]
    subscript(index : Int) -> String{
        return a[index]
    }
}
var c = hand()
print(c[1])


class Name{
    var Name : String
    
    init (Name:String){
        self.Name = Name
    }
    init (Name : String,Ha : String)
    {print("Hello every1 my name is \(Name) and \(Ha)")
    }}
var y = Name(Name: "")


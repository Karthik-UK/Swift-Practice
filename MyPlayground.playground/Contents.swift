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
    var width  =  0
    var height = 0
}
let res = Resolution()
print(res.width)
let vga = Resolution(width: 640, height: 480)
print(vga.height)
                        

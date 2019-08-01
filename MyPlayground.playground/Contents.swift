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

Bin(arr:[1,2,3,4,5,6,7],ser :3documenrts)



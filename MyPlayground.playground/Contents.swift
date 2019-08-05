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






let Somechar : Character = "a"
switch Somechar {
case "a":print("fvvgdfgvfgv")
        fallthrough
case "b":print("ui")
    
default:print("ghjnjnhjmj")
    
    
}





enum ErrorsToThrow: Error {
    case nameIsEmpty
}




class Human {
    var name:String?
    init(name:String?) throws {
            guard let name = name else {
            throw ErrorsToThrow.nameIsEmpty
        }
        self.name = name
    }
}


do {
    let humanObj = try? Human(name: nil)
} catch ErrorsToThrow.nameIsEmpty {
    print("The name is empty.Cannot initialize human")
}
let humanObj1 = try? Human(name: "5")

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]
var movieCount = 0
var songCount = 0

for i in library {
    if i is Movie {
        movieCount += 1
    } else if i is Song {
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")

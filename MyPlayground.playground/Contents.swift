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


//do {
//    let humanObj = try? Human(name: nil)
//} catch ErrorsToThrow.nameIsEmpty {
//    print("The name is empty.Cannot initialize human")
//}
//let humanObj1 = try? Human(name: "5")

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



func printAndCount(strin: String) -> Int {
    print(strin)
    return strin.count
}
func printWithoutCounting(string: String) {
    let _ = printAndCount(strin: string)
}
printAndCount(strin: "hello, world")
// prints "hello, world" and returns a value of 12
printWithoutCounting(string: "hello, world")
// prints "hello, world" but does not return a value



////arc
//class Employee {
//    let empName: String
//    weak var dept: Department?
//
//    init(empName: String) {
//        self.empName = empName
//        print("\(empName) is being initialized")
//    }
//
//    deinit {
//        print("\(empName) is being deinitialized")
//    }
//}
//class Department {
//    let deptName: String
//     var emp: Employee?
//    init(deptName: String) {
//        self.deptName = deptName
//        print("\(deptName) is being initialized")
//    }
//
//    deinit {
//        print("\(deptName) is being deinitialized")
//    }
//}
//
//var john :Employee?
//Employee(empName: "john")
//var iOS : Department? = Department(deptName: "iOS")
//john?.dept = iOS
//iOS?.emp = john
//iOS = nil
//john = nil
//





// nestede func

func operate() -> (Int, Int) -> Int {
    
    func add(num1:Int, num2:Int) -> Int {
        return num1 + num2
    }
    
    func subtract(num1:Int, num2:Int) -> Int {
        return num1 - num2
    }
    let operation = add
    return operation
}
let operation = operate()
let result = operation(2, 3)
print(result)

func main() -> (Int,String) -> String {
    func roll(r :Int ,Name:String) -> String
    {  print(r)
        return "Name is \(Name)\(r)"
    }
    let c = roll
    return c
    
}
let p = main()
let e = p(12 , "qet")


class Numbers
{
    var a : Int
    var b : Int
    
    func add()
    {
        let sum = a + b
        print(sum)
    }
    
    init()
    {
        self.a = 0
        self.b = 0
    }
    
    init(a : Int, b : Int)
    {
        self.a = a
        self.b = b
    }
}

let obj = Numbers(a : 8, b : 3)
obj.add()

extension Numbers
{
    //var c : Int = 0     Extensions cannot contain stored properties
    
    var average : Int{    //Can contain only comp properties
        return (a+b)/2
    }
    
    convenience init(b : Int) {
        self.init()
        self.b = b
    }
    
    
    func multiply()
    {
        let product = a*b
        print(product)
    }
}

obj.multiply()

var avg = obj.average

let obj2 = Numbers(b : 4)
obj2.add()
obj2.multiply()




private class cricket {
    public func printIt() {
        print("Welcome to Swift 4 Super Class")
    }
}

//private class tennis: cricket {
//    override public func printIt() {
//        print("Welcome to Swift 4 Sub Class")
//    }
//}
//
 fileprivate let  cricinstance = cricket()
cricinstance.printIt()

//private let  tennisinstance = tennis()
//tennisinstance.printIt()
//


class classA {
    var a = 5
        init(a:Int) {
        self.a = a
        print(a)
    }
}
//class classB: classA {
//        super init() {
//        let  b = 30
//        print(b)
//    }}

let rest = classA (a:4)
//let print = classB()



var rrr : Int?

print(rrr = 4)


struct Names {
    var a : Int = 2
    init(a: Int ) {
        self.a = a
        print(a)
    }
}
Names(a: 5)
let divide = {(val1:Double,val2:Double)->Double in return val1/val2}
let cc = divide(12,13)
print(cc)




func a( _ st :String, _ ins :Int)->(String,Int){
  return (st,ins)
    
}
a("jj", 54)

//var aaaa:Int? = 4
//print(aaaa!)
//aaaa = nil
//print(aaaa)
var myString:String? = "Hello, Swift 4!"
//myString = "Hello, Swift 4!"

if let yourString = myString {
    print("Your string has - \(yourString)")
} else {
    print("Your string does not have a value")
}


var a : Int? = 5
print(type(of: a))
//a = nil
var = a!
e = nil

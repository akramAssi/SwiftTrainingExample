import UIKit

func arrayOfMultiples(num : Int, length:Int)-> Array<Int>
{
    var result = [Int]()
    for i in 1...length{
        result.append(num*i)
    }
    return result
}
var xc = arrayOfMultiples(num:7,length:  5)
print(xc)

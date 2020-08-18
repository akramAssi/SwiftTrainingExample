import UIKit
//the map , filter , and reduce functions commonly used in functional programming
//Example of map, flatmap, reduce and filter  with different Approach

struct Person
{
    let name: String
    let address: String
    let age: Int
    let income: Double
    let cars: [String]
}

let peopleArray = [ Person(name:"Santosh", address: "Pune, India", age:34, income: 100000.0, cars:["i20","Swift VXI"]),
                    Person(name: "John", address:"New York, US", age: 23, income: 150000.0, cars:["Crita", "Swift VXI"]),
                    Person(name:"Amit", address:"Nagpure, India", age:17, income: 200000.0, cars:Array())]

//------Map-----
//this is traditional way:

var Tname: [String] = Array()

for person in peopleArray
{
    Tname.append(person.name)
}
print("traditional way: \(Tname)")

// use map Approach 1:
func getName (_ p:Person)-> String
{
    return p.name
}
let a1_names = peopleArray.map({ (person) -> String in
    return person.name
})
print("Approach 1: \(a1_names)")

//ex 1 use map Approach 2:
let a2_names = peopleArray.map({ $0.name })
print("Approach 2: \(a2_names)")

//ex 2
let a2_cars = peopleArray.map({ $0.cars })
print("Approach 2: \(a2_cars)")

//ex3
let a22_names = peopleArray.map({ getName($0) })
print("Approach 2 use function : \(a22_names)")

////////
var array_num = [123,45,13,665,132,88]
let test1 = array_num.map({ $0 * -1 + 23})
print(test1)
//------flatMap
//ex 1 flatMap
let flatCars = peopleArray.flatMap({ $0.cars })
print("Flatmap ex 1: \(flatCars)")

//ex 2 faltMap
let aPersonArray = peopleArray.flatMap { $0.cars }.flatMap { $0 }
print("Flatmap ex 2: \(aPersonArray)")

//ex 1------Filter

let filteredNames = peopleArray.filter( {$0.age > 18 }).map({ return $0.name })
print("filter age > 18 : \(filteredNames)")

//ex 2-----filter
var xccx=["dasd","dsds","eqeqw"]
func isFourLetters(_ arr: [String]) -> [String] {
    return arr.filter({$0.count == 4}).map({return $0})
}

print(isFourLetters(xccx))


//ex 1------Reduce Approach 1

let totalIncome = peopleArray.reduce(0) {(result, next) -> Double in
    return result + next.income
}
print("total income : \(totalIncome)")

//ex 2 ------Reduce Approach 1
let numbers = [23.23478, -2.32784, 34.328, 33.28347]
let sum = numbers.reduce(0) { (result, next) -> Double in
    return result + next
}
print("Sum: \(sum)")

// More concise code
//ex 2 ------Reduce Approach 2
let conciseSum = numbers.reduce(0, +)
print("conciseSum: \(conciseSum)")

//ex 3------Reduce Approach 2
// same flatMap and solve  problem if collection in collection is optional
let flatmapArray2 = peopleArray.map({$0.cars}).reduce([], +)
print("flatmapArray2 : \(flatmapArray2)")


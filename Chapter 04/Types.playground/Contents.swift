import Foundation

//different ints
let number: Int = 2
let number1: Int8 = 4 // 1 byte, range -127 to 127
let number2: Int16 = 14
let number3: Int32 = 40 // 4 bytes, range -2147483648 to 2147483647
let number4: Int64 = 400 // 8 bytes, range -9223372036854775808 to 9223372036854775807

let number5: UInt = 2
let number6: UInt8 = 4 // 1 byte, range 0 to 255
let number7: UInt16 = 14
let number8: UInt32 = 40 // 4 bytes, range 0 to 4294967295
let number9: UInt64 = 400 // 8 bytes, range 0 to 18446744073709551615

let float: Float = 4.332// 4 bytes, range 1.2E-38 to 3.4E+38
let double: Double = -555.543// 8 bytes, range 2.3E-308 to 1.7E+308

let bool: Bool = true // true or false

let name: String = "Some string" //By mentioning the type
let place = "A beautiful place" //Direct initialisation with string literals
var emptyString = String() //Empty string declaration
let specialCharacter = "\u{25}" //special characters can be introduced in a string with a backslash
let multiLineString = """
Some strings are multiline
and they should be defined \
like this
""" //These demiliters should always be on a new line

let sampleString = "Sample" + " string" //concatenate strings using a simple addition sign
var anotherSample = "This is"
anotherSample += " a new sample"
anotherSample.append("!") //we can use the append function

let age = 144
let ageString = "I am \(age) years old." // we can introduce any kind of value

for character in name {
    print(character)
}

var occupationString = "iOS Developer"
occupationString[occupationString.startIndex] // i
occupationString[occupationString.index(before: occupationString.endIndex)] // r
occupationString[occupationString.index(after: occupationString.startIndex)] // O
let index = occupationString.index(occupationString.startIndex, offsetBy: 7)
occupationString[index] // e
occupationString.insert("!", at: index)
print(occupationString)
occupationString.remove(at: index)
print(occupationString)

let range = occupationString.index(occupationString.startIndex, offsetBy:4)..<occupationString.endIndex
//the range syntax is "starting point, offset and then end point). In the above example we offset the startIndex by 4, so we start with D until we reach the endIndex, thus removing the word "Developer"
occupationString.removeSubrange(range)
print(occupationString)

let twoWords = "First, Second"
let wordIndex = twoWords.firstIndex(of: ",") ?? twoWords.endIndex //here the starting point is the ',' till the endIndex
let firstWord = twoWords[..<wordIndex] //the first word is First
let longTermSubstring = String(firstWord) //Convert the substring so that you can use it for long term

let first = "First"
let second = "First"
let third = "Third"
if first == second {
    print("First and second are equal")
}

if second != third {
     print("second and third are not equal")
}

//Array
let immutableArray : [Int] = [0, 0, 0] // creates an empty Int array with 3 initial values of [0, 0, 0]
var mutableArray = Array(repeating: 0, count: 3) // this does the same job as the above array. But because we have declared it as a variable it is mutable
let emptyArray = [Int]() //general syntax to define an array
var addedArray = immutableArray + mutableArray //adding two arrays of the same type is very simple. Just use the '+' operator
var typeInferedArray = ["Hello", "Bonjour", "Namaste"] //Declaring an array with literals, Swift can infer the type

mutableArray.append(22) //adding new values
mutableArray += [44]
mutableArray += [55, 66, 77] //adding multiple values at the same time
mutableArray[3] //accessing value at a specific index
mutableArray[0] = 11 //changing the value at a specific index
emptyArray.isEmpty //checking if an array is empty
addedArray.count //to check the number of elements
mutableArray.contains(22) //checks if an array contains a certain element. Returns true if found
mutableArray.remove(at: 2) //remove an object at the index you want
mutableArray.removeFirst() //removes the first object
mutableArray.removeLast() //removes the last object
mutableArray.reverse() //reverses the array

//Sets
let immutableSet : Set<String> //the type of a set must be mentioned
var mutableSet : Set = ["Apples", "Oranges", "Apples"] //the result of this would be a set with {Apples, Oranges}. We have used the array literal [] to define a set.
let emptySet = Set<Int>() //this is how you can declare a set
var typeInferredSet : Set = [1, 3, 2] //When initialized with values, Swift can infer the value

mutableSet.isEmpty //checking if a set is empty
mutableSet.count //to check the number of elements in the set
mutableSet.insert("String")//insert a new object in a set
mutableSet.contains("Apples") //check if the set has a specific value
mutableSet.remove("String") //remove a member by its name
mutableSet.removeFirst() //removes the first object

let animalsSet : Set = ["tiger", "cat", "lion", "dog", "cat", "cow", "hamster"]
let petSet : Set = ["dog", "hamster", "cat", "cow"]
let birdSet : Set = ["crow", "sparrow", "cuckoo"]
let commonSet = animalsSet.intersection(petSet) //finds the common members of the two sets
let uncommonSet = animalsSet.symmetricDifference(petSet) //the opposite of intersection
let mixedSet = petSet.union(birdSet) //adds two sets
petSet.isSubset(of: animalsSet) //returns true if second set has all the values of the first set. here true
petSet.isDisjoint(with: birdSet) //to determine if two sets are completely different
animalsSet.isSuperset(of: petSet) //returns true if the first set has all the values of the second set. here true

//Dictionary
let dictionary : Dictionary<String, String> //A standard declaration of a dictionary
let emptyDictionary = [Int : String]() //Creates an empty dictionary with keys of type Int and values of type String
var mutableDictionary = ["key1" : "value 1", "key2" : "value 2", "key3" : "value 3"] //creating a set with default values
mutableDictionary.isEmpty //to check if the set is empty
mutableDictionary.count //number of members
mutableDictionary["key4"] = "value 4" //add a new member
mutableDictionary["key3"] = "apple" //update an existing member
mutableDictionary.updateValue("key1", forKey: "watermelon") //another way to update an existing member
mutableDictionary.values //returns all the values of the dictiobary
mutableDictionary.removeValue(forKey: "key1") //remove value for a key
mutableDictionary["key4"] = nil //removes the value for a key. same as above

//Tuples
var infoTuple = ("Adam", "Scott", 43, 09892356) //Creating a tuple
infoTuple.0 //accessing a tuple by its index
infoTuple.0 = "Tom" //modifying a tuple with the help of index
let labelledTuple = (name: "Adam", lastName:"Scott", age:43, tel:09892356) //A tuple with labels
labelledTuple.lastName //accessing a tuple by its label name

//a simple if statement
if mutableDictionary.count > 2 {
    print("Some random error message")
}

//an if statement with a alternate statement to execute
if mutableDictionary.isEmpty {
    print("The dictionary is empty")
} else {
    print("The dictionary has some value")
}

//multiple if statements
if mutableDictionary["key3"] == "apple" {
    print("The dictionary has an apple")
} else if mutableDictionary["key3"] == "orange" {
    print("The dictionary has an orange")
}

let animal = "Tiger"
switch animal {
case "Cat", "cat": //compound case
    print("Meow Meow")
case "Tiger":
    print("Big Meow")
case "Lion":
    print("Very big Meow")
case "Dog":
    print("Bow Bow")
default:
    print("I am a human")
}

//For loop
for number in mutableArray {
    print(number)
}

for (key, value) in mutableDictionary {
    print("key: \(key) - value: \(value)")
}

//closed range operator. starts at 0 and ends at 3
for index in 0...3 {
    print("index \(index) - \(mutableArray[index])")
}

//half open range operator. starts at 0 and ends at 2
for index in 0..<3 {
    print("index \(index) - \(mutableArray[index])")
}

//interval
let interval = 2
for num in stride(from: 0, to: mutableArray.count, by: interval) {
    print(num)
}

var seconds = 5
let minute = 60
while seconds <= minute {
    print("The minute is not over")
    seconds += 5
}
print("The minute is over")

seconds = 5
repeat {
    print("The minute is not over")
    seconds += 5
} while seconds <= minute
print("The minute is over")

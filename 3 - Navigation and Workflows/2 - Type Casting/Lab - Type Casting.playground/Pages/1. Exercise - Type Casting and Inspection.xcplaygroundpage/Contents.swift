/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var array: [Any] = [6.5, 4.5, 10, "Hello", true]
print(array)

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in array {
    if let int = item as? Int {
        print("The integer has a value of \(int)")
    } else if let double = item as? Double {
        print("The double has a value of \(double)")
    } else if let strings = item as? String {
        print("The string has a value of \(strings)")
    } else if let bool = item as? Bool {
        print("The booleans has a value of \(bool)")
    }
}


//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dictionary: [String: Any] = ["Integers": 10, "Doubles": 4.5, "Strings": "Hello", "Booleans": true]
print(dictionary)

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
//for item in dictionary {
//    if let doubleInDic = item.value as? Double {
//        total += doubleInDic
//    } else if let intInDic = item.value as? Int {
//        total += Double(intInDic)
//    } else if item.value is String {
//        total += 1
//    } else if let boolInDic = item.value as? Bool {
//        if boolInDic == true {
//            total += 2
//        } else {
//            total += 3
//        }
//    }
//}
//print(total)
for item in dictionary {
    if let value = item.value as? Double {
        total += value
    } else if let value = item.value as? Int {
        total += Double(value)
    } else if item.value is String { // or else if let _ = item.value as? String {
        total += 1
    } else if let value = item.value as? Bool {
        if value == true {
            total += 2
        } else {
            total += 3
        }
    }
}
print(total)

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */

/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    var ram: Int?
    var yearManufactured: Int?

    init?(rammer: Int, yearMan: Int) {
        if rammer > 0 {
            self.ram = rammer
            if yearMan > 1970 && yearMan < 2020 {
                self.yearManufactured = yearMan
            } else {
                return nil
            }
        } else {
            return nil
        }
    }
}

//var firstComputer = Computer(ram: 10, yearMan: 1999)
//print(firstComputer!)
//var secondComputer = Computer(ram: 0, yearMan: 1999)
//print(secondComputer as Any)
//var thirdComputer = Computer(ram: 1, yearMan: 2022)
//print(thirdComputer as Any)
//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
let com1 = Computer(rammer: 10, yearMan: 1999)
if let computer1 = com1 {
    print(computer1.ram)
    print(computer1.yearManufactured)
}
let com2 = Computer(rammer: 0, yearMan: 2010)
if let computer2 = com2 {
    print(computer2.ram)
    print(computer2.yearManufactured)
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */

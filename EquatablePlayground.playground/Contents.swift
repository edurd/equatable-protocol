
struct Person: Equatable {
    var name: String
    var age: Int
    static func ==(lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

let person1 = Person(name: "Robert", age: 22)
let person2 = Person(name: "Robert", age: 22)

print(person1 == person2) // both are the same


struct PersonA: Equatable {
    var name: String
    var age: Int
    static func ==(lhs: PersonA, rhs: PersonA) -> Bool {
        return lhs.name == rhs.name // in case you just want to compare names
    }
}

let person3 = PersonA(name: "Robert", age: 22)
let person4 = PersonA(name: "Robert", age: 22)

print(person3 == person4)


class Animal {

    var name: String
    var numberOfLegs: Int

    init(name: String, numberOfLegs: Int) {
        self.name = name
        self.numberOfLegs = numberOfLegs
    }
}

let animal1 = Animal(name: "Dog", numberOfLegs: 4)
let animal2 = Animal(name: "Dog", numberOfLegs: 4)

print(animal1 === animal2) // Reference Equality

class AnimalA: Equatable {

    var name: String
    var numberOfLegs: Int

    init(name: String, numberOfLegs: Int) {
        self.name = name
        self.numberOfLegs = numberOfLegs
    }

    static func == (lhs: AnimalA, rhs: AnimalA) -> Bool {
        return lhs.name == rhs.name && lhs.numberOfLegs == rhs.numberOfLegs
    }
}

let animal3 = AnimalA(name: "Dog", numberOfLegs: 4)
let animal4 = AnimalA(name: "Dog", numberOfLegs: 4)

print(animal3 == animal4) // Value Equality

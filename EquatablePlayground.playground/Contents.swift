
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


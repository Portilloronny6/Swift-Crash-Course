import Foundation

// Structs are super fast! they are value types
// Structs are stored in the stack (memory)
// Objects in the Stack are Value Types
// Value Types are copied & mutated

struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    // Structs have an implicit init
    
//    init(title: String, dateCreated: Date = .now, isPremium: Bool?) {
//        self.title = title
//        self.dateCreated = dateCreated
//        self.isPremium = isPremium
//    }
    
    init(title: String, dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    }
    
    
    
}

let myObject: String = "Hello, World!"

//let myQuiz: Quiz = Quiz(title: "Swift Programming", dateCreated: .now)
//let myQuiz1: Quiz = Quiz(title: "Quiza 1")

//print(myQuiz.title, myQuiz.dateCreated)
//print(myQuiz1.title, myQuiz.dateCreated)
 
let myQuiz2: Quiz = Quiz(title: "Quiz", dateCreated: nil, isPremium: false)

print(myQuiz2.dateCreated)



// -----------------------------

// "Immutable struct" = all "let" constants = NOT mutable = "cannot mutate it!"
struct UserModel {
    let name: String
    let isPremium: Bool
}


var user1: UserModel = UserModel(name: "Ronny", isPremium: false)

func markUserAsPremium() {
    print(user1)
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

//markUserAsPremium()

// -----------------------------

// Mutable struct
struct UserModel2 {
    let name: String
    var isPremium: Bool
}


var user2: UserModel2 = UserModel2(name: "Ronny", isPremium: false)

func markUserAsPremium2() {
    print(user2)
    user2.isPremium = true
    print(user2)
}

markUserAsPremium2()


// -----------------------------

// Immutable struct

struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func markUserAsPremium(newValue: Bool) -> UserModel3 {
        return UserModel3(name: name, isPremium: newValue)
    }
}


var user3: UserModel3 = UserModel3(name: "Ronny", isPremium: false)
print(user3)
user3 = user3.markUserAsPremium(newValue: true)
print(user3)

// -----------------------------

// Mutable struct

struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool
    
    mutating func markUserAsPremium() {
        isPremium = true
    }
    
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}


var user4: UserModel4 = UserModel4(name: "Ronny", isPremium: false)

print(user4.isPremium)
user4.markUserAsPremium()
print(user4.isPremium)
user4.updateIsPremium(newValue: false)
print(user4.isPremium)

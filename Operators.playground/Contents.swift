import Foundation


let myAge: Int = 22
let yourAge = 20

if myAge > yourAge {
    "I'm older than you"
} else if myAge < yourAge {
    "You are older than me"
} else {
    "Oh hey, we are the same age"
}

let myMothersAge = myAge + 20
let doubleMyAge = myAge * 2

// 1. Unary prefix

let unaryPrefix = !true

// 2. Unary postfix

let name = Optional("Vagina")
type(of: name)

let unaryPostfix = name!
type(of: unaryPostfix)

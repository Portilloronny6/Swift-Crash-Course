import Foundation

// let -> Constants
// var -> Variables

let myName: String = "Ronny"
let yourName: String = "Vagina"

var names: Array = [myName, yourName]

names.append("Alo amol")
names.append("Palestina")

// Puedo trabajar con la seguridad de que no habra problemas con la mutabilidad o inmutabilidad de variables en swift por sus referencias.

let foo = "Foo"
var foo2 = foo
foo2 = "Foo 2"
foo
foo2

let moreNames = [
    "Foo",
    "Bar"
]

var copy = moreNames // esto es una copia


copy.append("Maximiliano")


// Podemos crear alias para los tipos de datos

typealias Name = String
let username: Name = "ronny"

typealias AudioSample = UInt16
let maxAmplitudeFound: AudioSample = AudioSample.min

// Tuplas

let user = ("Totona", "Vagina", "Cuca", "Cocoya")
print(user.3)

let http404Error: (Int, String) = (404, "Not Found")
print(http404Error)

let (statusCode, statusMessage) = http404Error


let (firstValue, secondValue): (String, String) = ("Caracas", "Lima")
print(firstValue, secondValue)


//In most cases, you don’t need to pick a specific size of integer to use in your code. Swift provides an additional integer type, Int, which has the same size as the current platform’s native word size:

//On a 32-bit platform, Int is the same size as Int32.
//On a 64-bit platform, Int is the same size as Int64.

//Unless you need to work with a specific size of integer, always use Int for integer values in your code. This aids code consistency and interoperability. Even on 32-bit platforms, Int can store any value between -2,147,483,648 and 2,147,483,647, and is large enough for many integer ranges.

print(Int.min)
print(Int.max)

print(UInt8.min)
print(UInt8.max)

print(UInt16.min)
print(UInt16.max)

print(UInt32.min)
print(UInt32.max)

print(UInt64.min)
print(UInt64.max)


//Swift provides two signed floating-point number types:

//Double represents a 64-bit floating-point number.
//Float represents a 32-bit floating-point number.

//Double has a precision of at least 15 decimal digits, whereas the precision of Float can be as little as 6 decimal digits. The appropriate floating-point type to use depends on the nature and range of values you need to work with in your code. In situations where either type would be appropriate, Double is preferred.

print(Double.pi)
print(Float.pi)

// Para sumer Ints, Floats o Double, debes hacer la transformacion explicita de dichos tipos.

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine








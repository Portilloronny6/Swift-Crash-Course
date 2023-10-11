import Foundation

// Solo le hemos asignado el tipo de dato
let arrayString: [String]
// let arrayString: Array<String>

// Aun no hemos inicializado la variable por eso a la hora de mostrar su contenido, nos da error
//print(arrayString)

// Para inicializar la variable podemos hacer lo siguiente

var someInts = [Int]()
//let someInsts: [Int] = []
print(someInts)
someInts.append(2)

// Como crear e inicializar arrays con valores

let stringArray: [String] = ["Swift", "Python", "JavaScript"]
print(stringArray)

print(Array(arrayLiteral: "Swift", "Python", "JavaScript"))


var arrayStrings: [String] = ["1", "2", "3"]
print("La cantidad de elementos totales en el array es de \(arrayStrings.count) elementos")

if arrayStrings.isEmpty {
    print("Estoy vacio")
} else {
    print(arrayStrings)
}

print(arrayStrings.isEmpty ? "Estoy vacio" : "Tengo elementos")


arrayStrings.append(String(4))
arrayStrings.append("5")

print(arrayStrings)

arrayStrings.insert("7", at: 3)

print(arrayStrings)

arrayStrings.remove(at: 3)
print(arrayStrings)

arrayStrings += ["6", "7", "8"]
print(arrayStrings)

arrayStrings.contains("6")

print(arrayStrings[1...3] + arrayStrings[1...])


// Sets (El orden no importa. No almacenan valores duplicados)

// Diccionarios

//var dictionary: [String: String]()
var dictionary: [String: String] = [:]
print(dictionary)

dictionary = [
    "name": "Ronny",
    "age": "29",
    "country": "Venezuela"
]

print(dictionary)

print(dictionary.count)

dictionary.updateValue("Spanish", forKey: "language")
dictionary.updateValue("30", forKey: "age")
if let oldAge = dictionary.updateValue("29", forKey: "age") {
    print("La edad anterior de \(dictionary["name"] ?? "Ronny") es de \(oldAge)")
}
print(dictionary)


//dictionary["language"] = nil
//print(dictionary)

if let oldKeyValue = dictionary.removeValue(forKey: "language") {
    print(oldKeyValue)
}

print(dictionary)


let dict: [Any] = [
    ["Nombre": "Ronny", "Casa": 5],
    [["Hola": true, "Holis": ["Como": "Estas"]]]
]

for element in dict {
    print(type(of: element))
//    print(element is [String: Any])
    print(element is [[String: Any]])
}


func flattenArray(array: Any) -> [Int] {
    if let intArray = array as? [Int] {
        return intArray
    } else if let nestedArray = array as? [Any] {
        return nestedArray.flatMap { flattenArray(array: $0) }
    } else {
        return []
    }
}

let datos = [[1, 2], [[3, 4], [[[5, 6], [[[[[[[2, 3, 4, 5, 6]]], 4]]], 6], [[7, 8], [9, 10]]], [11, 12]]]]
let flattenedDatos = flattenArray(array: datos)
print(flattenedDatos)

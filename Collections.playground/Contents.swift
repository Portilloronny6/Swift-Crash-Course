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
    }
    
    if let nestedArray = array as? [Any] {
        return nestedArray.flatMap { flattenArray(array: $0) }
    }
    
    return []
    
}

let datos = [
    [1, 2], [[3, 4], [[[5, 6], [[[[[[[2, 3, 4, 5, 6]]], 4]]], 6], [[7, 8], [9, 10]]], [11, 12]]]
]
let flattenedDatos = flattenArray(array: datos)
print(flattenedDatos)


//print([1, 2, 3, 4, 5] as? [Int])

func getUsername(username: String) -> String {
    return username
}

func getUserIsPremium(userIsPremium: Bool) -> Bool {
    return userIsPremium
}


// Tuple can cambine multiple pieces of data
func getUserInfo() -> (username: String, isPremium: Bool, isNew: Bool) {
    
    let name = getUsername(username: "Ronny")
    let isPremium = getUserIsPremium(userIsPremium: false)
    let isNew = true
    
    return (name, isPremium, isNew)
}

let username: String = "Ronny"
let userIsPremium: Bool = false
let userIsNew: Bool = true

var userData1: String = username
var userData2: (String, Bool, Bool) = (username, userIsPremium, userIsNew)

let info1 = getUserInfo()

print(info1.isNew)

func doSomethingWithUserInfo(info: (username: String, isPremium: Bool, isNew: Bool)) {
    
}


let info = getUserInfo()
doSomethingWithUserInfo(info: info)


struct TitlesModel {
    let title1: String
    let title2: String
}

func doSomething(value: TitlesModel) {
    
}


doSomething(value: TitlesModel(title1: "Totona", title2: "Vagina"))


// ----------------------------------------------

let apple: String = "Apple"
let orange: String = "Orange"

let fruits: [String] = ["Apple", "Orange"]
let fruitsArray: [String] = ["Apple", "Orange", "Banana", "Mango"]

let count = fruitsArray.count
//let firstItem = fruitsArray.first
let lastItem = fruitsArray.last

if let firstItem = fruitsArray.first { // <--- es mas seguro en caso de que este vacio el array
    print(firstItem)
}


fruitsArray.indices

if fruitsArray.indices.contains(4) {
    let item = fruitsArray[4]
}

fruitsArray.indices.contains(4)

// Los diccionarios son safer de usar en comparacion a los array porque si no existe una clave en un diccionario, simplemente devolvera nil y no crasheara el programa

var anotherDictionary: [Int: String] = [
    1: "Ronny",
    2: "Portillo"
]

let key = anotherDictionary[2]

struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}


var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    PostModel(id: "xhs324", title: "Post 2", likeCount: 52),
    PostModel(id: "wfj435", title: "Post 3", likeCount: 123),
]

if postArray.indices.contains(2) {
    print(postArray[2])
}


var postDict: [String: PostModel] = [
    "abc123": PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    "xhs324": PostModel(id: "xhs324", title: "Post 2", likeCount: 52),
    "wfj435": PostModel(id: "wfj435", title: "Post 3", likeCount: 123),
]


let post: PostModel? = postDict["abc123"]

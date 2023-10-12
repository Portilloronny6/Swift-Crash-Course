import Foundation

// Cuando existe la posibilidad de que haya una ausencia de valor, el tipo de la variable sera opcional.


// "Siempre habra un valor y ese valor será String"
let myStringNumber: String = "123"

// "No sabemos si habrá un valor, pero en caso de haberlo, será Int.
let myNumber: Int? = Int(myStringNumber) // podría ser nil.

print(myNumber!)

let myString: String = "Hola"
let myOptionalInt = Int(myString)

// el operador ?? (nil coalescing operator) me permite chequear si el valor de una variable es 'nil' y en caso de serlo, devolverá un valor por defecto.

print(myOptionalInt ?? "Привет")

// El operador ! me permite forzar ver el contenido de una variable Optional. En caso de que tenga algun valor, me lo mostrara. En caso de que tenga nil, mostrara un error.

var username: String? = "Ronny Portillo"
print(username!)

// El operador if let/var me permite poder atajar sin problemas el valor de un opcional y poder realizar operaciones de manera segura

if let number = myNumber {
    let sum = number + 1
    print(sum)
}

// Tambien podemos usar la funcion map para obtener el valor de un opcional

myNumber.map { value in
    print(value)
}


let newValueBool: Bool? = true

// Asignaré el valor de newValueBool (si es que tiene alguno), de lo contrario sera falso
let newValueBool2: Bool = newValueBool ?? false

print("New value 2: \(newValueBool2.description)")


func checkIfUserIsPremium(userIsPremium: Bool?) -> Bool {
    
    // If there is a value, let newValue equal that value
    if let newValue = userIsPremium {
        // Here we have access to the non-optional value
        return newValue
    }
    
    return false
}

func checkIfUserIsPremium2(userIsPremium: Bool?) -> Bool {
    
    // If there is a value, let newValue equal that value
    if let userIsPremium {
        // Here we have access to the non-optional value
        return userIsPremium
    }
    
    return false
}

// guard

func checkIfUserIsPremium3(userIsPremium: Bool?) -> Bool {
    
    // Make sure there is a value, otherwise, return out of the function
    guard let newValue = userIsPremium else {
        return false
    }
    
    // here we have access to the non-optional value
    return newValue
}


func checkIfUserIsPremium4(userIsPremium: Bool?) -> Bool {
    
    // Make sure there is a value, otherwise, return out of the function
    guard let userIsPremium else {
        return false
    }
    
    // here we have access to the non-optional value
    return userIsPremium
}

var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil

func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    if !userIsNew || !userDidCompleteOnboarding {
        return false
    }
    
    return true
}

func checkIfUserIsSetup(userIsNew: Bool?, userDidCompleteOnboarding: Bool?, userFavoriteMovie: String?) -> Bool {
    
    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
        return getUserStatus(
            userIsNew: userIsNew,
            userDidCompleteOnboarding: userDidCompleteOnboarding,
            userFavoriteMovie: userFavoriteMovie
        )
    }
    
    return false
}

func checkIfUserIsSetup2(userIsNew: Bool?, userDidCompleteOnboarding: Bool?, userFavoriteMovie: String?) -> Bool {
    
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {
        return false
    }
    
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}


func getUsername() -> String? {
    return "Engiber"
}

func getTitle() -> String {
    return "Swift"
}

func getUserData() {
    
    let username: String? = getUsername()
    
    // I will get the count if the username is not nil
//    let count: Int? = username?.count
    
    let title: String = getTitle()
    
    // I will get the count always
    let count2 = title.count
    
    // If username has a value, and first character in username has a value, then return the value of isLowercase
    // Optional chaining
    let _: Bool = username?.first?.isLowercase ?? false
    
}

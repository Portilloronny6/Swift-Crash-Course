import Foundation

// Enum is the same as Struct, except we know all cases at runtime


struct CarModel {
    let brand: CardBrandOption
    let model: String
}

//let car1: CarModel = CarModel(brand: "Ford", model: "Fiesta")
//let car2: CarModel = CarModel(brand: "Ford", model: "Focus")
//let car3: CarModel = CarModel(brand: "Toyota", model: "Camry")
//
//// Todo bien, pero pudiera darse el caso en donde se cree una instancia como la siguiente
//let car4: CarModel = CarModel(brand: "Coffee", model: "Fiesta")
// Y sabemos que no existe tal marca de carro, o pudiera ser cualquier cosa que no este relacionada con una marca de carro, o lo que sea que guarde nuestro struct. Asi mismo, si no podemos enumerar la cantidad total de posibles opciones que iran dentro de un cierto atributo de nuestro Struct, entonces sera mejor mantenernos con una Struct, en caso contrario, podemos cambiar a Enum.

// En esa casos sera mejor usar un ENUM para poder tener todos los posibles casos de todas las posibles marcas que pueda almacenar nuestra struct

struct CarBrand {
    let title: String
}

//var brand1: CarBrand = CarBrand(title: "Ford")
//var brand2: CarBrand = CarBrand(title: "Toyota")
//
//var car1: CarModel = CarModel(brand: brand1, model: "Fiesta")
//var car2: CarModel = CarModel(brand: brand1, model: "Focus")
//var car3: CarModel = CarModel(brand: brand2, model: "Camry")


// Enums are stored in the memory the same way as a Struct but we cannot mutate them
enum CardBrandOption {
    case ford, toyota, honda
    
    var title: String {
        
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        case .honda:
            return "Honda"
        }
        
//        if self == .ford {
//            return "Ford"
//        }
//        
//        if self == .toyota {
//            return "Toyota"
//        }
//        
//        return "Default value"
    }
}

var car1: CarModel = CarModel(brand: .ford, model: "Focus")
var car2: CarModel = CarModel(brand: .ford, model: "Fiesta")
var car3: CarModel = CarModel(brand: .toyota, model: "Camry")

let fordBrand: CardBrandOption = .honda
print(fordBrand.title)

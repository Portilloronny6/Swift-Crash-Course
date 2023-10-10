import Foundation

// Cuando existe la posibilidad de que haya una ausencia de valor, el tipo de la variable sera opcional.

let myStringNumber: String = "123"
let myNumber: Int? = Int(myStringNumber)

print(myNumber!)

let myString: String = "Hola"
let myOptionalInt = Int(myString)

// el operador ?? me permite chequear si el valor de una variable es 'nil' y en caso de serlo, devolvera un valor por defecto.

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






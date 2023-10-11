import Foundation

func sumarDos(al valor: Int) -> Int {
    return valor + 2
}

sumarDos(al: 398)

let array = [1, 2, 3, 4, 5, 2.3]

func loQueSea(array: [Int]) -> [Int] {
    func procesar(array: [Int]) -> [Int] {
        return [array[0]]
    }
    return procesar(array: array)
}

print(loQueSea(array: [1, 2, 3, 4]))

func functionWithParameter(param a: () -> String) -> String {
    return a()
}

let closure: () -> String = {
    "vagina"
}

functionWithParameter {
    "h"
}

print(array)


// ------------

doSomething()

func doSomething(title: String = "Avengers") -> String {
    
    // IF title is equal to Avengers
    if title == "Avengers" {
        return "Marvel"
    }
    
    return "Not Marvel"
}

doSomethingElse()
func doSomethingElse(title: String = "Avengers") -> Void {
    
    // MAKE SURE title is equal to Avengers
    guard title == "Avengers" else {
        print("Not Marvel")
        return
    }
    
    print("Marvel")
}



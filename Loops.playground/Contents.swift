import Foundation

for item in 0...100 {
    print(item)
}

let myArray: [String] = ["Aplha", "Beta", "Gamma", "Delta", "Epsilon"]


var mySecondArray: [String] = []

for item in myArray {
    if item == "Beta" {
        mySecondArray.append(item)
    }
}

print(mySecondArray)


struct LessonModel {
    let title: String
    let isFavorite: Bool
}


let allLessons: [LessonModel] = [
    LessonModel(title: "Lesson 1", isFavorite: false),
    LessonModel(title: "Lesson 2", isFavorite: true),
    LessonModel(title: "Lesson 3", isFavorite: false),
    LessonModel(title: "Lesson 4", isFavorite: false),
    LessonModel(title: "Lesson 5", isFavorite: true),
    LessonModel(title: "Lesson 6", isFavorite: true),
]

var favoriteLessons: [LessonModel] = []


for lesson in allLessons {
    if !lesson.isFavorite {
        continue
    }
    
    favoriteLessons.append(lesson)
//    print(lesson)
}

allLessons.forEach { LessonModel in
    print(LessonModel)
}


for (index, lesson) in allLessons.enumerated() {
    print("El indice del elemento \(lesson) es: \(index)")
}


for (index, _) in allLessons.enumerated() {
    if index == 2 {
        break
    }
    
    print(index)
}

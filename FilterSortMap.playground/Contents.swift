import Foundation

struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Ronny", isPremium: false, order: 2),
    DatabaseUser(name: "Jose", isPremium: false, order: 3),
    DatabaseUser(name: "Luismi", isPremium: true, order: 4),
    DatabaseUser(name: "Agata", isPremium: true, order: 1),
    DatabaseUser(name: "Eva", isPremium: true, order: 7),
    DatabaseUser(name: "Felipe", isPremium: false, order: 9),
]


let onlyPremiumUsers: [DatabaseUser] = allUsers.filter { user in
    return user.isPremium
}

for premiumUser in onlyPremiumUsers {
    print(premiumUser)
}

let onlyPremiumUsers2: [DatabaseUser] = allUsers.filter({ $0.isPremium })


let orderedUsers: [DatabaseUser] = allUsers.sorted { user1, user2 in
    return user1.order < user2.order
}

for orderedUser in orderedUsers {
    print(orderedUser)
}


let usersNames: [String] = allUsers.map { user in
    return user.name
}

print(usersNames)

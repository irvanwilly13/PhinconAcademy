//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

enum User {
    case guest
    case registeredUser(name: String, age:Int)
}

let guestUser = User.guest
let registeredUser = User.registeredUser(name: "jhon", age: 20)

switch registeredUser {
case .guest:
    print("welcome, guest")
case .registeredUser(let name, let age):
    print("welcome, \(name), age \(age)")
}



// MARK: ENUM BIASA

enum PlanetType: Int, CaseIterable { // karna integer di berikan index
    case merqurius = 1
    case venus
    case earth
    case mars
    case jupiter
    case neptunus
    case uranus
    case pluto
    
    var kindOfPlanet: String {
        switch self {                               // MENGGUNAKAN SELF KARENA MASIH KEPEMILIKAN ENUM / MASIH {} DENGAN ENUM
        case .merqurius, .venus, .jupiter, .mars:
            return "kind of planet is perihelium"
        default:
            return "kind of planet is uphelium"
        }
    }
}

var planet: PlanetType = .earth

print(PlanetType.allCases.count)

let indexPlanet = 7

let planetType = PlanetType(rawValue: indexPlanet) ?? .mars// rawvalue = memberikan value yang terdapat di variabel indexPlanet berupa index

print(planetType.kindOfPlanet)



enum Benua: String, CaseIterable {
    case asia = "Asia"
    case afrika = "Afrika"
    case eropa = "Eropa"
    case amerikaUtara = "Amerika Utara"
    case amerikaSelatan = "Amerika Selatan"
    case australia = "Australia"
    case antartika = "Antartika"
}

print(Benua.allCases.count)  // Output: 7

for benua in Benua.allCases {
    print(benua.rawValue)
}




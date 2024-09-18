//: [Previous](@previous)

import Foundation

//struct tidak bisa memiliki induk / anakan (inheritance)


struct Person {
    var name: String
    var age: Int
}

class Kendaraan {
    var person: Person
    var merk: String
    var ageBuild: Int
    
    init(person: Person, merk: String, ageBuild: Int) {
        self.person = person
        self.merk = merk
        self.ageBuild = ageBuild
    }
    func deskription() {
        print("nama saya \(self.person.name) umur \(self.person.age)")
        print("saya punya mobil \(self.merk) keluaran tahun \(self.ageBuild)")
    }
    
    func gantiKepemilikan(person: Person) {
        self.person = person
    }
}

let person = Person(name: "Agung", age: 30)
let kendaraan = Kendaraan(person: person, merk: "volvo", ageBuild: 1990)

kendaraan.deskription()
kendaraan.gantiKepemilikan(person: Person(name: "budi", age: 20))
kendaraan.deskription()


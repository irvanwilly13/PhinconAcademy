//: [Previous](@previous)

import Foundation

protocol Vehicle {
    var numberOfWheel: Int {get set}
    func drive()
    func stop()
}

class Car: Vehicle {
    var merk: String
    var numberOfWheel: Int
    
    init(merk: String, numberOfWheel: Int) {
        self.merk = merk
        self.numberOfWheel = numberOfWheel
    }
    
    func drive() {
        print("\(self.merk) memiliki \(self.numberOfWheel) roda")
    }
    
    func stop() {
        print("\(self.merk) berhenti")
    }
}

class Bicycle: Vehicle {
    var typeStang: String
    var numberOfWheel: Int
    
    init(typeStang: String, numberOfWheel: Int) {
        self.typeStang = typeStang
        self.numberOfWheel = numberOfWheel
    }
    
    func drive() {
        print("sepeda memiliki tipe stang \(self.typeStang) dan memiliki \(self.numberOfWheel) roda")
    }
    
    func stop() {
        print("sepeda sudah berhenti menggunakan \(self.typeStang)")
    }
}

let car1 = Car(merk: "Subaru", numberOfWheel: 4)
car1.drive()
car1.stop()

let bicycle = Bicycle(typeStang: "Y", numberOfWheel: 4)
bicycle.drive()
bicycle.stop()

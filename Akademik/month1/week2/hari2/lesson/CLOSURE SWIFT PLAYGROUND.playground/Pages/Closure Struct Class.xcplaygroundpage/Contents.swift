import UIKit

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
    
    func checkMerkTahun() {
        print("mobil merk \(self.merk) dan tahun \(self.ageBuild)")
    }
    
    func checkKepemilikan(a: String, b: Int, completion: (String, Int) -> Void) {
        completion(a, b)
        self.checkMerkTahun()
    }
}

let person1 = Person(name: "irvan", age: 27)
let kendaraan = Kendaraan(person: person1, merk: "toyota", ageBuild: 2021)

kendaraan.checkKepemilikan(a: "irvan", b: 27) { a, b in
    print("pemilik atas nama \(a) dangan usia \(b)")

}

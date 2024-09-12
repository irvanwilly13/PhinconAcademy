import UIKit

class Persons {
    // MARK: PROPERTI
    var userName: String
    var age: Int
    var isStudent: Bool = false // tidak butuh initialisasi karena sudah ada nilai default
    var daftarNilai: [String: Double] = [
        "Fisika": 98.7,
        "Matematika": 80,
        "kimia": 80.8,
        "Biologi": 87.9
    ]
    init(userName: String, age: Int, isStudent: Bool, daftarNilai: [String : Double]) {
        self.userName = userName
        self.age = age
        self.isStudent = isStudent
        self.daftarNilai = daftarNilai
    }
}


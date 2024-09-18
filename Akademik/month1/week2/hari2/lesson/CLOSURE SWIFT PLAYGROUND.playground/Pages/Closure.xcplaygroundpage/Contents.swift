//: [Previous](@previous)

import Foundation

// sebagai special case atau tipe lain dari func

// MARK: CLOSURE ADALAH FUNCTION YANG MEMILIKI PARAMETER FUNCTION LAIN

var greet = {
    var a = 4
    var b = 2
    print(a+b)
}
greet()

// ==================================================================================================

let greetUser = { (name: String, age: Int) in // in sebagai ganti {} dan {} diletakan di awal
    print("hi my name \(name) i'am \(age) years old")
}

greetUser("anisa", 12)

//=

// MARK: CLOSURE YANG MEMILIKI NILAI RETURN
var persegiPanjang = { (length: Double, width: Double) -> Double in
    let luas = length * width
    return luas
}

let luas = persegiPanjang(15, 5)
print("hasil luas persegi panjang adalah \(luas)")

//======================================================================================================

var findSquare = { (a: Int) -> Int in
    let sqrt = a * a
    return sqrt
}

let sqrt = findSquare(10)
print("hasil akar quadrat adalah \(sqrt)")

// MARK: CLOSURE FUNC DALAM PARAMETER FUNC YANG LAIN

class Kalkulator {
    var num1: Int
    var num2: Int
    
    init(num1: Int, num2: Int) {
        self.num1 = num1
        self.num2 = num2
    }
    func hitung(completion: (Int, Int) -> Void) {
        completion(self.num1, self.num2)
    }
}

var calculator = Kalkulator(num1: 20, num2: 5)
calculator.hitung { a,b in
    print(a + b)
}

func deskription() {
    print("deskription nya adalah nyata")
}

func tambah(a: Int, b: Int) {
    let total = a + b
    print("tambahnya adalah \(total)")
}

func kurang (a: Int, b: Int) {
    let total = a - b
    print("kurangnya adalah \(total)")
}

func kali (a: Int, b: Int) {
    let total = a * b
    print("perkaliannya adalah \(total)")
}

func bagi (a: Int, b: Int) {
    let total = a / b
    print("pembagiannya adalah \(total)")
}


func kalkulator(a: Int, b: Int, completion: (Int, Int) -> Void) { // VOID KARENA TIDAK MEMILIKI NILAI RETURN
    print("kalkulatornya telah berjalan")
    completion(a,b)
}

kalkulator(a: 10, b: 5, completion: tambah) // jika ingin menggunakan func yang sudah ada bisa menggunakan data ini
kalkulator(a: 8, b: 2, completion: kurang)
kalkulator(a: 50, b: 2, completion: kali)
kalkulator(a: 50, b: 2, completion: bagi)


kalkulator(a: 5, b:9) { a, b in
    print("jumlahnya \(a+b)")
}

// CONTOH LAIN

// Fungsi yang menerima closure sebagai parameter
func performOperation(a: String, closure: (String) -> Void) {
    print("Memulai operasi")
    closure(a) // Menjalankan closure yang diberikan
    print("Operasi selesai")
}

// Menggunakan fungsi tersebut dengan memberikan closure
performOperation(a:"operasi selesai") { a in                       // jika ingin mengcustom gunakan metode ini
    print("Ini adalah closure yang sedang dijalankan. \(a)")
}




//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// cara membuat fungsi

func sayHello(nama: String, age: Int) { // PARAMETER YANG ADA DI DALAM TANDA ()
    print("hello \(nama) umurnya \(age)") // rumus, pemanggilan ada dibawah
}

sayHello(nama: "Agung", age: 27) // cara memanggil fungsi
                                    // dengan parameter bisa mengisi blok kurung dari luar
                                    // yang di panggil nama FUNC nya

func tambah(num1: Int = 90, num2: Int, num3: Int? = 0) { // nilai default = 90
    print(num1 + num2)                                      // num3: Int? menandakan opsional, tidak wajib di isi
}

tambah(num1: 20, num2: 21) // pemanggilan fungsi num1 dapat di hapus karena func tambah num1 memiliki nilai default.

// MARK: FUNGSI FUNC DENGAN MENGGUNAKAN IF ELSE IF

func checkTemperature(suhu: Double) {               // PARAMETER BEBAS
    if suhu > 25.0 {
        print("maka suhu ruangan panas")
    } else if suhu > 16.0 && suhu < 25 {
        print("maka suhu ruangan sejuk")
    } else {                                        // ELSE KOSONG KARENA DIA ADALAH OPSI TERAKHIR
        print("maka suhu rungan sangat dingin")
    }
}

checkTemperature(suhu: 27)                  // YANG DI PANGGIL ADALAH NAMA FUNC


// MARK: FUNCTION SWITCH
// SWITCH UNTUK PENANGANAN KASUS YANG PUNYA VARIABEL BANYAK KONDISI

enum Cuaca: String {
    case hujan
    case panas
    case mendung
}

func checkCuaca(type: Cuaca) {
    let cuaca: Cuaca = type
    switch cuaca {
    case .hujan:
        print("maka cuaca hari ini hujan")
    case .panas:
        print("maka cuaca hari ini panas")
    case .mendung:
        print("maka cuaca hari ini mendung")
    }
}
    
checkCuaca(type: .mendung)

// MARK: CONTOH LAIN SOAL FUNC SWITCH CASE DENGAN
enum OperatorMath {
    case tambah, kurang, kali, bagi // dengan cara array
}

func kalkulator(type: OperatorMath, num1: Double, num2: Double) { // PARAMETER!!! () SANGAT MEMBANTU DALAM PEMANGGILAN FUNC
    switch type {
    case .tambah:
        let total = num1 + num2
        print("totalnya \(total)")
    case .kurang:
        let total = num1 - num2
        print("totalnya \(total)")
    case .kali:
        let total = num1 * num2
        print("totalnya \(total)")
    case .bagi:
        let total = num1 / num2
        print("totalnya \(total)")
    }
}

kalkulator(type: .kali, num1: 20, num2: 2)

//====================================================================================================

// MARK: CONTOH FUNGSI FUNC IF ELSE

func cekNilai(nilai: Int ) {                    // parameter!!!
    if nilai < 50 {
        print("maka nilai buruk")
    } else if nilai > 60 && nilai < 70 {
        print("maka nilai cukup buruk")
    } else if nilai > 70 && nilai < 80 {
        print("maka nilai biasa saja")
    } else if nilai > 80 && nilai < 90 {
        print("maka nilai cukup baik")
    } else {
        print("maka nilai sangat baik")
    }
}

cekNilai(nilai: 93)

// =====================================================================================================

// RETURN DIGUNAKAN UNTUK MENGEMBALIKAN NILAI SEKALIGUS MENGHENTIKAN EKSEFUSI FUNGSI

func checkUmur(age: Int) -> Void { // Void tidak perlu di tulis karna hanyak untuk menghentikan eksekusi kode jika sudah terlaksana
    if age > 17 {
        print("dia sudah dewasa")
        return
    }
    print("dia belum dewasa")
}

checkUmur(age: 15)  // karna masih umur 15, kode return masih berlanjut untuk menemukan value

// MARK: FUNC RETURN UNTUK MENGEMBALIKAN NILAI
func hitungLuasPersegi(width: Double, Length: Double) -> Double { // UNTUK DIJADIKAN VARIABEL, PERLU MENAMBAHKAN VARIABEL AGAR FUNCTION BISA BERADA DALAM NILAI VARIABEL
    let luas = width * Length
    return luas // karna sudah memiliki varibel
}
let luas = hitungLuasPersegi(width: 15, Length: 12) // menambahkan variabel baru untuk pemanggilan function luas persegi
print("luas persegi panjang adalah \(luas)")

// CONTOH LAIN FUNC RETURN

func cekKelulusan(nilai: Int) -> String { // PARAMETER!!!
    if nilai >= 70 {
        return "Lulus"
    } else {
        return "Tidak Lulus"
    }
}

let hasilLulus = cekKelulusan(nilai: 80)
print(hasilLulus)

let hasilTidakLulus = cekKelulusan(nilai: 65)
print(hasilTidakLulus)

// ========================================================================================================================

func tampilkanNilai(nilaiSiswa: [Int]) {
    for item in nilaiSiswa {
        if item > 70 && item < 95 {
            print("nilainya \(item)")
        }
    }
}

let dataNilai = [54,78,92,98,86,79,50,95,88]
print(dataNilai)

tampilkanNilai(nilaiSiswa: dataNilai)
// ====================================================================================================================

func calculatingRectangleArea(width: Double, lenght: Double) -> (area: Double, keliling: Double) {
    let luas = width * lenght
    let keliling = 2 * (width + lenght)
    return (area, keliling)
}

let (area, keliling) = calculatingRectangleArea(width: 20, lenght: 21)
print("luasnya adalah \(area) kelilingnya adalah \(keliling)")


// fungsi variadic

func sumNumber(num: Int...) -> Int {
    var total = 0
    for i in num {
        total += i
    }
    return total
}

let totalNilai = sumNumber(num: 4,5,6,7,8)
print(totalNilai)

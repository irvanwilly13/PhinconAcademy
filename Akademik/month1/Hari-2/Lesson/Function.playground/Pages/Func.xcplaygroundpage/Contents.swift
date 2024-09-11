import UIKit

var greeting = "Hello, playground"

// MARK: cara membuat fungsi

func sayHello() {
    print("Hello World")
}

func tambah () {
    var nilai1 = 10
    var nilai2 = 20
    var total = nilai1 + nilai2
    print ("jumlahnya adalah \(total)")
}

func tambah(num1: Int, num2: Int) {
    var total = num1 + num2
    print("jumlahnya adalah \(total)")
}

// MARK: cara menjalankan Fungsi

sayHello() // menjalankan fungsi sayHello

tambah() // manjalankan fungsi tambah

tambah(num1: 60, num2: 30) // menjalankan fungsi tambah num

// =================================================================================

enum MatOperator {
    case tambah
    case minus
    case kali
    case bagi
}

func kalkulatorA (_ num1: Int, _ num2: Int, _ num3: Int, type operatorMat: MatOperator) {


    let operatorMat: MatOperator = operatorMat
    var nilai1 = num1
    var nilai2 = num2
    var nilai3 = num3

    switch operatorMat {
    case .tambah:
        var total = nilai1 + nilai2 + nilai3
        print("hasil dari pertambahan adalah \(total)")
    case .minus:
        var total = nilai1 - nilai2 - nilai3
        print("hasil dari pengurangan adalah \(total)")
    case .kali:
        var total = nilai1 * nilai2 * nilai3
        print("hasil dari perkalian adalah \(total)")
    case .bagi:
        var total = nilai1 / nilai2 / nilai3
        print("hasil dari pembagian adalah \(total)")
    }
}

kalkulatorA(12,13,45,type: .minus)

// MARK: RETURN FUNCTION

func kalkulator (_ num1: Int, _ num2: Int, _ num3: Int, type operatorMat: MatOperator) -> Int {
// _ digunakan untuk mempermudah hasil Int yang di inginkan dalam variabel jumlah

    let operatorMat: MatOperator = operatorMat
    var nilai1 = num1
    var nilai2 = num2
    var nilai3 = num3

    switch operatorMat {
    case .tambah:
        var total = nilai1 + nilai2 + nilai3
        return total                            // penggunaan return tidak perlu ada print, print di gunakan di akhir
    case .minus:
        var total = nilai1 - nilai2 - nilai3
        return total
    case .kali:
        var total = nilai1 * nilai2 * nilai3
        return total
    case .bagi:
        var total = nilai1 / nilai2 / nilai3
        return total
    }
}

var jumlah = kalkulator(12,13,45,type: .tambah) // diperlukan variabel untuk return
print(jumlah)

// ==============================================================================================
enum Cuaca {
    case cerah
    case hujan
    case berawan
}

func hariIni(typeCuaca: Cuaca) {


    let hariIni = typeCuaca

    switch hariIni {
    case .cerah:
        print("Cuaca Cerah")
    case .hujan:
        print("Cuaca Hujan")
    case .berawan:
        print("Cuaca Berawan")
    }
}

hariIni(typeCuaca: .hujan)

// ================================================================

func hasilNilai(num1: Int = 70) {
    var hasilPeserta = num1

    switch hasilPeserta {
    case 0..<60:
        print("Tidak lulus")
    case 60..<70:
        print("Cukup")
    case 70..<80:
        print("Baik")
    case 80..<90:
        print("bagus")
    case 90...100:
        print("Sangat Bagus")
    default:
        print("Nilai tidak di ketahui")
    }

}

hasilNilai()

// ============================================================

enum TypeHari {
    case senin
    case selasa
    case rabu
    case kamis
    case jumat
    case sabtu
    case minggu
}

func checkHari (typeHari: TypeHari = .kamis) {
    switch typeHari {
    case .senin:
        print("hari kerja")
    case .selasa:
        print("hari kerja")
    case .rabu:
        print("hari kerja")
    case .kamis:
        print("hari kerja")
    case .jumat:
        print("hari kerja")
    case .sabtu:
        print("hari libur")
    case .minggu:
        print("hari libur")
    }
}

checkHari(typeHari: .sabtu)

// =======================

func checkTemperature(suhu temperature:  Int) -> String { // suhu (_) untuk memunculkan setelah di panggil
    if temperature > 25 {
        return "maka suhu ruangan panas"
    } else if temperature > 16 && temperature < 25 {
        return "maka suhu ruangan sejuk"
    } else {
        return "maka susu ruangan dingin"
    }
}

var tesTemperature = checkTemperature(suhu: 10)
print(tesTemperature)

// ===================================================================

enum StatusPengiriman {
    case belumDikirim
    case sedangDikirim
    case terkirim
    case gagal
}

func cekStatusPengiriman (_ status: StatusPengiriman) -> String{ // penambahan _ untuk mempersingkat hasil dari pemanggilan fungsi
    switch status {
    case .belumDikirim:
        return "barang belum dikirim"
    case .sedangDikirim:
        return "barang sedang dikirim"
    case .terkirim:
        return "barang sudah terikirim"
    case .gagal:
        return "barang gagal dikirim"
    }
}

var status = cekStatusPengiriman(.belumDikirim)

print(status)
// ======================================================================

// MARK: fungsi yang menghasilkan return lebih dari satu

func calculatingRoundedArea(phi: Double, r: Double) -> (area: Double, perimeters: Double) {
    let area = phi * (r * r) // nilai untuk return area, yang di dapat dari variabel let (luas, keliling)
    let perimeters = 2 * phi * r // nilai untuk return perimeters, yang di dapat dari variabel let (luas, keliling)
    
    return (area, perimeters) // nilai return pengembalian adalah area dan perimeters
}

let (luas, keliling) = calculatingRoundedArea(phi: 3.14, r: 7) //
print("luas lingkaran adalah \(luas)")
print("keliling lingkaran adalah \(keliling)")

// ====================================================

// MARK: FUNC DALAM FUNC

// MARK: HIGH ORDER FUNCTION FUNGSI MENGHASILKAN FUNGSI (RETURN)

func operate(symbol: String) -> (Double, Double) -> Double {
    func add(num1: Double, num2: Double) -> Double {
        return num1 + num2
    }
    func substract(num1: Double, num2: Double) -> Double {
        return num1 - num2
    }
    let operation = symbol == "+" ? add : substract
    
    return operation
}

let operation = operate(symbol: "-")
let result = operation (6, 4)

print(result)




//: [Previous](@previous)

import Foundation
// 2. BUAT PROGREAM CONSITIONAL MENGGUNAKAN IF ELSE -> MENGANDUNG OPERATOR LOGIKA DAN PERBANDINGAN >= <=, && ||


var nilaiUjian: Int = 95
var absensi: Int = 87


// MARK: &&

if nilaiUjian >= 75 && absensi >= 80 {
    print("Siswa lulus dengan nilai baik dan kehadiran cukup.")
} else if nilaiUjian >= 75 && absensi < 80 {
    print("Siswa lulus, tetapi kehadiran kurang.")
} else if nilaiUjian < 75 && absensi >= 80 {
    print("Siswa gagal karena nilai ujian tidak mencukupi, tetapi kehadiran cukup.")
} else {
    print("Siswa tidak lulus karena nilai ujian dan kehadiran tidak mencukupi.")
}


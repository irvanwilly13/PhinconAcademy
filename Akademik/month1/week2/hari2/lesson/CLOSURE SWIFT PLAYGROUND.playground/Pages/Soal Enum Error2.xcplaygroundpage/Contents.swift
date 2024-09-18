//: [Previous](@previous)

import Foundation

enum BankError: Error {
    case saldoTidakMencukupi
    case nilaiTidakvalid
}

class BankAccount {
    var namaAkun: String
    var saldo: Double
    
    init(namaAkun: String, saldo: Double) {
        self.namaAkun = namaAkun
        self.saldo = saldo
    }
    
    func deposit(jumlah: Double) throws {
        guard jumlah > 0 else {
            throw BankError.nilaiTidakvalid
        }
        saldo += jumlah
        print("Deposit \(jumlah)")
    }
    
    func tarikTunai(jumlah: Double) throws {
        guard jumlah > 0 else {
            throw BankError.nilaiTidakvalid
        }
        guard saldo >= jumlah else {
            throw BankError.saldoTidakMencukupi
        }
        saldo -= jumlah
        print("tarik tunai \(jumlah), sisa saldo \(saldo)")
    }
    
    func transferSaldo(jumlah: Double, account: BankAccount) throws {
        guard jumlah > 0 else {
            throw BankError.nilaiTidakvalid
        }
        guard saldo >= jumlah else {
            throw BankError.saldoTidakMencukupi
        }
        try tarikTunai(jumlah: jumlah)
        try account.deposit(jumlah: jumlah)
        print("transfer \(jumlah) ke \(account.namaAkun)")
    }
}

let akun1 = BankAccount(namaAkun: "Irvan", saldo: 3000)
let akun2 = BankAccount(namaAkun: "Erga", saldo: 1000)

do {
    try akun1.deposit(jumlah: 4000)
    try akun1.transferSaldo(jumlah: 500, account: akun2)
    
} catch BankError.nilaiTidakvalid {
    print("Error: jumlah nilai tidak valid")
} catch BankError.saldoTidakMencukupi {
    print("Error: jumlah saldo tidak mencukupi")
} catch {
    print("Error: tidak terdeteksi")
}

//: [Previous](@previous)

import Foundation

enum TypeFinanceManager {
    case pendapatan
    case pengeluaran
}

struct Transaction {
    var nama: String
    var category: TypeFinanceManager
    var amount: Double
    var date: Date = .now
}

protocol FinanceManager {
    var listTransaksi: [Transaction] {get set}
    func checkBalance() -> Double
    func totalPendapatan()
    func totalPengeluaran()
    func filterTransaksi(byCategory: TypeFinanceManager)
    func tambahTransaksi(transaksi: Transaction)
}

class Transaksi: FinanceManager {
    var listTransaksi: [Transaction] = []
    
    func checkBalance() {
        let pendapatan = listTransaksi.filter { $0.category == .pendapatan }
        let totalPendapatan = pendapatan.reduce(0) { $0 + $1.amount }
        
        let pengeluaran = listTransaksi.filter { $0.category == .pengeluaran}
        let totalPengeluaran = pengeluaran.reduce(0) { $0 + $1.amount}
        
        let saldo = totalPendapatan - totalPengeluaran
        print("Total Pendapatan: \(totalPendapatan), Total Pengeluaran: \(totalPengeluaran), Sisa saldo: \(saldo)")
    }
    
    func tambahTransaksi(transaksi: Transaction) {
        if transaksi.amount < checkBalance()
           listTransaksi.append(transaksi)
           print("Transaksi \(transaksi.nama) ditambahkan.")
       }
    
    
}

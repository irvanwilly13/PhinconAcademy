//: [Previous](@previous)

import Foundation

protocol Printable {
    var description: String {get}
}

struct Book: Printable {
    var description: String
    var name: String
    var tahun: Int
    
    init(description: String, name: String, tahun: Int) {
        self.description = description
        self.name = name
        self.tahun = tahun
    }
}

let book1 = Book(description: "Moon", name: "Eclipse", tahun: 2019)
print(book1.description)
print(book1.name)
print(book1.tahun)

/* //MARK: JIKA ADA DIBERIKAN NILAI RETURN
 protocol Printable {
     var description: String { get }
 }

 // Membuat struktur Book yang mengimplementasikan protokol Printable
 struct Book: Printable {
     var title: String
     var author: String
     var year: Int
     
     // Implementasi properti description dari protokol Printable
     var description: String {
         return "Buku: \(title), ditulis oleh \(author) pada tahun \(year)."
     }
 }

 // Membuat instance Book dan mencetak deskripsi
 let myBook = Book(title: "Swift Programming", author: "John Appleseed", year: 2021)
 print(myBook.description)
 */

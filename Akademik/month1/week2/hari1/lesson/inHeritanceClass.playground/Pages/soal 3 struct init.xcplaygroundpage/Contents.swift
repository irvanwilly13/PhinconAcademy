//: [Previous](@previous)

import Foundation

struct Book {
    var title: String
    var pages: Int
    
    init(title: String, pages: Int) {
        self.title = title
        self.pages = pages
    }
}

let myBook = Book(title: "Swift Programming", pages: 300)

print("Judul buku \(myBook.title)")
print("jumlah halam \(myBook.pages)")

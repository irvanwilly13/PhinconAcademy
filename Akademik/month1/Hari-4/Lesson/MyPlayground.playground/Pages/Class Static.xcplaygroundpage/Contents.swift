//: [Previous](@previous)

import Foundation

class Calculator {
    
    static var usename: String = "manis"
    static func add(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    static func minus(num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
}
print(Calculator.add(num1: 20, num2: 30)) // menggunakan static, tidak perlu lagi menambahkan objek (var, let)
print(Calculator.usename)

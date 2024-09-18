//: [Previous](@previous)

import Foundation

struct Circle {
    var radius: Double
    
    func menghitungArea() -> Double {
        let pi: Double = 3.14
        return pi * (radius * radius)
    }
}

let circle = Circle(radius: 5)
let area = circle.menghitungArea()
print("luas lingkaran adalah \(circle.radius) adalah \(area)")

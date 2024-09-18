//: [Previous](@previous)

import Foundation

class Circle {
    var area: Double = 0.0 {
        didSet {
            print ("radius ter update menjadi \(area)")
        }
    }
}

let circle = Circle()
circle.area = 50


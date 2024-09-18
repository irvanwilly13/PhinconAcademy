//: [Previous](@previous)

import Foundation

// GETTER SETTER

var width: Double = 10
var height: Double = 20

var area: Double {
    get {
        return width * height
    }
    
    set(newValue) {
    height = newValue / width // melakukan perubahan kepada height
    }
}

print(area)

area = 500

print(width)
print(height)


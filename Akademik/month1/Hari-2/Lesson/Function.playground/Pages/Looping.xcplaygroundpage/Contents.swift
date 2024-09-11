

import Foundation

var greeting = "Hello, playground"

let fruits:[String] = ["apple", "banana", "grape"]

for item in fruits {
    print(item)
}

for (index,item) in fruits.enumerated() {
    print(index + 1 , item)
}

var num = 100
for number in 1...num where number > 20 && number < 50 && number % 4 == 0{
    print(number)
}

let countries = ["ID": "Indonesia", "US": "United States", "My": "Malaysia"]
for (code, name) in countries {
    print("\(code) adalah code dari \(name)")
}

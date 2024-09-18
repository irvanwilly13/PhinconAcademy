//: [Previous](@previous)

import Foundation

class Circle {
    var radius: Double = 0.0 {
        didSet {
            print ("radius ter update menjadi \(radius)")
        }
    }
    
    var circumference: Double {
        get {
            return 2 * Double.pi * radius
        }
        set(newValue) {
            radius = (newValue * 2 / Double.pi)
        }
    }
}

let circle = Circle()
circle.radius = 5.0
print("circumference adalah \(circle.circumference)")
circle.circumference = 50

class StepCounter {
    
    var step: Int = 0 {
        didSet {
            print("nilai sudah di tambahkan")
        }
    }
    
    func addStep () {
        self.step += 1
    }
}

let dataStep = StepCounter()

dataStep.addStep()
print(dataStep.step)
dataStep.addStep()
dataStep.addStep()
print(dataStep.step)

// ==================

class TemperatureLogger {
    
    var temperature: Int = 25 {
        didSet {
            if temperature > 26 {
                print("maka suhu panas")
            } else if temperature > 20 && temperature < 26 {
                print("maka suhu dingin")
            } else {
                print("maka suhu sangat dingin")
            }
        }
    }
}

let logger = TemperatureLogger()
logger.temperature = 20
print(logger.temperature)
logger.temperature = 29
print(logger.temperature)


// ============================

class BankAccount {
    
    var balance: Double = 20 {
        didSet {
            if balance < 50 {
                print("saldo anda rendah")
            } else if balance > 50 && balance < 200 {
                print("saldo anda cukup")
            } else {
                print("saldo anda lebih dari cukup")
            }
        }
    }
}

let account = BankAccount()
account.balance = 5000
print(account.balance)

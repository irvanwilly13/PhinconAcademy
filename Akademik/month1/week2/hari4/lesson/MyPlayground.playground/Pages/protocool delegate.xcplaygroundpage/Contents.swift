//: [Previous](@previous)

import Foundation

protocol Playable {
    var name: String {get set}
    var isPlaying: Bool {get set}
    
    func start()
    func stop()
}

protocol ScoreDelegate {
    func didUpdateScore(points: Int)
}

class Game: Playable {

    
    var name: String = ""
    var isPlaying: Bool = false
    var delegate: ScoreDelegate?
    
    init(name: String, isPlaying: Bool) {
        self.name = name
        self.isPlaying = isPlaying
    }
    
    func start() {
        isPlaying = true
        print("\(self.name) bermain \(self.isPlaying) dimulai")
    }
    
    func stop() {
        self.isPlaying = false
        print("\(self.name) bermain \(self.isPlaying) berhenti")
    }
    
    func playFor(seconds: Int, completion: @escaping (Int) -> Void) {
        guard isPlaying else {
            return
        }
        
        var score = 0
        
        for second in 1...seconds {
            DispatchQueue.global().asyncAfter(deadline: .now() + Double(second)) {
                if !self.isPlaying { return }
                
                let points = Int.random(in: 1...10)
                score += points
                DispatchQueue.main.async {
                    self.delegate?.didUpdateScore(points: score)
                }
                
                if second == seconds {
                    DispatchQueue.main.async {
                        completion(score)
                    }
                }
            }
        }
    }
}

class Player {
    
    var game: Game
    var currentscore: Int = 0
    
    init(game: Game) {
        self.game = game
        self.game.delegate = self
    }
    
}

extension Player: ScoreDelegate {
    
    func didUpdateScore(points: Int) {
        currentscore += points
        print("score sudah di update menjadi \(points)")
    }
}

let player1 = Player(game: Game(name: "irvan", isPlaying: false))

player1.game.start()
player1.game.playFor(seconds: 15) { a in
    player1.game.stop()
    print("game berakhir")
}



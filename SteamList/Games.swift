//
//  Games.swift
//  SteamList
//
//  Created by Jaewon on 2022/05/07.
//

import Foundation
import UIKit

class Games {
    private static let instance = Games()
    private var names: Array<String> = []
    private var gameList: Array<Game> = []
    var count: Int {
        return gameList.count
    }
    
    private init() {
        self.setNames()
        self.setGameList()
    }
    
    private func setNames() {
        self.names.append("Hollow Knight")
        self.names.append("Ori And The Will Of The Wisps")
    }
    private func setGameList() {
        for name in names {
            self.gameList.append(Game(name: name, image: UIImage(named: name)))
        }
    }
    
    public static func getInstance() -> Games {
        return instance
    }
    
    public subscript(index: Int) -> Game {
        return self.gameList[index]
    }
}

struct Game {
    let name: String
    let image: UIImage?
}

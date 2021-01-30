//
//  User.swift
//  PracticeTDD
//
//  Created by Mephrine on 2021/01/30.
//

import Foundation

struct Game: Equatable, Identifiable {
  typealias Identifier = String
  enum Kind {
    case adventure
    case scienceFiction
    case horror
    case rpg
    case fps
  }
  let id: Identifier
  let kind: Kind?
  let name: String?
  let price: String?
  let releaseDate: Date?
}

struct GamePage: Equatable {
  let page: Int
  let totalPages: Int
  let games: [Game]
}

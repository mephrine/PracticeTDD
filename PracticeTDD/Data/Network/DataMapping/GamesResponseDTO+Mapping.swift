//
//  GamesResponseDTO.swift
//  PracticeTDD
//
//  Created by Mephrine on 2021/01/30.
//

import Foundation

struct GamesResponseDTO: Decodable {
  private enum CodingKeys: String, CodingKey {
    case page
    case totalPages = "total_pages"
    case games
  }
  let page: Int
  let totalPages: Int
  let games: [GameDTO]
}

extension GamesResponseDTO {
  struct GameDTO: Decodable {
    private enum CodingKeys: String, CodingKey {
      case id
      case kind
      case name
      case price
      case releaseDate = "release_date"
    }
    enum KindDTO: String, Decodable {
      case adventure
      case scienceFiction = "science_fiction"
      case horror
      case rpg
      case fps
    }
    let id: Int
    let kind: KindDTO?
    let name: String?
    let price: String?
    let releaseDate: String?
  }
}

// MARK: - Mappings to Domain

extension GamesResponseDTO {
  func toDomain() -> GamePage {
    return .init(page: page,
                 totalPages: totalPages,
                 games: games.map { $0.toDomain() })
  }
}

extension GamesResponseDTO.GameDTO {
  func toDomain() -> Game {
    return .init(id: Game.Identifier(id),
                 kind: kind?.toDomain(),
                 name: name,
                 price: price,
                 releaseDate: dateFormatter.date(from: releaseDate ?? ""))
  }
}

extension GamesResponseDTO.GameDTO.KindDTO {
  func toDomain() -> Game.Kind {
    switch self {
    case .adventure: return .adventure
    case .scienceFiction: return .scienceFiction
    case .fps: return .fps
    case .horror: return .horror
    case .rpg: return .rpg
    }
  }
}

// MARK: - Private

private let dateFormatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.dateFormat = "yyyy-MM-dd"
  formatter.calendar = Calendar(identifier: .iso8601)
  formatter.timeZone = TimeZone(secondsFromGMT: 0)
  formatter.locale = Locale(identifier: "en_US_POSIX")
  return formatter
}()

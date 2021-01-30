//
//  DefaultGameImagesRepository.swift
//  PracticeTDD
//
//  Created by Mephrine on 2021/01/30.
//

import Foundation


final class DefaultGameImagesRepository {
}

extension DefaultGameImagesRepository: GameImagesRepository {
  func fetchImage(with imagePath: String, width: Int, completion: @escaping (Result<Data, Error>) -> Void) -> Cancellable? {
    return nil
  }
  
}

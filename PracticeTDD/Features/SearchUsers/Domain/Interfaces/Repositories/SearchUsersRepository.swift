//
//  GameImagesRepository.swift
//  PracticeTDD
//
//  Created by Mephrine on 2021/01/30.
//

import Foundation

protocol GameImagesRepository {
    func fetchImage(with imagePath: String, width: Int, completion: @escaping (Result<Data, Error>) -> Void) -> Cancellable?
}

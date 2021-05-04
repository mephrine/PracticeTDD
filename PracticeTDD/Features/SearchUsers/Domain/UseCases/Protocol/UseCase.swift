//
//  UseCase.swift
//  PracticeTDD
//
//  Created by Mephrine on 2021/01/30.
//

import Foundation
public protocol UseCase {
    @discardableResult
    func start() -> Cancellable?
}

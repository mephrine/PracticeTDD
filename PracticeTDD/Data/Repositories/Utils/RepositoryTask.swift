//
//  RepositoryTask.swift
//  PracticeTDD
//
//  Created by Mephrine on 2021/01/30.
//

import Foundation

class RepositoryTask: Cancellable {
    var networkTask: NetworkCancellable?
    var isCancelled: Bool = false
    
    func cancel() {
        networkTask?.cancel()
        isCancelled = true
    }
}

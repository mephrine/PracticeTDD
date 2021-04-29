//
//  Alertable.swift
//  PracticeTDD
//
//  Created by Mephrine on 2021/01/30.
//

import SwiftUI

public protocol Alertable {}
extension Alertable where Self: View {
  func showAlert(_ title: String = "", _ message: String, _ positiveButtonTitle: String = "Ok", _ positiveAction: (() -> Void)? = {}) -> Alert {
    return Alert(title: Text(title),
                 message: Text(message),
                 primaryButton: .destructive(Text(positiveButtonTitle),
                 action: positiveAction),
                 secondaryButton: .cancel())
  }
}


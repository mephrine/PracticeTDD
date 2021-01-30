//
//  LoginViewModel.swift
//  PracticeTDD
//
//  Created by Mephrine on 2021/01/12.
//

import Combine
import SwiftUI

class LoginViewModel: ObservableObject {
  @Published var loginState = false
  @Published var stateText = "logout"

  func switchNickName() {
    if loginState {
      stateText = "login"
    } else {
      stateText = "logout"
    }
  }
  
}

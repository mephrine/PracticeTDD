//
//  LoginView.swift
//  PracticeTDD
//
//  Created by Mephrine on 2021/01/12.
//

import SwiftUI
import Combine
// 참고 예제
//https://seorenn.tistory.com/67

struct ToggleButton: View {
  @Binding var value: Bool
  var body: some View {
    Button(action: {
      self.value.toggle()
    }, label: {
      Text(self.value ? "Mephrine" : "Metibone")
    })
  }
}

struct LoginView: View {
  @State private var value: Bool = false
  @State private var name: String = "Mephrine"
  @EnvironmentObject private var sharedData: SharedData
  @ObservedObject private var viewModel: LoginViewModel = LoginViewModel()
    var body: some View {
      NavigationView {
        VStack {
          List(0..<2) { index in
            HStack{
              Text((index + 1).description)
                .padding()
              Text(name)
                .padding(.leading)
              ToggleButton(value: $value)
              .padding()
              Button(action: {
                viewModel.switchNickName()
              }, label: {
                Text(viewModel.stateText)
              })
            }
          }
          Text(sharedData.connectNetwork ? "네트워크 연결됨" : "네트워크 연결 실패")
        }
        .navigationBarTitle(
          Text("LoginView")
            .font(.system(size: 13))
        )
      }
    }
  
  private func switchName(_ index: Int) {
    if (index == 0) {
      name = "Mephrine"
  } else {
      name = "Metibone"
  }
  }
}

#if DEBUG
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
      LoginView()
    }
}
#endif


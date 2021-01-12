//
//  ContentView.swift
//  PracticeTDD
//
//  Created by Mephrine on 2021/01/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      NavigationView {
        List(0..<5) { index in
          HStack{
            Text((index + 1).description)
              .padding()
            Text("LoginViewController")
          }
        }
        .navigationBarTitle(
          Text("MainView")
            .font(.system(size: 13))
        )
      }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

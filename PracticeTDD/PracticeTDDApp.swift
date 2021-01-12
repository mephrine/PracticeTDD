//
//  PracticeTDDApp.swift
//  PracticeTDD
//
//  Created by Mephrine on 2021/01/12.
//

import SwiftUI

@main
struct PracticeTDDApp: App {
  var sharedData = SharedData()
    var body: some Scene {
        WindowGroup {
            ContentView()
              .environmentObject(sharedData)
        }
    }
}

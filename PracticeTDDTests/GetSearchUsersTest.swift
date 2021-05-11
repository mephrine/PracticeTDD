//
//  GetSearchUsersTest.swift
//  PracticeTDDTests
//
//  Created by Mephrine on 2021/05/11.
//

import Foundation
import Quick
import Nimble
import Combine

@tesable import PracticeTDD


class GetSearchUsersTest {
  let repository: SearchUsersRepository
  
  override func spec() {
    repository = SearchUsersRepositoryImpl()
    
    
    descirbe("When i tapped search button") {
      context("Should get searched user's data from the repository") {
        it("The Stub data and the data in the repository are same") {
          
        }
      }
    }
  }
}

//
//  LoginViewModelTests.swift
//  LoginViewModelTests
//
//  Created by Mephrine on 2021/01/12.
//

import Quick
import Nimble
@testable import PracticeTDD

class LoginViewModelTest: QuickSpec {
  override func spec() {
    // MARK: - Login
    describe("로그인 시도") {
      // MARK: - Fixture
      beforeSuite {
        
      }
      
      afterSuite {
        
      }
      
      describe("로그인을 하기 위해서 로그인 버튼 클릭 시") {
        context("TextField Validation 확인") {
          it("ID를 입력하지 않음") {
            
          }
          it("PW를 입력하지 않음") {
            
          }
          it("ID 및 PW를 입력하지 않음") {
            
          }
        }
        
        context("자동 로그인 여부 확인") {
          it("자동로그인 체크") {
            
          }
        }
        
        context("로그인 API") {
          // Mock 객체 생성 후 확인 필요.
          /**
           로그인 성공
           로그인 실패
              잘못된 ID
              잘못된 PW
              인증이 필요한 계정
              비밀번호 5회 이상 틀림
           네트워크 오류
           */
          it("로그인 성공") {
            
          }
          
          it("로그인 실패") {
            
          }
          
          it("잘못된 ID") {
            
          }
          
          it("잘못된 PW") {
            
          }
          
          it("인증이 필요한 계정") {
            
          }
          
          it("비밀번호 5회 이상 틀림") {
            
          }
          
          it("네트워크 오류") {
            
          }
          
        }
      }
    }
  }
}

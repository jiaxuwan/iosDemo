//
//  LoginModel.swift
//  stayHungry
//
//  Created by jiaxu on 2022/3/1.
//

import Foundation


class LoginModel {
    static let loginModel = LoginModel()
    var userName: String
    var passWord: String
    private init() {
        self.passWord = "2"
        self.userName = "1"
    }
}

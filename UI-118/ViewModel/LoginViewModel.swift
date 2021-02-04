//
//  LoginViewModel.swift
//  UI-118
//
//  Created by にゃんにゃん丸 on 2021/02/04.
//

import SwiftUI


class LoginViewModel: ObservableObject {
    
    @Published var contry = ""
    @Published var Phone = ""
    @Published var showVerification = false
    @Published var code = ""
    @Published var showResitration = false
    @Published var images : [Data] = [Data(),Data(),Data(),Data()]
    @Published var Registration = false
    @Published var showpicker = false
    @Published var index = 0
    @Published var showprofile = false
    @Published var home = false
    @Published var name = ""
    @Published var age = ""
    @Published var about = ""
    @Published var KeybordHeight : CGFloat = 0
    @Published var selected : Int = 0
    @Published var w = UIScreen.main.bounds.width
    @Published var h = UIScreen.main.bounds.height
    
    
}



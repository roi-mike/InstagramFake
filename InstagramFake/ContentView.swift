//
//  ContentView.swift
//  InstagramFake
//
//  Created by samuel maboza hondi on 17/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var askpage = "Welcome";
    var body: some View {
        if askpage == "login" {
            Login(askpage: $askpage)
        }
        if askpage == "lostpassword" {
            Lostpassword(askpage: $askpage)
        }
        if askpage == "createaccount" {
            CreateAccount()
        }
        if( askpage == "NewPassword"){
            NewPassword()
        }
        if( askpage == "Welcome"){
            Welcome()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



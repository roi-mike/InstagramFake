//
//  NewPassword.swift
//  InstagramFake
//
//  Created by samuel maboza hondi on 08/05/2023.
//

import SwiftUI

struct NewPassword: View {
    
    @State var email_NewPassword = "";
    @State private var isOn = false;
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "arrow.left")
                    .resizable()
                    .aspectRatio(contentMode: .fit).frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 30 ,alignment: .leading )
            }
            VStack{
                Text("Créez un nouveau mot de passe")
                Text("Créer un mot de passe comprenant au moins 6 lettres et chiffres. Vous en aurez besoin pour vous conneter à votre compte")
            }
            HStack{
                TextField("Nouveau mot de passe", text: $email_NewPassword)
            }
            VStack{
                Button(action: {
                    print("Change password")
                }, label: {
                    Text("Contiuer")
                })
            }
            HStack{
                Toggle(isOn: $isOn){
                    Text("Déconnectez vos autres appareils. Choisissez ceci si une autre personne a utilisé votre compte")
                }.toggleStyle(iOSCheckboxToggleStyle())
                
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top).background(Color.gray)
    }
}

struct NewPassword_Previews: PreviewProvider {
    static var previews: some View {
        NewPassword()
    }
}

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {

            // 2
            configuration.isOn.toggle()

        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")

                configuration.label
            }
        })
    }
}

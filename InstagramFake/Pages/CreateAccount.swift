//
//  CreateAccount.swift
//  InstagramFake
//
//  Created by samuel maboza hondi on 18/04/2023.
//

import SwiftUI

struct CreateAccount: View {
    
    @State private var numberphone = "";
    
    
    var body: some View {
        VStack(alignment: .center){
            VStack{
                HStack{
                    Image(systemName: "arrow.left").resizable()
                        .aspectRatio(contentMode: .fit).frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 30, alignment: .leading)
                }.frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 40, alignment: .top)
                VStack{
                    Text("Quel est votre numéro de mobile ?").frame( maxWidth: .infinity, maxHeight: 30, alignment: .leading)
                    Text("Entrez le numero de mobile ou vous joindre. \n Personne ne le verra sur votre profil.")
                }
                VStack{
                    TextField("Numéro de mobile", text: $numberphone)
                }
                VStack{
                    Text("Vous pouvez recevoir des notification par texto de notre part pour des raisons de sécurité ou pour vous connecter")
                }
                VStack{
                    Button(action: {
                        print("SUIVANT ACCOUNT")
                    }, label: {
                        Text("Suivant").frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    })
                }.frame(maxWidth: .infinity,maxHeight: 50, alignment: .leading).background(Color.blue).foregroundColor(Color.white)
                
                VStack{
                    Button(action: {
                        print("S'inscrire avec une adresse e-mail")
                    }, label: {
                        Text("S'inscrire avec une adresse e-mail").frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    })
                }.frame(maxWidth: .infinity,maxHeight: 50, alignment: .leading).background(Color.gray).foregroundColor(Color.white).border(Color.black, width: 2).padding(.top, 10)
                
                
                
                
                
                
                
            }.padding(.horizontal, 20)
        }.frame(maxWidth: UIScreen.main.bounds.width,maxHeight: UIScreen.main.bounds.height, alignment: .top).background(Color.gray)
    }
}

struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount()
    }
}

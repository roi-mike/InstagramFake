//
//  Login.swift
//  InstagramFake
//
//  Created by samuel maboza hondi on 18/04/2023.
//

import SwiftUI

struct Login: View {
    @State private var selectorlanguage = "Anglais";
    @State private var f_name_user = "";
    @State private var password = "";
    
    @Binding var askpage: String;
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            VStack{
                Language(selectorlanguage: $selectorlanguage);
                LogoInstagram();
                TextField("Nom dutilisateur ",text: $f_name_user).padding(EdgeInsets(top: 0, leading: 0, bottom: 25, trailing: 0));
                TextField("Mot de passe ",text: $password).padding(EdgeInsets(top: 0, leading: 0, bottom: 25, trailing: 0));
                Button(action: {
                    print("OUi cest bon")
                }, label: {
                    Text("Se Connecter").background(Color.blue).foregroundColor(Color.white).font(.system(size: 30))
                }).cornerRadius(10).frame(maxWidth: .infinity, maxHeight: 45).background(Color.blue);
                
                Button(action: {
                    askpage = "lostpassword"
                    print("UPDATE MOT DE PASSE")
                }, label: {
                    Text("Mot de passe oublié ?").foregroundColor(Color.white)
                }).padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
            }.padding(25).frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height * 0.6, alignment: .center)
            
            VStack{
                Button(action: {
                    print("CREATE NEW ACCOUNT")
                }, label: {
                    Text("Créer un compte").foregroundColor(Color.white)
                })
                HStack{
                    Image(systemName: "infinity");
                    Text("Meta")
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top).background(.gray);
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Language: View {
    
    @Binding var selectorlanguage: String;
    
    var body: some View {
        HStack{
            Picker(selection: $selectorlanguage,label: Text("Couleur")) {
                ForEach(langues) { langue in
                    Text("\(langue.language) (\(langue.countrie))")
                        .foregroundColor(Color.red)
                }
            }
            .pickerStyle(DefaultPickerStyle()).foregroundColor(Color.red)
        }
    }
}

struct LogoInstagram: View {
    var body: some View {
        HStack{
            Image("logoInstagram")
                .resizable()
                .aspectRatio(contentMode: .fit).frame(width: 90, height: 90, alignment: .leading)
        }.frame(maxWidth: .infinity, maxHeight: 90*1.5, alignment: .center)
    }
}

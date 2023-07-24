//
//  Lostpassword.swift
//  InstagramFake
//
//  Created by samuel maboza hondi on 18/04/2023.
//

import SwiftUI

struct Lostpassword: View {
    
    @State private var f_name = "";
    
    @Binding var askpage: String;
    
    
    var body: some View {
        
        
        VStack(alignment: .center, content: {
            
            VStack{
                HStack(content: {
                    Button(action: {
                        askpage = "login"
                        print("FLECH BACK")
                    }, label: {
                        Image(systemName: "arrow.left").resizable()
                            .aspectRatio(contentMode: .fit).frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 40, alignment: .leading).font(.system(size: 30)).foregroundColor(Color.black)
                    })
                }).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 20, alignment: .leading).padding(.top,30)
                
                VStack(content: {
                    Text("Trouvez votre compte").font(.system(.title3)).fontWeight(.bold).frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
                    Text("Entrez votre nom d'utilisateur, adresse e-mail ou numéro de mobile").frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
                    Text("Need more help ?").foregroundColor(Color.blue).frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
                }).frame(maxWidth: .infinity, minHeight: UIScreen.main.bounds.height / 5, alignment: .leading).foregroundColor(Color.white).padding(.horizontal, 10)
                
                VStack(content: {
                    TextField("Nom d'utilisateur", text: $f_name).frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
                }).frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading).foregroundColor(Color.white).padding(.horizontal, 10)
                
                VStack(alignment:.center,content: {
                    Button(action: {
                        print("Trouver le compte ok")
                    }, label: {
                        Text("Trouver le compte")
                    }).frame(maxWidth: .infinity, maxHeight: 60, alignment: .center)
                }).frame(maxWidth: .infinity, maxHeight: 60, alignment: .center).foregroundColor(Color.white).background(Color.blue).padding(.horizontal, 10)
                
                VStack(alignment:.center,content: {
                    Button(action: {
                        print("Se connecter avec Facebook")
                    }, label: {
                        Text("Se connecter avec Facebook")
                    }).frame(maxWidth: .infinity, maxHeight: 60, alignment: .center)
                }).frame(maxWidth: .infinity, maxHeight: 60, alignment: .center).foregroundColor(Color.white).background(Color.gray).border(Color.black, width: 1).padding(.horizontal, 10)
                
            }.frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height, alignment: .top).background(Color.gray);
            
        }).frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height, alignment: .top).background(Color.gray);
    }
}

struct Lostpassword_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  SaveParamsConnection.swift
//  InstagramFake
//
//  Created by samuel maboza hondi on 08/05/2023.
//

import SwiftUI

struct SaveParamsConnection: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading, content: {
                Text("Enregister vos").font(.system(.title2)).fontWeight(.bold).padding(.horizontal, 20)
                Text("inormations de connexion ?").font(.system(.title2)).fontWeight(.bold).padding(.horizontal, 20)
            }).frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height / 10, alignment: .leading)
            VStack(content: {
                Text("Nous enregistrons les informations de connexion pour #####, afin que vous n'ayez pas à saisir lors de votre proche connexion.").font(.system(.title3)).padding().multilineTextAlignment(.center)
            }).frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height / 6, alignment: .center)
            VStack{
                
                Image("usher001").resizable()
                    .aspectRatio(CGSize(width: 3, height: 4), contentMode: .fill) .frame(maxWidth: UIScreen.main.bounds.width / 2 , maxHeight: UIScreen.main.bounds.height / 2, alignment: .center).clipShape(Circle())
                
            }.frame(maxWidth: UIScreen.main.bounds.width , maxHeight: UIScreen.main.bounds.width / 1.4, alignment: .center)
            
            VStack{
                Button(action: {
                    print("ENREGISTER INFORMATION")
                }, label: {
                    Text("Enregistrer").padding()
                }).frame(maxWidth: UIScreen.main.bounds.width / 1.2, maxHeight: 50, alignment: .center).background(Color.blue).foregroundColor(Color.white)
                
                Button(action: {
                    print("Plus tard")
                }, label: {
                    Text("Plus tard").padding()
                }).frame(maxWidth: UIScreen.main.bounds.width / 1.2, maxHeight: 50, alignment: .center).background(Color.gray).foregroundColor(Color.white).border(Color.purple, width: 1)
            }.frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height / 4, alignment: .center)
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top).background(Color.gray)
    }
}

struct SaveParamsConnection_Previews: PreviewProvider {
    static var previews: some View {
        SaveParamsConnection()
    }
}

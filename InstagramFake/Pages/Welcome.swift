//
//  welcome.swift
//  InstagramFake
//
//  Created by samuel maboza hondi on 16/05/2023.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        VStack(spacing: 0.0){
            //icon photo; logo instagram; icon TV; icon evoyer
            TopNavBar()
            Divider()
                ScrollView(.horizontal){
                    HStack{
                        Snapfriends()
                        Snapfriends()
                        Snapfriends()
                        Snapfriends()
                        Snapfriends()
                        Snapfriends()
                        Snapfriends()
                    }
                }
            Divider()
            VStack{
                
                HStack{
                    Image("usher001").resizable().frame(width: 35, height: 35).cornerRadius(50)
                    VStack(alignment:.leading){
                        Text("Usher Raymond IV")
                        Text("Californy, USA")
                    }.padding(.horizontal,2)
                    Spacer()
                    Image(systemName: "ellipsis").padding(.horizontal,3)
                }.padding(.vertical,5).padding(.horizontal,10)
                
                VStack{
                    Image("Rectangle").resizable().frame(height:430)
                }
                HStack{
                    Image(systemName: "heart")
                    Image(systemName: "message")
                    Image(systemName: "paperplane")
                    Spacer()
                    Image(systemName: "bookmark")
                    
                }
                VStack{
                    HStack{
                        Image("usher001").resizable().frame(width: 20, height: 20).cornerRadius(50)
                        HStack{
                            Text("Lided by")
                            Text("Usher_Love")
                            Text("and")
                            Text("44,500")
                            Text("others")
                        }
                        Spacer()
                    }
                    
                    VStack{
                        Text("josha_I the game in Japon was amazing and I want to share some photos")
                    }
                }
                
                
            }
            
            HStack(spacing: 30){
                Image(systemName: "house").font(.system(size: 35))
                Image(systemName: "magnifyingglass").font(.system(size: 35))
                Image(systemName: "plus.rectangle.portrait").font(.system(size: 35))
                Image(systemName: "heart").font(.system(size: 35))
                Image("usher001").resizable().frame(width: 35, height: 35).cornerRadius(50)
            }
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}

struct Snapfriends: View {
    var body: some View {
        VStack{
            VStack{
                Image("usher001").resizable().frame(width: 60, height: 60).cornerRadius(50)
            }.overlay(
                Circle()
                    .stroke(LinearGradient(colors:
                                            [.red, .purple, .red, .orange, .yellow, .orange],
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing), lineWidth: 2)
                    .frame(width: 60, height: 60)
            )
            Text("Usher Raymond IV").font(.caption)
        }.padding(.vertical, 10)
    }
}

struct TopNavBar: View {
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "camera")
            }
            VStack{
                Image("Instagram Logo")
            }
            Spacer()
            VStack{
                Image(systemName: "tv")
            }
            VStack{
                Image(systemName: "paperplane")
            }
        }
    }
}

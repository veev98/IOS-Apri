//
//  ContentView.swift
//  apri
//
//  Created by Joanna Aloor on 26/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        VStack{
            Text("My Cards")
                .bold()
                .font(.custom("Poppins SemiBold", size: 28))
                .padding(.top, 40)
                .frame(maxWidth:.infinity, alignment: .leading)
                .frame(height: 15)
                .padding(.horizontal, 15)
                .navigationBarHidden(true)
            
            Spacer()
                .frame(height: 20)
            
                VStack{
                    Image(uiImage: #imageLiteral(resourceName: "Primary_card"))
                        .resizable()
                        .frame(width: 340.0, height: 285.16, alignment: .center)
                    
                    Image(uiImage: #imageLiteral(resourceName: "Marketing_card"))
                        .resizable()
                        .frame(width: 340.0, height: 285.16, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.top, -70)
                    
                    Image(uiImage: #imageLiteral(resourceName: "Product_Card"))
                        .resizable()
                        .frame(width: 340.0, height: 285.16, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.top, -70)
                }

            
            HStack{
                Image(uiImage: #imageLiteral(resourceName: "ic My Cards(1)"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 24, height: 20)
                    .offset(x: -100)
                
                
                NavigationLink(destination: CardView()){
                    Image(uiImage: #imageLiteral(resourceName: "ic Transfer(1)"))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 24, height: 20)
                        .offset(x: 0)
                        .navigationBarTitle("")
                        .navigationBarHidden(true)

                }
                    
                Image(uiImage: #imageLiteral(resourceName: "Screenshot 2021-06-26 at 23-50-13 Figma"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 25)
                    .offset(x: 100)
                
            }
        }
    }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}


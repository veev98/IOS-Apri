
//
//  MarketingCard.swift
//  apri
//
//  Created by Joanna Aloor on 26/06/2021.
//

import SwiftUI

struct MarketingCard: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        NavigationView {
            VStack {
                Group{
                    //Primary
                    Text("Current Account").font(.custom("Poppins SemiBold", size: 28)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.28)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                        .navigationBarHidden(true)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    ZStack{
                        Image(uiImage: #imageLiteral(resourceName: "Product_Card"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 340, height: 198.6)
                            .offset(x: 60)
                        
//                        NavigationLink(destination: ContentView()){
//
//                            Image(uiImage: #imageLiteral(resourceName: "Primary_card"))
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: 340, height: 198.6)
//                                .offset(x: 30)
//
//                        }
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(uiImage: #imageLiteral(resourceName: "Primary_card"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 340, height: 198.6)
                                .offset(x: 30)
                        }
                        
                        Image(uiImage: #imageLiteral(resourceName: "Marketing_card"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 340, height: 198.6)
                            .offset(x: -3)
                    }
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    //Grill
                    RoundedRectangle(cornerRadius: 11)
                        .fill(Color(#colorLiteral(red: 0.6666666865348816, green: 0.6980392336845398, blue: 0.7490196228027344, alpha: 1)))
                        .frame(width: 51, height: 4)
                        .opacity(0.3)
                    
                    Spacer()
                        .frame(height: 20)
                    
                }
                
                Group{
                    //Transactions
                    HStack {
                        Text("Transactions").font(.custom("Poppins Medium", size: 24)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(0.31)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                        
                        //Sort
                        ZStack {
                            Text("Sort").font(.custom("Poppins Medium", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1))).tracking(-0.24)
                                .frame(maxWidth: 38, alignment: .trailing)
                                .background(RoundedRectangle(cornerRadius: 20)
                                                .fill(Color(#colorLiteral(red: 0.9710416793823242, green: 0.9845375418663025, blue: 0.987500011920929, alpha: 1)))
                                                .frame(width: 59, height: 28))
                            
                            Image(uiImage: #imageLiteral(resourceName: "icSort"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 10, height: 8.34)
                                .clipped()
                                .offset(x: -12)
                            
                        }
                        
                        Spacer(minLength: 30)
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                }
                
                //TODAY
                Group{
                    HStack {
                        Text("TODAY").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1)))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                        
                        //£
                        Text("£").font(.custom("Poppins Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1)))
                        Spacer(minLength: 1)
                        //68
                        Text("58").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1)))
                        //.45
                        Spacer(minLength: 0)
                        Text(".74").font(.custom("Poppins Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1)))
                        Spacer(minLength: 140)
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    
                    //Starbucks
                    HStack {
                        Image(uiImage: #imageLiteral(resourceName: "amazonlogo"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 30, height: 25)
                            .offset(x: 20)
                        
                        Text("Amazon").font(.custom("Poppins Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.36)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                        
                        Text("£").font(.custom("Poppins Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1)))
                        Spacer(minLength: 1)
                        //9
                        Text("92").font(.custom("Poppins Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.4)
                        Spacer(minLength: 0)
                        
                        //.99
                        Text(".79").font(.custom("Poppins Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(0.14)
                        
                        Spacer(minLength: 57)
                        
                        NavigationLink(destination: ReceiptImage()){
                            ZStack {
                                Text("Receipt").font(.custom("Poppins Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1))).tracking(-0.24)
                                    .frame(maxWidth: 70, alignment: .leading)
                                    .background(RoundedRectangle(cornerRadius: 11)
                                                    .fill(Color(#colorLiteral(red: 0.9291666746139526, green: 0.9291666746139526, blue: 0.9291666746139526, alpha: 1)))
                                                    .frame(width: 83, height: 28))
                                
                                Image(uiImage: #imageLiteral(resourceName: "Rectangle 31"))
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 24, height: 20)
                                    .clipped()
                                    .offset(x: 20)
                                
                            }
                        }
                        
                        
                        Spacer(minLength:15)
                        
                    }
                    Spacer()
                        .frame(height: 20)
                    
                    HStack {
                        
                        Image(uiImage: #imageLiteral(resourceName: "Group 17"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 30, height: 25)
                            .offset(x: 20)
                        
                        Text("Web Desig...").font(.custom("Poppins Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.36)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                        
                        Text("£").font(.custom("Poppins Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1)))
                        Spacer(minLength: 1)
                        //9
                        Text("350").font(.custom("Poppins Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.4)
                        Spacer(minLength: 0)
                        
                        //.99
                        Text(".89").font(.custom("Poppins Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(0.14)
                        
                        Spacer(minLength: 57)
                        
                        //Receipt
                        ZStack {
                            Text("Receipt").font(.custom("Poppins Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1))).tracking(-0.24)
                                .frame(maxWidth: 70, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 11)
                                                .fill(Color(#colorLiteral(red: 0.9291666746139526, green: 0.9291666746139526, blue: 0.9291666746139526, alpha: 1)))
                                                .frame(width: 83, height: 28))
                            
                            Image(uiImage: #imageLiteral(resourceName: "Rectangle 31"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 24, height: 20)
                                .clipped()
                                .offset(x: 20)
                            
                        }
                        Spacer(minLength:15)
                    }
                    Spacer()
                        .frame(height: 20)
                    
                    HStack {
                        
                        Image(uiImage: #imageLiteral(resourceName: "trainline"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 30, height: 25)
                            .clipped()
                            .offset(x: 20)
                        
                        Text("Trainline").font(.custom("Poppins Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.36)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                        
                        Text("£").font(.custom("Poppins Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1)))
                        Spacer(minLength: 1)
                        //9
                        Text("122").font(.custom("Poppins Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.4)
                        Spacer(minLength: 0)
                        
                        //.99
                        Text(".45").font(.custom("Poppins Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(0.14)
                        
                        Spacer(minLength: 57)
                        
                        //Receipt
                        ZStack {
                            Text("Receipt").font(.custom("Poppins Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1))).tracking(-0.24)
                                .frame(maxWidth: 70, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 11)
                                                .fill(Color(#colorLiteral(red: 0.9291666746139526, green: 0.9291666746139526, blue: 0.9291666746139526, alpha: 1)))
                                                .frame(width: 83, height: 28))
                            
                            Image(uiImage: #imageLiteral(resourceName: "Rectangle 31"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 24, height: 20)
                                .clipped()
                                .offset(x: 20)
                            
                        }
                        Spacer(minLength:15)
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    
                }
                
                Group {
                    //Next date
                    HStack {
                        Text("THURSDAY, 6 MAY").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1)))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                        
                        //£
                        Text("£").font(.custom("Poppins Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1)))
                        Spacer(minLength: 1)
                        //68
                        Text("68").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1)))
                        //.45
                        Spacer(minLength: 0)
                        Text(".45").font(.custom("Poppins Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1)))
                        Spacer(minLength: 140)
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    //Starbucks
                    HStack {
                        
                        Image(uiImage: #imageLiteral(resourceName: "AdobeMarketo"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 30, height: 25)
                            .clipped()
                            .offset(x: 20)
                        
                        Text("Mrkto Subscr").font(.custom("Poppins Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.36)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                        
                        Text("£").font(.custom("Poppins Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1)))
                        Spacer(minLength: 1)
                        //9
                        Text("99").font(.custom("Poppins Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.4)
                        Spacer(minLength: 0)
                        
                        //.99
                        Text(".99").font(.custom("Poppins Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(0.14)
                        
                        Spacer(minLength: 57)
                        
                        //Receipt
                        ZStack {
                            Text("Receipt").font(.custom("Poppins Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1))).tracking(-0.24)
                                .frame(maxWidth: 70, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 11)
                                                .fill(Color(#colorLiteral(red: 0.9291666746139526, green: 0.9291666746139526, blue: 0.9291666746139526, alpha: 1)))
                                                .frame(width: 83, height: 28))
                            
                            Image(uiImage: #imageLiteral(resourceName: "Rectangle 31"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 24, height: 20)
                                .clipped()
                                .offset(x: 20)
                            
                            
                        }
                        Spacer(minLength:15)
                        
                    }
                    Spacer()
                        .frame(height: 20)
                    
                    HStack {
                        
                        Image(uiImage: #imageLiteral(resourceName: "uber_icon_146079"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 30, height: 25)
                            .offset(x: 20)
                        
                        Text("Uber").font(.custom("Poppins Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.36)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                        
                        Text("£").font(.custom("Poppins Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1)))
                        Spacer(minLength: 1)
                        //9
                        Text("32").font(.custom("Poppins Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.4)
                        Spacer(minLength: 0)
                        
                        //.99
                        Text(".60").font(.custom("Poppins Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(0.14)
                        
                        Spacer(minLength: 57)
                        
                        //Receipt
                        ZStack {
                            Text("Receipt").font(.custom("Poppins Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1))).tracking(-0.24)
                                .frame(maxWidth: 70, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 11)
                                                .fill(Color(#colorLiteral(red: 0.9291666746139526, green: 0.9291666746139526, blue: 0.9291666746139526, alpha: 1)))
                                                .frame(width: 83, height: 28))
                            
                            Image(uiImage: #imageLiteral(resourceName: "Rectangle 31"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 24, height: 20)
                                .clipped()
                                .offset(x: 20)
                            
                        }
                        Spacer(minLength:15)
                    }
                    Spacer()
                        .frame(height: 20)
                    
                    HStack {
                        
                        Image(uiImage: #imageLiteral(resourceName: "Group 17"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 30, height: 25)
                            .offset(x: 20)
                        
                        Text("Techspace").font(.custom("Poppins Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.36)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                        
                        Text("£").font(.custom("Poppins Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1)))
                        Spacer(minLength: 1)
                        //9
                        Text("500").font(.custom("Poppins Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(-0.4)
                        Spacer(minLength: 0)
                        
                        //.99
                        Text(".00").font(.custom("Poppins Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.05, green: 0.11, blue: 0.21, alpha: 1))).tracking(0.14)
                        
                        Spacer(minLength: 57)
                        
                        //Receipt
                        ZStack {
                            Text("Receipt").font(.custom("Poppins Regular", size: 12))
                                .foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.7, blue: 0.75, alpha: 1)))
                                .tracking(-0.24)
                                .frame(maxWidth: 70, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 11)
                                                .fill(Color(#colorLiteral(red: 0.9291666746139526, green: 0.9291666746139526, blue: 0.9291666746139526, alpha: 1)))
                                                .frame(width: 83, height: 28))
                            
                            Image(uiImage: #imageLiteral(resourceName: "Rectangle 31"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 24, height: 20)
                                .clipped()
                                .offset(x: 20)
                            
                        }
                        
                        Spacer(minLength:15)
                    }
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                }
                Spacer()
                    .frame(height: 12)
                
                HStack{
                    Image(uiImage: #imageLiteral(resourceName: "ic My Cards"))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 24, height: 20)
                        .offset(x: -100)
                    
                    Image(uiImage: #imageLiteral(resourceName: "ic Transfer"))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 24, height: 20)
                        .offset(x: 0)
                    
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


struct MarketingCard_Previews: PreviewProvider {
    static var previews: some View {
        MarketingCard()
    }
}


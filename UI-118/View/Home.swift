//
//  Home.swift
//  UI-118
//
//  Created by にゃんにゃん丸 on 2021/02/04.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var model : LoginViewModel
 
    var body: some View {
        TabView(selection:$model.selected){
            
            ForEach(1...8,id:\.self){index in
                
               
                    
                
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content:{
                    GeometryReader{reader in
                        
                        Image("p\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: model.w, height: model.h / 2)
                            .cornerRadius(10)
                            .offset(x: -reader.frame(in: .global).minX)

                    }
                      
                           
                            .frame(height: model.h / 2)
                            .cornerRadius(10)
                            .padding(10)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.gray.opacity(0.3), radius: -5, x: -5, y: -5)
                            .padding(.horizontal,25)
                    
                    if index == 1{
                        
                        Image("p1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 55, height: 55)
                            .shadow(color: Color.green.opacity(0.3), radius: 5, x: 5, y: 5)
                            .padding(5)
                            
                            .offset(x: -15, y: 25)
                    }
                    
                    if index == 2{
                        
                        Image("p2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 55, height: 55)
                            .shadow(color: Color.green.opacity(0.3), radius: 5, x: 5, y: 5)
                            .padding(5)
                            
                            .offset(x: -15, y: 25)
                    }
                    
                    if index == 3{
                        
                        Image("p3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 55, height: 55)
                            .shadow(color: Color.green.opacity(0.3), radius: 5, x: 5, y: 5)
                            .padding(5)
                           
                            .offset(x: -15, y: 25)
                    }
                    
                    if index == 4{
                        
                        Image("p4")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 55, height: 55)
                            .shadow(color: Color.green.opacity(0.3), radius: 5, x: 5, y: 5)
                            .padding(5)
                            
                            .offset(x: -15, y: 25)
                    }
                    
                    if index == 5{
                        
                        Image("p5")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 55, height: 55)
                            .shadow(color: Color.green.opacity(0.3), radius: 5, x: 5, y: 5)
                            .padding(5)
                            
                            .offset(x: -15, y: 25)
                    }
                    
                    if index == 6{
                        
                        Image("p6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 55, height: 55)
                            .shadow(color: Color.green.opacity(0.3), radius: 5, x: 5, y: 5)
                            .padding(5)
                            
                            .offset(x: -15, y: 25)
                    }
                    
                    if index == 7{
                        
                        Image("p7")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 55, height: 55)
                            .shadow(color: Color.green.opacity(0.3), radius: 5, x: 5, y: 5)
                            .padding(5)
                            
                            .offset(x: -15, y: 25)
                    }
                    
                    if index == 8{
                        
                        Image("p8")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 55, height: 55)
                            .shadow(color: Color.green.opacity(0.3), radius: 5, x: 5, y: 5)
                            .padding(5)
                            
                            .offset(x: -15, y: 25)
                    }
                                 
                    
                    
                    
                })
                    
                    
                    
                
                
            }
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

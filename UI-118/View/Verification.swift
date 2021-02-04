//
//  Verification.swift
//  UI-118
//
//  Created by にゃんにゃん丸 on 2021/02/04.
//

import SwiftUI

struct Verification: View {
    @EnvironmentObject var model : LoginViewModel
    @Environment(\.presentationMode) var presentation
    var body: some View {
        ZStack{
            
            NavigationLink(
                destination: Registration(),
                isActive: $model.showResitration){
               
                    Text("")
                }
            
            
            VStack(spacing:30){
                
                           
                
                
                HStack(spacing:5){
                    
                    Button(action: {
                        presentation.wrappedValue.dismiss()
                        
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 30, weight: .heavy))
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .padding()
                    })
                    
                    
                    
                    Text("Verification")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                }
                .padding(.top,35)
                
                HStack(spacing:15){
                    
                    
                    TextField("Enter Code", text: $model.code)
                        .keyboardType(.numberPad)
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(Color.gray.opacity(0.5))
                        .clipShape(Capsule())
                        .cornerRadius(10)
                    
                  
                    
                }
                .padding(.horizontal)
                
                
                Button(action: {
                    
                    model.showResitration.toggle()
                    model.code = ""
                    
                }, label: {
                    Text("Confirm")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.purple)
                        .padding(.vertical,10)
                        .padding(.horizontal,45)
                        .background(Color.gray.opacity(0.5))
                        .clipShape(Capsule())
                })
                .opacity(model.code == "" ? 0.35 : 1)
                .disabled(model.code == "" ? true : false)
                
                Spacer()
                
        
                    
            }
           
            
        }
        .background(Color.black.opacity(0.6)
                        
                        .onTapGesture {
                            UIApplication.shared.windows.first?.rootViewController?.view.endEditing(true)
                        }
                        
                        
                        .edgesIgnoringSafeArea(.all)
        
        
        )
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}


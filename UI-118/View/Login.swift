//
//  Login.swift
//  UI-118
//
//  Created by にゃんにゃん丸 on 2021/02/04.
//

import SwiftUI

struct Login: View {
    @EnvironmentObject var model : LoginViewModel
    var body: some View {
        ZStack{
            
            NavigationLink(
                destination: Verification(),
                isActive: $model.showVerification){
               
                    Text("")
                }
            
            
            VStack(spacing:30){
                
                HStack(spacing:20){
                    
                    
                    
                    Text("Login")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                }
                .padding(.top,35)
                
                HStack(spacing:15){
                    
                    TextField("+1", text: $model.contry)
                        .keyboardType(.numberPad)
                        .frame(width: 50)
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(Color.gray.opacity(0.5))
                        .clipShape(Capsule())
                        .cornerRadius(10)
                    
                    TextField("Phnumber", text: $model.Phone)
                        .keyboardType(.numberPad)
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(Color.gray.opacity(0.5))
                        .clipShape(Capsule())
                        .cornerRadius(10)
                    
                  
                    
                }
                .padding(.horizontal)
                
                
                Button(action: {
                    
                    model.showVerification.toggle()
                    model.contry = ""
                    model.Phone = ""
                    
                }, label: {
                    Text("Verification")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.purple)
                        .padding(.vertical,10)
                        .padding(.horizontal,45)
                        .background(Color.gray.opacity(0.5))
                        .clipShape(Capsule())
                })
                .opacity((model.contry == "" || model.Phone == "") ? 0.35 : 1)
                .disabled((model.contry == "" || model.Phone == "") ? true : false)
                
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

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

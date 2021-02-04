//
//  ProfileCreation.swift
//  UI-118
//
//  Created by にゃんにゃん丸 on 2021/02/04.
//

import SwiftUI

struct ProfileCreation: View {
    @EnvironmentObject var model : LoginViewModel
    @Environment(\.presentationMode) var present
    var body: some View {
        ZStack{
            
            NavigationLink(
                destination: Home(),
                isActive: $model.home){
               
                    Text("")
                }
            
            
            VStack(spacing:30){
                
                           
                
                
                HStack(spacing:5){
                    
                    Button(action: {
                        present.wrappedValue.dismiss()
                        
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 30, weight: .heavy))
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .padding()
                    })
                    
                    
                    
                    Text("About You")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                }
                .padding(.top,35)
                
                HStack(spacing:15){
                    
                    
                    TextField("Your Name", text: $model.name)
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .background(Color.gray.opacity(0.5))
                        .clipShape(Capsule())
                        .cornerRadius(10)
                    
                    
                    TextField("Age", text: $model.age)
                        .keyboardType(.numberPad)
                        .padding(.vertical,10)
                        .padding(.horizontal)
                        .frame(width: 80)
                        .background(Color.gray.opacity(0.5))
                        .clipShape(Capsule())
                        .cornerRadius(10)
                    
                  
                    
                }
                .padding(.horizontal)
                
                MultiTF(text: $model.about)
                    .padding()
                    .cornerRadius(10)
                    
                
                
                Button(action: {
                    
                    model.home.toggle()
                
                    
                }, label: {
                    Text("Create")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.purple)
                        .padding(.vertical,10)
                        .padding(.horizontal,45)
                        .background(Color.gray.opacity(0.5))
                        .clipShape(Capsule())
                })
                .opacity((model.name == "" || model.age == "" || model.about == "" || model.about == "About you") ? 0.35 : 1)
                .disabled((model.name == "" || model.age == "" || model.about == "" || model.about == "About you") ? true : false)
                
                Spacer()
                
        
                    
            }
           
            
        }
        .background(Color.black.opacity(0.6)
                        
                        .onTapGesture {
                            UIApplication.shared.windows.first?.rootViewController?.view.endEditing(true)
                        }
                        
                        
                        .edgesIgnoringSafeArea(.all)
        
        
        )
        .padding(.bottom,self.model.KeybordHeight)
        .onAppear(perform: {
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { (data) in
                let info = data.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue
                
                self.model.KeybordHeight = info.cgRectValue.height - (UIApplication.shared.windows.first?.safeAreaInsets.bottom)!
            }
            
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardDidHideNotification, object: nil, queue: .main) { (_) in
                self.model.KeybordHeight = 0
            }
            
        })
        
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct ProfileCreation_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCreation()
    }
}

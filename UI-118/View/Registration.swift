//
//  Registration.swift
//  UI-118
//
//  Created by にゃんにゃん丸 on 2021/02/04.
//

import SwiftUI

struct Registration: View {
    @EnvironmentObject var model : LoginViewModel
    @Environment(\.presentationMode) var presentaion
    
    var body: some View {
        ZStack{
            
            NavigationLink(
                destination: ProfileCreation(),
                isActive: $model.showprofile)
                {
                    Text("")
                }
            
            VStack(spacing:30){
                
                HStack(spacing:20){
                    
                    Button(action: {
                        presentaion.wrappedValue.dismiss()
                        
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .font(.system(size: 30, weight: .bold))
                            .foregroundColor(.blue)
                    })
                    
                    Text("Creat")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                
                }
                .padding(.top,15)
                
                HStack(spacing:16){
                    
                    Button(action: {
                        
                        model.showpicker.toggle()
                        model.index = 0
                        
                    }, label: {
                        ZStack{
                            
                            if model.images[0].count == 0{
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.primary)
                                    Image(systemName: "plus")
                                
                                
                                
                                
                                
                            }
                            
                            else{
                                
                                Image(uiImage: UIImage(data: self.model.images[0])!)
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(10)
                                    
                                
                            }
                            
                        }
                        .padding()
                        .frame(height: 150)
                    })
                    
                    Button(action: {
                        
                        model.showpicker.toggle()
                        model.index = 1
                    }, label: {
                        ZStack{
                            
                            if model.images[1].count == 0{
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.primary)
                                    Image(systemName: "plus")
                                
                                
                                
                                
                                
                            }
                            
                            else{
                                
                                Image(uiImage: UIImage(data: self.model.images[1])!)
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(10)
                                    
                                
                            }
                            
                        }
                        .padding()
                        .frame(height: 150)
                    })
                    
                }
                
                HStack(spacing:16){
                    
                    Button(action: {
                        
                        model.showpicker.toggle()
                        model.index = 2
                    }, label: {
                        ZStack{
                            
                            if model.images[2].count == 0{
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.primary)
                                    Image(systemName: "plus")
                                
                                
                                
                                
                                
                            }
                            
                            else{
                                
                                Image(uiImage: UIImage(data: self.model.images[2])!)
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(10)
                                    
                                
                            }
                            
                        }
                        .padding()
                        .frame(height: 150)
                    })
                    
                    Button(action: {
                        
                        model.showpicker.toggle()
                        model.index = 3
                    }, label: {
                        ZStack{
                            
                            if model.images[3].count == 0{
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.primary)
                                    Image(systemName: "plus")
                                
                                
                                
                                
                                
                            }
                            
                            else{
                                
                                Image(uiImage: UIImage(data: self.model.images[3])!)
                                    .resizable()
                                    .renderingMode(.original)
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(10)
                                    
                                
                            }
                            
                        }
                        .padding()
                        .frame(height: 150)
                    })
                    
                }
                
                Spacer()
                
                Button(action: {
                    
                    
                
                    model.showprofile.toggle()
                    
                    
                    
                }, label: {
                    
                    Text("Proceed")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical,15)
                        .padding(.horizontal,45)
                        .background(Color.green)
                        .clipShape(Capsule())
                    
                })
                .opacity(verifyImages() ? 1 : 0.35)
                .disabled(verifyImages() ? false : true)
                .sheet(isPresented: $model.showpicker, content: {
                    ImagePicker(showpicker: $model.showpicker, imagedata:$model.images[self.model.index])
                })
                
                
            }
            
        }
    }
    
    func verifyImages() -> Bool{
        
        var stats = true
        
        for i in self.model.images{
            
            if i.count == 0{
                
                stats = false
            }
            
        }
        
        return stats
    }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}

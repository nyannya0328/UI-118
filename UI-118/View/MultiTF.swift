//
//  MultiTF.swift
//  UI-118
//
//  Created by にゃんにゃん丸 on 2021/02/04.
//

import SwiftUI

struct MultiTF: UIViewRepresentable {
    
    @Binding var text : String
    func makeCoordinator() -> Coordinator {
        return MultiTF.Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> UITextView {
        
        let view = UITextView()
        view.text = "About You"
        view.textColor = .gray
        view.font  = .systemFont(ofSize: 20)
        view.backgroundColor = .clear
        view.returnKeyType = .done
        view.delegate = context.coordinator
        return view
        
    }
    func updateUIView(_ uiView: UITextView, context: Context) {
        
    }
    
    class Coordinator : NSObject,UITextViewDelegate{
        
        var parent : MultiTF
        
        init(parent : MultiTF) {
            self.parent = parent
        }
        
        func textViewDidChange(_ textView: UITextView) {
            
            parent.text = textView.text
            
        }
        func textViewDidEndEditing(_ textView: UITextView) {
            
            if parent.text == ""{
                
                textView.text = "About you"
                textView.backgroundColor = .clear
                
            }
            
        }
        func textViewDidBeginEditing(_ textView: UITextView) {
            
            if parent.text == ""{
                
                textView.text = ""
            }
            
        }
        
        
    }
}



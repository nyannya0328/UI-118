//
//  ImagePicker.swift
//  UI-118
//
//  Created by にゃんにゃん丸 on 2021/02/04.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var showpicker : Bool
    @Binding var imagedata : Data
    func makeCoordinator() -> Coordinator {
        return ImagePicker.Coordinator(parent: self)
    }
    
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        
        let view = UIImagePickerController()
        view.sourceType = .photoLibrary
        view.delegate = context.coordinator
        return view
        
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
    class Coordinator : NSObject,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
        
        let parent : ImagePicker
        
        init(parent : ImagePicker) {
            self.parent = parent
        }
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.showpicker.toggle()
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let imagedata = info[.originalImage] as! UIImage
            
            parent.imagedata = imagedata.jpegData(compressionQuality: 0.5)!
            
            parent.showpicker.toggle()
        }
        
        
        
    }
   
}


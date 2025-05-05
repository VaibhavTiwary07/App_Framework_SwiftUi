//
//  SafariView.swift
//  App-Framework_SwiftUi
//
//  Created by Vaibhav  Tiwary on 15/04/25.
//

import SwiftUI
import SafariServices

struct SafariView:UIViewControllerRepresentable{
    var url:URL
    
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController{
        SFSafariViewController(url:url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController,context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
    
    
}

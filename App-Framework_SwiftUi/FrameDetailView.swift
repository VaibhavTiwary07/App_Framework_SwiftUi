//
//  FrameDetailView.swift
//  App-Framework_SwiftUi
//
//  Created by Vaibhav  Tiwary on 13/04/25.
//

import SwiftUI

struct FrameDetailView: View {
    var framework:Framework
    @Binding var isShowingDetailView:Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                isShowingSafariView = true
                
            }label: {
                AFButton(title: "Learn More")
            }
            Spacer()

            
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string : "www.apple.com")!)
            
        })
    }
}

#Preview {
    FrameDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}

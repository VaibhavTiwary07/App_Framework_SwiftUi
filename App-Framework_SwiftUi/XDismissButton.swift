//
//  XDismissButton.swift
//  App-Framework_SwiftUi
//
//  Created by Vaibhav  Tiwary on 15/04/25.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView:Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView  = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44,height: 44)
                    
                    
            }
            
        }.padding()    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}

//
//  AFButton.swift
//  App-Framework_SwiftUi
//
//  Created by Vaibhav  Tiwary on 13/04/25.
//

import SwiftUI

struct AFButton: View {
    var title:String
    var body: some View {
        
            Text( title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 280,height: 50)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
        
    }
}

#Preview {
    AFButton(title: "Test Title")
}

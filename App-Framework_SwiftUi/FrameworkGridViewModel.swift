//
//  FrameworkGridViewModel.swift
//  App-Framework_SwiftUi
//
//  Created by Vaibhav  Tiwary on 13/04/25.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework:Framework?{
        didSet{isShowingDetailView = true}
    }
    
    @Published var isShowingDetailView  = false
    
    let  columns :[GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    
    
}


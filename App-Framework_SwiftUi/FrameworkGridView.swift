//
//  FrameworkGridView.swift
//  App-Framework_SwiftUi
//
//  Created by Vaibhav  Tiwary on 12/04/25.
//

import SwiftUI

struct FrameworkGridView: View {
  
    
    @StateObject var viewModel = FrameworkGridViewModel()
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks,id: \.id){framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                    .navigationTitle("Framework")
                    .sheet(isPresented: $viewModel.isShowingDetailView){
                        FrameDetailView(framework: viewModel.selectedFramework! ,isShowingDetailView: $viewModel.isShowingDetailView)
                        
                    }
                }
            }
            
            
            
        }
    }
}
    
    #Preview {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
    
   

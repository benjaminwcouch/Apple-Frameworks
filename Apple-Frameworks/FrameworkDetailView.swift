//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Benjamin Couch on 21/7/2024.
//


import SwiftUI


struct FrameworkDetailView: View {
    
    var framework: Framework
    
   // @Environment(\.presentationMode) var presentationMode
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
               /*     presentationMode.wrappedValue.dismiss()   */                 } label: {
                        Image(systemName: "xmark")
                            .imageScale(.large)
                        .frame(width: 90, height: 90)                    }
                
                
            }
            .padding()
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
        
     }
    
   }


    
   
    



struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

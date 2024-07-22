//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Benjamin Couch on 21/7/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    

    
    @Published var isShowingDetailView = false
    
}

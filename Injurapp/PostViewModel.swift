//
//  PostViewModel.swift
//  Injurapp
//
//  Created by Pablo Ortiz Rodríguez on 13/5/24.
//

import SwiftUI

final class PostViewModel: ObservableObject {

    let title: String
    let description: String
    @Published var isLoading: Bool
    
    init(title: String, description: String, isLoading: Bool) {
        self.title = title
        self.description = description
        self.isLoading = isLoading
    }
}

//
//  PostViewModel.swift
//  Injurapp
//
//  Created by Pablo Ortiz Rodríguez on 13/5/24.
//

import SwiftUI

final class PostViewModel: ObservableObject, Identifiable {

    let id: String
    let title: String
    let description: String
    @Published var isLoading: Bool
    
    init(id: String, title: String, description: String, isLoading: Bool) {
        self.id = id
        self.title = title
        self.description = description
        self.isLoading = isLoading
    }
}

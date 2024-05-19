//
//  PostListView.swift
//  Injurapp
//
//  Created by Pablo Ortiz Rodríguez on 7/5/24.
//

import SwiftUI

struct PostListView: View {

    private let viewModel: PostListViewModel
    
    init(viewModel: PostListViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(viewModel.postViewModels) { postViewModel in
                        PostView(viewModel: postViewModel)
                    }
                    
                    Spacer()
                }
                .padding(16)
            }
            .background(.gray)
            .navigationTitle("Posts")
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView(
            viewModel: PostListViewModel()
        )
    }
}

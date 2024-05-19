//
//  PostView.swift
//  Injurapp
//
//  Created by Pablo Ortiz Rodríguez on 13/5/24.
//

import Combine
import SwiftUI

struct PostView: View {

    @ObservedObject private var viewModel: PostViewModel
    
    init(viewModel: PostViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text(viewModel.title)
                .foregroundColor(.black)
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(viewModel.description)
                .foregroundColor(.gray)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(8)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .redacted(reason: viewModel.isLoading ? .placeholder : [])
    }
}

struct PostView_Previews: PreviewProvider {

    static var previews: some View {
        PostView(
            viewModel: .init(
                id: "1",
                title: "My title",
                description: "My description",
                isLoading: false
            )
        )
        .previewLayout(.sizeThatFits)
    }
}

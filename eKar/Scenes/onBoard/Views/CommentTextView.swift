//
//  CommentTextView.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 28.04.2022.
//

import SwiftUI

struct CommentTextView: View {
    @State private var commentText: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(Constants.Text.commentTitle)
            
            TextField(Constants.Text.commentPrompt, text: $commentText)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.black)
                .opacity(0.2)
        }
        .padding(10)
    }
}

struct CommentTextView_Previews: PreviewProvider {
    static var previews: some View {
        CommentTextView()
    }
}

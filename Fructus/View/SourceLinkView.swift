//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Thanawat Gulati on 9/10/2564 BE.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedis", destination: URL(string: "https://wikipedis.com")!)
                Image(systemName: "arrow.up.right.square")
            }.font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

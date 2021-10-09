//
//  StartButtonView.swift
//  Fructus
//
//  Created by Thanawat Gulati on 9/10/2564 BE.
//

import SwiftUI

struct StartButtonView: View {
    //  MARK: Property
    @AppStorage("isOnboarding") var isOnboarding:Bool?
    //  MARK: BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle").imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical , 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } // Button
        .accentColor(Color.white)
    }
}

// MARK: Preview

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}

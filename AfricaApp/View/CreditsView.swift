//
//  CreditsView.swift
//  AfricaApp
//
//  Created by Muhammet Eren on 31.10.2023.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128,height: 128)
            Text("""
        Copyrights © Muhammet Eren
        All rights reserved
        """
            )
            .font(.footnote)
        .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
}

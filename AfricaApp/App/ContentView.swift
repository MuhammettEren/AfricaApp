//
//  ContentView.swift
//  AfricaApp
//
//  Created by Muhammet Eren on 25.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals){ animal in
                    NavigationLink(destination:AnimalDetailView(animal: animal)){
                        AnimalListItemView(animal: animal)
                    }
                }
                CreditsView()
                    .modifier(CenterModifier())
                
            } //: LIST
            .navigationBarTitle("Africa",displayMode: .large)
        } //: NAVIGATION
    }
}

#Preview {
    ContentView()
}

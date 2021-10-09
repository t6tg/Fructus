//
//  ContentView.swift
//  Fructus
//
//  Created by Thanawat Gulati on 9/10/2564 BE.
//

import SwiftUI

struct ContentView: View {
     
    var  fruits : [Fruit] = fruitData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                    FruitRowView(fruit: item)
                        .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }.background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
            .previewDevice("iPhone 12 Pro Max")
            
    }
}
  

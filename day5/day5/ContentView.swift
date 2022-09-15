//
//  ContentView.swift
//  day5
//
//  Created by Dhai AlSaho on 14/09/2022.
//

import SwiftUI

struct AddFruitView: View {
    @Binding var array: [String]
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.black)
                .frame(width: 100, height:100)
            Text("lol")
                .foregroundColor(.white)
        }
        
        
        
        
        Button(action: {
            array.append("Test")
        }) {
            Image(systemName: "plus")
                .font(.largeTitle)
        }
    }
}

struct ContentView: View {
    @State var fruits = ["Apple", "Banana", "Mango", "Pear", "Guava", "Pineapple", "Strawberry"]
    
    @State var selectedFruit = ""
    
    var body: some View {
        VStack {
            Text(selectedFruit)
                .font(.largeTitle)
            
            HorizontalFruitList(
                fruits: fruits,
                selectedFruit: $selectedFruit
            )
            
            AddFruitView(array: $fruits)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HorizontalFruitList: View {
    let fruits: [String]
    @Binding var selectedFruit: String
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                        .font(.largeTitle)
                        .onTapGesture {
                            selectedFruit = fruit
                        }
                }
            }
        }
    }
}


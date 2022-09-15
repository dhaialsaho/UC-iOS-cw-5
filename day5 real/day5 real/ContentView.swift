//
//  ContentView.swift
//  day5 real
//
//  Created by Dhai AlSaho on 15/09/2022.
//

import SwiftUI





struct ContentView: View {
    
    
    
    
    @State var emojiii = ["☹️", "😓", "😡", "🥰", "😃", "🤪", "🥵"]
    
    @State var chosenemoji = ""
    @State var circlee = ""
    var body: some View {
        
        ZStack {
            
        VStack {
            Text("Choose your mood for the day!")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()
            Text(chosenemoji)
                .font(.largeTitle)
                
            Horizontalemojis(
                emojiii: emojiii,
                chosenemoji: $chosenemoji
            )
            
          
        }
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Horizontalemojis: View {
    let emojiii: [String]
    @Binding var chosenemoji: String
    
    var body: some View {
        ZStack{
            
        ScrollView(.horizontal) {
            HStack {
                
                ForEach(emojiii, id: \.self) { fruit in
                    dView()
                    Text(fruit)
                        .font(.largeTitle)
                        .onTapGesture {
                            chosenemoji = fruit}
                        
                }
            }
        }
    }
}
}
struct dView: View {
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.blue)
                .frame(width: 40, height:40)
           
            
        }
    }
}

}


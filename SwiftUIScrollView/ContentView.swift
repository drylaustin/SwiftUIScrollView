//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by DARYL AGUSTIN on 9/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false){
            VStack {
                HStack{
                    VStack(alignment: .leading){
                        Text(Date(), style: .date)
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("Your Reading")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                    }
                    Spacer()
                    
                }
                .padding()
                
                HStack {
                    CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                        .frame(width: 300)
                    CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                        .frame(width: 300)
                    CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                        .frame(width: 300)
                    CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
                        .frame(width: 300)
                }
                Spacer()
            }
            .padding()
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

//
//  ContentView.swift
//  Word Play
//
//  Created by Samantha Hiles on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Word Play!")
                    .font (.title)
                Text("Please enter the requested words below")
                    .padding()
                HStack {
                    CustomTextField(placeholder: "animal", variable: $words.animal)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective3)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective4)
                }
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                }
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun3)
                    CustomTextField(placeholder: "noun", variable: $words.noun4)

                }
                HStack {
                    CustomTextField(placeholder: "type of food", variable: $words.typeOfFood)
                    CustomTextField(placeholder: "place", variable: $words.place0)
                    CustomTextField(placeholder: "Place", variable: $words.place1)
                }
                Spacer()
                NavigationLink("Play!", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
        .padding()
        .padding()
    }
}

struct Words {
    var animal = ""
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    
    var adjective3 = ""
    var adjective4 = ""
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    
    var noun3 = ""
    var noun4 = ""
    var typeOfFood = ""
    var place0 = ""
    var place1 = ""
}

struct CustomTextField : View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

#Preview {
    ContentView()
}

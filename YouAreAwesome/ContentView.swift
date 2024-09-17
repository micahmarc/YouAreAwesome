//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Micah Marcellus on 9/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar needs help, they call you!"
    
    var body: some View {
        
      
            VStack {
                Text("You Have Skills!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(
                        Color("Gold-BC"))
                    .padding()
                    .background(Color("Maroon-BC"))
                    .cornerRadius(15)
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                //.border(.orange, width: 1)
                    .padding()
                
                Spacer()
                Spacer()
                Spacer()
                
                HStack{
                    Button("Awesome") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        //This is the action when the button is pressed
                        messageString = "You Are Awesome!"
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Spacer()
                    
                    Button("Great") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        //This is the action when the button is pressed
                        messageString = "You Are Great!"
                    }
                    .buttonStyle(.borderedProminent)
                }
                //.border(.purple, width: 5)
                .padding()
                
            }
        }
    }

#Preview {
    ContentView()
}

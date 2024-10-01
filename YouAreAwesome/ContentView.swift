//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Micah Marcellus on 9/9/24.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var messageString = " "
    
    var body: some View {
        VStack {
            
            Spacer()
                        
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
                
                Spacer()
                
                Button("Show Message") {
                    let message1 = "You Are Awesome!"
                    let message2 = "You Are Great!"
                    
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    //This is the action when the button is pressed
                    if messageString == message1 {
                        messageString = message2
                    } else {
                        messageString = message1
                    }
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            
        }
    }



#Preview {
    ContentView()
}

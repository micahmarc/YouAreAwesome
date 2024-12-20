//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Micah Marcellus on 9/9/24.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var messageString = ""
    @State private var imageName: String = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
    var body: some View {
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
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
                    let messages = ["You Are Awesome!",
                                    "You Are Great",
                                    "You Are Fantastic!",
                                    "Fabulous?, That's You!",]
                    messageString = messages[Int.random(in: 0...messages.count-1)]
                
                    
                    
                    imageName = "image\(Int.random(in: 0...9))"
                    print(imageNumber)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            
        }
    }



#Preview {
    ContentView()
}

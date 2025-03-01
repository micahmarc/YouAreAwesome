//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Micah Marcellus on 9/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName: String = ""
    @State private var lastMessageNumber = -1 // lastMessageNumber will never be -1
    @State private var lastImageNumber = -1
    
    var body: some View {
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
                        
            Text(message)
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
                    
                    //generate a random messageNumber to use as an index
                    //if messageNumber == lastMessageNumber {
                    //  keep generating a new messageNumber
                    //  until you get a messageNumber != lastMessageNumber
                    //set messageString to messages[messagesNumber]
                    //update the lastMessageNumber with messageNumber
                    
                    var messageNumber: Int
                    repeat {
                        messageNumber = Int.random(in: 0...messages.count-1)
                    } while messageNumber == lastMessageNumber
                
                    message = messages[messageNumber]
                    lastMessageNumber = messageNumber
                    
                    var imageNumber = Int.random(in: 0...9)
                    while imageNumber == lastImageNumber {
                        imageNumber = Int.random(in: 0...9)
                    }
                    
                    imageName = "image\(imageNumber)"
                    lastImageNumber = imageNumber
                    
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            
        }
    }

#Preview {
    ContentView()
}

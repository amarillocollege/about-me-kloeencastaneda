//
//  ContentView.swift
//  About Me
//
//  Created by [YOUR NAME GOES HERE].
//

import SwiftUI

struct ContentView : View {
    @State var show = false
    @State private var message = ""
    
    var body: some View {
        VStack() {
            Text(message)
                .font(.subheadline)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding()
            Text("About Me :)")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.largeTitle)
                .padding(.top, show ? 30 : 20)
                .padding(.bottom, show ? 20 : 0)
            
            Text("My name is Kloee and I'm currently working in IT and majoring in fullstack while being a fulltime student.")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .cornerRadius(0)
                .lineLimit(.none)
            
            Button("Press here for more!") {
                message = "My favorite animal is a jellyfish!"
            }
            .buttonStyle(.automatic)
            .fontWeight(.heavy)
            .foregroundColor(Color(hue: 0.6, saturation: 0.3, brightness: 1.0))
            .padding()
            
            
            Button("...And a little more!") {
                message = "I love JDM cars!"
            }
            .buttonStyle(.automatic)
            .foregroundColor(Color(hue: 0.6, saturation: 0.3, brightness: 1.0))
            .fontWeight(.heavy)
            
            Spacer()
            
            Button(action: {
                self.show.toggle()
            }) {
                HStack {
                    Image(systemName: show ? "heart.fill" : "heart")
                        .foregroundColor(Color(hue: 0.6, saturation: 0.3, brightness: 1.0))
                        .font(Font.title.weight(.semibold))
                        .imageScale(.small)
                    
                    Text(show ? "Minimize" : "Expand")
                        .foregroundColor(Color(hue: 0.6, saturation: 0.3, brightness: 1.0))
                        .fontWeight(.bold)
                        .font(.title2)
                        .cornerRadius(0)
                }
            }
            .padding(.bottom, show ? 20 : 40)
            
        }
        .padding()
        .padding(.top, 15)
        .frame(width: show ? 350 : 290, height: show ? 420 : 260)
        .background(Color(hue: 0.6, saturation: 0.5, brightness: 0.7))
        .cornerRadius(30)
        .animation(.spring())
        
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State var sliderVal: Double = 0
    @State var toggle = false
    var body: some View {
        VStack() {
            
            HStack() {
                
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding(.leading, 20)

                Spacer()
                
                
                
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding(.trailing, 20)
                
                

            }
            .padding(.top, 20)
            Spacer()
            
            VStack(){
                
                Text("Move the slider to:").font(.system(size: 30))
                Text("25").font(.system(size: 30))
                    
                Slider(value: $sliderVal, in: 1...100)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                Button {
                } label: {
                    Text("Check?")
                }
                
            }
            
           
            Spacer()
            VStack(){
                Text("Exact Mode?")
                Toggle("", isOn:$toggle)
                    .labelsHidden()
            }
            .padding(.bottom, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()

        }
    }
}

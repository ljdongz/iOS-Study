//
//  ContentView.swift
//  StackFrame
//
//  Created by 이정동 on 2022/11/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15){
            Text("Financial Results")
                .font(.title)
            
            HStack(alignment: .top) {
                Text("Q1 Sales")
                    .font(.headline)
                Spacer()
                VStack(alignment: .leading) {
                    Text("Jenuary")
                    Text("Febuary")
                    Text("March")
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("$1000")
                    Text("$200")
                    Text("$3000")
                }
                .padding(5)
            }
            .padding(5)
            
            HStack {
                Image(systemName: "airplane")
                Text("Flight times: ")
                    .layoutPriority(1)
                Text("London")
            }
            .padding(30)
            .font(.largeTitle)
            .lineLimit(1)
            
            
            Text("Hello World !!!!!!!!!!!!!!!!")
                .font(.largeTitle)
                .border(.black)
                .frame(minWidth: 50, maxWidth: .infinity, minHeight: 50, maxHeight: 100, alignment: .center)
            
            GeometryReader { geometry in
                HStack{
                        Text("Hello World, how are you?")
                            .font(.largeTitle)
                            .frame(width: geometry.size.width/2, height: geometry.size.height/2, alignment: .topLeading)
                    
                                            Text("Goodbye World")
                            .font(.largeTitle)
                            .frame(width: geometry.size.width/2, height: geometry.size.height/2, alignment: .bottomTrailing)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

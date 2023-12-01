//
//  ContentView.swift
//  CarefulScroll
//
//  Created by Denis Evdokimov on 12/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var height: CGFloat = 50
    var body: some View {
        TabView {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0..<100) {
                        Text(" \($0)")
                            .padding(5)
                            .frame(maxWidth: .infinity)
                    }
                }
            }
            .font(.title)
            .opacity(0.5)
            .tabItem {
                Image(systemName: "star")
                Text("First")
            }
            .safeAreaInset(edge: .bottom) {
                Rectangle()
                    .frame(width: .infinity, height: height)
                    .foregroundColor(.red)
                    .opacity(0.7)
                
            }
        }
    }
}

#Preview {
    ContentView()
}

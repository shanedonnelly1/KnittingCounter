//
//  ContentView.swift
//  Shared
//
//  Created by Shane on 29/12/2020.
//  Copyright © 2020 Shane Donnelly. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var rowCount = 0
    @State private var patternCount = 0
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack {
                Section {
                    Text("Row Count")
                        .font(.headline)
                    Text("\(rowCount)")
                    Button(
                        action: {
                        // To do - Add 1
                        },
                        label: {
                            Image(systemName: "plus")
                                .padding()
                        }
                    )
                    Button(
                        action: {
                        // To do - Reset
                        },
                        label: {
                            Image(systemName: "00.circle")
                                .padding()
                        }
                    )
                }
                Spacer()
                Section {
                    Text("Pattern Count")
                        .font(.headline)
                    Text("\(patternCount)")
                    Button(
                        action: {
                        // To do
                        },
                        label: {
                            Image(systemName: "plus")
                                .padding()
                        }
                    )
                    Button(
                        action: {
                        // To do - Reset
                        },
                        label: {
                            Image(systemName: "00.circle")
                                .padding()
                        }
                    )
                }
            }
            .foregroundColor(.white)
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

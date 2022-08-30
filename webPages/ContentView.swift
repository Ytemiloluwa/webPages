//
//  ContentView.swift
//  webPages
//
//  Created by Tello on 09/02/2020.
//  Copyright © 2020 Tello. All rights reserved.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    @State private var selected: Int = 0
    @State private var websites: [String] = ["developer.apple.com", "google.com", "twitter.com"]
    
    var body: some View {

            Picker(selection: $selected, label: Text("")) {
                
                ForEach(0..<websites.count) {
                    
                    Text(self.websites[$0]).tag($0)
                }
            }.pickerStyle(SegmentedPickerStyle())

        
        
    
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
    @State private var websites: [String] = ["developer.apple.com", "google.com"]
    
    var body: some View {
        
        NavigationView{
            
            VStack {
                
                Picker(selection: $selected, label: Text("")) {
                    
                    ForEach(0..<websites.count, id: \.self) {
                        
                       Text(websites[$0]).tag($0)
                
                    }
                    
                }.pickerStyle(SegmentedPickerStyle())
        
                WebView(request: URLRequest(url: URL(string: "https://\(websites[selected])")!))
                
                
            }.navigationBarTitle(Text("Websites"))
             
                .edgesIgnoringSafeArea(.bottom)
                .padding(.top)
            
        }
        
    }
}


struct WebView: UIViewRepresentable {
    
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


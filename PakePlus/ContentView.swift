//
//  ContentView.swift
//  PakePlus
//
//  Created by Song on 2025/3/29.
//

import SwiftUI

struct ContentView: View {
    
    let baseURL = Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as? String ?? ""
    
    var body: some View {
        // BottomMenuView()
        ZStack {
            // background color
            // Color.white
            //     .ignoresSafeArea()
            // webview
            WebView(url: URL(string: baseURL)!)
                .ignoresSafeArea(edges: [.all])
        }.statusBarHidden()
    }
}

#Preview {
    ContentView()
}

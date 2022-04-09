//
//  ContentView.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import SwiftUI

struct ContentView: View {
    
    let readingListController = ReadingListController()
    
    var body: some View {
        TabView {
            NavigationView {
                ToReadList().navigationTitle("To Read 📖")
            }
            .tabItem { Text("To Read") }
            
            NavigationView {
                BookList(books: allBooks).navigationTitle("Books 📚")
            }
            .tabItem { Text("All books") }
        }
        .environmentObject(readingListController)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(previewController)
    }
}

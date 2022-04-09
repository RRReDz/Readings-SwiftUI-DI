//
//  ContentView.swift
//  Readings
//
//  Created by Riccardo Rossi Home on 09/04/22.
//

import SwiftUI

struct ContentView: View {
    let viewModelFactory = ViewModelFactory()
    
    var body: some View {
        TabView {
            NavigationView {
                ToReadList(
                    viewModel: viewModelFactory.makeToReadListViewModel()
                ).navigationTitle("To Read 📖")
            }
            .tabItem { Text("To Read") }
            
            NavigationView {
                BookList(
                    viewModel: viewModelFactory.makeBookListViewModel()
                ).navigationTitle("Books 📚")
            }
            .tabItem { Text("All books") }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

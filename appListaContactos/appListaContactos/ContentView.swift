//
//  ContentView.swift
//  appListaContactos
//
//  Created by Felipe Hernandez on 07/04/21.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: DetailView(contact: contact)) {
                    ContactRow(contact: contact)
                }
            }
            .navigationBarTitle("Contacts")
        }
        //.environment(\.colorScheme, .dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

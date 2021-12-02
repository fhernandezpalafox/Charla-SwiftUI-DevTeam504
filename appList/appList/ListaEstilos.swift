//
//  ListaEstilos.swift
//  appList
//
//  Created by Felipe Hernandez on 08/04/21.
//

import SwiftUI

struct ListaEstilos: View {
    var body: some View {
        List {
            ForEach(0..<10) {
                ExtractedView(index: $0)
            }
        }
        //.listStyle(SidebarListStyle())
        .listStyle(InsetGroupedListStyle())
        //.listStyle(InsetListStyle())
        //.listStyle(PlainListStyle())
    }
}

struct ListaEstilos_Previews: PreviewProvider {
    static var previews: some View {
        ListaEstilos()
    }
}

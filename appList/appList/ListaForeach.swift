//
//  ListaForeach.swift
//  appList
//
//  Created by Felipe Hernandez on 08/04/21.
//

import SwiftUI

struct ListaForeach: View {
    var body: some View {
        List {
            ForEach(0..<10) {
                ExtractedView(index: $0)
            }
        }
    }
}


struct ExtractedView: View {
    var index : Int = 0
    var body: some View {
        HStack {
            Image(systemName: "person.fill").font(.system(size: 30))
            Text("Fila: \(index)")
        }
    }
}



struct ListaForeach_Previews: PreviewProvider {
    static var previews: some View {
        ListaForeach()
    }
}


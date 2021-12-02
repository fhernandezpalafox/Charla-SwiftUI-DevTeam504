//
//  ListaFiltros.swift
//  appList
//
//  Created by Felipe Hernandez on 08/04/21.
//

import SwiftUI

struct ListaFiltros: View {
    @State private var busquedaTexto = ""
    
    var body: some View {
        
    let nombres = ["Felipe","Daniel","Enrique","Jose Antonio","Luis Miguel"]
        
            List{
                
                HStack {
                    Image(systemName: "magnifyingglass").foregroundColor(Color.gray.opacity(0.7))
                    TextField("Buscar",text: $busquedaTexto)
                }
                .padding(7)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.7), lineWidth: 1))
                
                    
                
                ForEach(nombres.filter{$0.hasPrefix(busquedaTexto) || busquedaTexto == ""}, id:\.self){
                    busquedaTexto in
                         Text(busquedaTexto)
                    }
                
            }
            .navigationBarTitle(Text("Lista de contactos"))

    }
}

struct ListaFiltros_Previews: PreviewProvider {
    static var previews: some View {
        ListaFiltros()
    }
}

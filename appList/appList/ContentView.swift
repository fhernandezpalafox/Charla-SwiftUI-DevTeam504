//
//  ContentView.swift
//  appList
//
//  Created by Felipe Hernandez on 08/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(  destination: ListaForeach() ){
                    Text("Lista foreach")
                        .foregroundColor(.white)
                        .padding(9)
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                }
                
                NavigationLink(  destination: ListaEstilos() ){
                    Text("Lista estilos")
                        .foregroundColor(.white)
                        .padding(9)
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                }
                
                NavigationLink(  destination: ListaEdiccion() ){
                    Text("Lista edición")
                        .foregroundColor(.white)
                        .padding(9)
                        .background(Color.purple)
                        .cornerRadius(10)
                        
                }
                
                
                
                NavigationLink(  destination: ListaFiltros() ){
                    Text("Lista Filtros")
                        .foregroundColor(.white)
                        .padding(9)
                        .background(Color.red)
                        .cornerRadius(10)
                        
                }
                
                NavigationLink(  destination: ListaJSON() ){
                    Text("Lista JSON")
                        .foregroundColor(.white)
                        .padding(9)
                        .background(Color.orange)
                        .cornerRadius(10)
                        
                }

            }
            .navigationBarTitle("Ejemplo de listas")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

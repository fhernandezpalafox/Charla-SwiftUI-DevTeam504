//
//  ListaEdiccion.swift
//  appList
//
//  Created by Felipe Hernandez on 08/04/21.
//

import SwiftUI

struct ListaEdiccion: View {
    
    @State var isEditMode: EditMode = .inactive
    @State private var items = ["Felipe Hernandez",
                                "Jose Hernandez",
                                "Pedro Hernandez",
                                "Miguel Angel Hernandez",
                                "Juan Hernandez"]
    
    var body: some View {
        GeometryReader { geometry  in
                List {
                    ForEach(items, id: \.self) {
                        Text($0)
                    }
                    .onDelete {
                        items.remove(atOffsets: $0)
                    }
                    .onMove {
                          items.move(fromOffsets: $0, toOffset: $1)
                     }
                    .listRowInsets(EdgeInsets())
                    .padding(.all,5)
                }.frame(width: geometry.size.width, height: geometry.size.height)
               //.toolbar{ EditButton() }
                .navigationBarItems(trailing:
                                         Group {
                                             if isEditMode == .inactive {
                                                 Button("Editar") {
                                                     withAnimation {
                                                         isEditMode = .active
                                                     }
                                                 }
                                                 .padding(.all, 5)
                                                 //.background(Color.green.opacity(0.8))
                                             } else {
                                                 Button("Terminar") {
                                                     withAnimation {
                                                         isEditMode = .inactive
                                                     }
                                                 }
                                                 .padding(.all, 5)
                                                // .background(Color.red.opacity(0.8))
                                             }
                                         }
                                         .padding()
                                     )
                 .environment(\.editMode, $isEditMode)
       }
    }
}

struct ListaEdiccion_Previews: PreviewProvider {
    static var previews: some View {
        ListaEdiccion()
    }
}

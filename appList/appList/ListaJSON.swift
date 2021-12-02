//
//  ListaJSON.swift
//  appList
//
//  Created by Felipe Hernandez on 09/04/21.
//

import SwiftUI

struct ListaJSON: View {
    
    @State var result : [Contactos] = []
    
    var body: some View{
            List(result) {a in
                HStack{
                    Image(a.imagen)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width:50, height:50)
                    VStack(alignment: .leading){
                        Text(a.nombre)
                        Text(a.profession)
                    }
                }
            }
            .onAppear(perform: parseJson)
        }
    

    func parseJson() {

            if let url = Bundle.main.url(forResource: "datos.json", withExtension: nil){

                if let data = try? Data(contentsOf: url){

                    let jsondecoder = JSONDecoder()

                    do{
                        let result = try jsondecoder.decode([Contactos].self, from: data)
                        self.result = result
                    }
                    catch {
                        print("error trying parse json")
                    }
                }
            }
        }
}


// MARK: Model
struct Contactos: Codable, Identifiable {
        let nombre: String
        let id: Int
        let imagen: String
        let profession: String
}

struct ListaJSON_Previews: PreviewProvider {
    static var previews: some View {
        ListaJSON()
    }
}

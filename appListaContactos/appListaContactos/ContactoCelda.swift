//
//  ContactoCelda.swift
//  appListaContactos
//
//  Created by Felipe Hernandez on 07/04/21.
//

import SwiftUI

struct ContactRow: View {
    
    let contact: Contact
    
    var body: some View {
        HStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            VStack(alignment: .leading) {
                Text(contact.name)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(contact.phone)
            }
        }
    }
}

struct ContactoCelda_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: Contact(imageName: "bernardLaw", name: "Bernard Law", phone: "+1(268)-8110134", email: "blaw@yeilmail.com", address: "242 Wildrose River 16040 Wisconsin"))
    }
}

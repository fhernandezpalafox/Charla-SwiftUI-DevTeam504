//
//  ContentView.swift
//  AppImage
//
//  Created by Felipe Hernandez on 07/04/21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 0
    @State var image: UIImage? = nil
    
    var body: some View {
        
        GeometryReader{ geometry in
            
        VStack {
            
            ScrollView{
                
                Image("photo")
                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 10, x: 5, y: 5)
                    .overlay(Circle()
                                .stroke(Color.blue, lineWidth: 2))
                    .scaleEffect(animationAmount)
                    .animation(
                        Animation.easeOut(duration: 1)
                            .repeatCount(4)
                            // .repeatForever(autoreverses: false)
                    ).onAppear(){
                        self.animationAmount += 1
                    }
                
                Image("photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                
                Image("photo")
                    .resizable()
                    .overlay(
                        HStack {
                            Text("Felipe Hernandez")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .padding()
                                .frame(width: geometry.size.width / 2)
                                
                        }
                        .background(Color.blue)
                        .opacity(0.8)
                        
                        
                            ,
                        alignment: .bottom
                            
                    )
                    .frame(width: geometry.size.width / 2 , height: geometry.size.height / 4 )
                 
                
                Image("photo")
                    .resizable()
                    .scaledToFill()
                    
                
                Image(systemName: "plus")
                    .font(.largeTitle).onTapGesture {
                        print("Le has dado clic a la imagen")
                    }
                    .padding()
                
                Image("photo")
                    .resizable()
                    .scaledToFill()
                    .mask(
                         
                       Text("Felipe")
                            .font(Font.system(size: 75, weight: .bold)
                            )
                  )
                
                Group {
                            if let image = image {
                                Image(uiImage: image)
                                    .resizable()
                                    .scaledToFit()
                            } else {
                                Text("Cargando Imagen...")
                            }
                        }.onAppear {
                            getImage("https://developer.apple.com/news/images/og/swiftui-og-twitter.png")
                        }
                
                
            }
            
         }
              
        }
    }
    
    
    func getImage(_ url: String) {
            guard let url = URL(string: url) else { return }
            URLSession.shared.dataTask(with: url) { (data, _, _) in
                if let data = data, let image = UIImage(data: data) {
                    self.image = image
                }
            }.resume()
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

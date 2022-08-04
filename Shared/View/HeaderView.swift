//
//  HeaderView.swift
//  Assignment One (iOS)
//
//  Created by Le Helen on 24/07/2022.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        GeometryReader{ proxy in
            let size = proxy.size
            let height = 280.00
            
            Image("mamba").resizable().aspectRatio(contentMode: .fill)
                .frame(width: size.width, height: height, alignment: .top).cornerRadius(5)
                .overlay(content: {
                    ZStack(alignment: .bottom) {
                        
                        // smoky effect
                        LinearGradient(colors: [.clear,.black.opacity(0.8)], startPoint: .top, endPoint: .bottom)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("assignment one").font(.callout).foregroundColor(.gray)
                            
                            HStack(alignment: .bottom, spacing: 20){
                                Text("OnlySnakes 🐍 ").font(.title.bold()).foregroundColor(.white)
                                
                            }
                            
                        }.padding(.bottom,10)
                            .padding(.horizontal)
                            .frame(maxWidth: .infinity, alignment: .leading )
                    }
                }).cornerRadius(5)
        }.frame(height: 300)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

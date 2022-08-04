//
//  ImageSlideshow.swift
//  Assignment One (iOS)
//
//  Created by Le Helen on 25/07/2022.
//

import SwiftUI

struct ImageSlideshow: View {
    var numberOfImages = 4
    var snake: Snake
    
    var timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    @State var currentIndex = 0
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(1..<numberOfImages,id: \.self) { num in
                Image("\(snake.imageName)" + "-slideshow-" + "\(num)").resizable().scaledToFill().tag(num).cornerRadius(5)
                    .overlay(.black.opacity(0.2))
            }
            
        }.tabViewStyle(PageTabViewStyle())
            .onReceive(timer, perform: { _ in
                currentIndex = currentIndex < numberOfImages - 1 ? currentIndex + 1 : 0
            })
            .frame(height: 300)
    }
}

struct ImageSlideshow_Previews: PreviewProvider {
    static var previews: some View {
        ImageSlideshow(snake: snakes[1]).preferredColorScheme(.dark)
    }
}

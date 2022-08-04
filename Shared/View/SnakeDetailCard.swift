//
//  SnakeDetailCard.swift
//  Assignment One (iOS)
//
//  Created by Le Helen on 25/07/2022.
//

import SwiftUI

struct SnakeDetailCard: View {
    var snake: Snake
    var body: some View {
        ScrollView{
            ZStack{
                VStack{
                    ImageSlideshow(snake: snake)
                    Spacer()
                    InfoView(snake: snake)
                    Spacer()
                    // currently hard code the z-index to make the alert shown in other view
                    ToolBarView().zIndex(6)
                }
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct SnakeDetailCard_Previews: PreviewProvider {
    static var previews: some View {
        SnakeDetailCard(snake: snakes[1]).preferredColorScheme(.dark)
    }
}

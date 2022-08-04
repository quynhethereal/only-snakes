//
//  SnakeDetailCard.swift
//  Assignment One (iOS)
//
//  Created by Le Helen on 25/07/2022.
//

import SwiftUI

struct InfoView: View {
    var snake: Snake
    
    var body: some View {
        ScrollView{
            VStack(alignment:.leading){
                
                Text(snake.name).font(.title)
                HStack(){
                    Image(systemName: "mappin.and.ellipse")
                    Text(snake.location).font(.body).opacity(0.5)
                }
                
                HStack{
                    Image(systemName: "flag")
                    Text(snake.status).font(.body).opacity(0.5)
                    Text(snake.statusEmoji).font(.body)
                }
                
                Divider().background(.white)
                
                VStack{
                    Text(snake.description).font(.body).opacity(0.5)
                    Spacer()
                    Text(snake.secondDescription).font(.body).opacity(0.5)
                }
            }
        }.frame(height: 300.00).padding(20)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(snake: snakes[1]).preferredColorScheme(.dark)
    }
}

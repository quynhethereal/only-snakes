//
//  SnakeCard.swift
//  Assignment One (iOS)
//
//  Created by Le Helen on 24/07/2022.
//

import SwiftUI

struct SnakeCard: View {
    var snake : Snake

    var body: some View {
        
        HStack(spacing: 0){
            snake.image
                .resizable()
                .cornerRadius(5)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)
                .padding()
            
            VStack(alignment: .leading, spacing: 10){
                Text(snake.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 10)
                    
                Text(snake.shortDescription)
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 10)
            }
            
            Spacer()

        }.background{
            RoundedRectangle(cornerRadius: 20, style: .continuous).fill(.white.opacity(0.1))
        }
    }
}

struct SnakeCard_Previews: PreviewProvider {
    static var previews: some View {
        SnakeCard(snake: snakes[4]).preferredColorScheme(.dark)
    }
}

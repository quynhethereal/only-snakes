//
//  SnakeList.swift
//  Assignment One (iOS)
//
//  Created by Le Helen on 24/07/2022.
//

import SwiftUI

struct SnakeList: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true){
                HeaderView()
                
                VStack{
                    ForEach(snakes){ snake in
                        NavigationLink(destination: SnakeDetailCard(snake: snake)){
                            SnakeCard(snake: snake)
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }.accentColor(.white)
    }
}

struct SnakeList_Previews: PreviewProvider {
    static var previews: some View {
        SnakeList().preferredColorScheme(.dark)
    }
}

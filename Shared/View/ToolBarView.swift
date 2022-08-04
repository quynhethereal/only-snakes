//
//  ToolBarView.swift
//  Assignment One (iOS)
//
//  Created by Le Helen on 29/07/2022.
//

import SwiftUI

struct ToolBarView: View {
    @Environment(\.openURL) var openURL
    @State var showingAlert: Bool = false
    
    var body: some View {
        HStack{
            Button (action: {
                // TODO: implement this feature :D 
                print("Button was pressed!")
            }) {
                Image(systemName: "suit.heart.fill")
                    .padding()
                    .foregroundColor(.red)
                    .background(.white)
                    .font(.system(size: 30))
                    .clipShape(Circle())
                
            }
            
            Spacer()
            
            Button (action: {
                // TODO: implement this feature :D
                print("Button was pressed!")
            }) {
                Image(systemName: "bookmark.fill")
                    .padding()
                    .foregroundColor(.blue)
                    .background(.white)
                    .font(.system(size: 30))
                    .clipShape(Circle())
            }
            
            Spacer()
            
            Button (action: {
                showingAlert = true
            }){
                Image(systemName: "dollarsign.circle.fill")
                    .padding()
                    .foregroundColor(.green)
                    .background(.white)
                    .font(.system(size: 30))
                    .clipShape(Circle())
                
            }.alert(isPresented: $showingAlert) {
                Alert(title: Text("Are you sure?"),
                      message: Text("This will take you to the Snake Donation Page"),
                      primaryButton: Alert.Button.default(
                        Text("OK"), action: { openURL(URL(string: "https://savethesnakes.org/donate/")!) }),          secondaryButton: .cancel()
                )
            }
        }.frame(width: 300.00).padding(20)
    }
}

struct ToolBarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarView().preferredColorScheme(.dark)
    }
}


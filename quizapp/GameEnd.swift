//
//  GameEnd.swift
//  quizapp
//
//  Created by Raphael Härle on 24.04.24.
//

import SwiftUI

struct EndView: View {
    @ObservedObject var playerObj = Players()
    var body: some View {
        VStack {
            Text("Das Spiel ist zu ende")
            
            NavigationLink (destination: ContentView()){
                Text("Zum Menue")
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 10)
            .frame(width: 150, height: 50)
            .background(.black)
            .cornerRadius(10)
            ForEach(playerObj.getRankedPlayer()){player in
                Text("\(player.name) Punkte: \(player.score)")
                    .padding()
                    .background(.gray)
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal, 20)
        .frame(width: 300, height: 400)
        .background(.gray)
        .cornerRadius(20)
        .shadow(color: .gray, radius: 15)
        .navigationBarHidden(true)
    }
}

struct EndView_Previews: PreviewProvider{
    static var previews: some View{
        EndView()
    }
}

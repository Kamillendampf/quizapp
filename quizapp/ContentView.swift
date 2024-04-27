//
//  ContentView.swift
//  quizapp
//
//  Created by Raphael Härle on 08.04.24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var manager = QuizManager()
    var body: some View {
        NavigationView{
            VStack{
                Text("Quiz Time")
                    .padding(.horizontal, 10)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(width: 2000, height: 50)
                
                Rectangle()
                    .fill(.gray).frame(width: 2000, height: 1)
                    .position(CGPoint(x: 5.0, y: 0.0))
                NavigationLink (destination: AddPlayer()){
                    Text("Spielen")
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 10)
                .frame(width: 120, height: 50)
                .background(.gray)
                .shadow(color: .gray, radius: 15 )
                .cornerRadius(10)
                .position(x:200, y: -100)
                .navigationBarHidden(true)
                Rectangle()
                    .fill(.gray).frame(width: 2000, height: 1)
                    .position(CGPoint(x: 5.0, y: 0.0))
                Text("Spielregeln")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .position(x: 200, y: -110)
                Text("Der Spielleiter liest die auf der Frachtkarte stehende Frage und Buchstaben laut vor. Alle Personen können nun ein passendes" +
                     " Wort raten. Das Wort, welches zu raten ist, muss mit dem vorgelesenen Buchstaben beginnen." )
                .padding(.horizontal, 20)
                .frame(width: 400, height:300)
                .position(x: 190, y: -170)
                .multilineTextAlignment(.center)
            }
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
    }
}

func setQuizState() -> Bool{
   return true
}
struct AddPlayer : View {
    @State var playerName = ""
    @ObservedObject var playersObj = Players()
    @ObservedObject var manager = QuizManager()
    var body: some View {
       
            VStack{
                if !playersObj.players.isEmpty{
                    NavigationLink(destination: GameView1(manager: manager, playerObj: playersObj)){
                        Text("Spiel starten")
                    }.padding()
                        .background(.gray)
                        .cornerRadius(10)
                }
                else{
                    Text("")
                }
                TextField("Spielername eingeben", text: $playerName)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300, height: 50)
                Text("Spieler hinzufügen")
                    .padding()
                    .background(.gray)
                    .cornerRadius(10)
                
                    .onTapGesture {
                        playersObj.addPlayer(name: playerName)
                        playerName = ""
                    }
                Text("Spieler:")
                List(playersObj.players, id: \.id) { player in
                    Text(player.name)
                }
                .cornerRadius(15)
            }
            .padding()
            .foregroundColor(.black)
            .navigationBarHidden(true)
        }
}


struct GameView1: View {
    @ObservedObject var manager = QuizManager()
    @ObservedObject var playerObj = Players()
    var body: some View {
        VStack{
            if !manager.isQuestionEmpty(){
                if let question = manager.displayedQuestion{
                    
                    QuestionView(question: question,manager: manager, playerObj: playerObj)
                } else{
                    Text("Loading...").onAppear{
                        manager.updateQuestion()
                        print("update question")
                    }
                }
            } else{
                EndView(playerObj: playerObj)
            }
        }
        .navigationBarHidden(true)
        
    }
}




#Preview {
    ContentView()
}

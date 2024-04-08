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
                NavigationLink (destination: GameView1()){
                    Text("Spielen")
                        .foregroundColor(.black)
                    
                }
                .padding(.horizontal, 10)
                .frame(width: 120, height: 50)
                .background(.gray)
                .shadow(color: .gray, radius: 15 )
                .cornerRadius(10)
                .position(x:200, y: -100)
                
                
                Rectangle()
                    .fill(.gray).frame(width: 2000, height: 1)
                    .position(CGPoint(x: 5.0, y: 0.0))
                
                Text("Spielregeln")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    .position(x: 200, y: -110)
                
                Text("Der Spielleiter liest die auf der Frachtkarte stehende Frage und Buchstaben laut vor. Alle Personen können nun ein passendes" +
                     "Wort raten. Das Wort, welches zu raten ist, muss mit dem vorgelesenen Buchstaben beginnen." )
                .padding(.horizontal, 20)
                .frame(width: 400, height:300)
                .position(x: 190, y: -170)
                .multilineTextAlignment(.center)
                
            }
            
            
            
        
        }
    }
     
    

}

struct GameView1: View {
    @ObservedObject var manager = QuizManager()

    var body: some View {
        VStack{
            if let question = manager.displayedQuestion{
                QuestionView(question: question)
            } else{
                Text("Loading...").onAppear{
                    manager.updateQuestion()
                }
            }
        }
    }
     
    

}




#Preview {
    ContentView()
}

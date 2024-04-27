//
//  FastAnswerQuestion.swift
//  quizapp
//
//  Created by Raphael Härle on 08.04.24.
//

import SwiftUI

struct QuestionView: View{
    @State var question = Question(quest: "A Question", letter: "A")
    @State var isNavigation = false
    @State var isTimerFinished = false
    @State private var selectedPlayerIndex: Int?
    @ObservedObject var appState = AppState()
    @ObservedObject var manager = QuizManager()
    @ObservedObject var playerObj = Players()
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
  
    var timer: Timer?
   
    
    var vsc = VStackFrameControle()
    
    var body: some View{
        if  UIDevice.current.orientation.isLandscape {
               let ir =  vsc.widthLandscape()
        }
        else{
            let ir = vsc.widthDefault()
        }
        if !manager.isQuestionEmpty(){
                VStack(alignment: .center) {
                    Text(question.quest)
                        .padding(.bottom)
                    if isTimerFinished{
                        Text(question.letter)
                            .padding(.bottom)
                    }
                    Text("Neuer Buchstabe")
                        .padding(.all)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .onTapGesture {
                            question.letter = manager.randLetter()
                        }
                }
                .padding(.horizontal, 20)
                .frame(width: vsc.width, height: vsc.height)
                .background(.gray)
                .cornerRadius(20)
                .shadow(color: .gray, radius: 15)
                .onTapGesture {
                    isTimerFinished=false
                    appState.isSheetPresented = true
                }.onAppear(){
                    timerStart()
                }
                .fullScreenCover(isPresented: $appState.isSheetPresented, content: {
                    Text("Tippe auf den Namen um einen Punkt zu vergeben:")
                        .padding(.bottom)
                        ForEach(playerObj.getPlayer()){player in
                            Text("\(player.name) Punkte: \(player.score)")
                                .padding()
                                .background(.gray)
                                .cornerRadius(10)
                                .onTapGesture {
                                    var winner = player
                                    playerObj.updateScore(for: &winner)
                                    manager.updateQuestion()
                                    if let updatedQuestion = manager.displayedQuestion{
                                        question = updatedQuestion
                                    }
                                    timerStart()
                                   }
                        }
                })
            }
        else{
            EndView(playerObj: playerObj)
        }
    }
    
    
    func timerStart(){
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false){ timer in
            isTimerFinished = true
        }
    }
}





struct QuestionView_Previews: PreviewProvider{
    static var previews: some View{
        QuestionView()
    }
}

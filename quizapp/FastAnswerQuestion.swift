//
//  FastAnswerQuestion.swift
//  quizapp
//
//  Created by Raphael Härle on 08.04.24.
//

import UIKit
import SwiftUI

class QuizManager : ObservableObject{
    var mockQuestions = [
        Question(quest: "Ein Politiker.", letter:  ""),
        Question(quest: "Was fehlt den Meisten", letter:  ""),
        Question(quest: "Berge oder Gebierge.", letter:  ""),
        Question(quest: "Eine Blume.", letter:  ""),
        Question(quest: "Eine Sprache.", letter:  ""),
        Question(quest: "Ein Schmuck.", letter:  ""),
        Question(quest: "Ein Wort aus der Bibel.", letter:  ""),
        Question(quest: "Was braucht man zum Bauen.", letter:  ""),
        Question(quest: "Ein Gedicht oder Liedanfang.", letter:  ""),
        Question(quest: "Eine Farbe.", letter:  ""),
        Question(quest: "Gebaeude oder ein Teil dessen.", letter:  ""),
        Question(quest: "Was Sammelst du?", letter:  ""),
        Question(quest: "Wer oder Was Fliegt?", letter:  ""),
        Question(quest: "Was wuenschst du dir?", letter:  ""),
        Question(quest: "Ein Fluss.", letter:  ""),
        Question(quest: "Welchen Namen gibst du deinem Kind?", letter:  ""),
        Question(quest: "Was isst du gern?", letter:  ""),
        Question(quest: "Ein Haustier.", letter:  ""),
        Question(quest: "Ein Hausgeraet.", letter:  ""),
        Question(quest: "Maler oder Bildhauer.", letter:  ""),
        Question(quest: "Ein Handwerkszeug.", letter:  ""),
        Question(quest: "Wen oder was liebst du?", letter:  ""),
        Question(quest: "Ein Wort, das ein neues ergibt, wenn der erste Buchstabe wegfaellt (Bruder - Ruder).", letter:  ""),
        Question(quest: "Ein Musikinstrument.", letter:  ""),
        Question(quest: "Ein Naturprodukt.", letter:  ""),
        Question(quest: "Ein Verkehrsmittel.", letter:  ""),
        Question(quest: "Ein staedtenamen.", letter:  ""),
        Question(quest: "Wohin moechtest du reisen?", letter:  ""),
        Question(quest: "Vor was fuerchtest du dich?", letter:  ""),
        Question(quest: "EinWort das man vorwaerts und Rueckwaerts lesen kann (Regal - Lager).", letter:  ""),
        Question(quest: "Ein Wort aus der Elektrotechnik.", letter:  ""),
        Question(quest: "Ein Fisch.", letter:  ""),
        Question(quest: "Was trinkst du gerne?.", letter:  ""),
        Question(quest: "Eine Tugend.", letter:  ""),
        Question(quest: "Eine Heldengestalt.", letter:  ""),
        Question(quest: "Ein Heilmittel.", letter:  ""),
        Question(quest: "Was kannst du?", letter:  ""),
        Question(quest: "Ein Wort, das ein neues ergibt,wenn der letzte Buchstabe wegfaellt. (Pappel - Pappe).", letter:  ""),
        Question(quest: ".Eine nette Beschaeftigung.", letter:  ""),
        Question(quest: "Was aergert Dich?", letter:  ""),
        Question(quest: "Ein Kleidunsstrueck.", letter:  ""),
        Question(quest: "Was Bist du?", letter:  ""),
        Question(quest: "Was wuenscht du deinem Nachbarn.", letter:  ""),
        Question(quest: "Ein Vogel.", letter:  ""),
        Question(quest: "Was machst du am Wochenende?", letter:  ""),
        Question(quest: "Was Sieht man auf dem Spazierweg?", letter:  ""),
        Question(quest: "Was bringt der Sommer?", letter:  ""),
        Question(quest: "Ein Wort mit 'heit' am Ende.", letter:  ""),
        Question(quest: "Ein Baum.", letter:  ""),
        Question(quest: "Eine Einrichtung des oeffentliche Lebens.", letter:  ""),
        Question(quest: "Eine Schauspieler.", letter:  ""),
        Question(quest: "Ein Teil der Eisenbahn.", letter:  ""),
        Question(quest: "Ein Spiel.", letter:  ""),
        Question(quest: "Was ist Liebe?", letter:  ""),
        Question(quest: "Was hat jeder mal?", letter:  ""),
        Question(quest: "Etwas Unsichtbares.", letter:  ""),
        Question(quest: "Komponist oder Dirigent.", letter:  ""),
        Question(quest: "Was macht gluecklich?", letter:  ""),
        Question(quest: "Ein Kosenamen.", letter:  ""),
        Question(quest: "Ein wildes Tier.", letter:  ""),
        Question(quest: "Ein Naturerscheinung.", letter:  ""),
        Question(quest: "Stern oder Sternbild.", letter:  ""),
        Question(quest: "Ein Buch oder ein Werk.", letter:  ""),
        Question(quest: "Wie soll man sich benehmen?", letter:  ""),
        Question(quest: "Ein gegenstand auf einem Schiff.", letter:  ""),
        Question(quest: "Ein Wort mit 'ei' am Ende.", letter:  ""),
        Question(quest: "Was gibt es bei den Soldaten?", letter:  ""),
        Question(quest: "Ein Wort aus der Landwirtschaft.", letter:  ""),
        Question(quest: "Ein Autoteil.", letter:  ""),
        Question(quest: "Was ist schwarz?", letter:  ""),
        Question(quest: "Was tut die Hausfrau?", letter:  ""),
        Question(quest: "Eine folge einer Erkaeltung", letter:  ""),
        Question(quest: "Eine andere Bezeichnung fuer Mund.", letter:  ""),
        Question(quest: "Wie soll man nicht sein?", letter:  ""),
        Question(quest: "Dicheter oder Schriftsteller.", letter:  ""),
        Question(quest: "Eine Frucht.", letter:  ""),
        Question(quest: "Etwas aus diesem Zimmer.", letter:  ""),
        Question(quest: "Ein Sportgeraet.", letter:  ""),
        Question(quest: "Was erlebt man aus Reisen?", letter:  ""),
        Question(quest: "Ein bekanntes Sprichwort.", letter:  ""),
        Question(quest: "Eine Oper oder Operette.", letter:  ""),
        Question(quest: "Maerchen oder Saga.", letter:  ""),
        Question(quest: "Ein bekannter Schiffsname.", letter:  ""),
        Question(quest: "Ein See.", letter:  ""),
        Question(quest: "Wie sieht jemand aus?", letter:  ""),
        Question(quest: "Wie findest du das Leben?", letter:  ""),
        Question(quest: "Eine Erfindung.", letter:  ""),
        Question(quest: "Ein Beruf.", letter:  ""),
        Question(quest: "Ein Wort mit 'ling'.", letter:  ""),
        Question(quest: "Ein Land.", letter:  ""),
        Question(quest: "Ein Teil vom menschlichen Koerper.", letter:  ""),
        Question(quest: "Ein brauch der Schneider.", letter:  ""),
        Question(quest: "Etwas Seltenes.", letter:  ""),
        Question(quest: "Was moechtest du werden.", letter:  ""),
        Question(quest: "Ein Computer-Spiel.", letter:  ""),
        Question(quest: "Ein Unternehmen.", letter:  ""),
        Question(quest: "Ein Beruf.", letter:  ""),
    ]
    @Published var displayedQuestion : Question?
    var shuffeldList : [Question]   = []
    
    init(){
        updateQuestion()
    }
        
    func updateQuestion() {
        if !mockQuestions.isEmpty{
             shuffeldList = mockQuestions.shuffled()
            displayedQuestion = Question(quest: shuffeldList[0].quest,
                                         letter: randLetter())
            shuffeldList.remove(at: 0)
            mockQuestions = shuffeldList
        }
    }
    
    func isQuestionEmpty() -> Bool{
        return mockQuestions.isEmpty
    }

    func randLetter() -> String{
        return  ["A", "B", "C", "D" , "E", "F", "G", "H", "I", "J", "K", "L", "M", "N",
                 "O", "P", "Q", "R", "S", " T", "U", "V", "W", "X", "Y", "Z"]
            .shuffled()[0]
    }
}

class AppState: ObservableObject {
    @Published var isSheetPresented = false
}

class VStackFrameControle{
    @Published var width : CGFloat = 350
    @Published var height : CGFloat = 250
    
    func widthLandscape(){
        width = 600
    }
    
    func heightLandscape(){
        height = 3500
    }
}

struct Question: Identifiable, Equatable{
    let id = UUID()
    let quest : String
    var letter : String
}



struct QuestionView: View{
    @State var question = Question(quest: "A Question thts looking really long for better text oo", letter: "A")
    @State var isNavigation = false
    @State private var selectedPlayerIndex: Int?
    @ObservedObject var appState = AppState()
    @ObservedObject var manager = QuizManager()
    @ObservedObject var playerObj = Players()
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
  
    var timer: Timer?
   @State var isTimerFinished = false
    
    var vsc = VStackFrameControle()
    
    

 
    var body: some View{
        if  UIDevice.current.orientation.isLandscape {
            Text("").onAppear(){
                vsc.widthLandscape()
                vsc.heightLandscape()
            }
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
                .frame(width: 350, height: 200)
                .background(.gray)
                .cornerRadius(20)
                .shadow(color: .gray, radius: 15)
                .onTapGesture {

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

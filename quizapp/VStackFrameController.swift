//
//  VStackFrameController.swift
//  quizapp
//
//  Created by Raphael Härle on 27.04.24.
//

import Foundation

class VStackFrameControle{
    @Published var width : CGFloat = 350
    @Published var height : CGFloat = 250
    
    func widthLandscape() -> CGFloat{
        width = 600
        return width
    }
    
    func widthDefault() -> CGFloat{
        width = 350
        return width
    }
}

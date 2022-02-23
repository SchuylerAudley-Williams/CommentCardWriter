//
//  CommentCard.swift
//  CommentCardWriter
//
//  Created by Audley-Williams, Schuyler (SPH) on 08/02/2022.
//

import Foundation

class CommentCard: ObservableObject {
    var isHappy: Bool
    var needsImprovement: Bool
    var hasHighAttainment: Bool

    
    init(){
        isHappy = true
        needsImprovement = false
        hasHighAttainment = true
    }
    
    func writeComment() -> String {
        var happiness: String
        var improvement: String
        var attainment: String
        
        if self.isHappy {
            happiness = "happy"
        } else {
            happiness = "unhappy"
        }
        
        if self.needsImprovement {
            improvement = "I need to improve in this subject."
        } else {
            improvement = "I do not need to improve much."
        }
        
        if self.hasHighAttainment {
            attainment = "good"
        } else {
            attainment = "bad"
        }
        
        return "overall i am \(happiness), i believe my attainment is \(attainment). \(improvement)"
    }
}

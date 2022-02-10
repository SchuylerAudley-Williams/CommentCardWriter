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
    var comment: String {
        var happiness: String
        var improvement: String
        var attainment: String
        
        if isHappy {
            happiness = "happy"
        } else {
            happiness = "unhappy"
        }
        
        if needsImprovement {
            improvement = "I need to improve in this subject."
        } else {
            improvement = "I do not need to improve much."
        }
        
        if hasHighAttainment {
            attainment = "good"
        } else {
            attainment = "bad"
        }
        
        return "Overall i am \(happiness), i believe my attainment is \(attainment). \(improvement)"
    }
    
    init(){
        isHappy = true
        needsImprovement = false
        hasHighAttainment = true
    }
}

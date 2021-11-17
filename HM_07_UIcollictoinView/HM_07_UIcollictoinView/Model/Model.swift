//
//  Model.swift
//  HM_07_UIcollictoinView
//
//  Created by Abdoalaziz Alshammari on 12/04/1443 AH.
//

import Foundation



enum Pictures:String {
    
    case first = "first"
    case second = "second"
    case three = "third"
    case four = "four"
    case five = "five"
    case six = "six"
}

struct Dataphoto {
    
    var pictureData:[Pictures] = [.first,.second,.three,.four,.five,.six]
    
}

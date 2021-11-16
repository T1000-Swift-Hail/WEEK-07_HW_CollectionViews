//
//  Method.swift
//  CollectionViewLab
//
//  Created by MACBOOK on 11/04/1443 AH.
//

import Foundation


enum Photos: String {
    case first = "cr1"
    case second = "cr2"
    case three = "cr3"
    case four = "cr4"
    case five = "cr5"
    case six = "cr6"
    case seven = "cr7"
    case eight = "cr8"
    case nine = "cr9"
    case ten = "cr10"
    case eleven = "cr11"
    case twelve = "cr12"
}

struct Methods {
    
    let dataMethod : [Photos] = [.first,.second,.three,.four,.five,.six,.seven,.eight,.nine,.ten,.eleven,.twelve]
    
    
    
    
    func getImages(forImageView title: String) -> [Photos] {
        switch title {
        case "First":
            return getImage1()
        case "Second":
            return getImage2()
        case "Three":
            return getImage3()
        case "Four":
            return getImage4()
        case "Five":
            return getImage5()
        default:
            return getImage2()
        }
    }
    
    func getImage1() -> [Photos] {
        return dataMethod
    }
    
    func getImage2() -> [Photos] {
        return dataMethod
    }
    
    func getImage3() -> [Photos] {
        
        return dataMethod
    }
    
    func getImage4() -> [Photos] {
        
        return dataMethod
    }
    
    func getImage5() -> [Photos] {
        
        return dataMethod
    }
    
    
    
}

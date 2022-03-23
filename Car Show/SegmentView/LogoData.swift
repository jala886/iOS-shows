//
//  LogoData.swift
//  SegmentView
//
//  Created by Consultant on 3/21/22.
//

import UIKit

enum Logo:Int,CaseIterable{
    case bmw=0
    case ferrari
    case audi
    
    var image:(String,UIImage)?{
        switch self{
        case .audi:
            return ("Audi",UIImage(named: "audi")!)
        case .ferrari:
            return ("Ferrari",UIImage(named: "ferrari")!)
        case .bmw:
            return ("Bmw",UIImage(named: "bmw")!)
        }
    }
}

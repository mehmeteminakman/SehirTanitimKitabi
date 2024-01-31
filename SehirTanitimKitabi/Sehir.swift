//
//  Sehir.swift
//  SehirTanitimKitabi
//
//  Created by mehmet emin akman on 27.01.2024.
//

import Foundation
import UIKit

class Sehir{
    
    var isim: String
    var bölge : String
    var gorsel : UIImage
    
    init(isim: String, bölge: String, gorsel: UIImage) {
        self.isim = isim
        self.bölge = bölge
        self.gorsel = gorsel
    }
}

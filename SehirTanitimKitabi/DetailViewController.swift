//
//  DetailViewController.swift
//  SehirTanitimKitabi
//
//  Created by mehmet emin akman on 27.01.2024.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var sehirLabel: UILabel!
    @IBOutlet weak var sehirBolgeLabel: UILabel!
    
    var secilenSehir:Sehir?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        sehirLabel.text=secilenSehir?.isim
        sehirBolgeLabel.text=secilenSehir?.bölge
        imageView.image=secilenSehir?.gorsel

        
    }
    

}

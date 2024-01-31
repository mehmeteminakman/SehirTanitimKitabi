//
//  ViewController.swift
//  SehirTanitimKitabi
//
//  Created by mehmet emin akman on 27.01.2024.
//

import UIKit

class ViewController: UIViewController,UITabBarDelegate,UITableViewDataSource, UITableViewDelegate {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var sehirDizi :[Sehir]=[]
    var kullanicisecilenSehir: Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate=self
        tableView.dataSource=self
        let istanbul = Sehir(isim: "İstanbul", bölge:"Marmara Bölgesi", gorsel: UIImage(named: "İstanbul")!)
        let ankara = Sehir(isim: "Ankara", bölge: "İç Anadolu Bölgesi", gorsel: UIImage(named: "ankaraa")!)
        let antalya = Sehir(isim: "Antalya", bölge: "Akdeniz Bölgesi", gorsel: UIImage(named: "antalya")!)
        let diyarbakir = Sehir(isim: "Diyarbakır", bölge: "Doğu Anadolu Bölgesi", gorsel: UIImage(named: "Diyarbakir")!)
        let izmir = Sehir(isim: "İzmir", bölge: "Ege Bölgesi", gorsel: UIImage(named: "Izmir")!)
        sehirDizi.append(istanbul)
        sehirDizi.append(ankara)
        sehirDizi.append(antalya)
        sehirDizi.append(diyarbakir)
        sehirDizi.append(izmir)
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text=sehirDizi[indexPath.row].isim
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullanicisecilenSehir=sehirDizi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVc", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toDetailsVc"{
            let destinationVc=segue.destination as! DetailViewController
            destinationVc.secilenSehir = kullanicisecilenSehir
        }
    }
    


}


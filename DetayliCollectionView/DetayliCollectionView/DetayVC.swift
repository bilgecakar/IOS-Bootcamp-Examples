//
//  DetayVC.swift
//  DetayliCollectionView
//
//  Created by Bilge Çakar on 9.03.2022.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var filmFiyatLabel: UILabel!
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmYonetmenAdiLabel: UILabel!
    @IBOutlet weak var filmAdiLabel: UILabel!
    
    var film : Flimler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let f = film{
            filmAdiLabel.text = f.flimAdi
            filmYonetmenAdiLabel.text = f.yonetmenAdi
            filmImageView.image = UIImage(named: f.flimResimAdi!)
            filmFiyatLabel.text = "\(f.flimFiyat!) ₺"
            
        }
    }
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        
        if let f = film{
            print("\(f.flimAdi!) \(f.flimFiyat!) ile listeye eklendi.")
        }
    }
    
}

//
//  FilmlerCollectionViewCell.swift
//  DetayliCollectionView
//
//  Created by Bilge Çakar on 9.03.2022.
//

import UIKit

protocol HucreProtocol
{
    func sepeteEkle(indexPath : IndexPath)
}

class FilmlerCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var filmFiyatLabel: UILabel!
    @IBOutlet weak var filmAdiLabel: UILabel!
    @IBOutlet weak var filmImageView: UIImageView!
    
    var hucreProtocol : HucreProtocol?
    var indexPath : IndexPath?
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
        
    }
}

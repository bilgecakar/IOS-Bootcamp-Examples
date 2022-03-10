//
//  ViewController.swift
//  DetayliCollectionView
//
//  Created by Bilge Çakar on 9.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var filmlerCollectionView: UICollectionView!
    
    var filmlerListesi = [Flimler]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmlerCollectionView.delegate = self
        filmlerCollectionView.dataSource = self
        
        let f1 = Flimler(flimId: 1, flimAdi: "Django", flimResimAdi: "django", yonetmenAdi: "Quentin Tarantino", flimFiyat: 15.99)
        let f2 = Flimler(flimId: 1, flimAdi: "Inception", flimResimAdi: "inception", yonetmenAdi: "Christopher Nolan", flimFiyat: 13.99)
        let f3 = Flimler(flimId: 1, flimAdi: "Interstellar", flimResimAdi: "interstellar", yonetmenAdi: "Christopher Nolan", flimFiyat: 18.99)
        let f4 = Flimler(flimId: 1, flimAdi: "Anadoluda", flimResimAdi: "anadoluda", yonetmenAdi: "Nuri Bilge Ceylan", flimFiyat: 8.99)
        let f5 = Flimler(flimId: 1, flimAdi: "The Hateful Eight", flimResimAdi: "thehatefuleight", yonetmenAdi: "Quentin Tarantino", flimFiyat: 14.99)
        let f6 = Flimler(flimId: 1, flimAdi: "The Pianist", flimResimAdi: "thepianist", yonetmenAdi: "Roman Polanski", flimFiyat: 10.99)
        
        filmlerListesi.append(f1)
        filmlerListesi.append(f2)
        filmlerListesi.append(f3)
        filmlerListesi.append(f4)
        filmlerListesi.append(f5)
        filmlerListesi.append(f6)

        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumLineSpacing = 10 //Dikey
        tasarim.minimumInteritemSpacing = 10 //Yatay
        let genislik = filmlerCollectionView.frame.size.width
        let hucreGenislik = (genislik-30) / 2
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*1.7)
        filmlerCollectionView.collectionViewLayout = tasarim
        
    }
    
    
}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource,HucreProtocol
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let film = filmlerListesi[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre", for: indexPath) as! FilmlerCollectionViewCell
        
        cell.filmImageView.image = UIImage(named: film.flimResimAdi!)
        cell.filmAdiLabel.text = film.flimAdi
        cell.filmFiyatLabel.text = "\(film.flimFiyat!) ₺"
        cell.layer.borderColor = UIColor.systemIndigo.cgColor
        cell.layer.borderWidth = 0.3
        cell.layer.cornerRadius = 10
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func sepeteEkle(indexPath: IndexPath) {
        let flim = filmlerListesi[indexPath.row]
        
        print("\(flim.flimAdi!) sepete eklendi")
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: film)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay"
        {
            let film = sender as? Flimler
            let gidilecekCV = segue.destination as! DetayVC
            gidilecekCV.film = film
        }
    }
}


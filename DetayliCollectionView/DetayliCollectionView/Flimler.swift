//
//  Flimler.swift
//  DetayliCollectionView
//
//  Created by Bilge Çakar on 9.03.2022.
//

import Foundation

class Flimler
{
    var flimId : Int?
    var flimAdi : String?
    var flimResimAdi : String?
    var yonetmenAdi : String?
    var flimFiyat : Double?
    
    init(flimId : Int, flimAdi : String, flimResimAdi : String, yonetmenAdi : String, flimFiyat : Double)
    {
        self.flimId = flimId
        self.flimAdi = flimAdi
        self.flimResimAdi = flimResimAdi
        self.flimFiyat = flimFiyat
        self.yonetmenAdi = yonetmenAdi
    }
}

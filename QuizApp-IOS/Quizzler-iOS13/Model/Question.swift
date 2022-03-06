//
//  Question.swift
//   
//
//  Created by Bilge Çakar on 6.03.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question
{
    let text : String
    let answer : String
    
    init(q : String, a : String)
    {
        self.text = q
        self.answer = a
    }
}

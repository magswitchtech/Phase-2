//
//  Family.swift
//  Phase 2
//
//  Created by Andrew Gentry on 1/20/16.
//  Copyright © 2016 Andrew Gentry. All rights reserved.
//

import Foundation

struct Family {
    
    var familyName: String
    var familySize: Int
    var familyCategory: String
    var productFamily = [Product]()
    
}

var woodworkingFamilies = [Family]()
var liftingFamilies = [Family]()
var automationFamilies = [Family]()
var weldingFamilies = [Family]()


// Family Arrays:

var Magsquares = [Product]()
var Magnetic_Ground_Clamps = [Product]()




var MagsquareFamilyList: [(name: String, photoFilename: String, notes: String)] = [
    
    
    ("Magsqure 1000", "magsquare1000", "Magsquare 1000 Notes Here"),
    ("Magsqure 600", "magsquare600", "Magsquare 600 Notes Here"),
    ("Magsqure 400", "magsquare400", "Magsquare 400 Notes Here"),
    ("Magsqure 165", "magsquare165", "Magsquare 165 Notes Here")
    
    
]

var GroundClampFamilyList: [(name: String, photoFilename: String, notes: String)] = [
    
    
    ("Magnetic Ground Clamp 800", "groundclamp800", "Clamp 800 Notes Here"),
    ("Magnetic Ground Clamp 600", "groundclamp600", "Clamp 600 Notes Here"),
    ("Magnetic Ground Clamp 500", "groundclamp500", "Clamp 500 Notes Here")
    
    
]

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
    var familyCategory: String
    var familyProductArray = [Product]()
    var familyDescription : String!
    
}


let MagSquares : [Product] = [

    MagSquare1000,
    MagSquare600,
    MagSquare400,
    MagSquare165

]

let MagSquareFamily = Family(familyName: "MagSquares", familyCategory: "Welding", familyProductArray: MagSquares, familyDescription: "The Magsquare Family")



let MagneticGroundClamps : [Product] = [

    GroundClamp800,
    GroundClamp600,
    GroundClamp300
]

let MagneticGroundClampFamily = Family(familyName: "Magnetic Ground Clamps", familyCategory: "Welding", familyProductArray: MagneticGroundClamps, familyDescription: "Welding Ground Clamps")


/*

    Sections for the Magswitch families.........

*/


let weldingSection : [Family] = [
    
    MagSquareFamily,
    MagneticGroundClampFamily
    
]

let woodworkingSection : [Family] = [

]

let heavyliftingSection : [Family] = [
]

let automationSection : [Family] = [
]







//var woodworkingFamilies = [Family]()
//var liftingFamilies = [Family]()
//var automationFamilies = [Family]()
//var weldingFamilies = [Family]()
//

// Family Arrays:
//
//var Magsquares = [Product]()
//var Magnetic_Ground_Clamps = [Product]()
//
//
//
//
//var MagsquareFamilyList: [(name: String, photoFilename: String, category: String, notes: String)] = [
//    
//    
//    ("Magsqure 1000", "magsquare1000", "Welding", "Magsquare 1000 Notes Here"),
//    ("Magsqure 600", "magsquare600", "Welding", "Magsquare 600 Notes Here"),
//    ("Magsqure 400", "magsquare400", "Welding", "Magsquare 400 Notes Here"),
//    ("Magsqure 165", "magsquare165", "Welding", "Magsquare 165 Notes Here")
//    
//    
//]
//
//var GroundClampFamilyList: [(name: String, photoFilename: String, category: String, notes: String)] = [
//    
//    
//    ("Magnetic Ground Clamp 800", "groundclamp800", "Welding", "Clamp 800 Notes Here"),
//    ("Magnetic Ground Clamp 600", "groundclamp600", "Welding","Clamp 600 Notes Here"),
//    ("Magnetic Ground Clamp 500", "groundclamp500", "Welding","Clamp 500 Notes Here")
//    
//    
//]
//
//var PivotAngleFamilyList: [(name: String, photoFilename: String, category: String, notes: String)] = [
//    
//    
//    ("Pivot Angle 200", "pivotangle200", "Welding","All About the Pivot Angle 200")
//    
//    
//]
//
//var MagDrillFamilyList: [(name: String, photoFilename: String, category: String, notes: String)] = [
//    
//    ("MagDrill Disruptor 30", "magdrill30", "Welding", "All About the MagDrill Disruptor")
//
//    
//]

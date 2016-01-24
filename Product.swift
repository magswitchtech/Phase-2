//
//  Photo.swift
//  Phase 2
//
//  Created by Andrew Gentry on 1/13/16.
//  Copyright © 2016 Andrew Gentry. All rights reserved.
//

import Foundation

struct Product {
    
    var name : String
    var photoFilename : String
    var category : String
    var notes : String
    
}

// These are the arrays of Product Object to be used by the TableViewController. Do NOT manually store Products
// in these arrays.  addProduct handles that by using the Product Lists.

var woodworkingProducts = [Product]()
var liftingProducts = [Product]()
var automationProducts = [Product]()
var weldingProducts = [Product]()

var Magsquares = [Product]()
var Magnetic_Ground_Clamps = [Product]()


// The addProduct Function is utilized for populating the Product arrays with Product Objects. addProduct uses the 
// human readable and writable arrays stored in ProductLists.swift

func addProduct(name: String, photoFilename: String, category: String, notes: String) {
    
    let newProduct = Product(name: name, photoFilename: photoFilename, category: category, notes: notes)
    
    switch category {
        
        case "Woodworking":
        
        woodworkingProducts.append(newProduct)
        
        case "Lifting":
        
        liftingProducts.append(newProduct)
        
        case "Automation":
        
        automationProducts.append(newProduct)
        
        case "Welding":
        
        weldingProducts.append(newProduct)
        
        case "MagSquares":
        
        Magsquares.append(newProduct)
        
        case "Ground Clamps":
        
        Magnetic_Ground_Clamps.append(newProduct)

        
    default:
        
        print("Did not match any product catagory. So nothing was appended. Possibly a spelling Error?")
        
    }

    
}

var WoodworkingProductList: [(name: String, photoFilename: String, notes: String)] = [
    
    
    ("Magdrill","magdrill","Some random notes"),
    ("Magsqure300", "magsquare300", "A magnetic cube"),
    ("Magsqure400", "magsquare400", "A bigger magnetic cube"),
    ("Magsqure500", "magsquare500", "The biggest magnetic cube"),
    ("Dual Rip Guide", "dualripguide", "A guide for wood"),
    ("Magswitch Starter Kit", "magswitchstarterkit", "A woodworking starter kit."),
    ("Pro Fence Guide", "profenceguide", "A long aluminum fence for your woodworking needs"),
    ("Angle Guide", "angleguide", "Another angle guide for woodworking stuff"),
    
    
]


var LiftingProductList: [(name: String, photoFilename: String, notes: String)] = [
    
    
    ("Magdrill","magdrill","Some random notes"),
    ("Magsqure300", "magsquare300", "A magnetic cube"),
    ("Magsqure400", "magsquare400", "A bigger magnetic cube"),
    ("Magsqure500", "magsquare500", "The biggest magnetic cube"),
    ("Dual Rip Guide", "dualripguide", "A guide for wood"),
    ("Magswitch Starter Kit", "magswitchstarterkit", "A woodworking starter kit."),
    ("Pro Fence GUide", "profenceguide", "A long aluminum fence for your woodworking needs"),
    ("Angle Guide", "angleguide", "Another angle guide for woodworking stuff"),
    
    
]

var AutomationProductList: [(name: String, photoFilename: String, notes: String)] = [
    
    
    ("Magdrill","magdrill","Some random notes"),
    ("Magsqure300", "magsquare300", "A magnetic cube"),
    ("Magsqure400", "magsquare400", "A bigger magnetic cube"),
    ("Magsqure500", "magsquare500", "The biggest magnetic cube"),
    ("Dual Rip Guide", "dualripguide", "A guide for wood"),
    ("Magswitch Starter Kit", "magswitchstarterkit", "A woodworking starter kit."),
    ("Pro Fence GUide", "profenceguide", "A long aluminum fence for your woodworking needs"),
    ("Angle Guide", "angleguide", "Another angle guide for woodworking stuff"),
    
    
]

var WeldingProductList: [(name: String, photoFilename: String, notes: String)] = [
    
    
    ("Magdrill","magdrill","Some random notes"),
    ("Magsqure300", "magsquare300", "A magnetic cube"),
    ("Magsqure400", "magsquare400", "A bigger magnetic cube"),
    ("Magsqure500", "magsquare500", "The biggest magnetic cube"),
    ("Dual Rip Guide", "dualripguide", "A guide for wood"),
    ("Magswitch Starter Kit", "magswitchstarterkit", "A woodworking starter kit."),
    ("Pro Fence GUide", "profenceguide", "A long aluminum fence for your woodworking needs"),
    ("Angle Guide", "angleguide", "Another angle guide for woodworking stuff"),
    
    
]

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





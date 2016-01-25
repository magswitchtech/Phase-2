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
    var productID : Int
    var photoFilename : String
    var category : String
    var maxLift : Double!
    var height : Double!
    var width : Double!
    var length : Double!
    var weight : Double!
    var description : String!
    
}


//  MagSquares
 
let MagSquare1000 = Product(name: "MagSquare1000", productID: 8100099, photoFilename: "magsquare1000", category: "Welding", maxLift: 1000, height: 5.8, width: 2.8, length: 4.3, weight: 8.0, description: "something")

let MagSquare600 = Product(name: "MagSquare600", productID: 8100106, photoFilename: "magsquare600", category: "Welding", maxLift: 600, height: 4.1, width: 2.0, length: 3.0, weight: 3.2, description: "")

let MagSquare400 = Product(name: "MagSquare400", productID: 8100238, photoFilename: "magsquare400", category: "Welding", maxLift: 400, height: 3.6, width: 1.6, length: 2.5, weight: 2.1, description: "")

let MagSquare165 = Product(name: "MagSquare165", productID: 8100494, photoFilename: "magsquare165", category: "Welding", maxLift: 165, height: 2.5, width: 1.2, length: 1.9, weight: 0.7, description: "")



// Magnetic Ground Clamps

let GroundClamp800 = Product(name: "800 Amp", productID: 8100552, photoFilename: "800amp", category: "Welding", maxLift: 300, height: 5.8, width: 2.8, length: 4.3, weight: 3.8, description: "")

let GroundClamp600 = Product(name: "600 Amp", productID: 8100747, photoFilename: "600amp", category: "Welding", maxLift: 200, height: 2.6, width: 4.0, length: 2.7, weight: 1.8, description: "")

let GroundClamp300 = Product(name: "300 Amp", productID: 8100746, photoFilename: "300amp", category: "Welding", maxLift: 90, height: 2.3, width: 1.9, length: 2.9, weight: 0.8, description: "")



// These are the arrays of Product Object to be used by the TableViewController. Do NOT manually store Products
// in these arrays.  addProduct handles that by using the Product Lists.
//
//var woodworkingProducts = [Product]()
//var liftingProducts = [Product]()
//var automationProducts = [Product]()
//var weldingProducts = [Product]()
//
//
// The addProduct Function is utilized for populating the Product arrays with Product Objects. addProduct uses the
// human readable and writable arrays stored in ProductLists.swift

//func addProduct(name: String, photoFilename: String, category: String, notes: String) {
//    
//    let newProduct = Product(name: name, photoFilename: photoFilename, category: category, notes: notes)
//    
//    switch category {
//        
//        case "Woodworking":
//        
//        woodworkingProducts.append(newProduct)
//        
//        case "Lifting":
//        
//        liftingProducts.append(newProduct)
//        
//        case "Automation":
//        
//        automationProducts.append(newProduct)
//        
//        case "Welding":
//        
//        weldingProducts.append(newProduct)
//        
//        case "MagSquares":
//        
//        Magsquares.append(newProduct)
//        
//        case "Ground Clamps":
//        
//        Magnetic_Ground_Clamps.append(newProduct)
//
//        
//    default:
//        
//        print("Did not match any product catagory. So nothing was appended. Possibly a spelling Error?")
//        
//    }
//
//    
//}
//
//
//
//
//

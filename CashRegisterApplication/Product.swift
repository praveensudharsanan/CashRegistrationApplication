//
//  Product.swift
//  CashRegisterApplication
//
//  Created by user199544 on 10/25/21.
//

import Foundation

class Product{
    
    var product :[String] = ["Pants","Shoes","Hats","Tshirts","Dresses"]
    var quantity :[String] = ["20","50","10","10","24"]
    var price : [String] = ["50.7","90","20.5","15.8","20"]
    
    init(p:String,q:String,pr:Double) {
        
         product.append(p)
         quantity.append(q)
        price.append(String(pr))
        
        
    }
}

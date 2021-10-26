//
//  ProductManager.swift
//  CashRegisterApplication
//
//  Created by user199544 on 10/25/21.
//

import Foundation

class ProductManager{
    var products = [Product]()
    
    func addNewProduct(newProduct:Product) {
        products.append(newProduct)
    }
    
    func getAllproducts()->[Product]{
        return products
    }
    
}

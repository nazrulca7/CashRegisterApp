//
//  productStock.swift
//  CashRegisterApp
//
//  Created by Md Nazrul Islam on 2021-10-20.
//

import Foundation

class ProductStock{
    
    var productName: String
    var productQty: Int
    var prodcutPrice: Int
    
    init(pName:String, pQty:Int, pPrice: Int ){
        
    productName = pName
    productQty = pQty
    prodcutPrice = pPrice
        
        
    }
}
    /*
        let alert = UIAlertController(title: "Do you want to add product to Cart?", message: "Are you sure?", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "add", style: .default){ [self] [self]  action
             in
            if let name = self.txtInputProductName.text {
               
                
              if self.lblTotalShow.text != nil{
                    let total =
                  
                  
                  Int(self.lblTotalShow.text!)
                    
                    let newProduct = Product(n: name, amount: total ?? 0)
                    
                  if let product_id = self.productStock.firstIndex(where: {$0.productName == self.txtInputProductName.text}) {
                     // do something with foo
                      self.productStock[product_id].productQty = 0
                      var productQty=self.productStock[product_id].productQty
                      var productName=self.productStock[product_id].productName
                      var prodctPrice=self.productStock[product_id].prodcutPrice
                      
                       printContent(Any?)
                      let  producth = ProductHistory(pName: productName, pQty:productQty, pPrice:prodctPrice)
                      self.vProductHistory.append(producth)
                      
                  }
                  
                  
                    self.VIEWProductTbl.reloadData()
                  
                  
                }
                
            }
            
            
        }
        let action2 = UIAlertAction(title: "No", style: .cancel, handler: nil)
        
        alert.addAction(action1)
        alert.addAction(action2)

  present(alert,animated: true, completion:  nil )
        
    
    
}
     */

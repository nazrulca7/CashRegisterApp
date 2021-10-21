//
//  ViewController.swift
//  CashRegisterApp
//
//  Created by Md Nazrul Islam on 2021-10-12.
//

import UIKit

class ViewController: UIViewController ,
                      UITableViewDelegate,
                      UITableViewDataSource {
   
    @IBOutlet weak var txtInputProductName: UITextField!
    @IBOutlet weak var VIEWProductTbl: UITableView!
   
    @IBOutlet weak var lblTotalShow: UITextField!
    var Products = [Product]()
    @IBOutlet weak var txtTotalDisplay: UITextField!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(Products)
        
        return Products.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        print(indexPath.row)
        cell.textLabel?.text = String(Products[indexPath.row].name)

        cell.detailTextLabel?.text = String(Products[indexPath.row].number)
        return cell
          
        
    }

   
    override func viewDidLoad() {
        super.viewDidLoad()
        VIEWProductTbl.dataSource=self
        navigationItem.title = "Your Title"
        // Do any additional setup after loading the view.
    }

    @IBAction func addListbtn(_ sender: Any) {
       
    
        let alert = UIAlertController(title: "Do you want to add product to Cart?", message: "Are you sure?", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "add", style: .default){  action
             in
            if let name = self.txtInputProductName.text {
               
                
                if self.lblTotalShow.text != nil{
                    let total = Int(self.lblTotalShow.text!)
                    
                    let newProduct = Product(n: name, amount: total ?? 0)
                    self.Products.append(newProduct)
                    self.VIEWProductTbl.reloadData()
                }
                
            }
            
            
        }
        let action2 = UIAlertAction(title: "No", style: .cancel, handler: nil)
        
        alert.addAction(action1)
        alert.addAction(action2)

  present(alert,animated: true, completion:  nil )
        
        
    }
    

   
    
  
    
   
    
}


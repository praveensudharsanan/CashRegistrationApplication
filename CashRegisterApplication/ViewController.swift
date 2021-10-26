//
//  ViewController.swift
//  CashRegisterApplication
//
//  Created by user199544 on 10/15/21.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,
                      UITableViewDataSource {
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var managerButton: UIButton!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    let products = ["Pants","Shoes","Hats","Tshirts","Dresses"]
    var price = ["20","50","10","10","24"]
    var txt:String = ""
    var myindex = 0
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =
            tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = products[indexPath.row]
        cell.detailTextLabel?.text = price[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myindex = indexPath.row
        typeLabel.text = products[myindex];
    }
    func sum(value:String){
        txt+=value
        quantityLabel.text=txt;

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button1.layer.cornerRadius=30;
        button2.layer.cornerRadius=30;
        button3.layer.cornerRadius=30;
        button4.layer.cornerRadius=30;
        button5.layer.cornerRadius=30;
        button6.layer.cornerRadius=30;
        button7.layer.cornerRadius=30;
        button8.layer.cornerRadius=30;
        button9.layer.cornerRadius=30;
        button0.layer.cornerRadius=30;
        buyButton.layer.cornerRadius=30;
        managerButton.layer.cornerRadius=30;

    }
    
    

    @IBAction func numberButton( _sender: UIButton) {
        
       sum(value: String(_sender.tag))
    }
    
    func  clear() -> Void {
        quantityLabel.text = "Quantity"
        typeLabel.text = "Type"
        txt = ""    }
    
    
    @IBAction func buyButton(_ sender: Any) {
        if(quantityLabel.text != "Quantity" && typeLabel.text != "Type"){
            
            let amount:Int? = Int(quantityLabel.text!)
            let unitPrice:Int? = Int(price[myindex])
            self.myTable.reloadData()
            if(amount! < unitPrice!){
                let total = amount! * unitPrice!
                totalLabel.text = String(total)
                if(amount! <= unitPrice!){
                    let changedQty = unitPrice! - amount!
                    price[myindex] = String(changedQty)
                }else{
                    
                }
                clear()
                
            }else{
                let alert = UIAlertController(title: "Not that much Stock available", message: "Enter correct quantity", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler:nil))
                self.present(alert, animated: true)
                clear()

            }
            
        }else{
            let alert = UIAlertController(title: "Quantity or type is not filled", message: "Please fill it", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler:nil))
            self.present(alert, animated: true)
            clear()

            
        }
        
    }
    
    
    
}


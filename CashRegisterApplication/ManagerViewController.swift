//
//  ManagerViewController.swift
//  CashRegisterApplication
//
//  Created by user199544 on 10/23/21.
//

import UIKit

class ManagerViewController: UIViewController, UITableViewDelegate,
                             UITableViewDataSource {
    
    
    @IBOutlet weak var managerTable: UITableView!
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
    @IBOutlet weak var managerButton: UIButton!
    @IBOutlet weak var buyButton: UIButton!
    var manager : ProductManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 5 
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =
            tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        let product = manager?.getAllproducts()[indexPath.row].product
        let quantity = manager?.getAllproducts()[indexPath.row].quantity
        cell.textLabel?.text = "\(product)"
        cell.detailTextLabel?.text = "\(quantity)"
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

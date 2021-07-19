//
//  ProductViewController.swift
//  RepliconDemo
//
//  Created by Shadab Haidari on 17/07/21.
//

import UIKit

class ProductViewController: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!
    var viewModel = ProductViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.productAPI(completionHandler: { list in
            self.viewModel.productList = list
            DispatchQueue.main.async {
                self.tblView.reloadData()
            }
        })
    }
}


extension ProductViewController : UITableViewDelegate, UITableViewDataSource {
    
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
}
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return viewModel.productList?.count ?? 0
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as! ProductTableViewCell
    
    cell.productList = viewModel.productList?[indexPath.row]
    return cell
    }
}

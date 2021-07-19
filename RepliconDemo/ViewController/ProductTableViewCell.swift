//
//  ProductTableViewCell.swift
//  RepliconDemo
//
//  Created by Shadab Haidari on 17/07/21.
//

import UIKit
import SDWebImage

class ProductTableViewCell: UITableViewCell {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgProduct: UIImageView!
    var productList: Product?{
        didSet{
            productInfo()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func productInfo(){
        lblTitle.text = productList?.title
        imgProduct.sd_setImage(with: URL(string: productList?.thumbnailURL ?? ""))
    }
}

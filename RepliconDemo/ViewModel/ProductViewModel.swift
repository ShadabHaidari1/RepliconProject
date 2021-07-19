//
//  ProductViewModel.swift
//  RepliconDemo
//
//  Created by Shadab Haidari on 17/07/21.
//

import Foundation
import Alamofire
class ProductViewModel {
    
    var productList: ProductModel?
    
    func productAPI(completionHandler: @escaping (ProductModel) -> Void){
        
        let url = APIConstant.ProductApi // This will be your link
        let parameters: Parameters = [:] //This will be your parameter
        AF.request(url, method: .get, parameters: parameters).responseJSON { response in
            if let data = response.data {
                do{
                    let responseData = try JSONDecoder().decode(ProductModel.self, from: data)
                    completionHandler(responseData)
                }catch let err{
                    print(err.localizedDescription)
                }
            }
        }
    }
}




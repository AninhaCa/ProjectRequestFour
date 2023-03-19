//
//  PriceViewController.swift
//  ProjectRequestFour
//
//  Created by Ana Paula Silva de Sousa on 19/03/23.
//

import UIKit
import SDWebImage

class PriceViewController: UIViewController {

    @IBOutlet var imagePrice: UIImageView!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelPriceP: UILabel!
    @IBOutlet var labelPriceM: UILabel!
    @IBOutlet var labelPriceG: UILabel!
    
    var pricePizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = pricePizza?.name
        labelPriceP.text = "PEQUENO - R$\(pricePizza?.priceP ?? 0)"
        labelPriceM.text = "MÉDIO = R$\(pricePizza?.priceM ?? 0)"
        labelPriceG.text = "GRANDE = R$\(pricePizza?.priceG ?? 0)"
        let urlImage = URL(string: pricePizza?.imageURL ?? "")
        imagePrice.sd_setImage(with: urlImage)
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func follow(_ sender: Any) {
        if let rating = self.storyboard?.instantiateViewController(identifier: "rating") as? RatingViewController {
            rating.ratingPizza = self.pricePizza
            self.present(rating, animated: true)
        }
    }
}

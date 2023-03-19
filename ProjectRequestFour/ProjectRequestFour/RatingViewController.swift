//
//  RatingViewController.swift
//  ProjectRequestFour
//
//  Created by Ana Paula Silva de Sousa on 19/03/23.
//

import UIKit
import SDWebImage

class RatingViewController: UIViewController {

    @IBOutlet var imageRating: UIImageView!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelRating: UILabel!
    
    var ratingPizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = "AVALIAÇÃO CLIENTE"
        labelRating.text = "Para Nossos Clientes, a Pizza\(ratingPizza?.name ?? "") esta na posição - \(ratingPizza?.rating ?? 0)/5 - de Aprovação"
        let urlImage = URL(string: ratingPizza?.imageURL ?? "")
        imageRating.sd_setImage(with: urlImage)
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true)
    }
  
}

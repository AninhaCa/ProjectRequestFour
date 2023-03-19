//
//  RatingViewController.swift
//  ProjectRequestFour
//
//  Created by Ana Paula Silva de Sousa on 19/03/23.
//

import UIKit

class RatingViewController: UIViewController {

    @IBOutlet var imageRating: UIImageView!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelRating: UILabel!
    
    var ratingPizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: Any) {
    }
  
}

//
//  CustomXIBCell.swift
//  ProjectRequestFour
//
//  Created by Ana Paula Silva de Sousa on 19/03/23.
//

import UIKit

class CustomXIBCell: UITableViewCell {

    @IBOutlet var imagePizza: UIImageView!
    @IBOutlet var labelPizza: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupXIB(pizzaElement: PizzaElement?) {
        
    }
}

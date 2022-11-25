//
//  TableViewCell.swift
//  Exercise01
//
//  Created by Nishtha Ashokbhai Patel on 2022-11-21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var labelMovie: UILabel!//Movie Name
 
    @IBOutlet weak var labelRelease: UILabel!//Release Date
    
    @IBOutlet weak var ImageMovie: UIImageView!//Image of the Movie
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

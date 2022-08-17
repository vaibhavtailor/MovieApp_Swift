//
//  MovieTableViewCell.swift
//  Vaibhav-Tailor_COMP2125-Sec003_Lab04-Ex01
//
//  Created by user211388 on 7/26/22.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var moviePosterImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

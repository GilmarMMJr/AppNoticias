//
//  NewYorkTableViewCell.swift
//  AppNoticias
//
//  Created by Gilmar Junior on 04/01/22.
//

import UIKit

class NewYorkTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var byLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        newsImage.layer.cornerRadius = 10
        newsImage.layer.borderWidth = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(whith news: ResultNews ){
        titleLabel.text = news.title
        byLabel.text = news.byline
        
        newsImage.image = UIImage(named: "17malcolmx-mediumThreeByTwo440-v2.jpeg")
    }

}

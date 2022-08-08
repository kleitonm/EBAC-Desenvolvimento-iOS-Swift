//
//  NewYorkTableViewCell.swift
//  Exercicio-M14
//
//  Created by Kleiton Mendes on 14/06/22.
//

import UIKit

class NewYorkTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageNews: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imageNews.layer.cornerRadius = 10
        imageNews.layer.borderWidth = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(with news: ResultNews) {
        titleLabel.text = news.title
        authorLabel.text = news.byline
        imageNews.image = UIImage(named: "malcolm-x_")
    }
    
}

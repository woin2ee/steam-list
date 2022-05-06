//
//  MyTableViewCell.swift
//  SteamList
//
//  Created by Jaewon on 2022/05/06.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

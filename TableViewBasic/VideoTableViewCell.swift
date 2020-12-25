//
//  VideoTableViewCell.swift
//  TableViewBasic
//
//  Created by binyu on 2020/12/24.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

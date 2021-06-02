//
//  CardTableViewCell.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Kingfisher
import UIKit

class CardTableViewCell: UITableViewCell {
    @IBOutlet var mCardImageView: UIImageView!
    @IBOutlet var mNameLabel: UILabel!
    @IBOutlet var mContentView: UIView!
    @IBOutlet var mRarityLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func bind(item: CardVO, tapGesture: UITapGestureRecognizer, actionTag: Int) {
        if let imageUrl = item.imageUrl, !imageUrl.isEmpty {
            mCardImageView.kf.setImage(with: URL(string: imageUrl))
        }
        mNameLabel.text = item.name
        mRarityLabel.text = item.rarity
        // Add gesture
        mContentView.tag = actionTag
        mContentView.addGestureRecognizer(tapGesture)
    }
}

//
//  CardDetailViewController.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import UIKit

class CardDetailViewController: UIViewController {
    // MARK: - Class properties

    @IBOutlet weak var mCardImageView: UIImageView!
    @IBOutlet weak var mCardDescriptionLabel: UILabel!
    
    var presenter: CardDetailViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Initialize UI
        initUI()
    }
    
    // MARK: - Common functions

    private func initUI() {
        navigationItem.title = presenter?.getCardName()
        if let imageUrl = presenter?.getCardImage(), !imageUrl.isEmpty {
            mCardImageView.kf.setImage(with: URL(string: imageUrl))
        }
        mCardDescriptionLabel.text = presenter?.getCardOriginalText()
    }
}

// MARK: - CardDetailPresenterToViewProtocol

extension CardDetailViewController: CardDetailPresenterToViewProtocol {
}

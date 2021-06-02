//
//  CardListViewController.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import UIKit

class CardListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // MARK: - Class properties

    @IBOutlet var mCardsTableView: UITableView!
    @IBOutlet var mLoadingActivityIndicator: UIActivityIndicatorView!

    var presenter: CardListViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Initialize UI
        initUI()
    }

    // MARK: - Common functions

    private func initUI() {
        mCardsTableView.delegate = self
        mCardsTableView.dataSource = self
        presenter?.initUI()
    }

    @IBAction func onCardClicked(_ sender: AnyObject) {
        // Do something with event...
        let index = sender.view.tag
        presenter?.onCardClickedAt(index: index)
    }

    // MARK: - TableView delegates

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getCardsCount() ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = presenter?.getCardAt(index: indexPath.row)
        let cell = Bundle.main.loadNibNamed("CardTableViewCell", owner: self, options: nil)?.first as! CardTableViewCell
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onCardClicked))
        cell.bind(item: item!, tapGesture: tapGesture, actionTag: indexPath.row)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

// MARK: - CardListPresenterToViewProtocol

extension CardListViewController: CardListPresenterToViewProtocol {
    func onCardsLoaded() {
        mCardsTableView.reloadData()
    }

    func showActivityIndicator(_ isVisible: Bool) {
        mLoadingActivityIndicator.isHidden = !isVisible
        mCardsTableView.isHidden = isVisible
    }
}

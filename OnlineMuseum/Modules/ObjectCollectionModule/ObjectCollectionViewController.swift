//
//  ObjectCollectionViewController.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Koloda
import UIKit
import SnapKit

class ObjectCollectionViewController: UIViewController {
	var basicArrayOfObjects = [Object]()
	var kolodaView: KolodaView = {
		var kolodaView = KolodaView()
		kolodaView.layer.cornerRadius = 20
		kolodaView.clipsToBounds = true
		return kolodaView
	}()

	private lazy var spiner: UIActivityIndicatorView = {
		var spiner = UIActivityIndicatorView(style: .large)
		spiner.translatesAutoresizingMaskIntoConstraints = false
		return spiner
	}()

	var images = [UIImage]()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .systemBackground
		view.addSubview(kolodaView)
		view.addSubview(spiner)
		kolodaView.dataSource = self
		kolodaView.delegate = self

		self.spiner.snp.makeConstraints { (make) -> Void in
			make.centerY.equalToSuperview()
			make.centerX.equalToSuperview()
		}

		kolodaView.snp.makeConstraints { (make) -> Void in
			make.centerX.equalToSuperview()
			make.centerY.equalToSuperview()
			make.height.width.equalToSuperview()
		}
	}

    // MARK: - Properties
    var presenter: ViewToPresenterObjectCollectionProtocol?
    
}

extension ObjectCollectionViewController: PresenterToViewObjectCollectionProtocol{
	func update(with: Object) {
		DispatchQueue.main.async {
		self.spiner.startAnimating()
		}
		DispatchQueue.main.async {
			self.basicArrayOfObjects.append(with)
			self.kolodaView.reloadData()
			self.spiner.stopAnimating()
		}

	}
	// TODO: Implement View Output Methods
}

extension ObjectCollectionViewController: KolodaViewDelegate {
	func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
		self.spiner.startAnimating()
		basicArrayOfObjects.removeAll()
		presenter?.interactor?.fetchObjects()
		DispatchQueue.main.async {
		koloda.reloadData()
		//	self.spiner.stopAnimating()
		}
	}

	func koloda(_ koloda: KolodaView, didSelectCardAt index: Int) {
		self.presenter?.didSelect(basicArrayOfObjects[index], from: self)
	}
}

extension ObjectCollectionViewController: KolodaViewDataSource {

	func kolodaNumberOfCards(_ koloda:KolodaView) -> Int {
		return basicArrayOfObjects.count
	}

	func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
		return .moderate
	}

	func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
		let string = basicArrayOfObjects[index].primaryImage
		var view = UIImageView()
		if string.isEmpty {
			view = UIImageView(image: UIImage(named: "1"))
		} else {
			view.downloadedFrom(url: string)
		}
		view.layer.cornerRadius = 20
		view.clipsToBounds = true
		return view
	}

	func koloda(_ koloda: KolodaView, viewForCardOverlayAt index: Int) -> OverlayView? {
		return OverlayView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
	}

}


extension UIImageView {

	func downloadedFrom(url: String) {
		guard let url = URL(string: url) else { return }
		URLSession.shared.dataTask(with: url, completionHandler: { (data, _, error) in
			guard let data = data, error == nil, let image = UIImage(data: data) else { return }
			DispatchQueue.main.async { () -> Void in
				self.image = image
			}
		}).resume()
	}
}

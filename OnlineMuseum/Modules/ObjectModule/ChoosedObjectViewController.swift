//
//  ChoosedObjectViewController.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import UIKit
import SnapKit

class ChoosedObjectViewController: UIViewController {

	private lazy var table: UITableView = {
		let table = UITableView(frame: .zero, style: .grouped)
		table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
		return table
	}()


    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .blue
		view.addSubview(table)
		table.delegate = self
		table.dataSource = self

		table.snp.makeConstraints { make in
			make.top.bottom.leading.trailing.equalTo(view)
		}
		
		presenter?.fillView()
    }
	var dataArray = [String]()
	func config(object: [String]) {
		dataArray = object
		table.reloadData()
	}

    // MARK: - Properties
    var presenter: ViewToPresenterChoosedObjectProtocol?
    
}

extension ChoosedObjectViewController: PresenterToViewChoosedObjectProtocol{
    // TODO: Implement View Output Methods
}


extension ChoosedObjectViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return dataArray.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		cell.textLabel?.text = dataArray[indexPath.row]
		return cell
	}
}

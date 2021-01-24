//
//  ViewController.swift
//  Starter2
//
//  Created by kyaw htet aung on 2021/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DetailTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        DetailTableView.dataSource = self
        DetailTableView.register(UINib(nibName: String(describing: Sample1TableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: Sample1TableViewCell.self))
        DetailTableView.register(UINib(nibName: String(describing: Sample2TableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: Sample2TableViewCell.self))
    }


}

extension ViewController:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section
        {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: Sample1TableViewCell.self), for: indexPath) as? Sample1TableViewCell else {
                return UITableViewCell()
            }
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: Sample2TableViewCell.self), for: indexPath) as? Sample2TableViewCell else {
                return UITableViewCell()
            }
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    
    
}

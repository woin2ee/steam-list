//
//  ViewController.swift
//  SteamList
//
//  Created by Jaewon on 2022/05/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.dataSource = self
        table.delegate = self
    }
    
    
}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "myCell")

        var content = cell.defaultContentConfiguration()

        // Configure content.
        content.image = UIImage(named: "OriAndTheWillOfTheWisps")
        content.text = "\(indexPath.row)"
        content.secondaryText = indexPath.description
        // Customize appearance.
        content.imageProperties.tintColor = .purple
        content.imageProperties.maximumSize = CGSize(width: 100, height: 100)

        cell.contentConfiguration = content
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "myCustomCell", for: indexPath) as! MyTableViewCell
//        cell.myLabel.text = indexPath.description
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
}

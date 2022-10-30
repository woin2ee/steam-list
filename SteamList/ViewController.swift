//
//  ViewController.swift
//  SteamList
//
//  Created by Jaewon on 2022/05/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var table: UITableView! {
        didSet {
            table.dataSource = self
            table.delegate = self
        }
    }
    
    let games = Games.getInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailVC") else {
            return
        }
        detailVC.modalTransitionStyle = .coverVertical
        present(detailVC, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameListCell", for: indexPath) as! GameListCell
        
        cell.name.text = games[indexPath.row].name
        cell.thumbnail.image = games[indexPath.row].image
        
        return cell
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }
}

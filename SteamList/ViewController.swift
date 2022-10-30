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
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.description)
        
        // instantiateViewController(withIdentifier:)
        // : identifier 를 이용하여 스토리보드를 View Controller로 인스턴스화하여 반환
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailVC") else {
            print("error")
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

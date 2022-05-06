//
//  DetailViewController.swift
//  SteamList
//
//  Created by Jaewon on 2022/05/07.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissDetailView(_ sender: UIButton) {
        // presentingViewController : 현재 뷰 컨트롤러("DetailViewController")를 제공한(제시한, 띄운) 뷰 컨트롤러("ViewController")
        presentingViewController?.dismiss(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

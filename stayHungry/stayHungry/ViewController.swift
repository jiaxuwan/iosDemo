//
//  ViewController.swift
//  stayHungry
//
//  Created by jiaxu on 2022/2/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let sb = UIStoryboard(name: "Login", bundle: nil)
        if let vc = sb.instantiateInitialViewController() as? LoginViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }


}


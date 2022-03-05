//
//  HomeViewController.swift
//  stayHungry
//
//  Created by jiaxu on 2022/3/1.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var resultLable: UILabel!
    var loginMd: LoginModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginMd = LoginModel.loginModel
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.resultLable.text = "\(self.loginMd?.userName) + \(self.loginMd?.passWord)"
    }
    
    @IBAction func backBtnTab(_ sender: Any) {
        let sb = UIStoryboard(name: "Login", bundle: nil)
        if let vc = sb.instantiateInitialViewController() as? LoginViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
        print(self.navigationController?.viewControllers.count)
    }
    
    
}

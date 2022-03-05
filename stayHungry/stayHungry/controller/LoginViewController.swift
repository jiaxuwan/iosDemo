//
//  LoginViewController.swift
//  stayHungry
//
//  Created by jiaxu on 2022/3/1.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var uName: UITextField!
    @IBOutlet weak var pw: UITextField!
    @IBOutlet weak var LgBtn: UIButton!
    var loginMd: LoginModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginMd = LoginModel.loginModel
    }
    
    @IBAction func lgBtnTabed(_ sender: Any) {
        if !(self.uName.text?.isEmpty ?? true) {
            self.loginMd?.userName = uName.text!
        }
        if !(self.pw.text?.isEmpty ?? true) {
            self.loginMd?.passWord = pw.text!
        }
        self.dismiss(animated: true, completion: {
            let sb = UIStoryboard(name: "Home", bundle: nil)
            if let vc = sb.instantiateInitialViewController() as? HomeViewController {
                self.navigationController?.setViewControllers([vc], animated: true)
            }
        })
    }
    
    
    
    

}

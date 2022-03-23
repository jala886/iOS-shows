//
//  ViewController.swift
//  loginscreen
//
//  Created by Consultant on 3/23/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet private weak var userNameTextField: UITextField!
    @IBOutlet private weak var passWordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        passWordTextField.isSecureTextEntry = true
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        userNameTextField.text = nil
        passWordTextField.text = nil
        
    }
    @IBAction private func loginClick(_ sender: UIButton) {
        guard let userName = userNameTextField.text, !userName.isEmpty,
              let password = passWordTextField.text, !password.isEmpty
        else{
            presentAlert("name or password is empty")
            return
              }
        if userName == "aa" && password == "123"{
            performSegue(withIdentifier: "logined", sender: self)
        }else{
            presentAlert("User name or Password is not correct!")
        }
    }
    private func presentAlert(_ mess:String){
        let alert = UIAlertController(title: "Alert", message: mess, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
}


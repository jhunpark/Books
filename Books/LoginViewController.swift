//
//  LoginViewController.swift
//  Books
//
//  Created by SDS-007 on 2017. 4. 27..
//  Copyright © 2017년 NHIT. All rights reserved.
//

import UIKit

protocol LoginProtocol {
    func completedLogin(name: String)
}

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nameTextField: UITextField!
    
    @IBAction func confirmLogin(_ sender: Any) {
        if let del = delegate, let name = nameTextField.text {
            del.completedLogin(name: name)
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    var delegate: LoginProtocol? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

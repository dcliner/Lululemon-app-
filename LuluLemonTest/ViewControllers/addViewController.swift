//
//  addViewController.swift
//  LuluLemonTest
//
//  Created by Derefaa Cline on 1/16/23.
//

import UIKit

class addViewController: UIViewController {
    
    @IBOutlet weak var btnAddUpdate: UIButton!
    @IBOutlet weak var txtName: UITextField!
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    var item:Item?
    let vm = AddViewModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setUphideKeyboard(){
        let tapGest = UITapGestureRecognizer.init(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGest)
    }
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        txtName.becomeFirstResponder()
    }
    @IBAction func save(_ sender:UIButton){
        let name = txtName.text
        guard let n = name else {
            print ("please enter name")
            return
        }
        vm.saveItem(itemName: n)
        navigationController?.popViewController(animated: true)
        
    }
    

}

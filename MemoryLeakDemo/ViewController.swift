//
//  FoodViewController.swift
//  MemoryLeakDemo
//
//  Created by TaiHsinLee on 2018/8/30.
//  Copyright © 2018年 TaiHsinLee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dataModel = DataModel()
    
    
    @IBAction func switchViewController(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let newRootViewController = storyboard.instantiateViewController(withIdentifier: "AnimalViewController")
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.window?.rootViewController = newRootViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataModel.delegate = self
        dataModel.requestData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: DataModelDelegate {
    func didRecieveDataUpdate(data: String) {
        
        print("--------------------")
        print(data)
    }
}

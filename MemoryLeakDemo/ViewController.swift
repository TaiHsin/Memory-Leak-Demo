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
        let selectData = "test"
        let animalViewController = AnimalViewController.animaliewControllerForText(selectData)
        self.show(animalViewController, sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataModel.delegate = self
        dataModel.requestData()
        
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

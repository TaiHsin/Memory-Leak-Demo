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
    
//    let arrayView: [UIView] = {
//
//        var array: [UIView] = []
//
//        for i in 0...10000 {
//
//            array.append(UIView())
//        }
//
//        return array
//
//    }()
    
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataModel.delegate = self
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        changeButton.layer.cornerRadius = 20
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // closure
//        dataModel.onDataUpdate = { (data: String) in
//            self.useData(data: data)
//        }
    }
    
    // closure
//    private func useData(data: String) {
//        print(data)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func switchViewController(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let newRootViewController = storyboard.instantiateViewController(withIdentifier: "AnimalViewController")
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.window?.rootViewController = newRootViewController
        
//        dataModel.requestData()
    }
    
    deinit {
        print("yo")
    }
}

extension ViewController: DataModelDelegate {
    func didRecieveDataUpdate(data: String) {
        
        print("-------------------")
        print(data)
        print("-------------------")
    }
}

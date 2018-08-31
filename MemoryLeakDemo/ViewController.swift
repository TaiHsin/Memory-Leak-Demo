//
//  FoodViewController.swift
//  MemoryLeakDemo
//
//  Created by TaiHsinLee on 2018/8/30.
//  Copyright © 2018年 TaiHsinLee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let dataModel = DataModel()
    
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataModel.onDataUpdate = { (data) in
            self.userData(data: data)
            print(data)
        }
        dataModel.dataRequest()
    }
    func userData(data: String) {
        print(data)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        changeButton.layer.cornerRadius = 20
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func switchViewController(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let newRootViewController = storyboard.instantiateViewController(withIdentifier: "AnotherViewController")
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.window?.rootViewController = newRootViewController
    }
    
    deinit {
        print("yo")
    }
}

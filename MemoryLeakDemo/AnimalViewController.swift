//
//  AnimalViewController.swift
//  MemoryLeakDemo
//
//  Created by TaiHsinLee on 2018/8/30.
//  Copyright © 2018年 TaiHsinLee. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    static let storyboardName = "Main"
    static let viewControllerIdentifier = "AnimalViewController"
    
    var animalData: [String] = ["Dog", "Cat", "Tiger", "Lion", "Caw"]
    var data: String = ""
    
//    @IBAction func backAction(_ sender: Any) {
//        navigationController?.popViewController(animated: true)
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    class func animaliewControllerForText(_ data: String) -> AnimalViewController {
        let storyboard = UIStoryboard(name: AnimalViewController.storyboardName, bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: AnimalViewController.viewControllerIdentifier)
            as? AnimalViewController else {
                
                return AnimalViewController()
        }
        viewController.data = data
        return viewController
    }
}


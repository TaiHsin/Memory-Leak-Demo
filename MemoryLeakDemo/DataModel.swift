//
//  DataModel.swift
//  MemoryLeakDemo
//
//  Created by TaiHsinLee on 2018/8/30.
//  Copyright © 2018年 TaiHsinLee. All rights reserved.
//

import UIKit

protocol DataModelDelegate: AnyObject {
    func didRecieveDataUpdate(data: String)
}

class DataModel: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        requestData()
    }
    
    var delegate: DataModelDelegate?
//    var onDataUpdate: ((_ data: String) -> Void)?
    
    deinit {
        if self.delegate == nil {
            print("=================")
            print("DataModel gone!!!")
            print("=================")
        }
    }
    
    func requestData() {
        let data = "Data from DataModel"
        delegate?.didRecieveDataUpdate(data: data)
//        onDataUpdate?(data)
    }
}

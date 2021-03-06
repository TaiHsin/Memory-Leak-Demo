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

class DataModel {
    
    var delegate: DataModelDelegate?
    
    deinit {
        print("=================")
        print("DataModel gone!!!")
        print("=================")
    }
    
    func requestData() {
        let data = "Data from DataModel"
        
        delegate?.didRecieveDataUpdate(data: data)
    }
}

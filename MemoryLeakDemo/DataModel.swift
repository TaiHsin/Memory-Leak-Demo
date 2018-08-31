//
//  DataModel.swift
//  MemoryLeakDemo
//
//  Created by TaiHsinLee on 2018/8/30.
//  Copyright © 2018年 TaiHsinLee. All rights reserved.
//

import UIKit

class DataModel {
    
    var onDataUpdate: ((_ data: String) -> Void)?
    
    deinit {
            print("=================")
            print("DataModel gone!!!")
            print("=================")
    }
    
    func dataRequest() {
        let data = "Data from DataModel"
        onDataUpdate?(data)
    }
}

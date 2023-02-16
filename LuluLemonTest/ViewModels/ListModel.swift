//
//  ListModel.swift
//  LuluLemonTest
//
//  Created by Derefaa Cline on 1/15/23.
//

import Foundation

class ListModel{
var arr = [Item]()
    
    func getDatabaseInfo(num: Int){
        let handler = APIHandler.shared
        handler.fetchData{ (arr:[Item], error:Error?) in
            if error == nil{
                if num == 0{
                    self.arr = arr.sorted(by:{(g1,g2) -> Bool in g1.name!.lowercased() < g2.name!.lowercased() })
                }else {
                    self.arr = arr.sorted(by: {( g1, g2 ) -> Bool in
                        g1.time < g2.time
                        
                    }
                    )
                    
                }
            }
        }
    }
    func getCount() -> Int{
        return arr.count
    }
    func getName(index: Int) -> String?{
        return arr[index].name
    }
        
}

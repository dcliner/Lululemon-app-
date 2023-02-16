//
//  APIHandler.swift
//  LuluLemonTest
//
//  Created by Derefaa Cline on 1/15/23.
//

import Foundation
import UIKit
import CoreData

class APIHandler{
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    static let shared = APIHandler()
    private init(){}
    
    func insertItem(name: String, time: Double){
        let i = Item.init(context: appdelegate.getViewContext())
        i.name = name
        i.time = time
        appdelegate.saveContext()
    }
    
    func fetchData(completionHandler: @escaping ([Item], Error?)->()){
        var arr = [Item]()
        let fr = NSFetchRequest<Item>.init(entityName: "Item")
        do{
            arr = try
            appdelegate.getViewContext().fetch(fr)
            completionHandler(arr,nil)
        }catch{
            print(error)
        }
        
    }
    
    
    
    
    
}

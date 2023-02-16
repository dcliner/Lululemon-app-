//
//  AddViewModel.swift
//  LuluLemonTest
//
//  Created by Derefaa Cline on 1/15/23.
//

import Foundation
class AddViewModel{
    
    var item:Item?
    func saveItem(itemName: String){
        let apiHandler = APIHandler.shared
        
        apiHandler.insertItem(name: itemName, time: Date().timeIntervalSince1970)
    }
    
}

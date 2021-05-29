//
//  CurrentUser.swift
//  Singleton
//
//  Created by 유저 on 2021/05/29.
//

import Foundation

class CurrentUser{
    static let shared = CurrentUser()
    var name:String?
    var age:Int?
    private init(){
        
    }
}

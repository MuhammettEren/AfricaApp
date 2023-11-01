//
//  VideoModel.swift
//  AfricaApp
//
//  Created by Muhammet Eren on 27.10.2023.
//

import Foundation
struct Video:Codable,Identifiable{
    let id:String
    let name:String
    let headline:String
    
    var thumbnail:String{
        "video-\(id)"
    }
}

//
//  stuffObject.swift
//  List
//
//  Created by Cuong Nguyen Phuc on 27/07/2022.
//

import Foundation
import SwiftUI
import CoreLocation




struct StuffObject: Codable, Identifiable {
    var id: Int
    var name: String
    var desc: String
    var location: String
    var detailedDesc: String
    var iconName: String
    var iconNameSelected: String
    
    var icon: Image{
        Image(iconName)
    }
    var iconSelected: Image {
        Image(iconNameSelected)
    }
    
    func jsonViewer() -> String {
        return "\(id) \n \(String(describing: name)) \n \(desc) \n \(location)"
        
    }
    
    func encoder() {
        let newEntry = StuffObject(id: 1, name: "name", desc: "desc", location: "location", detailedDesc: "detailedDesc", iconName: "placeholder", iconNameSelected: "placeholder")
        let jsonEncoder = JSONEncoder()
        let jsonData = try! jsonEncoder.encode(newEntry)
        _ = String(data: jsonData, encoding: String.Encoding.utf16)
    }
}







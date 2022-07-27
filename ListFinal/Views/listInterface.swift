//
//  listInterface.swift
//  List
//
//  Created by Cuong Nguyen Phuc on 18/07/2022.
//

import SwiftUI


var ItemList: [String] = []






struct Stuff: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                icon()
                Text("Stuff")
                    .font(.title)
            }
            HStack{
                Text("desc")
                    .font(.subheadline)
                Spacer()
                Text("location")
                    .font(.subheadline)
            }
        }
        .padding()
        VStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray)
                .frame(width: 350, height: 50)
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray)
                .frame(width: 350, height: 50)
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray)
                .frame(width: 350, height: 50)
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray)
                .frame(width: 350, height: 50)
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray)
                .frame(width: 350, height: 50)
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray)
                .frame(width: 350, height: 50)
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray)
                .frame(width: 350, height: 50)
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray)
                .frame(width: 350, height: 50)
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray)
                .frame(width: 350, height: 50)
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.gray)
                .frame(width: 350, height: 50)
            
        }
    }
        
}

struct Stuff_Previews: PreviewProvider {
    static var previews: some View {
        Stuff()
    }
}


class List{
    public var Items: [Item] = []
    public var itemType: String
    init(itemTypeIn: String){
        itemType = itemTypeIn
    }
    func addItem(Item: Item){
        Items.append(Item)
    }
    func iterator()->String{
        var ListString: String = ""
        for i in Items{
            ListString.append("\n")
            ListString.append(i.name)
        }
        return ListString
    }
    
}


struct Item {
    public var name:String
    public var address: String
    public var  desc: String
}

func readJson()->List{
    var newList:List = List.init(itemTypeIn: "")
    let jsonLocation = "/Data/Data.json"
    
    return newList
}
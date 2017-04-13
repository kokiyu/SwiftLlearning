//: Playground - noun: a place where people can play

import UIKit

struct Location{
    
    let latitude: Double
    let longitude: Double
    var placeName: String?
    
    
    init(latitude: Double, longitude: Double, placeName: String){
        
        self.latitude = latitude
        self.longitude = longitude
        self.placeName = placeName
    }
    
    init(latitude: Double, longitude: Double){
        
        self.latitude = latitude
        self.longitude = longitude
    }
    
    init(){
        latitude = 0.0
        longitude = 0.0
    }
    
    // 使用Failable-Initializer
    init?(coordinateString: String){
        
        // 第三种写法，在guard中并列解包
        //只要其中一个不成立，就会返回nil
        guard
            let commaIndex = coordinateString.range(of: ",")?.lowerBound,
            let firstElement = Double(coordinateString.substring(to:commaIndex)),
            let secondElement = Double(coordinateString.substring(from:coordinateString.index(after: commaIndex)))
            else{
                return nil
        }
        
        latitude = firstElement
        longitude = secondElement
    }
    
}


let location = Location(coordinateString: "37.3230,-122.0322")
let location2 = Location(coordinateString: "37.3230,-122.0322")!

let location3 = Location(coordinateString: "37.3230&-122.0322")
let location4 = Location(coordinateString: "apple,-122.0322")
let location5 = Location(coordinateString: "37.3230,apple")
let location6 = Location(coordinateString: "Hello, World!")


// 回忆一下，我们之前也曾使用过Failable Initializer
let a = Int("2")
let b = Int("liuyubobobo")

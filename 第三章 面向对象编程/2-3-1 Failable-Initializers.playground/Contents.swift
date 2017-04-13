//: Playground - noun: a place where people can play

import UIKit

//可失败的构造函数——意义在于可以返回nil的init

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
        
        // 第一种写法，层层嵌套可选型的解包
        // swift 1.0的
        if let commaIndex = coordinateString.range(of: ".")?.lowerBound{
            
            if let firstElement = Double(coordinateString.substring(to: commaIndex)){
                
                if let secondElement = Double(coordinateString.substring(from:coordinateString.index(after: commaIndex))){
                    
                    latitude = firstElement
                    longitude = secondElement
                }
                else{
                    return nil
                }
            }
            else{
                return nil
            }
        }
        else{
            return nil
        }
    }
    
}


let location = Location(coordinateString: "37.3230,-122.0322")
//let location2 = Location(coordinateString: "37.3230,-122.0322")!

let location3 = Location(coordinateString: "37.3230&-122.0322")
let location4 = Location(coordinateString: "apple,-122.0322")
let location5 = Location(coordinateString: "37.3230,apple")
let location6 = Location(coordinateString: "Hello, World!")

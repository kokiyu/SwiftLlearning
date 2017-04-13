//: Playground - noun: a place where people can play

import UIKit

//在类型后面加！表示这是一个隐式的可选性，可以不需要强制解包来使用
var errorMessage: String! = nil

errorMessage = "Not Found"
"The message is " + errorMessage


// String! 是危险的
errorMessage = nil
//"The message is " + errorMessage

// 主要应用在类的成员变量的初始化上
class City{
    
    let cityName: String
    unowned var country: Country
    
    init( cityName: String , country: Country){
        self.cityName = cityName
        self.country = country
    }
}

class Country{
    
    let countryName: String
    var capitalCity: City! //一个Country一定是有City的，但这个时候我们还没有传参进来，所以capitalCity是nil.所以是隐式可选性
    
    init( countryName: String , capitalCity: String ){
        
        self.countryName = countryName
        
        //此处设置capitalCity ，如果之前他不是可选类型，那么调用他的self里的capitalCity不能没有初始值，就会报错。
        self.capitalCity = City(cityName: capitalCity, country: self)
    }
    
    func showInfo(){
        print("This is \(countryName).")
        //在此处打印使用的时候，也不需要解包。
        print("The capital is \(capitalCity.cityName).")
    }
}

let china = Country(countryName: "China", capitalCity: "Beijing")
china.showInfo()

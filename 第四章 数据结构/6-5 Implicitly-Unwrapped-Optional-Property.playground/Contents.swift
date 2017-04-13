//: Playground - noun: a place where people can play

import UIKit

class Country{
    
    let name: String
    //let capital: City
    
    //隐式可选性
    //代表了现在它可以为空，但当我们调用的时候，可以保证它不为空
    var capital: City!
    
    init(countryName: String, capitalName: String){
        self.name = countryName
        
        //如果这里不是隐式可选性的capital，会报错. self 里含有 capital ,capital为空，怎么可以去使用 self 初始化capital呢.一个悖论
        
        self.capital = City(cityName: capitalName, country: self)
        print("Country", name, "is intialized.")
    }
    
    deinit{
        print("Country",name,"is being deinitialized!")
    }
}

class City{
    
    let name: String
    unowned let country: Country
    
    init(cityName: String, country: Country){
        self.name = cityName
        self.country = country
        print("City", name, "is intialized.")
    }
    
    deinit{
        print("City",name,"is being deinitialized!")
    }
}

var china: Country? = Country(countryName: "China", capitalName: "Beijing")
china = nil
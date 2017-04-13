//: Playground - noun: a place where people can play

import UIKit

class Person{
    
    var firstName: String
    var lastName: String
    
    // 如果没有初值，Class不提供默认的构造函数！
    init(firstName: String, lastName: String){
        
        self.firstName = firstName
        self.lastName = lastName
    }
    
    init?(fullName: String){
        
        guard
            let spaceIndex = fullName.range(of: " ")?.lowerBound
            else{
                return nil
        }
        
        self.firstName = fullName.substring(to: spaceIndex)
        self.lastName = fullName.substring(from:(after:spaceIndex))
    }
    
    func fullName() -> String{
        
        return firstName + " " + lastName
    }
}

let person1 = Person(firstName: "Alexander", lastName: "Hamilton")
person1.fullName()

let person2 = Person(fullName: "Steve Jobs")
//: Playground - noun: a place where people can play

import UIKit

//构造函数的继承
//如果子类实现了父类所有的指定构造函数;则自动继承父类的所有便利构造函数

class Avatar{
    
    var name: String
    var life = 100{
        didSet{
            if self.life <= 0{
                self.isAlive = false
            }
            if self.life > 100{
                self.life = 100
            }
        }
    }
    var isAlive: Bool = true
    var description: String{
        return "I'm Avatar \(name)."
    }
    
    init(name: String){
        self.name = name
    }
    
    convenience init(firstName: String, lastName: String){
        self.init(name: firstName + " " + lastName)
    }
    
    func beAttacked( attack: Int ){
        self.life -= attack
    }
}

class User: Avatar{
    
    var score = 0
    var level = 0
    override var description: String{
        return "I'm User \(name)."
    }
    var group: String
    
    init( name: String , group: String){
        
        self.group = group
        super.init(name: name)
        
        if group == ""{
            self.getScore(score: -10)
        }
    }
    
    convenience init(group: String){
        
        let name = User.generateUserName()
        self.init(name:name , group: group)
    }
    
    convenience override init(name: String){
        self.init(name: name , group: "")
    }
    
    static func generateUserName() -> String{
        return "Player" + String(arc4random()%1_000_000)
    }
    
    final func getScore(score: Int){
        self.score += score
        if score > level * 100 {
            level += 1
        }
    }
}

//如果子类没有实现父类的任何指定构造函数，自动继承父类的所有指定构造函数
class Monster: Avatar{
    
    convenience init( type: String){
        self.init(name: type)
    }
}


let user = User(firstName: "John", lastName: "Snow")

let zombie = Monster(type: "Zombie")
let zombie2 = Monster(name: "Zombie")
let zombie3 = Monster(firstName: "Mr.", lastName: "Zombie")
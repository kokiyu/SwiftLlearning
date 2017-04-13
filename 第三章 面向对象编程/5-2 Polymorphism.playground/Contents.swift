//: Playground - noun: a place where people can play

import UIKit

//简单的说，就是用父类的引用指向子类的对象。多态可以理解成“一个接口，多种实现”，就是同一种事物表现出的多种形态，多态允许将子类的对象当作父类的对象使用，某父类型的引用指向其子类型的对象,调用的方法是该子类型的方法。

//大白话：多态就是一个类可以有多种属性，大多数的属性是从它爸爸那里继承来的，然后都是一个爸爸的类，可以进行统一处理和管理

class Avatar{
    
    var name: String
    var life = 100
    var isAlive: Bool = true
    
    init(name: String){
        self.name = name
    }
    
    func beAttacked(_ attack: Int ){
        life -= attack
        if life <= 0{
            isAlive = false
        }
    }
}

class User: Avatar{
    
    var score = 0
    var level = 0
    
    func getScore(score: Int){
        self.score += score
        if score > level * 100 {
            level += 1
        }
    }
}

final class Magician: User {
    
    var magic = 100
    
    func heal( user: User ){
        user.life += 10
    }
    
}

final class Warrior: User{
    
    var weapon: String?
}

class Monster: Avatar{
    
    func attack( user: User , amount: Int ){
        user.beAttacked(amount)
    }
}

final class Zombie: Monster{
    
    var type = "Default"
}


let player1 = Magician(name: "Harry Potter")
let player2 = Warrior(name: "liuyubobobo")

let zombie = Zombie(name: "default zombie1")

let monster = Monster(name: "monster")


// 多态
func printBasicInfo(_ avatar: Avatar ){
    
    print("The avatar's name is \(avatar.name)")
    print("The life is \(avatar.life). He is \( (avatar.isAlive) ? "still alive" : "dead" )" )
    print("======")
}

printBasicInfo(player1)
printBasicInfo(player2)
printBasicInfo(zombie)
printBasicInfo(monster)


let avatarArr: [Avatar] = [ player1 , player2 , zombie , monster ]
for avatar in avatarArr{
    avatar.life -= 10
}


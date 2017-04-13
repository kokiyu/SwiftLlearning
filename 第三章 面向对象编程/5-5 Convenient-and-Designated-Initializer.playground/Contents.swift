//: Playground - noun: a place where people can play

import UIKit

//构造函数可以有默认参数
//便利构造函数是指在构造函数中进行了部分逻辑运算，然后再使用自身的其他部分的构造函数

//用OC的例子来感受一下
/*
 便利构造器：是类方法，封装了alloc和init方法，使用起来更方便
 例如：
 + (id)VnHeroWithBlood:(int)blood
 {
 VnHero *hero = [[VnHero alloc] init];
 [hero setVnHeroBlood:blood];// 调用的setter方法
 return hero; // 这里已经不是以前的self了
 }
 
 主函数声明：
 // 调用便利构造器
 VnHero * vn = [VnHero VnHeroWithBlood:67];
 NSLog(@"blood = %i", [vn blood])
 */

//和便利构造函数对应的就是指定构造函数

//便利构造函数不能调用父类方法，只能调用指定的函数。



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
    
    init( name: String , group: String = ""){
        
        // 构造初值
        self.group = group
        super.init(name: name)
        
        // 进一步完善
        if group == ""{
            self.getScore(score: -10)
        }
    }
    
    convenience init(group: String = ""){
        
        let name = User.generateUserName()
        self.init(name:name , group: group)
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

final class Magician: User {
    
    static let houses = ["Gryffindor","Hufflepuff","Ravenclaw","Slytherin"]
    var magic = 100
    override var description: String{
        return "I'm Magician \(name)."
    }

    //只要在构建时没有调用到自身的逻辑和函数， 都是符合规则的
    
    override init(name: String, group: String){
        
        for houseName in Magician.houses{
            if group == houseName{
                super.init(name: name, group: group)
                return
            }
        }
        
        let group = Magician.houses[Int(arc4random()%4)]
        super.init(name: name, group: group)
    }
    
    func heal( user: User ){
        user.life += 10
    }
}

final class Warrior: User{
    
    static let weapons = ["Sword","Axe","Spear"]
    var weapon: String
    override var description: String{
        return "I'm Warrior \(name)."
    }
    
    init(name: String , group: String, weapon: String){
        self.weapon = weapon
        super.init(name: name, group: group)
    }
    
    //便利构造函数，在构造函数中还调用另外一个构造函数
    convenience override init(name: String, group: String) {
        let weapon = Warrior.weapons[Int(arc4random()%3)]
        self.init(name: name, group: group, weapon: weapon)
    }
    
    override func beAttacked(attack: Int) {
        self.life -= attack/2
    }
}


let player1 = Warrior(name: "liuyubobobo", group: "imooc")
player1.weapon
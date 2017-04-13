//: Playground - noun: a place where people can play

import UIKit

class VendingMachine{
    
    struct Item{
        
        enum `Type`: String{
            case Water
            case Cola
            case Juice
        }
        
        let type:  Type
        let price: Int
        var count: Int
    }
    
    enum error: Error, CustomStringConvertible{
        case NoSuchItem
        case NotEnoughMoney(Int)
        case OutOfStock
        
        var description: String{
            switch self {
            case .NoSuchItem:
                return "Not Such Item"
            case .NotEnoughMoney(let price):
                return "Not Enough Money. " + String(price) + " Yuan needed."
            case .OutOfStock:
                return "Out of Stock"
            }
        }
    }
    
    private var items = [ "Mineral Water" : Item(type: .Water, price:2, count:10),
                          "Coca Cola" : Item(type: .Cola, price: 3, count: 5),
                          "Orange Juice" : Item(type: .Juice, price: 5, count: 3)]
    
    
    func vend(itemName: String, money: Int) throws -> Int{
        
        //defer是逆序执行的，先执行最下面的，再返回执行最上面的。
        defer{
            print("Have a nice day")
        }
        
        guard let item = items[itemName] else{
            throw VendingMachine.error.NoSuchItem
        }
        
        guard money >= item.price else{
            throw VendingMachine.error.NotEnoughMoney(item.price)
        }
        
        guard item.count > 0 else{
            throw VendingMachine.error.OutOfStock
        }
        
        //如果上面有语句被执行，下面的defer就不会执行，会逆序找到上面defer并执行.
        
        defer{
            print("Thank you")
        }
        
        dispenseItem(itemName: itemName)
        
        return money - item.price
    }
    
    private func dispenseItem(itemName: String){
        items[itemName]!.count -= 1
        print("Enjoy your",itemName)
    }
    
    func display(){
        print("Want something to drink?")
        for itemName in items.keys{
            print( "*" , itemName )
        }
        print("=============================")
    }
}


let vendingMachine = VendingMachine()

var pocketMoney = 4
do{
    pocketMoney = try vendingMachine.vend(itemName: "Coca Cola", money: pocketMoney)
    print(pocketMoney,"Yuan left")
}
catch let error as VendingMachine.error{
    print(error)
}
catch{
    print("Error occured during vending.")
}


/*
 defer 用在退出某个scope必须处理某些事情的时候
 最常见的使用场景：文件处理
 defer不一定必须用在Error Handling的情况下
 但是在处理错误的时候使用 defer 是最常见的情况
 defer本质是一种转移控制, 和 break, continue 一样
 */
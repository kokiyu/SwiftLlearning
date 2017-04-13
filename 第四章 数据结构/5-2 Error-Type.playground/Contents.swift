//: Playground - noun: a place where people can play

import UIKit

// 之前使用可选型表示错误 - 错误时返回空
Int("2")
Int("Hello, Swift")

// 但空不一定是错误
"Hello, Swift".range(of: "Hi")

// 更符合语意的表示：使用Swift的Error Handling机制
// 比如文件读取; 网络连接 等等等等

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
    
    enum error: Error{
        case NoSuchItem
        case NotEnoughMoney(Int)
        case OutOfStock
    }
    
    private var items = [ "Mineral Water" : Item(type: .Water, price:2, count:10),
                          "Coca Cola" : Item(type: .Cola, price: 3, count: 5),
                          "Orange Juice" : Item(type: .Juice, price: 5, count: 3)]
    
    
    func vend(itemName: String, money: Int) throws -> Int{
        
        guard let item = items[itemName] else{
            throw VendingMachine.error.NoSuchItem
        }
        
        guard money >= item.price else{
            throw VendingMachine.error.NotEnoughMoney(item.price)
        }
        
        guard item.count > 0 else{
            throw VendingMachine.error.OutOfStock
        }
        
        dispenseItem(itemName: itemName)
        
        return money - item.price
    }
    
    private func dispenseItem(itemName: String){
        items[itemName]!.count -= 1
        print("Enjoy your",itemName)
    }
}

let newMechine:VendingMachine = VendingMachine()
//这里是强制解包，关于异常如何处理，看下一章
try newMechine.vend(itemName: "Orange Juice", money: 10)


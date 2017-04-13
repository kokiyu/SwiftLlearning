//: Playground - noun: a place where people can play

import UIKit

func buy( money: Int , price: Int , capacity: Int , volume: Int){
    
    if money >= price{
        if capacity >= volume{
            print("I can buy it!")
            print("\(money-price) Yuan left.")
            print("\(capacity-volume) cubic meters left")
        }
        else{
            print("No enough capacity")
        }
    }
    else{
        print("Not enough money")
    }
}


func buy2( money: Int , price: Int , capacity: Int , volume: Int){
    //guard是保卫的意思，后面跟的就是要保卫的条件
    guard money >= price else{
        print("Not enough money")
        return
    }
    
    guard capacity >= volume else{
        print("Not enough capacity")
        return
    }
    
    print("\(money-price) Yuan left.")
    print("\(capacity-volume) cubic meters left")
}

let money = 100
let price = 70

let capacity = 50
let volume = 20

//swift2
//buy( money, price: price, capacity: capacity, volume: volume)
//buy2( money, price: price, capacity: capacity, volume: volume)

//swift3中函数的第一参数名在调用的时候须显示,如果显示的声明函数第一个参数名不需要的话也是可以的，参考下面buy3函数
buy( money: money, price: price, capacity: capacity, volume: volume)
buy2( money: money, price: price, capacity: capacity, volume: volume)


//swift3 中，使用_(下划线)显示的声明第一个参数可以省略，在调用的时候可以省略第一个参数名
func buy3(_ money: Int , price: Int , capacity: Int , volume: Int){
    
    guard money >= price else{
        print("Not enough money")
        return
    }
    
    guard capacity >= volume else{
        print("Not enough capacity")
        return
    }
    
    print("\(money-price) Yuan left.")
    print("\(capacity-volume) cubic meters left")
}

buy3( money, price: price, capacity: capacity, volume: volume)

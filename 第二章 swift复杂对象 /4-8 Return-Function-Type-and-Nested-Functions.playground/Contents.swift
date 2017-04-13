//: Playground - noun: a place where people can play

import UIKit

func tier1MailFeeByWeight( weight: Int) -> Int{
    
    return 1*weight
}

func tier2MailFeeByWeight( weight: Int) -> Int{
    
    return 3*weight
}


//这个函数这样来看，传入了一个值（weight:Int）,传出了一个函数(Int)->(Int)

func chooseMailFeeCalculationByWeight( weight: Int) -> (Int) -> Int{
    
    return weight <= 10 ? tier1MailFeeByWeight : tier2MailFeeByWeight
}

func feeByUnitPrice( price: Int , weight: Int ) -> Int{
    
    
    
    let mailFeeByWeight = chooseMailFeeCalculationByWeight(weight: weight)
    return mailFeeByWeight( weight ) + price * weight
}

feeByUnitPrice(price: 50, weight: 20)


//因为chooseMailFeeCalculationByWeight是辅助feeByUnitPrice的辅助函数,可在feeByUnitPrice里面写入函数,属于函数的嵌套

//func feeByUnitPrice( price: Int , weight: Int ) -> Int{
//    
//    func chooseMailFeeCalculationByWeight( weight: Int) -> (Int) -> Int{
//        
//        return weight <= 10 ? tier1MailFeeByWeight : tier2MailFeeByWeight
//    }
//    
//    let mailFeeByWeight = chooseMailFeeCalculationByWeight(weight: weight)
//    return mailFeeByWeight( weight ) + price * weight
//}

//这样只对外暴露了一个接口

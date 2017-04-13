//: Playground - noun: a place where people can play

import UIKit

//控制转移
//break,contine,fallthrough

// x^4 - y^2 = 15*x*y
//只求一个解即可

var gotAnswer = false
for m in 1...300{
   
    for n in 1...300{
        if m*m*m*m - n*n == 15*m*n{
            print(m,n)
            gotAnswer = true
            break
       }
    
    }
    
    if gotAnswer{
        break
    }
}


findAnswer:
    for m in 1...300{
        for n in 1...300{
            
            if m*m*m*m - n*n == 15*m*n{
                
                print(m,n)
                break findAnswer//结束掉了findAnswer包裹住的循环，continue也可以像这样来使用
            }
        }
}
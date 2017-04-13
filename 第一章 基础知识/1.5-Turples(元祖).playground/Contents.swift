//: Playground - noun: a place where people can play

import UIKit

//Turple 

//将多个不同的值集合成一个数据
//可以有任意多个值
//不同的值可以是不同的类型
var point = ( 5 , 2 )
var httpResponse = (404,"Not Found")

//显式指定类型
var point2:(Int,Int,Int) = (10,5,2)
var httpResponse2:(Int,String)=(200,"OK")

//解包
let (x,y) = point
x
y

var  (statusCode, statusMessage) = httpResponse
statusCode = 506
statusMessage

point.0
point.1

//为元祖的各个分类并且命名
let point3 = (x:3 ,y:2)
point3.x
point3.y

let point4:(x:Int,y:Int) = (10,5)
point4.x
point4.y

let loginResult = (true ,"admin")
//使用下划线忽略不需要的值
let (loginSuccess,_) = loginResult

if loginSuccess {
    print(loginResult.1)
}
else
{
    print("登录失败")
}




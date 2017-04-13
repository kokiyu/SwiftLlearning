//: Playground - noun: a place where people can play

import UIKit

var errorCode :String? = "404"
print(errorCode as Any)


// 可选型不可以直接使用
//"The errorCode is" + errorCode

//Unwrap 解包
//直接在后面加！，代表开发者知道该变量是可选类型，可能是nil，但开发者知道这个值目前不为nul，强行解包
"the errorCode is" + errorCode!

// 强制解包是危险的
errorCode = nil
//"The errorCode is" + errorCode!



// 判断不是nil
if errorCode != nil{
    "The errorCode is " + errorCode!
}
else{
    "No error"
}


// if let 解包
if let unwrappedErrorCode = errorCode{
    "The errorCode is " + unwrappedErrorCode
}
else{
    "No error"
}

// 可以使用相同的变量名
if let errorCode = errorCode{
    "The errorCode is " + errorCode
}
else{
    "No error"
}


// 使用if-let同时解包多个变量
var errorMessage:String? = "Not found"

if let errorCode = errorCode{
    if let errorMessage = errorMessage{
        "The errorCode is " + errorCode + "\nThe errorMessage is " + errorMessage
    }
}

if let errorCode = errorCode ,
   let errorMessage = errorMessage{
    "The errorCode is " + errorCode + "\nThe errorMessage is " + errorMessage
}


// where
if let errorCode = errorCode , let errorMessage = errorMessage , errorCode == "404"{
    print("Page not found")
}

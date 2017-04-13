//: Playground - noun: a place where people can play

import UIKit

//1.Optional-Chaining 可选性链
var errorMessage:String? = "Not Found"
if let errorMessage = errorMessage{
    errorMessage.uppercased()
}

//对errorMessage尝试解包，如果解包成功，调用uppercaseString
errorMessage?.uppercased()

//我确定errorMessage不是Nil,强制解包并使用String方法
errorMessage!.uppercased()

var uppercaseErrorMessage = errorMessage?.uppercased()

if let uppercaseErrorMessage = errorMessage{
    uppercaseErrorMessage.startIndex
}

// Optional chaining 也可以使用!
let uppercaseErrorMessage2 = errorMessage!.uppercased()


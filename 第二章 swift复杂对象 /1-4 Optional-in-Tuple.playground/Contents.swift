//: Playground - noun: a place where people can play

import UIKit

//error1不是可选类型，error1.errorMessage是可选类型
var error1:(errorCode: Int, errorMessage: String?) = ( 404 , "Not Found")
error1.errorMessage = nil

//error2整体是可选类型，errorCode.errorCode error1.errorMessage不是可选类型
var error2:(errorCode: Int, errorMessage: String)? = ( 404 , "Not Found")
error2 = nil

//error3是可选类型，error1.errorMessage是可选类型
var error3:(errorCode: Int, errorMessage: String?)? = ( 404 , "Not Found")
error3 = nil
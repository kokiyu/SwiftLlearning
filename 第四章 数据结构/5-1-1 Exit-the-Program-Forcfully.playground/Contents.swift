//: Playground - noun: a place where people can play

import UIKit

//断言只在测试环境中起作用，真机调试不会出现
//assert 如括号里的条件为真，什么也不会发生
assert(1>0)
//assert 括号里的条件为假，报错
assert(1>0, "Error")

//直接提示出错
//assertionFailure("Error")

//preconditio在运行中如果满足错误条件，也会被强制退出

precondition(1>0)
precondition(1>0, "Error")

//严重的错误，直接报错
fatalError("Error")


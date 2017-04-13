//: Playground - noun: a place where people can play

import UIKit

//public:可以被模块外访问

//internal:可以被本模块访问

//private:可以被本文件访问

//同一个文件下，可以理解为在同一个模块下

let app = App(name: "My First App")
app.show()

app.switchMode()
app.show()

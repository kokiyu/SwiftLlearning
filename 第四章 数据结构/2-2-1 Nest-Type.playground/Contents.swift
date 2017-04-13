//: Playground - noun: a place where people can play

import UIKit

//嵌套类型

class UI{
    
    enum Theme{
        case DayMode
        case NightMode
    }
    
    var fontColor: UIColor!
    var backgroundColor: UIColor!
    var themeMode: Theme = .DayMode{
        didSet{
            self.changeTheme(themeMode: self.themeMode)
        }
    }
    
    init(){
        self.themeMode = .DayMode
        self.changeTheme(themeMode: self.themeMode)
        
    }
    
    init(themeMode: Theme){
        self.themeMode = themeMode
        self.changeTheme(themeMode: themeMode)
    }
    
    func changeTheme( themeMode: Theme ){
        switch(themeMode){
        case .DayMode:
            fontColor = UIColor.black
            backgroundColor = UIColor.white
        case .NightMode:
            fontColor = UIColor.white
            backgroundColor = UIColor.black
        }
    }
}

let ui = UI()
ui.themeMode
ui.fontColor
ui.backgroundColor

ui.themeMode = .NightMode
ui.themeMode
ui.fontColor
ui.backgroundColor

// 以前就见过Nest Type
// String.Index
let str = "Hello World"
let index = str.index(str.startIndex, offsetBy: 5)
str.substring(to: index)

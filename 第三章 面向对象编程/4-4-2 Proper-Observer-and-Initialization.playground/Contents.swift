//: Playground - noun: a place where people can play

import UIKit

// 注意，didSet和willSet不会在初始化阶段调用的。
// 因此，didSet和willSet对常量let没有意义，因为let只在初始化阶段赋值
enum Theme{
    case DayMode
    case NightMode
}

class UI{
    //我不希望fontColor 和 backgroundColor 没有值，但是在初始化的时候只能为nil，所以用！

    var fontColor: UIColor!
    var backgroundColor: UIColor!
    var themeMode: Theme = .DayMode{
        
        didSet{
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
    
    init(){
        self.themeMode = .DayMode
        // 需要初始化其他变量
        self.fontColor = UIColor.black
        self.backgroundColor = UIColor.white
    }
    
    init(themeMode: Theme){
        self.themeMode = themeMode
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
ui.fontColor
ui.backgroundColor



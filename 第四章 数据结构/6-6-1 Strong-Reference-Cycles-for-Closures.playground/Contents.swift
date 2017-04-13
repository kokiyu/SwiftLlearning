//: Playground - noun: a place where people can play

import UIKit

class SmartAirConditioner{
    
    var temperature: Int = 26
    var temperatureChange: ((Int) -> ())!
    
    init(){
        temperatureChange = { newTemperature in
            //这里对self 进行了强引用，所以无法释放
            if abs(newTemperature - self.temperature) >= 10{
                print("It's not healthy to do it!")
            }
            else{
                self.temperature = newTemperature
                print("New temperature \(self.temperature) is set!")
            }
        }
    }
    
    deinit{
        print("Smart Air-conditioner is being deinitialized!")
    }
}

var airCon: SmartAirConditioner? = SmartAirConditioner()
airCon?.temperature
airCon?.temperatureChange(100)

airCon?.temperatureChange(24)

airCon?.temperatureChange(12)

airCon = nil
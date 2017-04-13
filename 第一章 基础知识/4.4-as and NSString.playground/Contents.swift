//: Playground - noun: a place where people can play

import UIKit

let str = "Hello, swift"

// 本小节所涉及的API，大多数也经过了Swift3的化简。请大家体会Swift3对调用的字符串方法名称的化简。
// 大小写转换
//swift2: str.uppercaseString
str.uppercased()

//swift2: str.lowercaseString
str.lowercased()

//swift2: str.capitalizedString
str.capitalized

// 使用String的方法
//swift2: str.containsString("Hello")

//hello是否是原字符串str的子串
str.contains("Hello")

str.hasPrefix("Hello")
str.hasSuffix("swift")


// String的缺点
let s = "one third is \(1.0/3.0)"
print(s)

// 注意：现在Swift中的String和OC中的NSString之间的界限越来越小，如使用format初始化一个String，在Swift2中已经可以了。具体代码如下：
let ss = String(format: "one third is %.2f", 1.0/3.0)


// as String
let s2 = NSString(format: "one third is %.2f😀", 1.0/3.0) as String
print(s2)


// NSString
var s3:NSString = "one third is 0.33😀"
//swift2: s3.substringFromIndex(4)
s3.substring(from: 4)

//swift2: s3.substringToIndex(3)
s3.substring(to: 3)

//swift2: s3.substringWithRange(NSMakeRange(4, 5))
s3.substring(with: NSMakeRange(4, 5))


// String和NSString的不同
let s4 = "😀😀😀"
let s5:NSString = "😀😀😀"
s4.characters.count
s5.length


let s6 = "   --- Hello -----    " as NSString
//swift2: s6.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: " -"))
//通过集合去除不要的
s6.trimmingCharacters(in: CharacterSet(charactersIn: " -"))

//swift2: let range = s6.rangeOfString("ll")
let range = s6.range(of: "ll")
range.location
range.length

//swift2: s6.stringByReplacingOccurrencesOfString("He", withString: "Apo")
s6.replacingOccurrences(of: "He", with: "Apo")
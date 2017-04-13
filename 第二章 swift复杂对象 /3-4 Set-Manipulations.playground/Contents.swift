//: Playground - noun: a place where people can play

import UIKit

var skillsOfA: Set<String> = ["swift","OC"]
var skillsOfB: Set<String> = ["HTML","CSS","Javascript"]
var skillsOfC: Set<String> = []


// 用let声明的常量集合不可被修改

// 添加元素
skillsOfC.insert("swift")
skillsOfC.insert("HTML")
skillsOfC.insert("CSS")

// 重复添加元素
skillsOfC.insert("CSS")

// 删除元素,会返回删除的值
skillsOfC.remove("CSS")

// 删除没有的元素
skillsOfC.remove("Javascript")

if let skill = skillsOfC.remove("HTML"){
    print("HTML is removed.")
}

skillsOfC.insert("HTML")
skillsOfC.insert("CSS")

//skillsOfC.removeAll()

// 并
skillsOfA.union(skillsOfC)
//union不会改变原来的集合本身
skillsOfA

//skillsOfA.formUnion(skillsOfC)
//formUnion会改变原来的集合
//skillsOfA


//交集
skillsOfA.intersection(skillsOfC)

//skillsOfA.formIntersection(skillsOfC)

//减去
skillsOfA.subtract(skillsOfC)
//skillsOfA.subtractInPlace(skillsOfC)

// 异或(两个集合的并集 - 两个集合的交集)
skillsOfA.symmetricDifference(skillsOfC)
//skillsOfA.formSymmetricDifference(skillsOfC)

// 操作对象可以是数组
skillsOfA.union(["java","android"])

skillsOfA.insert("swift")
skillsOfB
skillsOfC
var skillsOfD: Set = ["swift"]

// 子集
skillsOfD.isSubset(of: skillsOfA)
//真子集-isStrictSubset
skillsOfD.isStrictSubset(of: skillsOfA)

// 超集
skillsOfA.isSuperset(of: skillsOfD)
skillsOfA.isStrictSuperset(of: skillsOfD)


// 判断相离 -没有公共的元素
skillsOfA.isDisjoint(with:skillsOfB)
skillsOfA.isDisjoint(with: skillsOfC)



//: Playground - noun: a place where people can play

import UIKit

//集合和数组的不同：
//集合里的元素不可以重复，数组可以
//集合里的元素无序，数组有序

// 集合的初始化
// 必须显示声明类型，不然会被认为是数组

var skillsOfA:Set<String> = ["swift","OC"]

//申明空的集合，需要显式指定类型
var emptySet1:Set<Int> = []
var emptySet2  = Set<Double>()

//集合里的元素都是无序且唯一的
var vowels = Set(["A","E","I","O","U","U"])
// var vowels = Set<String>(["A","E","I","O","U"])

var skillsOfB: Set = ["HTML","CSS","JavaScript"]

// 集合元素个数
skillsOfA.count

var set: Set = [2,2,2,2]
set.count


// 集合是否为空
skillsOfB.isEmpty
emptySet1.isEmpty

// 快速获得集合中的一个元素，随机取出的，因为集合是无序的
let e = skillsOfA.first


// 包含
skillsOfA.contains("swift")


// 遍历
for skill in skillsOfB{
    print(skill)
}


// 比较
let setA: Set = [1,2,3]
let setB: Set = [3,2,1,1,1,1]
setA == setB










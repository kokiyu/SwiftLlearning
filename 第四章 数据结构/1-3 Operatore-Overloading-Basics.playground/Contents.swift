 //: Playground - noun: a place where people can play

import UIKit

 struct Vector3{
    
    var x:Double = 0.0
    var y:Double = 0.0
    var z:Double = 0.0
    
    subscript(index:Int) -> Double?{
        
        get{
            switch index{
            case 0: return x
            case 1: return y
            case 2: return z
            default: return nil
            }
        }
        
        set{
            guard let newValue = newValue else{ return }
            
            switch index{
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            default: return
            }
        }
    }
    
    subscript(axis:String) -> Double?{
        
        get{
            switch axis{
            case "x","X": return x
            case "y","Y": return y
            case "z","Z": return z
            default: return nil
            }
        }
        
        set{
            guard let newValue = newValue else{ return }
            
            switch axis{
            case "x","X": x = newValue
            case "y","Y": y = newValue
            case "z","Z": z = newValue
            default: return
            }
        }
 }
 }
 
 func + (left: Vector3, right: Vector3) -> Vector3{
    return Vector3(x: left.x + right.x, y: left.y + right.y, z: left.z + right.z)
 }

 func - (left: Vector3, right: Vector3) -> Vector3{
    return Vector3(x: left.x - right.x, y: left.y - right.y, z: left.z - right.z)
 }
 
 func * (left: Vector3, right: Vector3) -> Double{
    return left.x * right.x + left.y * right.y + left.z * right.z
 }
 
 func * (left: Vector3, a: Double) -> Vector3{
    return Vector3(x: left.x * a, y: left.y * a, z: left.z * a)
 }
 
 func * (left: Double, a: Vector3) -> Vector3{
    //这里相当于是函数的重载，调用了上面那个函数
    return  a * left
    
 }
 
 //函数的重载的典型应用
 func += (left:inout Vector3, right: Vector3){
    left = left + right
 }
 
 // = 是不可以被重载的，它跟底层的内存有关
 
 //这里加prefix的意义在于， - 号是单目运算符，没有左右之分，-号永远出现在变量的前面，所以加上prefix
  prefix func - (vector:Vector3) -> Vector3{
  
    return Vector3(x:-vector.x,y:-vector.y,z:-vector.z)
    
 }
 
 var va = Vector3(x:1.0, y:2.0, z:3.0)
 
 var vb = Vector3(x:3.0, y:2.0, z:1.0)
 
 va + vb
 
 va - vb
 
 va * 1.0
 
 -1.0 * va
 
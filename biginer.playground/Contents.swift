//print("Hello, World")

//func Hello(){
//    print("Hello")
//}

//let a : Int = 12
//var b :String = "jfdksa"

//print(a, b)
//var a : Int = 12
//var b : String = "荒川"
//print(a)
//var a1 = Int(b)
//print(a1)

//var hello : String = "こんにちは"
//var name : String = "荒川歩夢"
//
//print(hello + "、私は" + name + "です。")
//
//var s1 : String = """
//五月雨を
// 集めて早し
//最上川
//"""
//
//print(s1)

//import Foundation
//
//let baseString : String = "ABC"
//
//let options = String.CompareOptions.caseInsensitive
//let order = "bca".compare(baseString, options: options)
//
//if order == ComparisonResult.orderedSame{
//    print("同じ並び")
//}else{
//    print("違う並び")
//}
//
//print(type(of: options))
//print(type(of: order))


//var a : Optional<Int> = 12
//var b : String = "aaaa"
//
//print(a)
//a = Int(b)
//print(a)
//
//var c : Int? = Optional.none
//print(c)
//
//var d : String? = nil
//
//print(d)

//var a : Int? = nil
//var b : Int? = nil
//
//a = 1
//b = 2
//
//if let a = a{
//    if let b = b{
//        print(a, b)
//    }
//}

//var a: Int? = 3
//var num: Int = 999
//var a: Int? = nil
//
//print(a)
//
//var b = a ?? num
//
//print(b)

//print("aaaaaa")


//var a: Int? = nil
//var b: Int? = 5

//print(a)
//print(b!)

//print(a! + b!)

//var a: Int? = nil
//var a: Int? = 3
//if let a = a{
//    print(a)
//}else{
//    print("アンラップ不可")
//}


//let optionalDouble = Optional(1.0)
////print(optionalDouble)
//let optionalIsInfinite: Bool?
//
//if let double = optionalDouble{
//    optionalIsInfinite = double.isInfinite
//}else{
//    optionalIsInfinite = nil
//}
//
//print(String(describing: optionalIsInfinite))

//var a: Int? = 70
//
//if let num = a{
//    print(num)
//}

//let optionalRange = Optional(1...10)
//
//let containsSeven = optionalRange?.contains(10)
//
//print(String(describing: containsSeven))
//
//var a: Int? = 12
//print(a)
//a = a.flatMap({value in value * 3})
//
//print(a)
//
//if let num = a{
//    print(num * 3)
//}

//var taple: (Int, Int, Int)
//taple.0 = 1
//taple.1 = 2
//taple.2 = 3
//
//print(taple)

//var s: String = "aaaaa"
//var i: Int = 12
//print(s)
//var a: Any = s
//print(type(of: a))// String
//a = i
//print(type(of: a))//Int
////print(a + 1) //　Any型なのでできない

//var s: String = "Aaaaa"
//var a = s as Any
//
//print(a)

//var a: Any = 12
//var i = a as? Int
//var s = a as? String
//print(i)
//print(s)
//var i1 = a as! Int
////s = a as! ・String
//print(i1)


//var a: Any = 12
//print(a is String)

//var a:Any = 12
//var b:Int? = a as? Int
//print(a is Int)

//var s: String = "荒川歩夢"
//var a = s as Any
//
//print(type(of: a))
//
//a = 12

//print(a + 1) // aはAny型なので演算できない
//var s2:String? = a as? String
//var num1: Int? = a as? Int
//if let num = s2{
//    print(num)
//}else if let num = num1{
//    print(num)
//}
//
//print(type(of: a))


//var array: [Int] = []
//var strArray: Array<String> = []
//print(type(of: array))
//print(type(of: strArray))
//
//var floatArray: Array<Float> = []
//print(type(of: floatArray))
//
//var doubleArray: Array<Double> = []
//print(type(of: doubleArray))
//
//var anyArray: Array<Any> = []
//print(type(of: anyArray))
//
//var optionalIntArray: Array<Int?> = []
//print(type(of: optionalIntArray))
//
//var optionalStringArray: [String?] = []
//print(type(of: optionalStringArray))


// 配列の操作はpythonなどと似ている
//var numbers: [Int] = []
//
//numbers.append(20)
//numbers.append(10)
//numbers.append(30)
//print(numbers)
//
//numbers[1] = 50
//print(numbers)
//
//numbers.insert(100, at: 1)
//print(numbers)
//
//numbers.remove(at: 1)
//print("添字[1]の値を削除")
//print(numbers)
//
//numbers.removeAll()
//print(numbers)


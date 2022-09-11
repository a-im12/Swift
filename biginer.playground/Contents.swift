//print("Hello, World")

import Security
import Foundation

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


//var int:Int = 12
//var any:Any = int as Any
//print(any)
//print(type(of: any))
//
//var optional = any as? Int
//print(optional)
//int = optional ?? 1
//print(int)

//var optional: Int? = 12
//print(optional)

//optional = optional.flatMap({value in value * 4})
//print(optional)
//print(type(of: optional))

//optional = optional.map({value in value / 4})
//print(optional)
//print(type(of: optional))
//
//var op2 = optional.map({value in String(value)})
//print(op2)
//print(type(of: op2))
//
//var oo: String = op2 ?? " "
//print(oo)
//var any: Any? = 12
//print(any)


// 具体例

//var int: Int = 12   // 具体的なInt型
//
//var any: Any = int as Any   // 抽象的なAny型へとアップキャストしている
//print(any + 1) // any型のため計算できない

//var numbers: [Int] = [1, 2, 3, 4, 5, 6]
//var str: Array<String> = ["a", "b", "c", "d"]
//print(numbers)
//print(str[2])

//var numbers: Array<Int?> = [1, 2, 3, 4, 5, 6]
//print(numbers)
//
//if var notOptionalNumber = numbers[1]{
//    print(notOptionalNumber)
//}

//var int: Int? = 12
//print(type(of: int))
//
//if let num = int{
//    print(type(of: num))
//}

//var numbers1 = [1, 2, 3]
//var numbers2 = [4, 5, 6]
//print(numbers1)

//numbers1.append(4)
//numbers1.insert(4, at: 1)
//var numbers3 = numbers1 + numbers2


//numbers1 = numbers1 + numbers2
//print(numbers1)
//numbers3.remove(at: 2)
//numbers3.removeAll()
//print(numbers3)
//print(type(of: numbers3))

//var dictionary: Dictionary<String, Int> = ["ayumu" : 20, "sayaka" : 19, "yuusei" : 18, "issin" : 16]
//var dictionary: [String : Int] = ["ayumu" : 20, "sayaka" : 19, "yuusei" : 18, "issin" : 16]
//dictionary["ayumu"] = 222
//dictionary["reia"] = 3
//dictionary["ayumu"] = nil
//print(dictionary)

//var dictionary: [String:Int] = ["key":1]
//print(dictionary)
//
//dictionary["key"] = nil
//print(dictionary)

//let range = 3.0...
//print(type(of: range))
//
//print(range.contains(3.001))

//let range: Range<Int> = 2..<6
//let range: CountableRange<Int> = 2..<7
//let range: PartialRangeUpTo<Int> = ..<6
//let range: ClosedRange<Int> = 2...9
//let range: CountableClosedRange<Int> = 2...9
//let range: PartialRangeThrough<Int> = ...2
//let range: PartialRangeFrom<Int> = 2...
//let range: CountablePartialRangeFrom<Int> = 2...

//print(type(of: range))
//for i in range{
//    print(i)
//}
//print(range.contains(5))

//let range: CountableRange<Int> = 1..<5
//let range = ..<5
//let range: Range<Double> = 1.0..<4.1
//let countableRange: CountableRange<Int> = 1..<5
//
//print(type(of: range))
//print(type(of: countableRange))
//
//for i in countableRange{
//    print(i)
//    print(countableRange.upperBound)
//}

//let range: CountableRange<Double> = 1.0..<3.0
//
//print(range)

//let range: PartialRangeThrough<Int> = ...4
//let range: CountableClosedRange<Double> = 1.0...2.4

//print(range.contains(0.1))
//let range = 1..<5.3

//print(type(of: range))

//let range: Range<Double> = 1..<5

//let range: Range<Int> = 1..<4
//print(type(of: range))
//print(range.upperBound)

//let range: Range<Int> = 1..<6
//print(range.contains(3))


//var s: String = "ayumu arakawe"
//var startIndex: String.Index = s.startIndex
//var endIndex: String.Index = s.index(s.startIndex, offsetBy: 1)
//
//print(s[startIndex])
//
//print(startIndex)
//
//print(s[endIndex])
//print(endIndex)

//var s: String = "arakawa ayumu"
//
//for i in s{
//    print(i)
//}

//var numbers: Array<Int> = [1, 3, 34, 4, 2, 7]

//var numbersLen = numbers.count

//let numbersRange: CountableRange<Int> = 0..<numbersLen

//for i in numbersRange{
//    print(numbers[i])
//}

//var char: Character = "e"

//print(char)
//var s = "abc"
//
//var i = "defgh".index(s.endIndex, offsetBy: -1)
//
//print(s[i])

//var s = "arakawa ayumu"
//for i in s{
//    print(i)
//    print(type(of: i))
//}

//var range: Range = 1..<4

//var range: CountableRange = 1..<4
//
//for i in range{
//    print(i)
//}

//var range: ClosedRange = 1...4

//var range = 1..<4
//var rannge = ..<4
//var range = ...5
//var range = 1...
//var range = 1...3




//print(type(of: range))


//var a = -10
//
//if a > 0{
//    print("正の数です")
//}else{
//    print("負の数です")
//}

//var a: Optional<Int> = 12
//var b: Int? = 2
//
//if var c = a, var d = b{
////    print("a + b = " + String(c + d))
//    print(c, d)
//}else{
//    print("どちらか存在しません")
//}
//
//print(c, d)
//var a = 12
//
//var range = 1..<5
//
//for i in range{
//    guard true else{
//        print("終了")
//        break
//    }
//    print(i)
//}

//func add(_ a:Int?)->Int?{
//    guard let intA = a else{
//        print("値が入っていません")
//        return nil
//    }
//
//    return intA + 1
//}
//
//var opB: Int? = nil
//var b = add(opB)
//print(b)

//var optionalA: Int? = 0

//outerSwitch: switch optionalA{
//case .some(let int):
//    switch int{
//    case 1, 3, 5, 7, 9:
//        print("奇数")
//    case 2, 4, 6, 8, 10:
//        print("偶数")
//    default:
//        break outerSwitch
//    }
//    print("ラベル指定なし")
//default:
//    print("デフォ")
//}



//let range: CountableRange<Int> = 1..<6
//
//outerFor: for i in range{
//    for j in range{
//        if j == 3{
//            continue
//        }
//        print(i, j)
//    }
//}

//var cnt = 0
//
//func addCnt()->Int{
//    defer{
//        cnt += 1
//    }
//    return cnt
//}

//var a: Int? = 12


//switch a {
//case let intA?:
//    print(type(of: a))
//    print(type(of: intA))
//
//    print(intA + 10)
//default:
//    print("nil値が入っています")
//}


//func add(_ a:Int?)->Int?{
//    guard var intA = a else {
//        print("nilが入っています")
//        return nil
//    }
//
//    print(intA)
//    return intA
//}

//func changeInt(_ a:Any)->Int{
//    guard a is Int else{
//        print("数値を入れてください")
//        return 0
//    }
//
//    let b = a as? Int
//
//    if let c = b{
//        return c
//    }
//
//    return 0
//}
//
//var any: Any = "a"
//var int: Int = changeInt(any)
//print(int)

//if case 2..<10 = 11{
//    print("範囲内")
//}else{
//    print("範囲外")
//}

//func sample(user: String = "Anonymous", id: Int = 0){
//    print(user)
//    print(id)
//    return
//}
//
//sample()

//var s: String = "12"
//var i: Int = 23
//
//print(type(of: Int(s)))
//print(type(of: String(i)))

//let closure: (Int)->Int
//func add(x: (Int)->Int, to: Int)->Int{
//    var c = x(to)
//
//    return c
//}
//
//closure = {int in
//    int + 2
//}
//
//var d = add(x: closure, to: 10)
//
//print(d)

//let closure: (Int) -> String
//
//closure = {a in
//    let b: Int = a + 10
//
//
//    return String(b)
//}
//
//print(closure(12))


//func or(leftSide :Bool, rightSide :Bool) -> Bool{
//func or(leftSide :Bool,  rightSide :@autoclosure () -> Bool) -> Bool{
//
//    if leftSide{
//        return true
//    }else if rightSide(){
//        return true
//    }
//
//    return false
//
//}
//
//func leftFlg() -> Bool{
//    print("左が実行されました")
//    return true
//}
//
//func rightFlg() -> Bool{
//    print("右が実行されました")
//    return true
//}
//print(or(leftSide: leftFlg(), rightSide: rightFlg()))

//let closure: (Any) -> Bool
//
//closure = {any in
//    if any is Int{
//        return true
//    }
//
//    return false
//}
//
//func isInt(a: Any) -> Int? {
//    let result: Bool = closure(a)
//
//    if result{
//        return a as? Int
//    }
//    return nil
//}
//
//print(isInt(a: 12))

//func sample(data:@escaping () -> Void){
//    data()
//}
//
//data(print("aaaaaa"))

//var sample = [() -> Void]()
//
//func demo(data:@escaping () -> Void){
//    sample.append(data)
//}
//
//demo{ print("iiii") }
//demo{ print("aaaa") }
//
//sample.forEach{ $0() }
//print(type(of: sample))
//
//var numbers: Array<Int> = [1, 2, 3, 4, 5, 6, 7]
//
//numbers.forEach{
//    print($0)
//}

//var sample = [Int]()
//
//print(type(of: sample))

//func sample(_ x:Int, _ closure: (Int) -> String) -> Void{
//    print("関数を実行しました")
//    let a: String = closure(x)
//    print(a)
//}
//
//sample(12){int in
//    print("クロージャを実行しました")
//    let b: Int = int + 10
//    return String(b)
//}


//func toString(_ x:Int) -> String{
//    return String(x)
//}
//
//let function = toString
//
//let intArray: Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8]
////let strArray: Array<String> = intArray.map(function)
//let strArray: Array<String> = intArray.map(toString)
//
//print(strArray)

//var bord: [[Int]] = {
//    let rowCnt = 9
//    let columnCnt = 9
//
//    let row = Array(repeating: 1, count: rowCnt)
//    let bord = Array(repeating: row, count: columnCnt)
//
//    return bord
//}()
//
//for row in bord{
//    print(row)
//}

//var bord: [[Int]] = {
//
//    let rowRange: CountableRange = 1..<10
//    let columnRange: CountableRange = 1..<10
//
//    var row: Array<Int>
//    var bord: [[Int]] = []
//
//    for i in rowRange{
//        row = []
//        for j in columnRange{
//            row.append(i * j)
//        }
//        bord.append(row)
//    }
//
//    return bord
//}()

//var s:String
//for row in bord{
//    s = ""
//    for num in row{
//        if num < 10{
//            s += "  \(num)"
//        }else{
//            s += " \(num)"
//        }
//    }
//    print(s)
//}


//struct Sample{
//    var int:Int = 12
//    var str:String = "arakawa ayumu"
//    let range:CountableRange = 1..<12
//}
//
//let sample1 = Sample()

//print(sample1.int + 12)
//
//print(sample1.str)

//for i in sample1.range{
//    print(i)
//}

//var sample2 = Sample()
//sample2.str = "yoshino sayaka"
//
//print("sample1 : \(sample1.str)")
//print("sample2 : \(sample2.str)")

//struct Sample{
//    var num: Int = 12
//    lazy var lazyNum:Int = {
//        print("lazy実行!!")
//        return self.num * 2
//    }()
//}
//
//var sample1:Sample = Sample()
//
//sample1.lazyNum = 10
//print(sample1.num)
//print(sample1.lazyNum)
//
//sample1.num = 29
//
//print(sample1.lazyNum)

//struct Sample{
//    var num: Int = {
//        print("num実行!!")
//        return 12
//    }()
//
//    var conpNum: Int{
//        get{
//            print("get実行!!")
//            return self.num * 2
//        }
//
//        set{
//            print("set実行!!")
//            self.num = Int(newValue / 2)
//        }
//    }
//}
//
//var sample1 = Sample()
//
//print("num : \(sample1.num)")
//print("conpNum : \(sample1.conpNum)")
//
//sample1.conpNum = 201
//
//print("num : \(sample1.num)")
//print("conpNum : \(sample1.conpNum)")


//struct Sample{
//    var int: Int
//    var str: String
//
//    init(int :Int = 0, str :String = "none"){
//        self.int = int
//        self.str = str
//    }
//}
//
//
//var sample1 = Sample(int: 12, str: "aijiji")
//var sample2 = Sample()
//
//print(sample1)
//print(sample2)

//var sample3 = Sample(int: "akasartana", str: 12)

//struct Sample{
//    var int : Int
//    var str : String
//
//    init?(int : Any = 0, str : Any = ""){
//        guard let opInt = int as? Int,
//              let opStr = str as? String else{
//            return nil
//        }
//
//        self.int = opInt
//        self.str = opStr
//    }
//}
//if var sample = Sample(int: "", str: "11111"){
////if var sample = Sample(int: "aaaa", str: 12){
//    print(sample)
//}else{
//    print("エラー:インスタンス作成に失敗しました。")
//}

//extension String{
//
//    subscript (range: CountableRange<Int>) -> String{
//        let start = index(startIndex, offsetBy: range.lowerBound)
//        let end = index(endIndex, offsetBy: -1)
//
//        return String(self[start..<end])
//    }
//
//}
//
//let inputLine: String = "10 20"
//var blankList: Array<Int> = []
//
//for (blankIndex,str) in inputLine.enumerated(){
//    if str == " "{
//        blankList.append(blankIndex)
//    }
//}
//
//print(inputLine[0..<2])

//struct sample1{
//    var int: Int = 0
//
////    init(num: Int = 0){
////        self.int = num
////    }
//
//
//}
//
//class sample2{
//    var int: Int = 0
//
////    init(num:Int = 0){
////        self.int = num
////    }
//}
//
//var sm1: sample1 = sample1()
////sm1.int += 10
////print(sm1)
//var sm2: sample1 = sm1
////print(sm2)
//
//sm1.int = 10
//print(sm1)
//print(sm2)
//
//var sm3: sample2 = sample2()
////sm3.int += 10
////print(sm3.int)
//
//var sm4 = sm3
////print(sm4.int)
//
//sm3.int = 10
//print(sm3.int)
//print(sm4.int)
//
//sm4.int += 10
//print(sm3.int)
//print(sm4.int)


//extension String{
//    func add() -> String{
//        return "---" + self + "---"
//    }
//}
//
//var sample: String = "arakawa"
//sample = sample.add()
//
//print(sample)

//extension String{
//    subscript(range: CountableRange<Int>) -> String{
//        var str: String = ""
//        var index: Index
//        for i in range{
//            index = self.index(self.startIndex, offsetBy: i)
////            print(type(of: self[index]))
//            str += String(self[index])
//        }
//        return str
//    }
//
//    subscript(range: CountableClosedRange<Int>) -> String{
//        var str: String = ""
//        var index: Index
//        for i in range{
//            index = self.index(self.startIndex, offsetBy: i)
//            str += String(self[index])
//        }
//        return str
//    }
//
//    subscript(range: CountablePartialRangeFrom<Int>) -> String{
//        var str: String = ""
//        var index: Index
//        for i in range{
//            index = self.index(self.startIndex, offsetBy: i)
//            str += String(self[index])
//        }
//
//        return str
//    }
//}
//
//let str = "arakawa"
//let sample = str[1..<4]
//let sample2 = str[1...4]
////let sample3 = str[1...]
//
//
//print(str.count)
//print(sample)
//print(sample2)
//print(sample3)
//print(type(of: range))

//var str = "abc"
//let range: CountableRange<Int> = 0..<3
//for i in range{
//    let index = str.index(str.startIndex, offsetBy: i)
//    print(str[index])
//}



//extension String{
//    func char(index:Int){
//        let strIndex = self.index(self.startIndex, offsetBy: index)
//        print(self[strIndex])
//    }
//}
//
//var str:String = "arakawa"
//str.char(index: 4)

//let range: CountableRange<Int> = 1..<10
//var s: String
//var array: [[Int]] = []
//var row: [Int]
//
//for i in range{
//    s = ""
//    row = []
//    for j in range{
//        if i * j < 10{
//            s += "  \(i * j)"
//        }else{
//            s += " \(i * j)"
//        }
//
//        row.append(i * j)
//    }
//    print(s)
//    array.append(row)
//}
//
//for i in array{
//    s = ""
//    for j in i{
//        if j < 10{
//            s += "  \(j)"
//        }else{
//            s += " \(j)"
//        }
//    }
//    print(s)
//}


//func multiTable(startInt: Int, endInt: Int)->[[Int]]{
//
//    let range: CountableClosedRange<Int> = startInt...endInt
//    var table:Array<Array<Int>> = []
//    var row: Array<Int>
//
//    for i in range{
//        row = []
//        for j in 1..<10{
//            row.append(i * j)
//        }
//        table.append(row)
//    }
//
//
//    return table
//}
//
//func printTable(table:[[Int]]){
//    var s: String
//    for row in table{
//        s = ""
//        for i in row{
//            if i < 10{
//                s += "  \(i)"
//            }else{
//                s += " \(i)"
//            }
//        }
//        print(s)
//    }
//}
//
//let multiResult = multiTable(startInt: 5, endInt: 20)
//printTable(table: multiResult)

//extension Int{
//    func power()->Int{
//        return self * self
//    }
//    func count()->Int{
//        let stringNum: String = String(self)
//        return stringNum.count
//    }
//
//    subscript(index: Int)->Int{
//        guard index < self.count() else{
//            return 0
//        }
//        let strNum: String = String(self)
//        let charIndex = strNum.index(strNum.startIndex, offsetBy: index)
//        let char:String = String(strNum[charIndex])
//
//        if let result = Int(char){
//            return result
//        }
//
//        return 0
//    }
//}
//
//var int: Int = -2
//print(int[0])
//int = int.power()
//print(int)

//print(int.count())
//print(int[13])



//let c: Character = "a"
//let s: String = String(c)
//print(Int(s))

//class addNum{
//    var int: Int
//    var str: String

//    func add(a: Int, b: Int){
//        self.int = a + b
//    }

//    init(a: Int = 0, s: String = ""){
//        self.int = a
//        self.str = s
//    }
//}

//struct numAdd{
//    var int: Int
//    var str: String

//    func add(a: Int, b: Int)-> Int{
//        return a + b
//    }

//    init(a: Int = 0, s: String = ""){
//        self.int = a
//        self.str = s
//    }
//}

//var sample1 = addNum()
//var sample2 = sample1

//sample1.add(a: 1, b: 4)
//print("sample2 : \(sample2.int)")
//sample2.str = "arakwa"
//print("sample1 : \(sample1.str)")

//var sample3 = numAdd()
//var sample4 = sample3

//sample3.int = 100
//print("sample4 : \(sample4.int)")
//sample4.str = "akasatana"
//print("sample3 : \(sample3.str)")

//struct sample{
//    var power: Int{
//        get{
//            return int * int
//        }

//        set(p){
//            int = Int(sqrt(Double(p)))
//        }
//    }
//    var int: Int = 2
//}

//var test = sample()


//var int = test.int
//print(int)
//int = test.power
//print(int)
//test.power = 25
//print(test.int)

//let closure: (String) -> Int = {(str: String) -> Int in
//    if let num = Int(str){
//        return num
//    }
//    return 0
//}
//
//func change(closure: (String) -> Int, str: String) -> Int{
//    let num = closure(str)
//    return num
//}

//print(change(closure: closure, str: "12"))

//struct sample{
//    var power: Int = 2
//    var int: Int{
//        get{
//            return Int(sqrt(Double(power)))
//        }
//        set(p){
//            power = p * p
//        }
//    }
//}
//
//
//var s = sample()
//print(s.power)
//print(s.int)
//
//s.int = 9
//print(s.power)

//struct Sample{
//    var int: Int = 10
//
//    mutating func add(num: Int){
//        int += num
//    }
//}
//
//var s = Sample()
//s.add(num: 3)
//print(s.int)

//struct Sample{
//    var int:Int = 10
//    var str:String = "aaa"
//    var range:CountableRange<Int> = 1..<6
//    var list:Array<String> = ["a", "b"]
//    var dict:Dictionary<Int, String> = [
//                                        1 : "a",
//                                        2 : "b"]
//}
//
//var s = Sample(int: 5, str: "arakawa", range: 0..<100, list: ["arakawa", "imazono", "yosino"], dict: [1 : "arakawa"])
//
//var s2 = Sample()
//print(s)
//print(s2)

//class AddClass{
//    func addInt(num1: Int, num2: Int)->Int{
//        return num1 + num2
//    }
//
//    func addDouble(dou1: Double, dou2: Double)->Double{
//        return dou1 + dou2
//    }
//}
//
//class SubClass{
//    func subInt(num1: Int, num2: Int)->Int{
//        return num1 - num2
//    }
//
//    func subDouble(dou1: Double, dou2: Double)->Double{
//        return dou1 - dou2
//    }
//}
//
//class MultiClass{
//    func multiInt(num1: Int, num2: Int)->Int{
//        return num1 * num2
//    }
//
//    func multiDouble(dou1: Double, dou2: Double)->Double{
//        return dou1 * dou2
//    }
//}
//
//class DivClass{
//    func divInt(num1: Int, num2: Int)->Int{
//        return num1 / num2
//    }
//
//    func divDouble(dou1: Double, dou2: Double)->Double{
//        return dou1 / dou2
//    }
//}
//
//class CalcClass: AddClass{
//
//}

//class People{
//    var age: Int
//    var name: String
//
//    init(age: Int = 0, name: String = " "){
//        self.age = age
//        self.name = name
//    }
//
//    func introduce(){
//        print("私の名前は\(name)です。年齢は\(age)歳です。")
//    }
//
//}
//
//
//class Teacher: People{
//    var money: Int
//
//    init(age: Int = 0, name: String = " ", money: Int = 0){
//        self.money = money
//        super.init(age: age, name: name)
//    }
//
//    func job(){
//        print("職業は教師です。年収は\(money)円です。")
//    }
//}
//
//var p = People(age: 18, name: "arakawa ayumu")
//p.introduce()
//
//var t = Teacher(age: 43, name: "minamino", money: 4000000)
//t.introduce()
//t.job()

//class AddClass{
//    var sum: Int = 0
//    var str: String{
//        return "Hello"
//    }
//
//    func add(num: Int, num2: Int){
//        print(num + num2)
//    }
//}
//
//class OverrideAddClass: AddClass{
//    override var str: String{
//        return "Nice to meet you"
//    }
//
//    override func add(num: Int, num2: Int){
//        super.sum = num + num2
//        print(super.sum)
//    }
//}
//
//var a = AddClass()
//a.add(num: 2, num2: 5)
//
//var b = OverrideAddClass()
//b.add(num: 1, num2: 2)


//class Sample{
//    var int:Int{
//        get{
//            print("取得します")
//            return 10
//        }
//    }
//}
//
//
//class Sample2{
//    var int: Int{
//        print("取得します")
//        return 20
//    }
//}
//
//Sample().int
//Sample2().int

//var num: Int? = 12
//
//if let int = num{
//    print(int)
//}

//var a:Optional<Int> = nil
//var b:Optional<Int> = 12
//
//print(a! + b!)
//var strArray:Array<String> = ["a", "b", "d"]
//strArray.insert("c", at: 2)
//print(strArray)


//var array1:Array<Int> = [1, 2, 3, 4, 5]
//var array2:Array<Int> = [11, 12, 13, 14, 15]
//
//array1.removeAll()
//print(array1)


//let range:CountablePartialRangeFrom<Int> = 1...
//print(type(of: range))

//var dict:Dictionary<Int, String> = [1:"田中", 2:"高橋", 3:"佐藤", 4:"鈴木"]
//
//for i in dict{
//    print(i)
//}
//
//for (key, value) in dict{
//    print("key: \(key), value: \(value)")
//}

//func printString(str: String)->Void{
//    print(str)
//    return
//}
//
//var void = printString(str: "aaaaaa")
//print(void)

//var tapple:(Int, String) = (10, "aaaaa")
//tapple.0 = 12
//print(tapple)

//// 0 ~ 9の数値を表示する繰り返し
//var a:Int = 0
//while a < 10{
//    print(a)
//    a += 1
//}
//
//var flg:Bool = true
//var b:Int = 0
//
//// Boolean型を直接指定した場合
//while flg{
//    print(b)
//    b += 1
//    if b > 9{
//        flg = false
//    }
//}
//var a:Int = 0
//
//while a < 10{
//    if a == 5{
//        break
//    }
//    print(a)
//    a += 1
//}

// ラベルなし
//for i in [0, 1, 2]{
//    for j in [0, 1, 2]{
//        print("i:\(i), j:\(j)")
//        break
//    }
//}
//
//// ラベルあり
//label1: for i in [0, 1, 2]{
//    for j in [0, 1, 2]{
//        print("i:\(i), j:\(j)")
//        break label1
//    }
//}

//var a:Int = 0
//
//func add()->Int{
//    defer{
//        a += 1
//    }
//    return a
//}
//
//print(add())
//print(a)
//extension String{
//    subscript(index: Int)->String{
//        guard index < self.count else{
//            return ""
//        }
//
//        let charIndex = self.index(self.startIndex, offsetBy: index)
//
//        return String(self[charIndex])
//    }
//}
//
//extension Int{
//    subscript(index:Int)->Int{
//        let s:String = String(self)
//        guard index < s.count else{
//            return 0
//        }
//        let charIndex = s.index(s.startIndex, offsetBy: index)
//        let char:Character = s[charIndex]
//
//        return Int(char)
//    }
//}
//
//var s:String = "abcdefg"
//
//print(s[2])

//let fun:((Int) -> String) = {(num: Int) in
//    print("num : \(num), type : \(type(of: num))")
//    return String(num)
//}
//
//
//var s = fun(5)
//print("s : \(s), type : \(type(of: s))")
//


//let array: [Int] = [1, 2, 3, 4, 5, 6, 7]
//
//let double: (Int) -> Int = {(num: Int) in
//    return num * 5
//}
//
//let doubleArray: [Int] = array.map(double)
//
//print(doubleArray)

// 渡された値(引数)に10を足して返す関数
//let sampleNum: Int = 3
//
//func addTen(num inputNum: Int) -> Int{
//    let resultNum = inputNum + 10
//    return resultNum
//}
//
//let result = addTen(num: 12)
//print(result)   // 15


//func power(_ num1:Int, _ num2:Int)->Int{
//
//    var powNum: Int = 1
//    for _ in 0..<num2{
//        powNum *= num1
//    }
//    return powNum
//}
//
//print(power(2, 1))

//var addStr:String = ""
//for _ in 0..<10{
//    addStr += "こんにちは"
//}
//
//print(addStr)

//let languages:Array<String> = ["Java", "C", "Java", "Java", "Python", "Haskell", "Python", "Python", "Python", "Java", "R","Lisp", "Java", "Java", "C", "Java", "C", "Java", "C", "Java", "C", "C", "C", "Haskell"
//]
//
//var langDict:Dictionary<String, Int> = [:]
//
//for lang in languages{
//    if let cnt = langDict[lang]{
//        langDict[lang] = cnt + 1
//    }else{
//        langDict[lang] = 1
//    }
//}
//
//for (key, value) in langDict{
//    print("\(key) : \(value)")
//}

//let range:CountableRange = 0..<3
//
//for i in range{
//    print(i + 1)
//}

//let range:CountableRange<Int> = 0..<4
//
//for i in range{
//    print(i * 2)
//}

//let range:CountableRange<Int> = 0..<5
//
//for i in range{
//    print(String(i + 1) + "番目")
//}

//let range:CountableRange<Int> = 1..<10
//
//for i in range{
//    print("2 * \(i) = \(2 * i)")
//}

//let range:CountableRange<Int> = 0..<10
//
//var total:Int = 0
//
//for i in range{
//    total += (i + 11)
//}
//
//print(total)

//let range:CountableRange<Int> = 0..<10
//
//var total:Int = 0
//
//for i in range{
//    print("\(total) + \(i + 1) = \(total + i + 1)")
//    total += i + 1
//}
//
//// 「_」の代わりに変数名を記述した場合
//// (引数名 関数内で使用する変数名:型)
//func power(coefficient i:Int, index j:Int)->Int{
//    let range:CountableRange<Int> = 0..<j
//
//    var result:Int = 1
//    for _ in range{
//        result *= i
//    }
//    return result
//}
//
//
//print(power)

//func power(coefficient:Int, index:Int = 2)->Int{
//    let range:CountableRange<Int> = 0..<index
//
//    var result:Int = 1
//    for _ in range{
//        result *= coefficient
//    }
//
//    return result
//}
//
//print(power(coefficient: 12, index: 3))
//var dict:Dictionary<Int, String> = [:]
//
//dict[1] = "a"
//dict[2] = "b"
//
//var array = [1, 2, 3, 5, 6]
//
//for i in 0..<array.count{
//    print(array[(array.count - 1) - i])
//}

//let day:String = "12/4/2022 午後12:15"
//
//let array = day.split(separator: "/")
//print(array)
//var s: String = ""
//var cnt: Int = 0
//for i in array[2]{
//    if cnt > 3{
//        break
//    }
//    s += String(i)
//    cnt += 1
//}
//
//if array[0].count < 2{
//    s += "  " + array[0]
//}else{
//    s += " " + array[0]
//}
//print(s)

//let s = "abcdef ghi"
//
//for i in 0..<6{
//    var opIndex = s.index(s.startIndex, offsetBy: i, limitedBy: s.endIndex)
//    if let index = opIndex{
//        print(s[index])
//    }
//}


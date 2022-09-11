# Swift

## biginerファイル
- swiftの動きを勉強するためのファイル

## ~~biginerログ~~
学習内容は以下のポートフォリオサイトにまとめました。<br>
[https://a-im12.github.io/work-history/swift.html](https://a-im12.github.io/work-history/swift.html)

### 変数
- Int
- String
- Boolean
- Double
- Float
- Any

それぞれの型の後ろに「?」を付けるとOptional型となる<br>
Optional型とは、値が何も入っていない(nil)状態にできる
### Optional型のアンラップ
アンラップとはOptinal型をそれぞれの方に変換すること
- なぜアンラップが必要なのか<br>
Optional型のままでは値同士の演算ができないから
- アンラップの方法
    - if let 定数名 = Optional型
    もしOptional型の中身がnilだった場合ifの中は実行されない<br>
    オプショナルバインディングという
    ```swift:title
    // 具体例

    var optinalInt: Int? = 12   // Optional<Int>型

    if let int = optionalInt{
        //optionalIntの中には具体的な値が入っているので実行される

        print(type(of:int)) // Int型

    }

    optionalInt = nil
    // if let じゃなく if var でもアンラップ可能

    if var num = optionalInt{
        //optionalIntの中にはnilが入っているので実行されない
        print(type(of:num))
    }

    ```
    - var 変数名 = Optional型!
    強制アンラップといい中身がnilだった場合エラーとなりプログラムが終了する
    ```swift:title
    //具体例

    var int: Int? = 12  //Optional<Int>型

    var notOptionalInt: Int = int!
    print(type(of:notOptionalInt))  //Int型

    int = nil

    notOptionalInt = int!   //intの中はnilなのでエラーが発生する
    ```
    <br>
    - var 変数名 = Optional型 ?? 具体的な値
    ??演算子といい中身がnilの場合は??の後ろの値を<br>
    nilじゃ無い場合はOptional型の値を返す。<br>

    ```swift:title  
    var option: Int? = 12   //Optional<12>

    var num = option ?? 1   //12

    option = nil
    var num = option ?? 1   //1
    ```

### オプショナルチェイン
オプショナルチェインとは、アンラップを行わずにOptional型の値を操作すること<br>
主にmapメソッド、flatMapメソッドによって実現する。<br>

```swift:title
var optional: Int? = 12 //Optional<12>
optional = optional.map({value in value * 2}) //Optional<24>

var strOptional = optional.flatMap({value in String(value)}) // Optional<"24">

```
といったように、アンラップせずともOptional型の値を変更できる。
<br>

###　型のキャスト
キャストとは既存の型を別の型として扱う手法のことをいい<br>
アップキャストとダウンキャストの二つがある。
- アップキャスト
    アップキャストとは階層関係にある具体的な型を上位の抽象的な型に変更することをいう。<br>
    キャストには「as」を使用する。
    ```swift:title
    // 具体例

    var int: Int = 12   // 具体的なInt型

    var any: Any = int as Any   // 抽象的なAny型へとアップキャストしている
    ```
- ダウンキャスト
    ダウンキャストとは階層関係にある抽象的な型を下位の具体的な型へ変更することをいう。<br>
    キャストには「as?」または「as!」を用いいる。<br>
    「?」や「!」がついていることからわかるかもしれないが、ダウンキャストされた後は<br>
    Optional型か強制アンラップされた具体的な型となる。
    <br>
    強制アンラップされたとき 中身がnilだった場合はエラーとなり強制終了してしまう。
    ```swift:title
    //具体例

    var any: Any = 12 //抽象的なAny型

    var optionalInt: Int? = any as? Int //具体的なOptional<Int>型へとダウンキャストしている。

    var int: Int = any as! Int //強制アンラップを行いInt型へとダウンキャストしている。

    any = nil
    int = any as! Int // anyの中がnilのためエラーとなる。
    ```

### 配列
- 定義方法<br>
    var 変数名: Array<任意の型名> = [値, 値, 値...]<br>
    または<br>
    var 変数名: [任意の型名] = [値, 値, 値...]
    - 任意の型名;
        - Sting, ?
        - Int, ?
        - Float, ?
        - Double, ?
        - Any
        - 型名?とするとoptional<型名>のリスト

    ```swift:title
    //具体例

    var numbers: Array<Int> = [1, 2, 4, 5, 6, 7]
    print(numbers)  //[1, 2, 4, 5, 6, 7]

    var str: [String] = ["a", "b", "c", "d"]
    print(str[2])   //c

    var optionalNumbers: Array<Int?> = [1, 2, 3, 4, 5, 6]
    print(optionalNumbers)  //[Optional(1), Optional(2), Optional(3), Optional(4), Optional(5), Optional(6)]

    // アンラップは1要素ずつ行う

    if var notOptinalNumber = optionalNumbers[2]{
        print(notOptionalNumber)    // 3

    }

    ```
- 配列への要素の追加
    要素の追加には.appendを使用する(pythonと同じ動き)
    <br>
    配列.append(値)
    ```swift:title
    // 具体例

    var numbers: Array<Int> = [1, 2, 3]
    print(numbers)  // [1, 2, 3]

    numbers.append(4)
    print(numbers)  // [1, 2, 3, 4]
    ```

- 配列への要素の挿入
    要素の挿入には.insertを使用する
    <br>
    配列.insert(挿入する値, at:挿入したい添字)
    ```swift:title
    //具体例

    var numbers: [Int] = [1, 2, 3, 5]
    print(numbers)  // [1, 2, 3, 5]

    numbers.insert(4, at:3)
    print(numbers)  // [1, 2, 3, 4, 5]
    ```

- 配列同士の結合
    配列の結合には「+」を使用する
    <br>
    配列1 + 配列2
    ```swift:title
    // 具体例

    var numbers1: Array<Int> = [1, 2, 3]
    var numbers2: [Int] = [4, 5, 6]

    var number3 = number1 + number2
    print(number3)  // [1, 2, 3, 4, 5, 6]

    number1 = number1 + nunmber2
    print(number1)  // [1, 2, 3, 4, 5, 6]

    ```

- 要素の削除
    配列の要素を削除するには.remove(at: _)を使用する<br>
    また、配列のすべての要素を削除したい場合は.removeAll()を使用する
    <br>
    配列.remove(at: 消したい値の添字)<br>
    配列.removeAll()
    ```swift:title
    //具体例

    var numbers1: Array<Int> = [1, 2, 3]
    var numbers2: [Int] = [4, 5, 6]

    print(numbers1)  // [1, 2, 3]

    numbers1.remove(at: 1)
    print(numbers1) // [1, 3]

    print(numbers2) // [4, 5, 6]

    numbers2.removeAll()
    print(numbers2) //[]
    ```

### 辞書
- 定義方法
    変数名: Dictionary<任意の型名, 任意の型名> = [key : value, key : value, ....]<br>
    または<br>
    変数名: [任意の型名 : 任意の型名] = [key : value, key : value, ....]<br>
    または<br>
    変数名 = [key : value, key : value, ....]<br>
    <br>
    存在しないkeyにアクセスするとエラーではなくnilが帰ってくる。<br>
    このことから、取得した際に返ってくる値の型はOptional型となる<br>
    ```swift:title
    //　具体例
    //定義

    var dictionary1: Dictionary<String, Int> = ["name1":20, "name2":19, "name3":18]
    print(dictionary1)   // ["name1":20, "name2":19, "name3":18]

    var dictionary2: [String : Int] = ["name1":20, "name2":19, "name3":18]
    print(dictionary2)  // ["name1":20, "name2":19, "name3":18]

    var dictionary3 = ["name1":20, "name2":19, "name3":18]
    print(dictionary3)  // ["name1":20, "name2":19, "name3":18]

    var dictionary4: [String:Int] = [1:2, 2:3]  // 定義しているのは[String : Int]型だが、代入しているのは[Int : Int]型なのでエラーが発生する

    // 値の取得

    print(dictionary1["name1"]) // Optional(20)

    print(dictionary1["name4"]) // nil      name4というkeyは存在しないため
    ```

- 辞書への追加
    辞書への追加は<br>
    辞書[存在しないkey] = 追加する値<br>
    で行う。
    ```swift:title
    //具体例

    var dictionary: Dictionary<String, Int> = ["key1":1]
    dictionary["key2"] = 2

    print(dictionary)   // ["key1":1, "key2":2]
    ```
- 辞書の更新
    辞書の値の更新は<br>
    辞書[変更したい値のkey] = 変更したい値<br>
    で行う
    ```swift:title
    var dictionary: Dictionary[String:Int] = ["key1":1]

    // key1の値を10に変更する

    dictionary["key1"] = 10
    print(dictionary)   // ["key":10]
    ```

- 辞書の削除
    辞書の値を削除したいときは<br>
    辞書[削除したい値のkey] = nil

    ```swift:title
    //具体例

    var dictionary = ["key1":1]

    dictionary["key1"] = nil
    print(dictionary)   // [:]
    ```

### 範囲型
範囲型とは指定した値の範囲を生成するもので、カウント可能なものと不可能なものの2種類に分けることができる。<br>

- 具体的な型の種類
    - Range<Bound>
    - CountableRange<Bound>
    - PartialRangeUpTo<bound>
    - ClosedRange<Bound>
    - CountableClosedRange<Bound>
    - PartialRangeThrough<Bound>
    - PartialRangeFrom<Bound>
    - CountablePartialRangeFrom<Bound>
以上の8種が範囲型の型の種類である。<Bound>の中には具体的な型の名前(IntやDoubleなど)が入る<br>
__Countable__　がつく型はInt型のみ生成可能
<br>

- 型の解説
    - Range<Bound><br>
        宣言方法 → 開始する任意の数値..<終了する任意の数値<br>
        開始する任意の数値と、終了する任意の数値未満の値を境界とする範囲を生成<br>
        カウントはできない<br>
        <br>

        ```swift:title
        //具体例

        let range: Range<Int> = 1..<5   // 1~4までの範囲を生成

        let doubleRange: Range<Double> = 1.0..<5.0  // 1.0~4.9999999...を生成

        print(type(of:range))   // Range<Int>

        print(type(of:doubleRange)) // Range<Dounble>

        for i in range{

            print(i)    // カウント不可なので実行できない

        }
        ```
    - CountableRange<Bound><br>
        宣言方法 → 開始する任意の数値..<終了する任意の数値<br>
        開始する任意の数値と、終了する任意の数値未満の値を境界とする範囲を生成する<br>
        カウント可能<br>
        <br>

        ```swift:title
        //具体例

        let range: CountableRange<Int> = 1..<5  // 1~4までの範囲を生成

        let countableRange = 1..<5

        let doubleRange: CountableRange<Double> = 1.0..<6.0 // Double型はカウント不可能なのでエラーとなる。

        print(type(of:range))   // CountableRange<Int>

        print(type(of: countalbleRange))    // Int型の範囲を宣言した場合、型推論によりCountableRange<Int>となる

        for i in range{

            print(i)        // 1, 2, 3, 4

        }
        ```

    - PartialRangeUpTo<Bound><br>
        宣言方法 → ..<終了する任意の数値<br>
        終了する任意の数値未満の値までを境界とする範囲を生成する。境界は終了する任意の数値未満の値のみとなる。<br>
        カウント不可<br>
        <br>
        ```swift:title
        //具体例

        let range: PartialRangeUpTo<Int> = ..<5 // 5未満の数値の範囲を生成

        print(type(of: range))  //PartialrangeUpTo<Int>

        for i in range{
            print(i)        //カウント不可のため実行エラーとなる

        }
        ```
    
    - ClosedRange<Bound><br>
        宣言方法 → 開始する任意の数値...終了する任意の数値<br>
        開始する任意の数値と終了する任意の数値を境界とする範囲を生成する<br>
        境界値は、開始する任意の値と終了する任意の値の2つとなる。<br>
        カウント不可<br>

        ```swift:title
        // 具体例

        let range: ClosedRange<Int> = 1...4 // 1~4までの範囲を生成

        for i in range{

            print(i)    // カウント不可のためエラーとなる

        }

        ```
    
    - CountableClosedRange<Bound><br>
        宣言方法 → 開始する任意の数値...終了する任意の数値<br>
        開始する任意の数値と終了する任意の数値を境界とする範囲を生成する<br>
        境界値は、開始する任意の値と終了する任意の値の2つとなる。<br>
        カウント可<br>

        ```swift:title
        // 具体例

        let range: CountableClosedRange<Int> = 1...6   //1~6までの範囲を生成

        for i in range{

            print(i)    // カウント可なので1~6の整数が順番に表示される

        }

        let doubleRange:  CountableClosedRange<Double> = 1.0...6.0  // Double型, Float型はCountableでは使用できないので、エラーとなる。

        ```
    - PartialRangeThrough<Boun><br>
        宣言 → ...終了する任意の数値<br>
        終了する任意の数値を境界とする範囲を生成する。<br>
        境界値は、終了する任意の数値の1つだけとなる<br>
        カウント不可<br>

        ```swift:title
        //具体例

        let range: PartialRangeThrough<Int> = ...4  // ~4までの範囲を生成

        for i in range{

            print(i)    // カウント不可のためエラーとなる。

        }
        ```
    - PartialRangeFrom<Bound><br>
        宣言 → 開始する任意の数値...<br>
        開始する任意の数値を境界とする範囲を生成する。<br>
        境界値は、開始する任意の数値の1つだけとなる。<br>
        カウント不可<br>

        ```swift:title
        // 具体例

        let range: PartialRangeFrom<Int> = 5... // 5~の範囲を生成する。

        for i in range{

            print(i)    // カウント不可のためエラーとなる

        }
        ```
    - CountablePartialRangeFrom<Bound><br>
        宣言 → 開始する任意の数値...<br>
        開始する任意の数値を境界としたそれ以上の範囲を生成する<br>
        境界値は、開始する任意の数値の1つだけとなる。<br>
        カウント可<br>

        ```swift:title
        // 具体例

        let range: CountablePartialRangeFrom<Int> = 4...    // 4~の範囲を生成する

        for i in range{
            print(i)    // カウント可なので、実行できるが、以上なので無限ループとなる。

        }

        let doubleRange: CountablePartialRange<Double> = 1.4... // Double型, Float型はCountableでは使用できない。
        ```
- 範囲型の型推論
    範囲型でも他の型と同じように型推論を使用できる。<br>
    型推論は両辺の型から推測される。<br>
    ```swift:title
    //具体例

    // Int..<Intの場合

    let intRange = 1..<4
    print(type(of: intRange))  //CountableRange<Int>

    // Double..<Doubleの場合

    let doubleRange = 1.3..<5.3
    print(type(of: doubleRange))    //Range<Double>

    // Int..<Doubleの場合

    let range = 1..<7.4
    print(type(of: range))  // Range<Double>
    ```

    また、型アノテーションを使用した場合には、型アノテーションが優先される。
    ```swift:title
    // 具体例

    let range: Range<Double> = 1..<6
    print(type(of: range))  // Range<Double>
    ```
- 範囲型の操作
    - 境界値へのアクセス
        .upperBound, .lowerBoundを用いることで境界値へのアクセスを行うことができる。<br>
        境界値とは、範囲型を宣言する時に指定した数値のことである。<br>
        また、PartialRangeがつくものは開始の数値または終了の数値のどちらかしか取得できない。<br>

        ```swift:title
        //具体例

        let intRange: Range<Int> = 1..<4
        
        print(intRange.upperBound)  // 4

        print(intRange.lowerBound)  // 1

        let coubleRange: Range<Double> = 1.3..<6.7

        print(doubleRange.upperBound)   // 6.7

        print(doubleRange.lowerBound)   // 1.3

        let intPartialRange: PartialRangeUpTo<Int> = ..<6

        print(intPartialRange.upperBound)   // 6

        print(intPartialRange.lowerBound)   // 存在しないため、エラーとなる。

        let doublePartialRange: PartialRangeFrom<Double> = 1.2...

        print(doublePartialRange.upperBound)    // 存在しないため、エラーとなる

        print(doublePartialRange.lowerBound)    // 1.2
        ```
    - 含まれているかの判定
        .contains()を用いることで、ある値がその範囲に含まれているかを判定できる。<br>
        含まれる場合は __true__ を、含まれない場合は __false__ を返す。<br>
        ```swift:title
        // 具体例

        let range: Range<Int> = 1..<8
        print(range.contains(2))    // true

        print(range.contains(11))   // false
        ```

### コレクションとしてのString型
String型は1文字の集合と考えるとコレクションと捉えることができる。<br>

- Character型
    1文字を扱う型をCharacter型といい、1文字しか扱うことができない。<br>
    文字を扱う変数の場合、デフォルとはString型であるため、Character型を扱い時は<br>
    型アノテーションを使用しなければならない。<br>
    ```swift:title
    // 具体例

    var s = "a"
    print(type(of: s))  // 型推測により、String型となる

    var char: Character = "a"
    print(type(of: s))  // 型アノテーションによりCharacter型となる。
    ```

- String.Index型
    String.Indexとは、String型のそれぞれの文字の位置を表す型のこと<br>
    String.Indexを添字として指定することで、対応する文字を取得することができる<br>
    .endIndexは一番最後の場所を返すのではなく、その次の値を返してしまうので<br>
    その値を使って文字を指定しようとすると、文字は存在しないので<br>
    エラーとなってしまう。(Range型に似ている 1..<4 4は含まない的な)
    ```swift:title
    //具体例

    var s = "abcd"
    var startIndex: String.Index = s.startIndex
    var endIndex = s.endIndex

    print(s[startIndex])    // a

    print(s[endIndex])  // エラー
    ```
- offsetBy
    上で説明したendIndexを文字列の一番最後に対応させたいときや<br>
    参照位置をずらしたい時に使用する。<br>

    使用するときは
    .index(元になるインデックス, offsetBy: ずらしたい数)

    ```swift:title
    // 具体例

    var s = "abcd"
    var lastIndex = s.index(s.endIndex, offsetBy: -1)

    print(s[lastIndex])     // d
    ```
- for in を用いた文字の取り出し
    String型はfor in を用いることで、一文字ずつ取り出すことができる。<br>
    取り出した文字はCharacter型となる。<br>

    ```swift:title
    // 具体例

    var s = "abcd"

    for i in s{
        print(i)    // a, b, c, dと順番に表示される

        print(type(of: i))  // Character

    }
    ```
### if文
- 基本文法
    javaとPythonの中間みたいな書き方
    ```swift:title

    if 条件式{

        //条件式がTrueの時に実行したい処理

    }
    ```

- else文
    ```swift:title
    if 条件式{

        //条件式がTrueの時に実行したい処理

    }else{

        //条件式がFalseの時に実行したい処理

    }
    ```

- else if文
    pythonの影響で「elif」と書きそう...

    ```swift:title
    if 条件式1{

        //条件式1がTrueの時に実行したい処理

    }else if 条件式2{

        //条件式1がFalseだが条件式2がTrueの時に実行したい処理

    }else{
        
        //どちらの条件にも当てはまらない時に実行したい処理

    }
    ```

- Optional型とif文
    if var 変数名 = Optional型<br>
    または<br>
    if let 定数名 = Optional型<br>
    を用いることでoptional型のアンラップができる。<br>
    また、複数同時にアンラップも可能

    ```swift:title
    // 基本的なアンラップ

    let optionalA: Optional<Int> = 12  // Optional<12>

    if let intA = optionalA{

        print(intA)        // 12

    }else{

        // もし中身がnilだった場合ここが実行される。

    }
    ```
    ```swift:title
    // 複数同時にアンラップ

    var optionalA: Optional<Int> = 1
    var optionalB: Int? = 12

    if var intA = optionalA, var intB = optionalB{

        print(intA, intB)   // 1 12

    }else{

        // 一つでもnilがあった場合はここが実行される

    }
    ```

    if-let または if-var でアンラップした値は{}の中がスコープとなる<br>
    {}外で使用するとスコープ外となりコンパイルエラーとなる

    ```swift:title
    var a: Int? = 12

    if var b = a{

        print(b)    //スコープ内のため使用可能

    }

    print(b)    // スコープ外のためコンパイルエラー

    ```
- guard文
    前提条件をつけられる<br>
    guard文に記述した条件が不成立の時に{}の中を実行する。<br>
    {}の中ではguard文が記述されているスコープの外に退出する処理がなくてはならない。<br>

    ```swift:title
    
    func some(){
        var a = 12

        guard a < 10 else{

            print("a < 10はfalseなのでここが実行される")
            return      // スコープ外に退出する処理

        }

        print("guard文が実行されたので、ここは無視される")
    }

    var b = 13
    let range = 1..<7
    for i in range{
        guard b > 10{

            print("b > 10はtrueなのでここは実行されない")
            break   //スコープ外に退出する処理

        }
        print("guard文が実行されなかったので、ここが実行される")
    }
    ```
    guard-let文<br>
    if-letと同じくアンラップを行うことができる。<br>
    大きな違いはguard-let文のスコープ外でもここで生成した値は使用できると言う点である。
    ```swift:title
    func add(_ a:Int?)->Int?{
        guard let intA = a else{
            print("nil値が設定されています。")
            return nil
        }

        return a + 10
    }

    // var b: Int? = 3

    var b: Int? = nil
    var c = add(b)
    print(c)
    ```
    上のプログラムの場合bにはnilが入っているため、guard文が実行される<br>
    一方bに3が入っている場合はアンラップに成功し、10足されたものが返される

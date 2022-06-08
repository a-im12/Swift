# Swift

## biginerファイル
- swiftの動きを勉強するためのファイル

## biginerログ
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
    - ClosedCauntableRange<Bound>
    - PartialRangeThrough<Bound>
    - PartialRangeFrom<Bound>
    - CountablePartialRangeFrom<Bound>
以上の8種が範囲型の型の種類である。<Bound>の中には具体的な型の名前(IntやDoubleなど)が入る<br>
<br>

- 型の解説
    - Range<Bound><br>
        宣言方法→開始する任意の数値..<終了する任意の数値<br>
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
        宣言方法→開始する任意の数値..<終了する任意の数値<br>
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

    - PartialRangeUpTo<br>
        宣言方法→..<終了する任意の数値<br>
        終了する任意の数値未満の値までの範囲を生成する。境界は終了する任意の数値未満の値のみとなる。<br>
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


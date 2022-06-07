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
- なぜアンラップが必要なのか
Optional型のままでは値同士の演算ができないから
- アンラップの方法
    - if let 定数名 = Optional型
    もしOptional型の中身がnilだった場合ifの中は実行されない<br>
    オプショナルバインディングという
    <br>
    - var 変数名 = Optional型!
    強制アンラップといい中身がnilだった場合エラーとなりプログラムが終了する
    <br>
    var 変数名 = Optional型 ?? 具体的な値
    ??演算子といい中身がnilの場合は??の後ろの値を<br>
    nilじゃ無い場合はOptional型の値を返す。<br>
    ```
    swift:title  
    var option: Int? = 12   //Optional<12>
    var num = option ?? 1   //12

    option = nil
    var num = option ?? 1   //1
    ```

### オプショナルチェイン
オプショナルチェインとは、アンラップを行わずにOptional型の値を操作すること<br>
主にmapメソッド、flatMapメソッドによって実現する。<br>

```
swift:title
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

### 配列Arrayまで学習
- var 変数名: Array[任意の型名] = [値, 値, 値...]
- 任意の型名;
    - Sting, ?
    - Int, ?
    - Float, ?
    - Double, ?
    - Any
    - 型名?とするとoptional<型名>のリスト

### Dictionaryから次回学習

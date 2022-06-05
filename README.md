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
    ```swift:title
    var option: Int? = 12   //Optional<12>
    var num = option ?? 1   //12

    option = nil
    var num = option ?? 1   //1
    ```

### 配列Arrayまで学習
- var 変数名: Array[任意の型名] = [値, 値, 値...]
- 任意の型名
    - Sting, ?
    - Int, ?
    - Float, ?
    - Double, ?
    - Any
    - 型名?とするとoptional<型名>のリスト

### Dictionaryから次回学習

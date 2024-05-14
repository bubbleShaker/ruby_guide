# 参照渡しに注意
```
class User
    attr_accessor :family_name,:given_name,:age
    def initialize(family_name,given_name,age)
        @family_name=family_name
        @given_name=given_name
        @age=age
    end
    def name(full,with_age)
        n=if full
            "#{family_name}#{given_name}"
        else
            given_name
        end
        if with_age
            n<<"(#{age})"
        end
        n
    end
end

user=User.new("Tanaka","Taro","20")
puts user.name(true,true)
puts user.name(true,false)
puts user.name(false,true)
puts user.name(false,false)
```

このプログラムの実行結果は以下のようになる。
```
TanakaTaro(20)
TanakaTaro
Taro(20)
Taro(20)
```
最後の出力はTaroになってほしいが、Taro(20)になっている。

これはnにgiven_nameのデータの参照が渡されているため、
```
if with_age
    n<<"(#{age})"
end
```
でgiven_dataそのものに文字列が追加されていることが原因。

対処法は複数ありそうだが、
```
n=if full
    "#{family_name}#{given_name}"
else
    given_name
end
```
を以下のように変更すれば、文字列のコピーを渡せそう。
```
n=if full
    "#{family_name}#{given_name}"
else
    "#{given_name}"
end
```
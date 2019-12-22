## Q1. 以下の配列から、期待された結果の配列を作成してください
# [1, 2, 3, 4, 5]

numbers = [1, 2, 3, 4, 5]
p numbers.map{|number|number + number - 1}

## Q2. 以下の配列から、期待された結果の配列を作成してください
# ["田中", "佐藤", "佐々木", "高橋"]

name = ["田中", "佐藤", "佐々木", "高橋"]
name.push("斎藤")
p name


## Q3. 以下の文字列の配列を数字だけの配列に変換してください
# ["1", "2", "3", "4", "5"]

numbers = ["1", "2", "3", "4", "5"]
numbers.map!(&:to_i)
p numbers

## Q4. 以下の二つの配列を合体させた新しい配列を作成してください
# ["dog", "cat", "fish"]
# ["bird", "bat", "tiger"]

pets = ["dog", "cat", "fish"]
animals = ["bird", "bat", "tiger"]
p pets + animals

## Q5. 以下の配列の中に3がいくつあるか数えるコードを書いてください
# [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
puts numbers.count(3)

## Q6. 配列が空であればtrue、1つ以上の要素があればfalseを返すコードを書いてください
# [] -> true
#[1, 5, 8, 10] -> false

numbers = [1]
puts numbers.empty?
numbers = []
puts numbers.empty?

## Q7. 配列であればtrue、配列でなければfalseを返すコードを書いてください
#[] -> true
#{} -> false

a1 = []
a2 = {}

p a1.instance_of?(Array)
p a2.instance_of?(Array)

## Q8. mapとは異なるメソッドを使って以下と全く同じ処理を実現させてください
#numbers = ["6", "5", "3", "7", "1"]
#p numbers.map {|item| item.to_i }
#-> [6, 5, 3, 7, 1]

numbers = ["6", "5", "3", "7", "1"]
p numbers.map {|item| item.to_i }

p numbers.collect {|item| item.to_i }

## Q9. 以下の配列を用いて、期待通りの出力結果になるようにコードを書いてください
# ["田中", "佐藤", "佐々木", "高橋"]

@names = ["田中", "佐藤", "佐々木", "高橋"]
@names.each.with_index(1){|name,index| puts "会員No.#{index} #{name}さん"}

## Q10.  以下の配列の最後に山下を追加してください
# ["田中", "佐藤", "佐々木", "高橋"]

names = ["田中", "佐藤", "佐々木", "高橋"]
names.push("山下")
p names

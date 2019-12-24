## Q1. 以下の配列から、期待された結果の配列を作成してください
# [1, 2, 3, 4, 5]

numbers = [1, 2, 3, 4, 5]
p numbers.map{|number|number + number - 1}

## Q2. 以下の配列から、期待された結果の配列を作成してください
# ["田中", "佐藤", "佐々木", "高橋"]

name = ["田中", "佐藤", "佐々木", "高橋"]
name << "斎藤"
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
arr = []
numbers.each do |new_numbers|
  arr << new_numbers.to_i
end

p arr
## Q9. 以下の配列を用いて、期待通りの出力結果になるようにコードを書いてください
# ["田中", "佐藤", "佐々木", "高橋"]

@names = ["田中", "佐藤", "佐々木", "高橋"]
@names.each.with_index(1){|name,index| puts "会員No.#{index} #{name}さん"}

## Q10.  以下の配列の最後に山下を追加してください
# ["田中", "佐藤", "佐々木", "高橋"]

names = ["田中", "佐藤", "佐々木", "高橋"]
names << "山下"
p names

## Q11 以下の配列から重複する部分だけを抽出した新しい配列を作成してください

favorite_sport = ["フットサル", "バスケット"];
selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"];

p favorite_sport & selected_sport

## Q12 以下の配列を用いた繰り返し処理において、「うに」が含まれていれば「好物です」と表示し、そうでなければ「まぁまぁ好きです」と表示するようにコードを書いてください

  sushi_netas = ["いか", "たこ", "うに", "しゃけ", "うにぎり", "うに軍艦", "うに丼"]
  sushi_netas.each do |neta|
    # 3項演算子ver
    like = neta.include?("うに") ? "#{neta}: 好物です" : "#{neta}: まぁまぁ好きです"
    puts like
    # 3項演算子不使用
    # if neta.include?("うに")
    #   puts "#{neta}: 好物です"
    # else
    #   puts "#{neta}: まぁまぁ好きです"
    # end
  end

  ## Q13. 以下の配列から奇数だけを選んだ新しい配列を作成してください

  number = [1, 2, 3, 4, 5]
p number.each_slice(2).map(&:first)

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
# selectとodd?を使った書き方
p number.select(&:odd?)

## Q14. 以下の配列からnilの要素を削除してください

sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

p sports.compact

## Q15. 以下の配列からadminの数を数えてください


names = ["admin", "user", "user", "admin", "admin"]
puts names.count("admin")

## Q16. 以下の配列をもとに期待する出力結果になるようにコードを書いてください


sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
  ball = sports.flatten!.uniq
  puts "ユーザーの趣味一覧"
  ball.each.with_index(1) do |sport,i|
    puts "No#{i} #{sport}"
  end

  ## Q17. 以下のハッシュから name の値を取り出してください


user = {name: "satou", age: 33}
puts user[:name]

  ## Q18. 以下のハッシュから name の値を取り出して下さい

{user: {name: "satou", age: 33}}
puts(user[:name])

## Q19. 以下の既存で存在する user_data に対して、 update_data の内容を反映させ user_data の内容を書き換えて下さい

user_data = {name: "神里", age: 31, address: "埼玉"}
update_data = {age: 32, address: "沖縄"}
user_data.update(update_data)
p user_data

## Q20. 以下の全てのハッシュの name と age の値を取り出し、「私の名前は〜です年齢は〜歳です」と表示してください

users = [
  {name: "satou", age: 22},
  {name: "yamada", age: 12},
  {name: "takahashi", age: 32},
  {name: "nakamura", age: 41},
]
users.each do |user|
  puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}です"
end

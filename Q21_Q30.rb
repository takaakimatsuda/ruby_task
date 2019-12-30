## Q21. 以下の配列から全てのキーを取り出してターミナルに出力してください

users = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}
p users.keys

## Q22. ハッシュを格納した以下の配列を使用し、期待した結果になるようにコードを書いてください

users = [
{name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"},
{},
{name: "yamada", age: 22, address: "tokyo", hobby: "soccer", email: "hoge@fuga.com"},
{},
{name: "suzuki", age: 44, address: "yamaguchi", hobby: "baseball", email: "hoge@fuga.com"}
]

users.each.with_index(1) do |user,i|
  if user.empty?
    puts "データはありません"
  else
    puts "No#{i}名前#{user[:name]}、年齢#{user[:age]}、趣味#{user[:hobby]}、メール#{user[:email]}"
  end
end

## Q23. 以下のハッシュをキー、バリュー含め全て配列に変換してください


users = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}


p users.to_a.flatten!

## Q24. 以下のハッシュにおいて `age` というキーが含まれている場合は `OK` 、含まれていない場合は `NG` が表示されるようにしてください

users = [
  { name: "saitou", hobby: "soccer", age: 33, role: "admin" },
{ name: "yamada", hobby: "baseball", role: "normal" }
]

users.each do |user|
   puts user.include?(:age) ? "OK" : "NG"
end

## Q25.  配列 `keys` の各要素を、ハッシュ `user` がキーとして保持するかどうかを判定するコードを書いてください

keys = [:age, :name, :hobby, :address]
user = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }

keys.each do |key|
  puts(user.has_key?(key) ? "userには#{key}というキーがあります" : "userには#{key}というキーがありません")
end

## Q26. 以下の２つのハッシュを合体させた新しいハッシュを作成してください

first_language = {C: "printf", COBOL: "DISPLAY", Go: "fmt.Print", Java: "System.out.println"}
second_language = {JavaScript: "console.log", R: "print", Ruby: "puts"}

p first_language.merge(second_language)

## Q27. 名前、年齢、性別、管理者権限の情報を持ったユーザークラスを定義してインスタンスを作成してください
##管理者権限の有無はtrueかfalseで表してください

class User

  def initialize(params)
    @name = params[:name]
    @age = params[:age]
    @gender = params[:gender]
    @admin = params[:admin]
  end

  def info
    admin = @admin ? "true" : "false"
    puts <<~EOS
      名前:#{@name}
      年齢:#{@age}
      性別:#{@gender}
      管理者権限:#{admin}
    EOS
  end
end

user1 = User.new(name: "神里", age: 32, gender: "男", admin: true)
user2 = User.new(name: "あじー", age: 32, gender: "男", admin: false)

user1.info
puts "-----------"
user2.info

## Q29.次のようなコードを書いて、目標の出力になるようなUserクラスを定義してください
##(名前情報は各自変えて大丈夫です！)
##ただし、今回は attr_accessor attr_reader attr_writer は使用しないでください

class User_29
  def initialize(name:)
    @name = name
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  user = User_29.new(name: "あじー")

  puts user.name

  user.name = "tanakin"

  puts user.name

end

## Q30. 以下のようなコードを書いて、期待した出力になるようなUserクラスを定義してください

class User_30
  def initialize(params)
    @name = params[:name]
    @age = params[:age]
  end

  def introduce
    @age > 15 ? "こんにちは、#{@name}と申します宜しくお願いいたします": "はいさいまいど〜、#{@name}です！！！"
  end

user = User_30.new(name: "あじー", age: 32)

puts user.introduce

user2 = User_30.new(name: "ゆたぼん", age: 10)

puts user2.introduce

end

## Q31. 以下のようなコードを書くとエラーが出たので期待する出力結果となるように修正してください

class Item
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
def q31
book = Item.new("ゼロ秒思考")

puts book.name
end
## Q32.次の仕様を満たすコードを書いてください

#名前、年齢の情報を持った「ユーザークラス」を定義してください
#名前、入場料金の情報を持った「動物園クラス」を定義してください
#入場料金は、幼児(0~5歳)、子供(6~12歳)、成人(13~64歳)、シニア(65~120歳)の4パターン設定してください(金額はお任せします)
#動物園クラスに、ユーザークラスから生成されたインスタンスを受け取って、受けとったユーザーの年齢に応じて、入場料金を返す「check_entry_feeメソッド」を定義してください(年齢として無効な値が渡った場合は「無効な値です」と返してください)

class User_32
  attr_accessor :name, :age

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end
end
class Zoo_32
  attr_accessor :name, :infant_fee, :child_fee, :senior_fee, :entry_fee
  def initialize(**params)
    @name = params[:name]
    @infant_fee = params[:infant_fee]
    @child_fee = params[:child_fee]
    @adult_fee = params[:adult_fee]
    @senior_fee = params[:senior_fee]
end

  def check_entry_fee(user_32)
    price = case user_32.age
    when 0..5
      @infant_fee
    when 6..12
      @child_fee
    when 13..64
      @adult_fee
    when 65..120
      @senior_fee
    else
      return puts "無効な値です"
    end

    puts "#{@name}では、#{user_32.name}さんは#{user_32.age}歳なので#{price}円です"

  end
end
def q32
  user1 = User_32.new(name: "ヤマダ",age:4)
  user2 = User_32.new(name: "スズキ",age:11)
  user3 = User_32.new(name: "サトウ",age:120)
  user4 = User_32.new(name: "無効な値",age:121)
  zoo = Zoo_32.new(name: "王子動物園", infant_fee:500,child_fee:1000,adult_fee:1500,senior_fee:2000)
  zoo.check_entry_fee(user1)
  zoo.check_entry_fee(user2)
  zoo.check_entry_fee(user3)
  zoo.check_entry_fee(user4)
end
## Q33.  次の指定のキー name, age, address, tell が、Hash値のキーとして過不足無く含まれているかを判定するコードを書いてください

def q33
user = {name: "あじー", age: 32, address: "札幌", tell: "090-000-000"}
user2 = {name: "あじー", age: 32, address: "札幌"}
keys = [:name, :age, :address, :tell]

p user.keys == keys
p user2.keys == keys
end
## Q34.次のコードが成り立つようにコードを書き加えてください

def q34
  programming_language = ["ruby", "php", "python", "javascript"]

  programming_language.map(&:capitalize!)
  upper_case_programming_language = programming_language.map(&:upcase)

  p programming_language
  p upper_case_programming_language
end

## Q35 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました

def q35
value = [["田中", "JavaScript"], 30]
key = ["user_name","learning_contents","learning_time"]

data =[key, value.flatten].transpose.to_h

p data
end

## Q36 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました

def q36
value = {["田中", "JavaScript"]=>30}.to_a.flatten
keys = ["user_name","learning_contents","learning_time"]

p [value,keys].transpose.to_h
end

## Q37 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました
def q37
value = {["田中", "HTML"]=>30, ["斎藤", "JavaScript"]=>50}
keys = ["user_name","learning_contents","learning_time"]

p data = value.map{|v|[keys,v.to_a.flatten].transpose.to_h}
end

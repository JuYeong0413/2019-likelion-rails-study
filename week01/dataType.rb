# 루비 데이터 타입 : integer, float, string, symbol, boolean, Array, Hash, Range

integer_var = 3
float_var = 2.5
string_var = "철수"
symbol = :안녕 # 공백이 들어갈 순 없음, 항상 이어져야 함
boolean = true
array_var = ['hello', true, :hello, 3, ['1', 2]]
hash = {
    :name => "철수",
    :age => 25,
    :phone => "010-0000-0000"
}

# 이걸 더 많이 씀
hash2 = {
    name: "철수",
    age: "25",
    phone: "010-0000-0000"
}
range_var = 1..5

p integer_var.class
p float_var.class
p range_var.class
p symbol_var.class
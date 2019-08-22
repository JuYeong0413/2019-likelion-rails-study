# Array 배열 : 순서가 있고, 중복 가능, 수정 가능, 삭제 가능
my_arr = []
my_arr = Array.new(1) {"hello"}
puts my_arr

my_arr = [1, 2, true]
puts my_arr * 3

my_arr2 = [5, "hello", ['1', '2']]
print my_arr + my_arr2

my_arr2[2] = :ko
print my_arr2

my_num_array = [5, 3, 7]
p my_num_array.sort
p my_num_array.sort.reverse

arr = []
arr.push(1)
arr.push(3)
p arr
arr << 10 # push랑 똑같은 것
p arr
arr.pop # 맨 뒤의 원소 삭제
p arr
# string 하나의 데이터를 표현하는데 순서도 있고, 변경이 가능한 데이터
my_string = "ruby"
p my_string[0]

my_string[3] = "haha"
p my_string

p "hello".object_id # 주소값 찍어보기
p :hello.object_id
# symbol은 같은 주소값에 할당됨, heap 메모리 재사용
# 메모리 효율성 측면이나 성능 측면에서 심볼이 훨씬 유리하다

# string은 인덱싱과 슬라이싱 가능
my_string = "ruby"
p my_string[1..2]
p my_string[-1]

# 이스케이프 문자 \s, \t, \n, \ 반드시 쌍따옴표 안에만 써야 함
puts "hello\nworld"
puts 'hello\nworld'

var1 = "철수"
var2 = "영희"

puts "안녕 #{var1}야 나는 #{var2}라고해"
puts '안녕 #{var1}야 나는 #{var2}라고해' # ''는 raw string

puts my_string.length
puts my_string.size


my_str = "apple"
puts my_str.capitalize
puts my_str.upcase

new_str = my_str.upcase
puts new_str.downcase
puts my_str.end_with?('e')
puts my_str.start_with?('a')
puts my_str.gsub('pl', 'ppl')
puts my_str.reverse
p my_str.split('l')

new_arr = my_str.split('l')
p new_arr.join(', ')
p new_arr.join(',\s')
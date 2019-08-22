my_string = "hello world"
your_string = "nihao world"

# print
# p 따옴표가 들어가서 나온다
# 컴파일 명령어 : ruby first.rb
puts my_string, your_string

new_string = "'간장게장'"
p new_string
puts new_string
print new_string

# escape 문자는 "" 안에서 사용해야 한다
# \s는 whitespace
# \t는 tab (space 4번)
# \n 줄바꿈
# escape 문자는 puts로 출력하기 (p는 그냥 나옴)

# ruby에서는 camelcase 잘 안 씀
def puts_name(name)
    puts "hello" + name
end

puts_name("이주영")

@name = "ㅎㅎ"
# @하나는 전역변수, 그냥 쓰면 지역변수
p(@name)

parameter = "#간장 #게장 #개꿀 #밥도둑"
p parameter.delete('#').split()

no_shap_parameter = parameter.delete('#')
hashtag_arr = no_shap_parameter.split(' ')
hashtag_arr.each do |hashtag|
    puts hashtag
end

a = [1, 5, 3, 7, 2]
puts a
puts a.sort

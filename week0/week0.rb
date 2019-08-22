# 레일즈 스터디 0주차 과제
# 문제 1
# 원소가 1000개인 숫자로 이루어진 임의의 배열을 랜덤으로 생성하고
# 이를 정렬하는 알고리즘을 두 가지 방법으로 구현하시오.
puts "======================[문제 1]======================"
# 방법 1 - 선택 정렬
puts "================[방법 1 - 선택 정렬]================"
# 배열 랜덤 생성
num_array  = 1000.times.map do |num|
    rand(1..10000)
end

p num_array

num_array.each do |num|
    initial_index = num_array.index(num)
    min_index = initial_index
    break if initial_index == num_array.length - 1 # 마지막은 정렬된 상태니까 끝내기

    # 배열의 최소값 찾기
    flag = initial_index
    num_array[initial_index...num_array.length].each do |num2|
        if num2 < num_array[min_index]
            min_index = flag
        end
        flag = flag + 1
    end
    
    # swap
    if initial_index != min_index
        temp = num_array[initial_index]
        num_array[initial_index] = num_array[min_index]
        num_array[min_index] = temp
    end

    # 출력
    p num_array
end

# 방법 2 - 버블 정렬
puts "================[방법 2 - 버븓 정렬]================"
# 배열 랜덤 생성
num_array  = 1000.times.map do |num|
    rand(1..10000)
end

p num_array

i = 0
j = 0
num_array[0...num_array.length - 1].each do |num|
    num_array[0...num_array.length - 1 - i].each do |num2|
        
        # swap
        if num_array[j] > num_array[j + 1]
            temp = num_array[j]
            num_array[j] = num_array[j + 1]
            num_array[j + 1] = temp
        end
        j = j + 1
    end
    i = i + 1
    j = 0

    # 출력
    p num_array
end


# 문제 2
# content = "#인스타 #기쁨 #행복 #간장 #게장 #밥도둑"
# 위의 스트링을 ['인스타','기쁨','행복',...] 형태로 바꾸고 반복문으로 이를 출력하시오.
puts "======================[문제 2]======================"

content = "#인스타 #기쁨 #행복 #간장 #게장 #밥도둑"
hashtag_arr = content.delete('#').split()
p hashtag_arr

hashtag_arr.each do |hashtag|
    p hashtag
end


# 문제 3
# 위의 ['인스타','기쁨','행복',...] 배열을 "인스타, 기쁨, 행복,..." 형태의 string으로 바꾸어 출력하시오.
puts "======================[문제 3]======================"
string_arr = hashtag_arr.join(", ")
p string_arr
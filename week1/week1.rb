# 레일즈 스터디 1주차 과제
# 문제 1
# 다음주소 "https://dongguk.likelion.org"에서 "https://" 만 제거해보시오
domain = "https://dongguk.likelion.org"
p domain.delete("https://")

# 문제 2
# 1부터 100까지 자연수 중 '홀수'만 출력하시오
range_var = 1..100
range_var.each do |number|
    if number % 2 == 1
        p number
    end
end

# 문제 3
# ["hello", "nihao", "hello rails", "good man", "holly", "wow"]  중 5글자 이상의 단어만 출력하시오
my_arr = ["hello", "nihao", "hello rails", "good man", "holly", "wow"]
my_arr.each do |element|
    if element.length >= 5
        p element
    end
end

# 문제 4
# ["A", "b", "e", "F", "C", "d", "m"] 중에서 소문자는 대문자로, 대문자는 소문자로 출력하시오
# alphabet_arr = ["A", "b", "e", "F", "C", "d", "m"]
alphabet_arr = %w(A b e F C d m)
result = []
alphabet_arr.each do |alphabet|
    if alphabet == alphabet.upcase # 대문자인 경우
        result.push(alphabet.downcase)
    else # 소문자인 경우
        result.push(alphabet.upcase)
    end
end

p result

# 문제 5
# 루비에서 문자열과 심볼의 차이를 설명하시오 (서술형)
# 문자열은 순서가 있고 변경이 가능
# 심볼은 한 번 생성하면 변경이 불가능, heap 메모리 재사용
# 문자열보다 심볼이 메모리 효율성이나 성능 측면에서 유리하다.

# 문제 6
# Car 클래스에 attribute : name, price를 읽기만 가능하게 만들고,
# Benz(벤츠) 클래스에 이를 상속하고 클래스 메소드와 인스턴스 메소드를 자유롭게 만들어 이를 적당하게 실행시키시오
class Car
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    def self.drive
        p "Car Driving"
    end

    def drive
        p "#{@name} Driving"
    end

    def print_price
        p "#{@name} price is #{@price}"
    end
end

class Benz < Car
    attr_reader :color

    def initialize(color, name, price)
        @color = color
        super(name, price)
    end

    def print_color
        p "#{@name} color is #{@color}"
    end
end

my_car = Car.new("car", 1000)
my_car.drive
my_car.print_price
Car.drive

my_benz = Benz.new("white", "benz", 2000)
my_benz.drive
my_benz.print_color
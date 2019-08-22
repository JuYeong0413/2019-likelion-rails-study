def function_name params
    print(params)
end

function_name "철수"

def return_function(name)
    "안녕 #{name}"
end

result =return_function("철수")
puts result


class People
    include AboutTime
    attr_reader :name, :age, :phone # 읽는 권한
    attr_writer :name, :age, :phone

    @@current_time = Time.now # 클래스 변수

    def initialize(name, age, phone)
        @name = name
        @age = age
        @phone = phone
    end

    # 인스턴스 메소드
    def hurray
        print("#{@name}이(가) #{@@current_time}에 만세를 외쳤다.")
    end

    # 클래스 메소드
    def self.dance # self는 클래스 자체를 얘기함. People에 붙어야 하는 것
        print("세계의 모든사람이 춤을 춘다.")
    end

    def self.hurray
        print("세계사람들 모두가 #{@@current_time}에 만세를 외쳤다.")
    end

    def name_search(query)
        nil
    end

    def age_search(query)
        nil
    end

    def phone_search(query)
        nil
    end

    def process_search_by_category(category, params)
        # if category == "name"
        #     name_search(query)
        # elsif category == "age"
        #     age_search(query)
        # elsif category == "phone"
        #     phone_search(query)
        # end

        # %w(name age phone) == ["name", "age" "phone"]
        if %w(name age phone).include?(category)
            send("#{category}_search", query) # string 형태를 메소드로 인식해서 실행함
        end
    end

    private
    def hello
        print("#{@name}이(가) 인사를 합니다.")
    end
end

people1 = People.new("철수", 25, "010-0000-0000")
people2 = People.new("영희", 22, "011-1111-2222")

print people1.name, people2.name

people1.name = "성원"
print people1.name

people1.hurray

People.dance
People.hurray


# 루비는 다중상속 불가능
class Korean < People
    attr_reader :address

    def initialize(address)
        @address = address
    end
end

my_friend = Korean.new("서울 중구 필동3가 ...")
my_friend.hurray


module AboutTime
    @@current_time = Time.now
end
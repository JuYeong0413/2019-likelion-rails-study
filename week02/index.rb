class Car
    attr_reader :name, :color
    
    def initialize(name, color)
        @name = name
        @color = color
    end

    def self.dance
        puts("자동차가 춤을춘다")
    end

    def puts_info
        puts("#{@name}자동차가 #{@color}을 갖고있다.")
    end
end

Car.dance
car = Car.new("개꿀", "빨간색")
car.puts_info

class Benz < Car
    attr_reader :name

    def initialize(model_type, name, color)
        @model_type = model_type
        super(name, color)
    end
end

benz = Benz.new("205D", "벤츠개꿀", "노란색")
puts benz.name
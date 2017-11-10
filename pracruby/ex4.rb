class Human
    def initialize(name, age)
        @name = name
        @age = age
    end

    def initial
        @name.initial
    end

    def middle?
        @name.middle?
    end

    def greater(target)
        @age > target
    end
end

human1 = Human.new(Name.new('Barack', 'Obama'), 55)

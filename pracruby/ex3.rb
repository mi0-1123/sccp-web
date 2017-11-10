class Name
    def initialize(first, middle=nil, family)
        @first = first
        @middle = middle
        @family = family
    end

    def initial()
        if(middle?)
            "#{@first[0]}.#{@middle[0]}.#{@family[0]}."
        else
            "#{@first[0]}.#{@family[0]}."
        end
    end

    def middle?()
        @middle.nil? == false
    end

    def to_s()
        if(middle?)
            "#{@first}.#{@middle}.#{@family}."
        else
            "#{@first}.#{@family}."
        end
        
    end
end



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

    def to_s()
        @name.to_s
    end

end



human1 = Human.new(Name.new('Barack', 'Obama'), 55)
human2 = Human.new(Name.new('George', 'W', 'Bush'), 70)
human3 = Human.new(Name.new('Donald', 'Trump'), 70)

human_list = [human1, human2, human3]
puts human1
puts human2
puts human3

human_list.select{|hu| hu.greater(60) && hu.middle?}.each{|hu|puts hu}


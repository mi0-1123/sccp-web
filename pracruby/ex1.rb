class Hello
    def initialize(name)
        @name = name
    end

    def greet()
        "Hello, #{@name}"
    end
end

oop = Hello.new("OOP")
print oop.greet()

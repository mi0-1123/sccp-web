class BasicStack
  attr_reader :stack

  def initialize(stack=[])
    @stack = stack.freeze
  end

  def push(v)
    self.class.new(@stack.dup.concat([v]))
  end

  def pop
    self.class.new(@stack[0..-2])
  end
end

module Doubling
  def push(v)
    super(v * 2)
  end
end

module PlusTwo
  def push(v)
    super(v + 2)
  end
end

module NegativeFilter
    def push(v)
        if v > 0
            super(v)
        else
            self
        end
    end
end

class MyStack < BasicStack
  include PlusTwo
  include Doubling
  include NegativeFilter
end


p MyStack.new.push(1).push(2).push(-1).push(3).push(4)
p MyStack.ancestors

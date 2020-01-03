  class Stack               #LIFO 
    def initialize
      # create ivar to store stack here!
      @value = [] 
    end

    def push(el)
      # adds an element to the stack
        @value << el 
    end

    def pop
      # removes one element from the stack
      @value.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @value.first
    end
  end
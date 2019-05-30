class Stack
  attr_reader :underlying_array
   def initialize
     @underlying_array = []
   end
   def push(el)
     underlying_array.push(el)
     el
   end
   def pop
     underlying_array.pop
   end
   def peek
     underlying_array.last
   end
end

class Queue
  attr_reader :underlying_array
    def initialize
      @underlying_array = []
    end
    
    def enqueue(el)
      underlying_array.push(el)
    end

    def dequeue
      underlying_array.shift
    end

    def peek
      underyling_array.first
    end

end


class Map
    def initialize
      @underlying_array = []
    end
    
    def set(key, value)
      underlying_array.index { || }
    end

    def delete(key)

    end

    def show

    end
end
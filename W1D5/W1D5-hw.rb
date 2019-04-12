class Stack
    def initialize
      @arr = Array.new
    end

    def push(el)
      @arr.push(el)
    end

    def pop
      @arr.pop
    end

    def peek
      @arr.last
    end
end

class Queue
    def initialize
        @arr = Array.new
    end

    def dequeue
        @arr.pop
    end

    def enqueue(el)
        @arr.unshift(el)
    end

    def peek
        @arr.first
    end
end
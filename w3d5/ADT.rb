class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []

    end
  
    def push(el)
      # adds an element to the stack
      @stack.push(el)
    end
  
    def pop
      # removes one element from the stack
      @stack.pop(el)
    end
  
    def peek
        @stack[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end
  

  class Queue 
    def initialize
        @queue = []
    end 

    def enqeue(el)
        @queue.push(el)
    end 

    def dequeue
        @queue.shift 
    end 

    def peek 
        @queue[0]
    end 
end 


    class Map 
        def initialize
            @map = []
        end 


        def set(key,val)
            key_pair = @map.index {|i| i[0] == key}
            if key_pair
                @map[key_pair] == val
            else 
                @map.push([key,val])
            end 
        end 

        def get(key)
            
        end 

        def delete(key)
            key_pair = @map.index {|i| i[0] == key}
            if key_pair != []
                @map.delete_at(key_pair) 
            end 
        end 

        def show 
            @map.each do |key_val|
                puts key_val[0], key_val[1]
        end 

    end


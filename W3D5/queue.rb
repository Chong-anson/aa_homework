class Queue 
    def initialize
        @value = [] 
    end 
    
    def enqueue(el)
        @value.push(el) 
    end 

    def dequeue(el)
        @value.shift 
    end 

    def peek
        @value.first 
    end 
end 
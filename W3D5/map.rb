class Map 
    def initialize 
        @value = Array.new() 
        @keys = [] 
    end 

    def set(k,v)
        if @keys.include?(k) 
            index = @keys.index(k) 
            value[index] = [k,v]
        else 
            value <<[k,v]
            @keys << k 
        end 
    end 

    def get(k)
        index = @keys.index(k)
        value[index][1]
    end 

    def delete(k) 
        index = @keys.index(k) 
        value.delete_at(index)
        @keys.delete_at(index)
    end 

    def show 
        p values 
    end 

    private 
    attr_reader :value

end 
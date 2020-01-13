class LRUCache

    def initialize(size)
        @underlying_array = []
        @size = size
    end

    def count
      # returns number of elements currently in cache
      @underlying_array.length
    end

    def add(el)
      # adds element to cache according to LRU principle
    if  include?(el)
        underlying_array.delete_at(index(el))
    end 
    if count == size 
        underlying_array.shift 
    end 
    underlying_array << el

    end

    def show
      # shows the items in the cache, with the LRU item first
        deep_dup(underlying_array)
    end

    private
    attr_reader :underlying_array, :size

    def index(el)
        underlying_array.each_with_index do | ele, index | 
            return index if ele == el
        end 
        nil
    end 
    def include?(input) 
        underlying_array.each do |ele| 
            return true if ele == input
        end 
        false
    end 
    def deep_dup(arr) 
        result = [] 
        arr.each do | ele | 
            if ele.is_a?(Array)
                result << deep_dup(ele) 
            else 
                result << ele 
            end 
        end 
        result 
    end 
end 
johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)
puts johnny_cache.count # => returns 2
johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})
p johnny_cache.show # = => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]

#  {[1,2,3,4], ring of fire, I walk the line
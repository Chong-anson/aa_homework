require "set"

class GraphNode 
    attr_reader :val
    attr_accessor :neighbors
    def initialize(val)
        @val = val 
        @neighbors = []
    end 

end 

def bfs(starting_node, target_value)

    visited = Set.new
    queue = [starting_node] 

    until queue.empty? 
        curr_node = queue.shift 
        
        return curr_node if curr_node.val == target_value

        visited.add(curr_node)
        curr_node.neighbors.each do | neighbor | 
            queue << neighbor unless visited.include?(neighbor)
        end 
    end 
    nil 
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "f")
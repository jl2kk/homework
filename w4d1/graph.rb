class GraphNode 

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


    def bfs(start,target)

        visited = Set.new()

        queue = [start]
        while !queue.empty?
            curr = queue.shift 

            if curr.value == target
                return curr 
            end 

            curr.neighbors.each do |i|
                unless visited.include(i)
                    queue.append(i)
                    visited.add(i)
                end 
            end 
        end 
        return nil 
    end 

end 


class GraphNode

    attr_reader :children

    def bfs(starting_node, target_value)
        queue = [starting_node]
        return starting_node if starting_node == target_value

        until queue.empty?
            el = queue.shift
            el.children.each do |child|
                queue << child
            end
        end
    end

end

p a = GraphNode.new('a')
p b = GraphNode.new('b')
p c = GraphNode.new('c')
p d = GraphNode.new('d')
p e = GraphNode.new('e')
p f = GraphNode.new('f')

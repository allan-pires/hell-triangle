class Node
	attr_accessor :value, :left, :right

	def initialize value, left, right
		@value = value
		@left = left
		@right = right
	end
end

class NodeUtil
	def self.createNodeFromArray array, index = 0
		row = array[0]

		if array.length == 1
			return Node.new(row[index], nil, nil)
		else
			node = array.shift
			array_copy = Marshal.load(Marshal.dump(array))

			left_node = createNodeFromArray(array, index)
			right_node = createNodeFromArray(array_copy, index+1)

			return Node.new(node[index], left_node, right_node)
		end
	end
end
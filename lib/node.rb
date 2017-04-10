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

		if array.length == 1
			return Node.new(array[index], nil, nil)
		else
			array.shift

			left_node = createNodeFromArray(array, index)
			right_node = createNodeFromArray(array, index+1)

			return Node.new(array[index], left_node, right_node)
		end
	end
end
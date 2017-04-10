require_relative 'node'

class HellTriangle

	def self.findMaxSum node, sum = 0
		if node.nil?
			return sum
		end

		sum += node.value
		left_sum = self.findMaxSum node.left, sum
		right_sum = self.findMaxSum node.right, sum

		return [left_sum, right_sum].max
	end

end
require_relative 'hell_triangle'

if !ARGV[0].nil?
	array = eval(ARGV[0])
	node = NodeUtil.createNodeFromArray array
	puts HellTriangle.findMaxSum node
end

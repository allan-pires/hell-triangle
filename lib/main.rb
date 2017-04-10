require_relative 'hell_triangle'

array = eval(ARGV[0])
node = NodeUtil.createNodeFromArray array
puts HellTriangle.findMaxSum node

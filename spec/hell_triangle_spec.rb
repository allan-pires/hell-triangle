require_relative "spec_helper"

describe HellTriangle do

	context "HellTriangle#findMaxSum" do
 		it "returns zero if first node is null" do
 			sum = HellTriangle.findMaxSum(nil)

    		expect(sum).to eql(0)
  		end
  	end

	context "HellTriangle#findMaxSum" do
 		it "returns current sum if node is null" do
 			sum = HellTriangle.findMaxSum(nil, 999)

    		expect(sum).to eql(999)
  		end
  	end

	context "HellTriangle#findMaxSum" do
 		it "returns the max sum of the paths" do
 			triangle = [[6],[3,5],[9,7,1],[4,6,8,4]]

 			nodeI = Node.new(8, nil, nil) 			
 			nodeH = Node.new(6, nil, nil) 			
 			nodeG = Node.new(4, nil, nil)
 			nodeF = Node.new(1, nodeI, nodeG)
 			nodeE = Node.new(7, nodeH, nodeI)
 			nodeD = Node.new(9, nodeG, nodeH)
 			nodeC = Node.new(5, nodeE, nodeF)
 			nodeB = Node.new(3, nodeD, nodeE)
 			nodeA = Node.new(6, nodeB, nodeC)

 			sum = HellTriangle.findMaxSum(nodeA)

    		expect(sum).to eql(26)
  		end
  	end

	context "NodeUtil#createNodeFromArray" do
 		it "returns nodes object from array" do
 			triangle = [[6],[3,5]]
 			node = NodeUtil.createNodeFromArray(triangle)
 			puts node.inspect
    		expect(node.value).to eql(6)
    		expect(node.left.value).to eql(3)
    		expect(node.right.value).to eql(5)
  		end
  	end

end

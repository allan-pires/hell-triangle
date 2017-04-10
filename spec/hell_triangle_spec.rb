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

      node = NodeUtil.createNodeFromArray(triangle)
 			sum = HellTriangle.findMaxSum(node)

   		expect(sum).to eql(26)
 		end
 	end

  context "NodeUtil#createNodeFromArray" do
    it "returns nodes object from array" do
      triangle = [[6],[3,5],[9,7,1]]
      node = NodeUtil.createNodeFromArray(triangle)
        expect(node.value).to eql(6)
        expect(node.left.value).to eql(3)
        expect(node.left.left.value).to eql(9)
        expect(node.left.right.value).to eql(7)
        expect(node.right.value).to eql(5)
        expect(node.right.left.value).to eql(7)
        expect(node.right.right.value).to eql(1)
    end
  end


end

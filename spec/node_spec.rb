require "rspec"
require "./lib/node"

describe Node do 
    describe '#initialize' do
        it 'is an instance of node' do
        
            node = Node.new("plop")

            expect(node).to be_an_instance_of(Node)
        end
    end
    describe '#plop' do
        it "returns the name of the data" do
            node = Node.new("plop")
            expect(node.data).to eq("plop")
        end
    end
    describe '#next_node' do
        it 'returns the (empty) next node' do
        node = Node.new("plop")
        expect(node.next_node).to eq(nil)
        end 
    end
end
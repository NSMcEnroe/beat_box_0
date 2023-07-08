require "rspec"
require "./lib/linked_list"
require "./lib/node"

describe LinkedList do
    describe '#initialize' do
        it 'is an instance of LinkedList' do
            list = LinkedList.new
            expect(list).to be_an_instance_of(LinkedList)
        end
    end
    describe '#head' do 
        it 'returns a nil when empty' do
            list = LinkedList.new
            expect(list.head).to eq(nil)
        end
    end
    describe '#list' do
        it 'returns an instance of a list' do
            list = LinkedList.new
            list.append("doop")
            expect(list).to be_an_instance_of(LinkedList)
        end
    end
    describe '#list.head.data' do
        it "returns the argument" do
            list = LinkedList.new
            list.append("doop")
            expect(list.head.data).to eq("doop")
        end
    end
    describe '#list.head.next_node' do
        it "returns nil, since there is only one node present" do
            list = LinkedList.new
            list.append("doop")
            expect(list.head.next_node).to eq(nil)
        end
    end
    describe '#count' do
        it "returns the amount of nodes in the linked list" do
            list = LinkedList.new
            list.append("doop")
            expect(list.count).to eq(1)
        end
    end
    describe '#to_string' do
        it "returns the list of nodes as strings" do
            list = LinkedList.new
            list.append("doop")
            expect(list.to_string).to eq("doop")
        end
    end
    describe '#head' do
        it "returns the node located at the head" do
            list = LinkedList.new
            list.append("doop")
            expect(list.head).to be_an_instance_of(Node)
        end
    end
end


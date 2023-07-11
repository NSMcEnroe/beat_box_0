require "rspec"
require "./lib/linked_list"
require "./lib/node"

describe LinkedList do
    describe '#initialize' do
        it 'is an instance of LinkedList' do
            list = LinkedList.new
            expect(list).to be_an_instance_of(LinkedList)
        end
        it 'returns an instance of a list with a single node' do
            list = LinkedList.new
            list.append("doop")
            expect(list).to be_an_instance_of(LinkedList)
        end
    end
    describe '#head' do 
        it 'returns a nil when empty' do
            list = LinkedList.new
            expect(list.head).to eq(nil)
        end
        it "returns the node located at the head" do
            list = LinkedList.new
            list.append("doop")
            expect(list.head).to be_an_instance_of(Node)
        end
    end
    describe '#data' do
        it "returns the argument of the current node" do
            list = LinkedList.new
            list.append("doop")
            expect(list.head.data).to eq("doop")
        end
    end
    describe '#next_node' do
        it "returns nil, since there is only one node present" do
            list = LinkedList.new
            list.append("doop")
            expect(list.head.next_node).to eq(nil)
        end
        it "returns the node after the head node" do
            list = LinkedList.new
            list.append("doop")
            list.append("deep")
            expect(list.head.next_node).to be_an_instance_of(Node)
        end
    end
    describe '#count' do
        it "returns the amount of nodes in the linked list" do
            list = LinkedList.new
            list.append("doop")
            expect(list.count).to eq(1)
        end
        it "returns the amount of multiple nodes in the linked list" do
            list = LinkedList.new
            list.append("doop")
            list.append("deep")
            expect(list.count).to eq(2)
        end
        it "returns the appropriate count after using prepend method" do
            list = LinkedList.new
            list.append("plop")
            list.append("suu")
            list.prepend("dop")
            expect(list.count).to eq(3)
        end
    end
    describe '#to_string' do
        it "returns the list of nodes as strings" do
            list = LinkedList.new
            list.append("doop")
            expect(list.to_string).to eq("doop")
        end
        it "returns multiple nodes as a single string" do
            list = LinkedList.new
            list.append("doop")
            list.append("deep")
            expect(list.to_string).to eq("doop deep")
        end
        it "returns a second instance of multiple nodes" do
            list = LinkedList.new
            list.append("plop")
            list.append("suu")
            expect(list.to_string).to eq("plop suu")
        end
    end
    describe '#append' do
        it "returns a list when append is used multiple times" do
            list = LinkedList.new
            list.append("doop")
            list.append("deep")
            expect(list).to be_an_instance_of(LinkedList)
        end
    end
    describe '#prepend' do 
        it "returns the appropriate string with the prepend argument as the first node" do
            list = LinkedList.new
            list.append("plop")
            list.append("suu")
            list.prepend("dop")
            expect(list.to_string).to eq("dop plop suu")
        end
        it "returns the correct string if prepend is the the only method used" do
            list = LinkedList.new
            list.prepend("dop")
            expect(list.to_string).to eq("dop")
        end
    end
    describe '#insert' do
        it "returns the proper Linked List" do
            list = LinkedList.new
            list.append("plop")
            list.append("suu")
            list.prepend("dop")
            list.insert(1, "woo")
            expect(list.to_string).to eq("dop woo plop suu")
        end
        it "returns a statement if the Linked List is not long enough" do
            list = LinkedList.new
            list.append("plop")
            list.append("suu")
            list.prepend("dop")
            expect(list.to_string).to eq("dop plop suu")
            expect(list.insert(10, "woo")).to eq("You can not enter this word here.")
        end
        it "returns a statement if the Linked List has no nodes" do
            list= LinkedList.new
            expect(list.insert(10, "woo")).to eq("You can not enter this word here.")
        end 
        it "inserts the node into the zeroth index when asked" do
        list = LinkedList.new
            list.append("plop")
            list.append("suu")
            list.prepend("dop")
            list.insert(0, "woo")
            expect(list.to_string).to eq("woo dop plop suu")
        end
    end
    describe '#find' do
        it "returns the appropriate string" do
            list = LinkedList.new
            list.append("deep")
            list.append("woo")
            list.append("shi")
            list.append("shu")
            list.append("blop")
            expect(list.find(2,1)).to eq("shi")
            expect(list.find(1,3)).to eq("woo shi shu")
        end
        it "returns an error message if there are not enough nodes" do
            list = LinkedList.new
            list.append("deep")
            list.append("woo")
            list.append("shi")
            list.append("shu")
            list.append("blop")
            require 'pry';binding.pry
            expect(list.find(10,1)).to eq("Please try again.")
            expect(list.find(1,10)).to eq("Please try again.")
        end
    end
    describe '#includes?' do
        it "returns the correct boolean when searching for a node" do
            list = LinkedList.new
            list.append("deep")
            list.append("woo")
            list.append("shi")
            list.append("shu")
            list.append("blop")
            expect(list.includes?("deep")).to eq(true)
            expect(list.includes?("dep")).to eq(false)
        end
    end
    describe '#pop' do
        it "returns the removed note: the last node" do
            list = LinkedList.new
            list.append("deep")
            list.append("woo")
            list.append("shi")
            list.append("shu")
            list.append("blop")
            expect(list.pop).to eq("blop")
            expect(list.pop).to eq("shu")
            expect(list.to_string).to eq("deep woo shi")
        end
    end



end


require "rspec"
require "./lib/linked_list"
require "./lib/node"
require "./lib/beat_box"

describe BeatBox do
    describe '#initialize' do
        it "returns an instance of an empty Linked List" do
            bb = BeatBox.new
            expect(bb.list).to be_an_instance_of(LinkedList)
            expect(bb.list.head).to eq(nil)
        end
    end
    describe '#append' do
        it "returns the string as individual nodes in the correct order" do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            expect(bb.list.head.data).to eq("deep")
            expect(bb.list.head.next_node.data).to eq("doo")
        end
    end
    describe '#count' do
        it "returns the amount of nodes" do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            bb.append("woo hoo shu")
            expect(bb.count).to eq(6)
        end
    end
    describe '#play' do
        it "returns the node through the speak command in the console" do 
            bb = BeatBox.new
            bb.append("deep doo ditt woo hoo shu")
            expect(bb.play).to be_an_instance_of(String)
        end
        it "returns a different node through the speak command in the console" do
            bb = BeatBox.new
            bb.append("boots an cats")
            bb.append("boots an cats")
            bb.append("boots an cats")
            bb.append("boots an cats")
            bb.append("boots an cats")
            bb.append("boots an cats")
            bb.append("boots an cats")
            bb.append("boots an cats")
            bb.append("boots an cats")
            bb.append("boots an cats")
            bb.append("ya ya ya ya ya")
            expect(bb.play).to be_an_instance_of(String)
        end

        it "returns an error message if there are no nodes" do
            bb = BeatBox.new
            expect(bb.play).to eq("You need to add some noises silly goose.")
        end
    end
end
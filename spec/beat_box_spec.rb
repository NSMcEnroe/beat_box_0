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
end
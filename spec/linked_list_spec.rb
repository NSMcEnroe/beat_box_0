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
    describe '#doop' do
        it 'returns the sound back, defaulting as the head of the linked list' do
            list = LinkedList.new
            list.append("doop")
            expect(list.head).to eq("doop")
        end
    end

end


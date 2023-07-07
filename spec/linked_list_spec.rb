require "rspec"
require "./lib/linked_list"
require "./lib/node"

describe LinkedList do
    describe '#initialize' do
        it 'is an instance of LinkedList' do
            list = LinkedList.new
            expect(list).to be be_an_instance_of(LinkedList)
        end
    end
end


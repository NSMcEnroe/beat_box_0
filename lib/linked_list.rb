class LinkedList
    attr_reader :head
    attr_accessor :head
    def initialize
        @head = head
    end
    def append(data)
        new_node = Node.new(data)
        if @head == nil
            @head = new_node
        else 
            current_node = @head
            while current_node.next_node != nil
                current_node = current_node.next_node
            end
            current_node.next_node = new_node
        end
    end
    def prepend(data)
        new_node = Node.new(data)
        new_node.next_node = @head
        @head = new_node
    end
    def insert(position, data)
        new_node = Node.new(data)
            if position.zero?
                new_node.next_node = @head
                @head = new_node
            else
                current_node = @head
                return "You can not enter this word here." if current_node.nil?
                (position - 1).times do
                    current_node = current_node.next_node
                    break if current_node.nil?
                end
                return "You can not enter this word here." if current_node.nil?
                new_node.next_node = current_node.next_node
                current_node.next_node = new_node
            end
    end
    def find(index, elements)
        find_array = []
        current_node = @head
        index.times do
            current_node = current_node.next_node
            break if current_node.nil?
        end
        return "Please try again." if current_node.nil?
        find_array << current_node.data
        (elements - 1).times do
            current_node = current_node.next_node
            break if current_node.nil?
            find_array << current_node.data
        end
        return "Please try again." if current_node.nil?
        find_array.join(" ")
    end
    def includes?(data)
        current_node = @head
        while current_node
            return true if current_node.data == data
            current_node = current_node.next_node
            end
            false
    end
    def count
        count = 0
        current_node = @head
        while current_node 
            count += 1
            current_node = current_node.next_node
        end
        count
    end
    def to_string
        annoying_array = []
        current_node = @head
        while current_node
            annoying_array << current_node.data
            current_node = current_node.next_node
        end
        annoying_array.join(" ")
    end
    def pop
        current_node = @head
        while current_node.next_node.next_node != nil
            current_node = current_node.next_node
        end
        removed_node = current_node.next_node
        current_node.next_node = current_node.next_node.next_node
        removed_node.data
    end
end
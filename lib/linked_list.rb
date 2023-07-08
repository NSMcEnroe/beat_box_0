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




end
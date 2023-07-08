class LinkedList
    attr_reader :head
    def initialize
        @head = head
    end
    def append(data)
        new_node = Node.new(data)
        if @head == nil
            @head = new_node
        else 
            current_node = @head
            while current_node != nil
                current_node = current_node.next_node
            end
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



end
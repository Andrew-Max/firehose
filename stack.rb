class Stack
    attr_accessor :top_node

    def initialize
        @top_node = nil
    end

    # Push an item onto the stack
    def push(element)
        previous_top = @top_node
        new_node = LinkedListNode.new(element, previous_top)
        @top_node = new_node
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return it to the user
    def pop
        previous_top = @top_node
        return unless previous_top
        @top_node = @top_node.next_node
        return previous_top.value
    end
end

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def self.print_values(node)
    print "#{node.value} --> "
    if node.next_node.nil?
      print "nil\n"
      return
    else
      print_values(node.next_node)
    end
  end

  def self.stack_reverse_list(node)
      list_stack = Stack.new

      while node
          list_stack.push(node.value)
          node = node.next_node
      end

      list_stack.top_node
  end

  def self.mutate_reverse_list(node, previous=nil)
    next_node = node.next_node
    node.next_node = previous

    if next_node
      LinkedListNode.mutate_reverse_list(next_node, node)
    else
      node
    end
  end
end

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

class SolutionRunner

  def initialize
    node1 = LinkedListNode.new(37)
    node2 = LinkedListNode.new(99, node1)
    @node3 = LinkedListNode.new(12, node2)
  end

  def reinit
    initialize
  end

  def answer_problem_1
    puts "answering problem 1"

    puts "original"
    LinkedListNode.print_values(@node3)

    puts "-------"
    puts "reversed"

    revlist = LinkedListNode.stack_reverse_list(@node3)

    LinkedListNode.print_values(revlist)
    puts "==============================="
    puts "==============================="
  end

  def answer_problem_2
    puts "answering problem 2"

    puts "original"
    LinkedListNode.print_values(@node3)

    puts "-------"
    puts "reversed"

    revlist = LinkedListNode.mutate_reverse_list(@node3)

    LinkedListNode.print_values(revlist)
    puts "==============================="
    puts "==============================="
  end

  def answer_problem_3
    "not implemented"
  end

  def answer_all_problems
    answer_problem_1
    answer_problem_2
    answer_problem_3
  end
end

solution_runner = SolutionRunner.new
solution_runner.answer_all_problems

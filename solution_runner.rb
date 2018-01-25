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

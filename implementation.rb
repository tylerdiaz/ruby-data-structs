require './stack'

module Implementation
  def self.print_values(list_node)
    print "#{list_node.value} --> "
    if list_node.next_node.nil?
      return print "nil\n"
    else
      print_values(list_node.next_node)
    end
  end

  def self.reverse_list(stack)
    reversed_stack = Stack.new
    # This is an old trick to access the values
    # `while` returns till it returns `nil`
    while (node = stack.pop)
      reversed_stack.push(node.value)
    end
    reversed_stack
  end
end

stack = Stack.new
%w(A B C D E F G).map { |char| stack.push(char) }

rev_list = Implementation.reverse_list(stack)
Implementation.print_values(rev_list.data)

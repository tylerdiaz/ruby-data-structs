require './linked_list_node'

module Challange2
  def self.print_values(list_node)
    print "#{list_node.value} --> "
    if list_node.next_node.nil?
      return print "nil\n"
    else
      print_values(list_node.next_node)
    end
  end

  def self.reverse_list(list_node, previous = nil)
    return previous if list_node.nil?

    # This will incrementally swap the nodes
    next_node = list_node.next_node
    list_node.next_node = previous

    # Keep going until the last node is the end (nil)
    reverse_list(next_node, list_node)
  end
end

# A handy way to create a medium-sized linked list is to use
# reduce and carry the last created linkedListNode to the next
# creation.
linked_list = %w(A B C D E F G H I J K).reduce(nil) do |memo, char|
  LinkedListNode.new(char, memo)
end

Challange2.print_values(
  Challange2.reverse_list(linked_list)
)

require './linked_list_node'

module Challange3
  def self.print_values(list_node, hare = nil, turtoise = nil)
    hare = list_node if hare.nil?
    turtoise = list_node if turtoise.nil?

    hare = hare.next_node
    print "#{list_node.value} --> "

    if list_node.next_node.nil?
      return print "nil\n"
    else
      if hare
        hare = hare.next_node unless hare.next_node.nil?

        if hare.value == turtoise.value
          print "#{list_node.next_node.value} --> nil\n"
          return print "Infinite loop detected. \n"
        end
      end

      print_values(list_node.next_node, hare, turtoise.next_node)
    end
  end
end

# Create a looped linked list
founding_node = LinkedListNode.new('Z')
linked_list = %w(A B C D E F G H I J K).reduce(founding_node) do |memo, char|
  LinkedListNode.new(char, memo)
end
founding_node.next_node = linked_list


Challange3.print_values(linked_list)

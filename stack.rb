require './linked_list_node'

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Add an item onto the stack
  def push(element)
    if @data.nil?
      @data = LinkedListNode.new(element)
    else
      next_node = @data
      @data = LinkedListNode.new(element, next_node)
    end
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return it to the user
  def pop
    return nil if @data.nil? # nothing to do here

    # Since we mutate @data, we need to
    # stash the popped_node in order to
    # return it
    popped_node = @data
    if @data.next_node.nil?
      @data = nil
    else
      @data = popped_node.next_node
    end

    popped_node
  end
end

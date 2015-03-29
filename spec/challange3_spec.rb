require 'spec_helper'
require_relative '../challange3.rb'

describe Challange3 do
  context 'Initialized stack' do
    let!(:linked_list) do
      %w(A B C).reduce(nil) do |memo, char|
        LinkedListNode.new(char, memo)
      end
    end

    let!(:infinite_linked_list) do
      founding_node = LinkedListNode.new('Z')
      linked_list = %w(A B C).reduce(founding_node) do |memo, char|
        LinkedListNode.new(char, memo)
      end
      founding_node.next_node = linked_list
      founding_node
    end

    context '#print_values' do
      it 'prints a linked list correctly' do
        expect {
          Challange3.print_values(linked_list)
        }.to output("C --> B --> A --> nil\n").to_stdout
      end

      it 'does not raise stack error on infinite linked list' do
        expect { Challange3.print_values(infinite_linked_list) }.not_to raise_error
      end
    end
  end
end

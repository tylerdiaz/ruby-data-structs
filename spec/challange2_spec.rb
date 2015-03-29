require 'spec_helper'
require_relative '../challange2.rb'

describe Challange2 do
  context 'Initialized stack' do
    let!(:linked_list) do
      %w(cow cat dog).reduce(nil) do |memo, char|
        LinkedListNode.new(char, memo)
      end
    end

    context '#print_values' do
      it 'prints a linked list correctly' do
        expect {
          Challange2.print_values(linked_list)
        }.to output("dog --> cat --> cow --> nil\n").to_stdout
      end
    end

    context '#reverse_list' do
      it 'has the data.value of the latest pushed node' do
        expect {
          Challange2.print_values(
            Challange2.reverse_list(linked_list)
          )
        }.to output("cow --> cat --> dog --> nil\n").to_stdout
      end
    end
  end
end

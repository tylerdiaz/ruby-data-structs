require 'spec_helper'
require_relative '../challange1.rb'

describe Challange1 do
  context 'Initialized stack' do
    let!(:stack) do
      %w(cow cat dog).reduce(Stack.new) do |stack, char|
        stack.push(char)
        stack
      end
    end

    context '#print_values' do
      it 'prints a linked list correctly' do
        expect {
          Challange1.print_values(stack.data)
        }.to output("dog --> cat --> cow --> nil\n").to_stdout
      end
    end

    context '#reverse_list' do
      it 'has the data.value of the latest pushed node' do
        expect {
          Challange1.print_values(
            Challange1.reverse_list(stack).data
          )
        }.to output("cow --> cat --> dog --> nil\n").to_stdout
      end
    end
  end
end

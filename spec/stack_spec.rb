require 'spec_helper'
require_relative '../stack.rb'

describe Stack do
  context 'Initialized stack with LinkedListNode' do
    let!(:stack) do
      stack = Stack.new
      %w(A B C D E F G).map { |char| stack.push(char) }
      stack
    end

    context '#push' do
      it 'has the data.value of the latest pushed node' do
        stack.push('H')
        expect(stack.data.value).to eq('H')
      end
    end

    context '#pop' do
      it 'returns the value of the last node' do
        stack.push('Z')
        expect(stack.pop.value).to eq('Z')
      end
    end
  end
end

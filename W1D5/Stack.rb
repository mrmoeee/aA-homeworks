class Stack
  #LAST IN FIRST OUT (LIFO)
  def initialize
    # create ivar to store stack here!
    @stack_array = []
  end

  def push(el)
    # adds an element to the stack
    stack_array.push(el)
  end

  def pop
    # removes one element from the stack
    stack_array.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    stack_array.last
  end

  private

  attr_reader :stack_array

end

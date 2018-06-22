class Queue
  #FIRST IN FIRST OUT (FIFO)

  def initialize
    @queue_array = []
  end
  #add element to queue.
  def enqueue(el)
    queue_array.unshift(el)
  end
  #remove the first element that is added to queue
  def dequeue
    queue_array.pop
  end
  #see last element in queue (which is in turn the first)
  def peek
    queue_array.first
  end

  private

  attr_reader :queue_array
end

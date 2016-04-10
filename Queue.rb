## FIFO

class Queue
  def initialize
    @store = Array.new
  end

  def dequeue #take off of waiting list
    @store.shift
  end

  def enqueue(element)#add to waiting list
    @store.push(element)
  end

  def size 
    @store.length
  end

  def empty?
    size == 0
  end
end

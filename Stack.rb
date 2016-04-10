##LIFO

class Stack
  def initialize
    @store = Array.new
  end

  def pop #takes workers out of hired status
    @store.pop
  end

  def push(element) #puts worker into hired status
    @store << element
  end

  def size #how many currently hired
    @store.length
  end

  def empty? 
    size == 0
  end
end

require './Stack.rb'
require './Queue.rb'

  @waiting = Queue.new
  @workers = Stack.new

  @workers.push("one")#co. starts with six hires for 3 months
  @workers.push("two")
  @workers.push("three")
  @workers.push("four")
  @workers.push("five")
  @workers.push("six")

  @waiting.enqueue("seven")#10 canidiates waiting in queue
  @waiting.enqueue("eight")
  @waiting.enqueue("nine")
  @waiting.enqueue("ten")
  @waiting.enqueue("eleven")
  @waiting.enqueue("twelve")
  @waiting.enqueue("thirteen")
  @waiting.enqueue("forteen")
  @waiting.enqueue("fifteen")
  @waiting.enqueue("sixteen")

# puts @workers.size
puts @waiting.size
puts @workers.size

def job_simulation
  roll_dice
  fire
  hire
end

def roll_dice #boss will roll a dice to determine the number of people who will lose their jobs
  @dice_roll_number = rand(1..6)
end

def fire
  # roll_dice = @dice_roll_number
    @dice_roll_number.times do
      @waiting.enqueue(@workers.pop)
    end
  puts "You have #{ @workers.size } employees."
  puts "You have #{ @waiting.size } on the waitlist."
end

def hire
  # roll_dice = @dice_roll_number
    @dice_roll_number.times do
      @workers.push(@waiting.dequeue)
    end
  puts "You have #{ @workers.size } employees."
  puts "You have #{ @waiting.size } on the waitlist."
end

job_simulation #to test--used multiple times to ensure random number generated!

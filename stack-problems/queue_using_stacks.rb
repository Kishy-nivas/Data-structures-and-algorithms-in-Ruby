# we need two stacks to implement queue operations .


require '../core-ds/Stack'

class Queue 
  def initialize
    @first_stack = Stack.new 
    @second_stack = Stack.new  
  end 

  def enqueue(val)
    @first_stack.push(val)
  end 

  def dequeue
    if @second_stack.is_empty? 
      until @first_stack.is_empty? 
        @second_stack.push(@first_stack.pop)
      end 
      p @second_stack.pop 
    else 
      p @second_stack.pop 
    end 

  end 

end 


q = Queue.new  
q.enqueue(5)
q.enqueue(6)
q.enqueue(7)
q.enqueue(8)
q.enqueue(9)
3.times do 
  q.dequeue()
end 
q.enqueue(10)
q.enqueue(11)
q.enqueue(12)
5.times do 
  q.dequeue()
end 

q.enqueue([1,2,3,4])
q.dequeue()
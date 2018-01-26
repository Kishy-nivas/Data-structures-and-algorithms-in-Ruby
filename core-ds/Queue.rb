class Queue 
  def initialize()
    @front = 0 
    @rear= 0 
    @arr =[]
  end

  def enqueue(val)
    @arr[@rear] = val 
    @rear +=1 
  end 

  def dequeue()
    x = @arr[@front] 
    @front +=1 
    return x 
  end 

  def isEmpty()
    return @front == @rear  
  end  

end 


q = Queue.new 

q.enqueue(1)
q.enqueue(2)
q.enqueue(3)


3.times do 
  p q.dequeue()
  end 

p q.isEmpty()
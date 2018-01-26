class Stack 
  def initialize()
    @stack = []
  end 

  def push(val)
    @stack << val 
  end 

  def top 
    @stack[@stack.size-1]
  end 

  def is_empty?
    @stack.empty? 
  end 

  def pop 
    @stack.pop() 
  end 

  def size
    @stack.size 
  end 



end


class Stack 
  def initialize()
    @stack = []
    @top = -1 
  end 

  def push(val)
    @top +=1 
    @stack[@top] =val 
  end 

  def top 
    @stack[@top]
  end 

  def is_empty 
    @stack.empty? 
  end 

  def pop 
    @top -=1 
  end 


end

s= Stack.new  
s.push(1)
s.push(2)
p s.top  
s.push (3)
p s.top 
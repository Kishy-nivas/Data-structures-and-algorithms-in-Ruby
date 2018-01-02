class Node 
  attr_accessor :value,:next 
  def initialize(value,next_node)
    @value = value 
    @next= next_node 
  end 

  def hasNext() 
    @next.nil?
  end 

end 

class LinkedList 
  attr_reader :count                           
  def initialize()
    @head = nil 
    @count=0
  end

  def addBegin(val)
    new_node = Node.new(val,nil);
    new_node.next = @head 
    @head = new_node 
    @count +=1 
  end 

  def addEnd(val)
    current = @head 
    new_node = Node.new(val,nil)
    if @head.nil?
      @head = new_node 
      @count+=1 
    else 
      while (current.next!=nil)
        current = current.next 
      end 
      current.next = new_node
      @count+=1 
    end 
  end 


  def delete(val)
    if  @head.nil? 
      puts "Empty list"
      return 
    end
    current = @head 
    if current.value ==val 
      @head = current.next 
      @count -=1 
      return 
    end 
    previous = nil 
    while (current!=nil)
      if current.value ==val 
        previous.next = current.next  
        @count -=1 
      end 
      previous = current 
      current = current.next 
    end 
  end 

  def printList 
    puts "**********"
    if @head.nil?  then return  end 
    current = @head 
    while(current!=nil)
      print "#{current.value} ->"
      current = current.next 
    end 
    print "null \n"
    puts "***********"
  end 


 end 



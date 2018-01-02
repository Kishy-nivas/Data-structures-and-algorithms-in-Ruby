require_relative  'LinkedList'


menu  = "1.Add Beign \n2.Add End  \n3.Delete \n4 Display \n5 Quit "
LL = LinkedList.new 
de_limitter = "**********"

loop do 
  puts menu 
  choice = gets.to_i  
  puts de_limitter 

  case choice 
    when 1 
      puts "Enter the  value  "
      val = gets.to_i  
      LL.addBegin(val )
      puts de_limitter 
    when 2 
      puts "Enter the value "
      val = gets.to_i 
      LL.addEnd(val)
      puts de_limitter 
    when 3 
      puts "Enter the val to delete"
      val  = gets.to_i  
      LL.delete(val)
      puts de_limitter
    when 4 
      LL.printList
       
    when 5 
      puts "Quiting the application "
      break 
    else 
      puts " Invalid command, self destructing the list "
      break 
  end 

end 



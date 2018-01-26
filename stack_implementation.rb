require_relative 'core-ds/Stack'


menu = "1.push\n2.pop\n3.peek\n4.quit"
delimitter = "**********"

s = Stack.new 


loop do  
  puts menu
  choice = gets.to_i  
  puts delimitter  
  case choice 
    when 1 
      puts "Enter a  value" 
      val = gets.to_i   
      s.push(val)
    when 2 
      s.pop()
    when 3 
      p s.top  
    when 4 
      break 
  end 
end 




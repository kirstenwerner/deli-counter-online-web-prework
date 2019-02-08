require  'pry'
katz_deli = []
#global variable
$something = 'Hello'
$current_ticket_number = 0  

def take_a_number(katz_deli)
  $something = "Yo"
  # katz_deli should be an array of ticket numbers, not names
  $current_ticket_number = $current_ticket_number+1
  katz_deli << $current_ticket_number
  number = katz_deli.index($current_ticket_number)+1
  puts "#{$something}, you are ticket number #{$current_ticket_number}. You are number #{number} in line."
end

def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    place_in_line = []
    katz_deli.each {|x| place_in_line << "#{katz_deli.index(x)+1}. #{x}"}
    new_place_in_line = place_in_line.join(' ')
    puts "The line is currently: #{new_place_in_line}"
  end
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end 
end


# Write your code here.
line = []
take_a_number(line)
# Welcome, you are ticket number 1. You are number 1 in line.
take_a_number(line)
# Welcome, you are ticket number 2. You are number 2 in line.
now_serving(line)
now_serving(line)
take_a_number(line)
take_a_number(line)
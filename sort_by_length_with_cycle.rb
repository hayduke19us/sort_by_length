def sort unsorted_array, sorted_array
  while unsorted_array.count >= 2
    temp = unsorted_array.shift
    counter = unsorted_array.count
    
    unsorted_array.cycle(counter) do |word|
      if temp.length < word.length
        temp = temp
      elsif temp.length > word.length
        unsorted_array << temp
        temp = unsorted_array.shift
      end
    end
    sorted_array << temp 
  end
  
  if unsorted_array.count < 2
   sorted_array << unsorted_array.first  
  end
  
  puts "Your sorted array by length: #{sorted_array}"
end

def create_array one_array
  puts "Type as many words as you want to create an array."
  puts "Just press enter in a blank gets to exit"
  
  while true  
    input = gets.chomp
    one_array << input
    if input == ''
      one_array.pop
      break
    end
  end
  puts "Your unsorted array by length: #{one_array} "
end
  
empty_array = []
create_array empty_array
puts
sort empty_array, []

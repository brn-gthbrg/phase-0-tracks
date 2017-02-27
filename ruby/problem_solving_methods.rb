# Release 0
def search_array(arr, numb)
  if arr.include?(numb) == true
    i = 0
    arr.each do |x|
      if x != numb
        i += 1
      else  break
      end
    end
    result = i
  else
    result = nil
  end
end
array = [2, 25, 34, 94]
puts search_array(array, 25)

# Release 1
def fib(numb)
  fib_num = []
  numb.times do |place|
    if place == 0
      fib_num[place] = 0
    elsif place == 1
      fib_num[place] = 1
    else
     fib_num[place] = fib_num[place - 2] + fib_num[place - 1]
    end
  end
  result = fib_num
end
puts fib(100)

# Release 2
#It goes through a list and puts two adjascent elements in descending order. It continues to go  through the list until there aren't any other changes to make.

#what helps us grasp it is seeing examples of it and testing it with arrays we made.

#I'm finding that ruby is much easier to read than it is to write. It makes sense when it is all laid out in front of me but breaking out the different pieces is still a struggle. I'm excited to learn while reading it but am easily frustrated when trying to write code for ruby. Getting frustrated definitely does not help with learning so it's important to stay calm and keep making changes until it works.

# bubble_sort method

array = [9, 2, 5, 3, 8, 11] # created array
 def bubble_sort(array) #set the method to an array
   n = array.length #set number of values within the array
   loop do #created loop
     swapped = false #set swapped variable to false
     (n-1).times do |i| #run the block for each value within the array
       if array[i] > array[i+1]
         array[i], array[i+1] = array[i+1], array[i] # lines 38-40 if value is greater than next value it will swap those values
         swapped = true #set swapped variable to true
       end
     end
     break if not swapped # stop the loop if swapped is no longer true
   end
   array #give new array
 end
 p bubble_sort(array) #put new array on screen
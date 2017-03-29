def search_array(arr, numb)
  if arr.include?(numb) == true
    arr.each do |check|
      if check == numb
        final = arr.index(check)
      end
    end
  else
    final = nil
  end
  p final
end


# Driver Code
arr = [42, 89, 23, 1]
search_array(arr, 1)

search_array(arr, 5)


def fib_gen(count)
  results = []
  count.times do |place|
    if place == 0
      results[place] = 0
    elsif place == 1
      results[place] = 1
    else
      results[place] = results[place - 1] + results[place - 2]
    end
  end
  puts results
end


# Driver Code
#fib_gen(8)
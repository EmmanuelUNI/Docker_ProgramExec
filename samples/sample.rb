def nth_fibonacci(n)
    return n if n <= 1
    nth_fibonacci(n - 1) + nth_fibonacci(n - 2)
  end
  
  n = 40
  
  result = nth_fibonacci(n)
  
  puts "testing from ruby"
  
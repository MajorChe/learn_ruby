def benchmark
  beginning_time = Time.now
  if block_given?
    yield
  end
  end_time = Time.now
  return (end_time - beginning_time)*1000
end
 
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"
# In Ruby, there's no "method call": everything is "message passing"

var = 'abcde'
puts var.reverse
puts var.send(:reverse)

class Example
  def existing_method
    'This method exists!'
  end

  def find_by_something(something)
    "My specialized lookup of something: #{something}"
  end

  # called when a method is missing but is being called
  def method_missing(name, *args)
    "The method #{name} doesn't exist - args: #{args}"
  end
end

ex = Example.new
puts ex.existing_method
puts ex.non_existing_method

puts ex.find_by_id(123)
puts ex.find_by_something('something!')

puts ex.respond_to? :find_by_id
puts ex.respond_to? :find_by_something

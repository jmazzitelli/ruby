one = lambda { |param| p param}
two = -> par { p par }

def callthis(*a, func)
  p *a
  func.call 'blah'
  p func.object_id
  p func.class
end

callthis("a", "b", "c", one)
callthis("x", "y", "z", two)
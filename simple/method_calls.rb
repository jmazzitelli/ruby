def five(p1, p2, p3, p4, p5)
  p "I was passed 1=#{p1} 2=#{p2} 3=#{p3} 4=#{p4} 5=#{p5}"
end

five 'a','b','c','d','e'
five *[11,22,33,44,55]
five *%w{a b c d e}
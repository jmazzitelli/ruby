print "(t)imes or (p)lus: "
operator = gets

print "number: "
number = Integer(gets)

if (operator =~ /^t/)
  calc = -> n {n*number}
else
  calc = -> n {n+number}
end

puts (1..10).collect(&calc).join(", ")
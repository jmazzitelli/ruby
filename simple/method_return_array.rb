def return_arr
  return 'first', 'second', 'third', 4
end

one, two, three, four = return_arr
p "one=#{one}, two=#{two}, three=#{three}, four=#{four}"

arr = return_arr
p arr

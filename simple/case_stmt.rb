val = "hello there"

case val
  when /^hello/
    p "Has 'hello' in it"
  when /nope/
    p "Has 'nope' in it"
  when /there$/
    p "Has 'there' in it" # the first where should match, so this won't
  else
    p "Else clause"
end
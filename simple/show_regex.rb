def show_regex(string, pattern)
  match = pattern.match(string)
  if (match)
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end

p show_regex('abc', /b/)
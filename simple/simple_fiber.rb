require 'stringio'

words = Fiber.new do
  StringIO.new("the quick brown fox\njumped over the brown dog\n").each_line do |line|
    line.scan(/\w+/) do |word|
      Fiber.yield word.downcase
    end
  end
  nil
end

counts = Hash.new(0)

while word = words.resume
  counts[word] += 1
end

counts.keys.sort.each { |k| print "#{k}:#{counts[k]} " }
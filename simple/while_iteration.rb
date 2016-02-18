while line = gets
  p line
  next if line =~ /^#/ # skip comments
  break if line =~ /^END/ # stop processing if user typed END
  if line.gsub!(/foo/) { 'FOO' } # replace "foo" with "FOO"
    redo
  end

  # process the line
  p "Processed: #{line}"
end
begin
  File.open("not here")
rescue
  p "Uh oh...#{$!}"
  end

begin
  File.open("not here")
rescue StandardError => e
  p "Uh oh...#{e} #{e.class}"
ensure
  p "Finishing up."
end

begin
  raise "boom"
rescue StandardError => e
  p "Uh oh...#{e} #{e.class}"
end

begin
  raise ArgumentError, "boom"
rescue ArgumentError => e
  p "Uh oh...#{e} #{e.class}"
end

begin
  raise ArgumentError, "boom", caller
rescue ArgumentError => e
  p "Uh oh...#{e} #{e.class}"
end

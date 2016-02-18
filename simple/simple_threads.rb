require 'net/http'

sites = %w( www.rubycentral.org slashdot.org www.google.com )

threads = sites.map do |site_to_fetch|
  Thread.new(site_to_fetch) do |url|
    http = Net::HTTP.new(url, 80)
    print "Fetching: #{url}\n"
    resp = http.get('/')
    print "Got #{url}: #{resp.message}\n"
  end
end

threads.each { |thr| thr.join }

# Thread.value returns the last statement evaluated by the thread

t2 = Thread.new() do
  3.times do |v|
    p "#{v}..."
    sleep v
  end
  'done'
end

# Thread.value waits for the thread to end via join then returns the last value evaluated by thread
print "Thread last value=#{t2.value}"

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
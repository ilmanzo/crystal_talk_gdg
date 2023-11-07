# Example for a concurrent http client sending requests in parallel

require "http/client"

channel = Channel(Int32).new

SITES = ["www.example.com", "info.cern.ch"]

SITES.each do |site|
  spawn do
    response = HTTP::Client.new(site).get "/"
    channel.send response.body.each_line.size
  end
end

total_lines = 0

SITES.size.times do
  total_lines += channel.receive
end

puts "In total there are #{total_lines} lines"

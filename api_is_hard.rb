require 'httparty'

job_type = ARGV.first
url = "https://jobs.search.gov/jobs/search.json?query=#{job_type}"

HTTParty.get(url).each { |job| puts job ["position_title"]}


# jobs = HTTParty.get(url).parsed_response
# job = jobs.first
# job_title = job["position_title"]

# jobs.each do |job|
#   puts job["position_title"]
# end

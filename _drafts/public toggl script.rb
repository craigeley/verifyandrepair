#!/usr/bin/ruby
# Scipt for Using Reporter as a Foursquare Client and Adding to Log Files and Toggling Toggl items

require 'time'
require 'json'

# To prevent encoding errors on OSX
if RUBY_VERSION =~ /2.*.*/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

# Set Variables - Path to Dropbox; Foursquare token; script variables
filepath = %x{ls -t "/Users/path/Dropbox/Apps/Reporter Beta"  | sed -n 1p}
if filepath !~ /json/
	filepath = %x{ls -t "/Users/path/Dropbox/Apps/Reporter Beta"  | sed -n 2p}
end
filepath = "/Users/path/Dropbox/Apps/Reporter Beta/#{filepath}"
filepath = filepath.strip
tag = ''
act = ''
location = ''
place = ''
ll = ''

# Get the current file and parse it
file = File.open(filepath, encoding: 'UTF-8')
json = file.read
data = JSON.parse(json)


# Grab the data - default answers for sleep and wake, user input for everything else
imp = data["snapshots"][-1]["reportImpetus"].to_i
if imp == 3
  tag = "Sleep"
  act = "Heading to bed"
elsif imp == 4
  tag = "Sleep"
  act = "Waking up"
else
  data["snapshots"][-1]["responses"].each do |response|
  lat = data["snapshots"][-1]["location"]["latitude"]
  long = data["snapshots"][-1]["location"]["longitude"]
  ll = "#{lat},#{long}"
    if response["questionPrompt"] =~ /tag/
      tag = response["tokens"][0]["text"]
    elsif response["questionPrompt"] =~ /doing/
      act = response["tokens"][0]["text"]
    elsif response["questionPrompt"] =~ /Where/ && response["locationResponse"] != nil
      location = response["locationResponse"]["text"]
    end
  end
end

# Start a toggle task
`/usr/local/bin/python /Users/path/to/toggl.py start '#{act}' @#{tag}`


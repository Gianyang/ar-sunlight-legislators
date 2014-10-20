require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "lwzCupQNN198QC0ueZSYoMdx5"
  config.consumer_secret     = "KuEcbye6tkfWvG5we8gngiPACOYSGSWFyZs8C4sF8X11FHfsBQ"
  config.access_token        = "421145010-8cFZmIkwqBUZ2GzqLWyxKs3ysdzcTmdPlxJptJeT"
  config.access_token_secret = "82XqLYxOrv8lWtlTPRYoOKUemopKLHCiXXkrNGBv1tn5T"
end

# client.update("I'm tweeting with @gem!")


# puts Person.twitter_id.where(id: 1)

# client.user("gem")
# tweets = client.user("repgaryackerman")
# p tweets

# client.followers("gem")
# client.followers(92102359)
twitter_id = {
              1 => "neilabercrombie", 2 => "repgaryackerman"            , 3 => "Robert_Aderholt", 4 => "RepAndrews", 5            => "ToddAkin", 6 => "USRepAlexander", 7 => "            RepJasonAltmire", 8 => "SteveAustria", 9 => "            MarkAmodeiNV2", 10 => "BachusAL06"
             }

twitter_id.each do |key,value|
client.user_timeline(value).each do |tweet|
  puts tweet.text
end



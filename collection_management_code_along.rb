# First a simple example
# Print the name of each of the 3 stooges
stooges = ["Larry", "Curly", "Moe"]
stooges.each{|stooge| puts stooge}
puts
#
# This work with Hashes as well
time_travelers = {the_doctor: "TARDIS", hermione: "Time Turner", marty_mcfly: "Delorian"}
time_travelers.each {|time_traveler, vehicle| puts "#{time_traveler} travels through time with a #{vehicle}"}
puts

# What about an array of hashes?
tv_shows = [
  {"show_name" => "Doctor Who", "protagonist" => "The Doctor and his companions"},
  {"show_name" => "Buffy The Vampire Slayer", "protagonist" => "Buffy and the Scooby Gang"},
  {"show_name" => "The Walking Dead", "protagonist" => "Rick and his fellow survivors"}
]

tv_shows.each do |show|
  puts "#{show['show_name']} follows the story of #{show['protagonist']}"
end

puts

# What about a hash with an array as a value?
# Notice the formatting
recipe = {name: "Key Lime Pie", 
          description: "Key lime pie is an American dessert made of key lime juice, egg yolks, and sweetened condensed milk in a pie crust.", 
          ingredients: ["Eggs", 
                        "Key lime juice", 
                        "Condensed Milk", 
                        "Graham cracker crust"]
}

puts "Title: #{recipe[:name]}\nDescription: #{recipe[:description]}\nIngredients: "
recipe[:ingredients].each{|ingredient| puts ingredient}
puts

# Start with a collection that looks like our Twitter response. I've kept only the parts we care about.


tweets = {
  "results" =>[
    {
      "from_user" => "SFist",
      "text" => "Reminder: Blue Angels practice today http://t.co/L9JXJ2ee",
    },
    {
      "from_user" => "masters212",
      "text" => "Starting to hear Blue Angels... Not such angels with all of the noise and carbon pollution.",
    },
    {
      "from_user" => "SFBayBridge",
      "text" => "BZZZzzzZzZzzzZZZZZzZz WHAT? I CAN'T HEAR YOU. THERE ARE BLUE ANGELS. ZZZzzZZZ!",
    },
    {
      "from_user" => "OnDST",
      "text" => "SF Fleet Week to open with Blue Angels flyovers | Student ...",
    },
    {
      "from_user" => "gusbumper",
      "text" => "RT @gzahnd: WAKE UP HIPPIES, THE BLUE ANGELS ARE IN TOWN!",
    },
    {
      "from_user" => "LUVTQUILT",
      "text" => "Thursday - Just watched the Blue Angels practice over SF Bay Impressive! What a background.  GGB & Alcatraz. ;) .",
    },
    {
      "from_user" => "johnnyfuncheap",
      "text" => "10/8/11: Blue Angels Wine Tasting | Treasure Island http://t.co/fyL8Rs5f",
    },
    {
      "from_user" => "espenorio",
      "text" => "San Francisco 2010 Fleet week photos and video http://t.co/KfzEqOWM",
    }
  ],
}

tweets["results"].each do |tweet|
  puts "Tweet from #{tweet['from_user']}: #{tweet['text']}"
end

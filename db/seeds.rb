# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: "Joshua Edwards",
            description: "I am a long time gamer, nerd, and tech geek based in Seattle, WA.  I mostly play Blizzard games like Heroes of the Storm, Hearthstone, and Starcraft 2; but I also enjoy RPGs and strategy games a lot as well.  When I am not gaming I like to work on web development both in the front end and back end.  Mostly I work with javascript technologies and ruby on rails.  I have an unnatural affinity for pandas, including a large stuffed panda collection.  Lastly, I am most definately a cat person though given my current responsibilities and living constraints I don't currently have any cats.",
            email: "pandadragoon@gmail.com",
            twitter: "twitter.com/joshPandaEdward",
            facebook: "www.facebook.com/pandorzilla",
            googleplus: "https://plus.google.com/u/0/112398176324363290748/posts",
            twitch: "www.twitch.tv/pandorzilla",
            password: "dummy_password",
            username: "pandadragoon")

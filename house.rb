$LOAD_PATH << File.dirname(__FILE__)
require 'pie'

make_pie do
  template :game_screen
  
  create_places do
    haunted description:"your trapped inside a haunted house"
    grave_yard description:"you are in a grave yard"
    kitchen description:"you see a dead body"
  end 
  
  map do
    path(haunted:"go to graveyard", grave_yard:"back")
    path(haunted:"go to kitchen", kitchen:"back")
  end
   image kitchen:"http://farm4.static.flickr.com/3357/3425176190_2245830919.jpg"
end

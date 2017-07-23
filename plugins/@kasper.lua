do 

local function sadik(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

return  "مطور البوت @keko11keko      قنات السورس @kekkkoo        بوت التواصل @kekohhbot"
  end
   
end 

-- @keko11keko

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = sadik, 
} 

end 
-- By keko_bot

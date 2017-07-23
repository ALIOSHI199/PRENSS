do
local function run(msg, matches) 
if matches[1] == 'مغادره' then 
local hash = 'kick:'..msg.to.id..':'..msg.from.id 
     redis:set(hash, "waite") 
      return ' ابن النعال 💔 (@'..msg.from.username..')\nهل انت متاكد من الخروج من المجموعة ارسل (دفرني)😕👌 لكي يتم دفرك من المجموعة اذا غيرت رايك وتريد تبقه ارسل(لا) )'
  
  end 

    if msg.text then 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
      if msg.text:match("^دفرني$") and redis:get(hash) == "waite" then 
     redis:set(hash, "ok") 
   elseif msg.text:match("^لا$") and redis:get(hash) == "waite" then 
   send_large_msg(get_receiver(msg), "😂😂😂😂😉عفيه ابني ❤️💋") 
     redis:del(hash, true) 

      end 
    end 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
    if redis:get(hash) then 
        if redis:get(hash) == "ok" then 
         channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false) 
         return 'خوووووووووووووووووووووووووووووووو تفوووووووووووووووووووووووووو تم دفرك وهاي تفله علمود سهل طلعه 😉👌 🔌' 
        end 
      end 
    end 

return { 
  patterns = { 
  "مغادره", 
  "^دفرني$", 
  "^لا$" 
  }, 
  run = run, 
}
end

do
    
local function run(msg,matches)
    if matches[1] == "chat_add_user"  then 
     local text = ' نورت مجموعة  🙈💋'..'\n'..'\n'
    ..'🎃 اسم الحلو ماتي :  '..msg.action.user.print_name..'\n'
    ..'🎃 معرف الحلو ماتي : @'..(msg.action.user.username or "حط معرف ترة فشلتني ")..'\n'
    ..'🎃الايدي : '..msg.action.user.id..'\n'
    ..'🎃 رقم تلفونك : '..(msg.action.user.phone or " شمر رقمك لان محافضة ")..'\n'
    ..'🎃 اسم الضافك هنا 😽   : '..msg.from.print_name..'\n'
    ..'🎃 معرف الحلو الجابك هنا  : @'..(msg.from.username or "لا يوجد")..'\n'
    ..'🎃 اليوم الشفتك بي : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🎃الوقت النورتنة بي 🌞 : '..os.date(' %T*', os.time())..'\n'  
     
     return reply_msg(msg.id, text, ok_cb, false)
     end
    if matches[1] == "chat_add_user_link" then
      local text = ' نورت كروب  🙈💋'..'\n'..'\n'
    ..'🎃 اسم الحلو ♥️ :  '..msg.from.print_name..'\n'
    ..'🎃 معرف الحلو ماتي : @'..(msg.from.username or "حط معرف ترة فشلتني")..'\n'
    ..'🎃 الايدي 💳 : '..msg.from.id..'\n'
    ..'🎃 رقـمك : '..(msg.from.phone or "اشمر رقمك خل احفضة لان محافضة")..'\n'
    ..'🎃 اسم المحروس 🏳 كروب🏴  : '..msg.to.title..'\n'
    ..'🎃 ايدي المجموعة 🏴 : '..msg.to.id..'\n'
    ..'🎃 الـتاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🎃 الوقت النورتنه بي : '..os.date(' %T*', os.time())..'\n'  
     
        return reply_msg(msg.id, text, ok_cb, false)
  end
      if matches[1] == "chat_del_user" then
       return " 😐 انته خاين تف بعد ماحبك  طالق ⚠️ طالق ⚠️ طالق ⚠️  😿 روح شوفلك 😒 غيري  يا"..msg.action.user.first_name
end
end
 
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",        
        "^!!tgservice (chat_del_user)$"
        
    },
 run = run
}
end

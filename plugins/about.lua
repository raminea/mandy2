local function run(msg, matches, callback, extra)

if matches[1] == 'myname' then 
    return '👁‍🗨Your Name :\n'..string.gsub(msg.from.print_name, "_", " ")
end    
if matches[1] == 'gpname' then
    return '👁‍🗨Group name :\n'..string.gsub(msg.to.print_name, "_", " ")
end
if matches[1] == 'myid' then 
    return '🔹Your ID :\n'..msg.from.id
end
if matches[1] == 'myuser' then 
    return '🔹Your username :\n @'..msg.from.username
end
if matches[1] == 'myphone' then 
    return '🔹Your phone :\n +'..msg.from.phone
end
if matches[1] == 'gpid' then 
    return '🔸Group ID :\n'..msg.to.id
end
end
return {
  patterns = {
  "^[/!#](myname)$",
  "^[/!#](gpname)$",
  "^[/#!](myid)$",
  "^[/#!](gpid)$",
  "^[/#!](myuser)$",
  "^[/#!](myphone)$",
  },
  run = run
}








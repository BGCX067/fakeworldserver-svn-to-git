--udp”√∑®£∫http://apps.hi.baidu.com/share/detail/31546119


print("fakeworldServer started...")
--[[
local socket = require("socket")
local server = assert(socket.bind("*",5599))
local ip,port = server:getsockname()
print("the ip:"..ip)
print("the port:"..port)

--wait for client

while true do
	print("wait the client")
	local client = server:accept()
	client:settimeout(5)
	print("receive one client")
	local line,err = client:receive()
	print("the client says:"..line)
	client:close();
end
--]]



local socket = require "socket"
local udp = assert(socket.udp())
--udp:setsockname("192.168.120.102",5599)
udp:setsockname("*",5599)

while true do 
	--print("wait client")
	local line = udp:receive()
	if line ~= nil then
		print("line type:",type(line))
		print("the line:"..line)
		
		
		
	end
	--local peerName = udp:getpeername()
	if peerName ~= nil then
		print("peerName:",peerName)
	end
		
	
end



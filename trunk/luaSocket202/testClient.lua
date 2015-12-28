
local host,port = "localhost" , 5599
local socket = require "socket"
--local ip = assert(socket.dns.toip(host))
local ip = "192.168.120.102"
local udp = assert(socket.udp())
print("the server ip is :"..ip)
udp:sendto("hello I'm client",ip,port)


while true do

end



FileType = {
	fileVersion = -1,
	fileName = "no-name",
	
	init = function(self,object)
		object = object or {}
		setmetatable(object,self)
		self.__index = self
		return object
	end,
	
	testFunction = function(self)
	
	
	end

}

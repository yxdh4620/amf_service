# Description 

# Created with Project 
# User  YuanXiangDong
# Date  13-7-9
# To change this template use File | Settings | File Templates.

amf = require('./node-amf/amf')
utils = require('./node-amf/utils')

#requestPacket = amf.packet(body)
responsePacket = amf.packet()
responsePacket.version = amf.AMF3
responseMessage = amf.message( value, uri+'/'+func, '' )
responsePacket.messages.push( responseMessage )
bin = responsePacket.serialize();

#这是可能出现的问题
buff = new Buffer(bin, 'binary');
#tried also with 'base64'

fs.write fd, buff, 0, buff.length, 0, (err,written)->

# Description 

# Created with Project 
# User  YuanXiangDong
# Date  13-7-9
# To change this template use File | Settings | File Templates.

amf = require('./node-amf/amf')
utils = require('./node-amf/utils')

requestPacket = amf.packet(body)
responsePacket = amf.packet()
responsePacket.version = amf.AMF3
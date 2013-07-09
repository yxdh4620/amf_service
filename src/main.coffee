# Description 

# Created with Project 
# User  YuanXiangDong
# Date  13-7-9
# To change this template use File | Settings | File Templates.


#定义端口，主机，过期时间。
listenPort = 8088
listenHost = 'localhost'
timeout = 5000

#包含对应的服务器类
methods = require('./amf-methods')

#包含amf的实现库
server = require('./node-amf/http-server')
#启动服务
do ->
  console.dir methods
  server.start( listenPort, listenHost, methods, timeout )
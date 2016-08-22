--[[
 Copyright (C) 2016 Jian Chang <aa65535@live.com>

 This is free software, licensed under the GNU General Public License v3.
 See /LICENSE for more information.
--]]

m = Map("dns-forwarder", translate("DNS 转发"),
	translate("使用 TCP 转发 DNS 查询"))

s = m:section(TypedSection, "dns-forwarder", translate("DNS 转发设置"))
s.anonymous   = true

o = s:option(Flag, "enable", translate("Enable"))
o.default     = 0
o.rmempty     = false

o = s:option(Value, "listen_port", translate("监听端口"))
o.placeholder = 5353
o.datatype    = "port"
o.rmempty     = false

o = s:option(Value, "listen_addr", translate("监听地址"))
o.placeholder = "0.0.0.0"
o.datatype    = "ipaddr"
o.rmempty     = false

o = s:option(Value, "dns_servers", translate("上游 DNS"))
o.placeholder = "8.8.8.8"
o.datatype    = "ipaddr"
o.rmempty     = false

return m

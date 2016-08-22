--[[
 Copyright (C) 2016 Jian Chang <aa65535@live.com>

 This is free software, licensed under the GNU General Public License v3.
 See /LICENSE for more information.
--]]

module("luci.controller.dns-forwarder", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/dns-forwarder") then
		return
	end

	entry({"admin", "services", "dns-forwarder"}, cbi("dns-forwarder"), _("DNS 转发"), 60).dependent = true
end

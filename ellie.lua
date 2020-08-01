
-- BADLAND BASE V3.0
-- DO NOT REDISTRIBUTE

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
poinT = {}
Tunnel.bindInterface("bdl_toggle",poinT)

RegisterNetEvent('bdl:service')
AddEventHandler('bdl:service',function()
	local source = source
	local user_id = vRP.getUserId(source)
	   -- [ GET ON DUTY ]
	if vRP.hasPermission(user_id,"oos-rookie.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got on duty. Do not forget your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"lspd-rookie")
		vRPclient.setArmour(source,100)
	elseif vRP.hasPermission(user_id,"oos-officerjr.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got on duty. Do not forget your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"lspd-officerjr")
		vRPclient.setArmour(source,100)
	elseif vRP.hasPermission(user_id,"oos-officersr.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got on duty. Do not forget your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"lspd-officersr")
		vRPclient.setArmour(source,100)
	elseif vRP.hasPermission(user_id,"oos-detective.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got on duty. Do not forget your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"lspd-detective")
		vRPclient.setArmour(source,100)
	elseif vRP.hasPermission(user_id,"oos-sargeant.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got on duty. Do not forget your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"lspd-sargeant")
		vRPclient.setArmour(source,100)
	elseif vRP.hasPermission(user_id,"oos-lieutenant.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got on duty. Do not forget your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"lspd-lieutenant")
		vRPclient.setArmour(source,100)
	elseif vRP.hasPermission(user_id,"oos-captain.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got on duty. Do not forget your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"lspd-captain")
		vRPclient.setArmour(source,100)
	elseif vRP.hasPermission(user_id,"oos-comissioner.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got on duty. Do not forget your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"lspd-comissioner")
		vRPclient.setArmour(source,100)
		-- [ GET OFF DUTY ]
	elseif vRP.hasPermission(user_id,"rookie.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got off duty. Do not forget to take off your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"oos-rookie")
		vRPclient.setArmour(source,0)
	elseif vRP.hasPermission(user_id,"officerjr.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got off duty. Do not forget to take off your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"oos-officerjr")
		vRPclient.setArmour(source,0)
	elseif vRP.hasPermission(user_id,"officersr.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got off duty. Do not forget to take off your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"oos-officersr")
		vRPclient.setArmour(source,0)
	elseif vRP.hasPermission(user_id,"detective.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got off duty. Do not forget to take off your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"oos-detective")
		vRPclient.setArmour(source,0)
	elseif vRP.hasPermission(user_id,"sargeant.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got off duty. Do not forget to take off your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"oos-sargeant")
		vRPclient.setArmour(source,0)
	elseif vRP.hasPermission(user_id,"lieutenant.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got off duty. Do not forget to take off your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"oos-lieutenant")
		vRPclient.setArmour(source,0)
	elseif vRP.hasPermission(user_id,"captain.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got off duty. Do not forget to take off your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"oos-captain")
		vRPclient.setArmour(source,0)
	elseif vRP.hasPermission(user_id,"comissioner.permission") then
		TriggerClientEvent("Notify",source,"aviso","You got off duty. Do not forget to take off your uniform and your equipments.",10000)
		vRP.addUserGroup(user_id,"oos-comissioner")
		vRPclient.setArmour(source,0)
	else
		TriggerClientEvent("Notify",source,"negado","Denied. Are you a real police officer?",5000)
	end
end)

RegisterNetEvent('bdl:equipments')
AddEventHandler('bdl:equipments',function()
	local source = source
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"comissioner.permission") then
		if vRP.getInventoryItemAmount(user_id,"wbody|WEAPON_CARBINERIFLE_MK2") >= 1 then
			TriggerClientEvent("Notify",source,"Você já possui seus equipamentos na mochila",5000)
		else
			vRP.giveInventoryItem(user_id,"wbody|WEAPON_CARBINERIFLE_MK2",1)
		end
	elseif vRP.hasPermission(user_id,"captain.permission") then
		if vRP.getInventoryItemAmount(user_id,"wbody|WEAPON_CARBINERIFLE_MK2") >= 1 then
			TriggerClientEvent("Notify",source,"Você já possui seus equipamentos na mochila",5000)
		else
			vRP.giveInventoryItem(user_id,"wbody|WEAPON_CARBINERIFLE_MK2",1)
		end
	end
end)
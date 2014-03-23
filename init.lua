--[[

Eboulement 

Créé par turbogus. Licence GPL2 ou supérieur.

Simule la mort dans un éboulement

]]--


monMessage = "Vous etes sous terre ! "

minetest.register_on_punchnode(function(p, node, player)
	local nomDuJoueur = player:get_player_name()
	
	local pos = player:getpos()
		
	pos.x = (pos.x+0)
	pos.y = (pos.y+0.5)
	pos.z = (pos.z+0)
	
	n_head = minetest.env:get_node(pos).name
	
	
	if n_head=="default:gravel" or n_head=="default:dirt" or n_head=="default:sand" or n_head=="default:desert_sand" then
	
		minetest.chat_send_player(nomDuJoueur, monMessage)
		
		player:set_hp(player:get_hp()-1)
	end
	
	if n_head=="default:stone" or n_head=="default:desert_stone" or n_head=="default:stone_with_coal" or n_head=="default:stone_with_iron" or n_head=="default:stone_with_copper" or n_head=="default:stone_with_mese" or n_head=="default:stone_with_gold" or n_head=="default:stone_with_diamond" then
	
		minetest.chat_send_player(nomDuJoueur, monMessage)
		
		player:set_hp(0)
	end
	
end)


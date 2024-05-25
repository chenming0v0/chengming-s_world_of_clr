#reloadable
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IMutableItemStack;
import mods.contenttweaker.Commands;
import crafttweaker.player.IPlayer;

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent) {
    var player = event.player;
    var playerName as string = player.name;
    var item as IItemStack = event.item;
    if(!player.world.remote){
        if(<contenttweaker:jiao_yue_zhi_bi_hu>.matches(item)){
            val gamestage as string="gamestage add ";
            val stagename as string="地狱";
            mods.contenttweaker.Commands.call("/scalinghealth difficulty add 40 @p", player, player.world, false, true);
            server.commandManager.executeCommand(server,gamestage + playerName + " " + stagename);
            item.mutable().shrink(1);
        }
        if(<contenttweaker:jiao_yu_tiao_zhan_quan>.matches(item)){
            mods.contenttweaker.Commands.call("/summon theaurorian:moonqueen ~ ~1 ~", player, player.world, false, true);
            item.mutable().shrink(1);
        }
        if(<contenttweaker:shi_lai_mu_wang_guang>.matches(item)){
            mods.contenttweaker.Commands.call("summon null:king_slime ~ ~2 ~ {Size:3}", player, player.world, false, true);
            item.mutable().shrink(1);
        }
        val entitydata as string = "entitydata @e[type=aether_legacy:sun_spirit] {HealF:0,Attributes:[{Name:\"generic.maxHealth\",Base:0}]}";
        if(<contenttweaker:ji_han_sheng_wu>.matches(item)){
            mods.contenttweaker.Commands.call(entitydata, player, player.world, false, true);
            item.mutable().shrink(1);
        }
    }
});

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent){
    val player as IPlayer= event.player;
    val item as IItemStack=event.item;
    if(<minecraft:glass_bottle>.matches(item) && player.world.getDimension() == 0){
        if(player.y >= 150){
            player.give(<contenttweaker:bottled_cloud>);
            item.mutable().shrink(1);
        }
    }
});
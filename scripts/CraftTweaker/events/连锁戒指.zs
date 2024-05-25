#reloadable
import crafttweaker.event.BlockBreakEvent;
import mods.ctintegration.baubles.IBaubleInventory;
import crafttweaker.player.IPlayer;
/* 
events.onBlockBreak(function(event as BlockBreakEvent) {
    var player as IPlayer = event.player;
    var baubles = player.baublesInventory;
    if(!event.world.remote) {
        if(baubles.isItemValid(5, <contenttweaker:lian_shuo_bauble>)){
            if(!player.isAllowFTBUltimine()){
                event.player.setAllowFTBUltimine(true);
            }
        }else{
            if(player.isAllowFTBUltimine()){
                event.player.setAllowFTBUltimine(false);
            }
        }
    }
});
*/
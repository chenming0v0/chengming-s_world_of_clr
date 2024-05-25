/*
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerPickupItemEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntityItem;
import crafttweaker.entity.IEntity;
import crafttweaker.world.IWorld;
import crafttweaker.util.Position3f;
import crafttweaker.world.IBlockPos;
import crafttweaker.player.IPlayer;
import crafttweaker.event.ItemTossEvent;
import crafttweaker.event.PlayerTickEvent;

static banitem as IItemStack[]=
[
<enderio:item_material:9>,
<enderio:item_material:10>,
<enderio:item_material:11>,
<enderio:item_material:12>,
<enderio:item_material:13>,
<enderio:item_material:73>
//这上面的是末影接口的齿轮
];

events.onItemToss(function(event as crafttweaker.event.ItemTossEvent) {
    if(!event.player.creative && !isNull(event.item)){
        val entityitem as IEntityItem = event.item;
        val stackitem as IItemStack = entityitem.item;
        for ban_item in banitem{
            if(ban_item.matches(stackitem)){
                    event.player.sendChat(" 该物品已被禁用");
                    event.item.setDead();
                
            }
        }
    }
});
events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    if(!event.player.creative){
        val player = event.player;
        for i in 0 to 8{
            for ban_item in banitem{
            val hotbaritem as IItemStack = player.getHotbarStack(i);
                if(!isNull(hotbaritem) && ban_item.matches(hotbaritem)){
                    player.sendChat(" 该物品["+ hotbaritem.displayName +"]已被禁用");
                    hotbaritem.mutable().shrink(64);
                }
            }
        }
        for i in 9 to 35{
            for ban_item in banitem{
            val inventoryitem as IItemStack = player.getInventoryStack(i);
                if(!isNull(inventoryitem) && ban_item.matches(inventoryitem)){
                    player.sendChat(" 该物品["+ inventoryitem.displayName +"]已被禁用");
                    inventoryitem.mutable().shrink(64);
                }
            }
        }
    }
});
*/

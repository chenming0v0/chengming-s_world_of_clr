#loader reloadable
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntityItem;
import crafttweaker.entity.IEntity;
import crafttweaker.world.IWorld;
import crafttweaker.util.Position3f;
import crafttweaker.world.IBlockPos;
import crafttweaker.player.IPlayer;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;


events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent) {
    if (<minecraft:stick>.matches(event.player.currentItem) && event.player.creative) {
        var key as string =<ore:crystalValyrium>.name.substring("crystal".length);
        var ore as IOreDictEntry= oreDict.get("ore" ~ key);//矿石
        print(ore.firstItem.commandString);
        print(<ore:oreValyrium>.firstItem.commandString);
        print(<ore:oreValyrium>.firstItem.commandString);
        print(-10 +1);
    }
});
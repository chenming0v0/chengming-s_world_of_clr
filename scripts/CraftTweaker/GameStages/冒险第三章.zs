#priority 999
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
val items as IItemStack[]=
[
<legendera:froster_queen_memento>,
<legendera:frost_essence>,
<legendera:frosty_gemstone>,
<legendera:frosty_gemstone_block>,
<legendera:frost_ice_saber>,
<legendera:frosty_nova>,
<legendera:froster_queen_altar>,
<legendera:portal_frost_territory>,
<legendera:frosty_gemstone_ore>,
];

for item in items{
    mods.ItemStages.addItemStage('\u5192\u9669\u7b2c\u4e09\u7ae0', item);
}


mods.DimensionStages.addDimensionStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", 129);//霜域
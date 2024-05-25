//由于本脚本是为cot的匠魂材料服务的所以破例放在了cot堆的脚本中
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
/*
这里是为了方便添加匠魂融化和铸造专门写的自定义函数
用法为 温度:{物品:流体}
 */
var map as ILiquidStack[IItemStack][int] = {
    873:{<contenttweaker:tian>:<liquid:tian>},//天宇
    527:{<item:netherex:rime_crystal>:<liquid:rime_crystal>},//下界寒晶
    452:{<defiledlands:ravaging_ingot>:<liquid:ravaging>},//毁灭
    753:{<rftools:dimensional_shard>:<liquid:dimensional_shard>},//空间水晶
};


function jhladdRRecipe(inItem as IItemStack , outliquid as ILiquidStack , temp as int){
    Melting.addRecipe(outliquid * 144 , inItem , 300 + temp);
    Casting.addTableRecipe(inItem, <tconstruct:cast_custom>, outliquid, 144);
}

for temp,map1 in map{
    for item,liquid in map1{
        jhladdRRecipe(item , liquid , temp);
    }
}
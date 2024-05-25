#priority 999
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import mods.DimensionStages.addDimensionStage;

val items as IItemStack[]=
[
<defiledlands:idol_sorrow>,
<defiledlands:remorseful_gem>,
<defiledlands:essence_mourner>,
<contenttweaker:ji_han_sheng_wu>,
<contenttweaker:sheng_shen_guang_hui>,
<contenttweaker:fa_zhan_zhang_bing>,
<contenttweaker:nebu_ore>,
<contenttweaker:nebu_drop>,
<contenttweaker:nebu_block>,
<contenttweaker:nebu_ingot>,
<contenttweaker:a_tu_mu_godshard>,
<contenttweaker:la_zhi_godshard>,
<contenttweaker:pu_ta_godshard>,
<contenttweaker:ge_bu_godshard>,
<contenttweaker:te_fu_nu_te_godshard>,
<contenttweaker:shu_zhi_godshard>,
<contenttweaker:he_lu_shi_godshard>,
<contenttweaker:sai_te_godshard>,
<contenttweaker:yi_xi_shi_godshard>,
<contenttweaker:meng_tu_godshard>,
<contenttweaker:a_nu_bi_godshard>,
<contenttweaker:te_hu_godshard>,
<contenttweaker:an_pu_te_godshard>,
<contenttweaker:him_111111>,
];

for item in items{
    mods.ItemStages.addItemStage('\u5192\u9669\u7b2c\u4e8c\u7ae0', item);
}

for item in loadedMods["legendera"].items{
    if(item.definition.id != "legendera:froster_queen_memento" && item.definition.id !="legendera:frost_essence" && item.definition.id !="legendera:frosty_gemstone"&& item.definition.id !="legendera:frosty_gemstone_block"&& item.definition.id !="legendera:frost_ice_saber"&& item.definition.id !="legendera:frosty_nova"&& item.definition.id !="legendera:froster_queen_altar"&& item.definition.id !="legendera:portal_frost_territory"&& item.definition.id !="legendera:frosty_gemstone_ore"){
        mods.ItemStages.addItemStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", item);
    }
}

mods.ItemStages.stageModItems("\u5192\u9669\u7b2c\u4e8c\u7ae0", "abyssalcraft");
mods.ItemStages.stageModItems("\u5192\u9669\u7b2c\u4e8c\u7ae0", "aether_legacy");
mods.ItemStages.stageModItems("\u5192\u9669\u7b2c\u4e8c\u7ae0", "atum");
mods.ItemStages.stageModItems("\u5192\u9669\u7b2c\u4e8c\u7ae0", "mm");

mods.DimensionStages.addDimensionStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", 1000);//魔界
mods.DimensionStages.addDimensionStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", 8);//atum
mods.DimensionStages.addDimensionStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", 50);//深渊荒原
mods.DimensionStages.addDimensionStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", 4);//天境
mods.DimensionStages.addDimensionStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", 125);
mods.DimensionStages.addDimensionStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", 126);
mods.DimensionStages.addDimensionStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", 127);
mods.DimensionStages.addDimensionStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", 128);
mods.DimensionStages.addDimensionStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", 129);
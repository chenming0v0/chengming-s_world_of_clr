#reloadable
import crafttweaker.item.IItemStack;

val remove as IItemStack[]=[
<legendera:devildom_portal_wand>,
<atum:scarab>,
<legendera:ender_energy_core>,
<legendera:evocation_wand>,
<aether_legacy:enchanter>,
];

for item in remove {
    recipes.remove(item);
}

//神圣光辉
recipes.addShaped(<contenttweaker:sheng_shen_guang_hui>, [
    [<ore:gemGoldenAmber>, <atum:golden_date_enchanted>, <ore:gemGoldenAmber>], 
    [<ore:godshard>, <ore:ingotValkyrie>, <ore:godshard>], 
    [<ore:cropBlueberryEnchanted>, <atum:golden_date_enchanted>, <ore:cropBlueberryEnchanted>]
]);
//神铸立方
recipes.addShaped(<contenttweaker:shen_zhu_li_fang>, [
    [<ore:ingotNebu>, <ore:ingotNebu>, <ore:ingotNebu>], 
    [<ore:godshard>, <ore:godshard>, <ore:godshard>], 
    [<ore:ingotNebu>, <ore:ingotNebu>, <ore:ingotNebu>]
]);

//神铸熔炉
recipes.addShaped(<atum:szrl>, [
    [<abyssalcraft:oc>, <ore:netherStar>, <abyssalcraft:oc>], 
    [<ore:ingotNebu>, <contenttweaker:sheng_shen_guang_hui>, <contenttweaker:nebu_ingot>], 
    [<aether_legacy:enchanted_gravitite>, <contenttweaker:nebu_block>, <aether_legacy:enchanted_gravitite>]
]);

//铸造祭坛
recipes.addShaped(<aether_legacy:enchanter>, [
    [<abyssalcraft:ingotblock:1>, <aether_legacy:aerogel>, <abyssalcraft:ingotblock:1>], 
    [<aether_legacy:aerogel>, <ore:blockValkyrieMetal>, <aether_legacy:aerogel>], 
    [<ore:blockZanite>, <ore:blockEnchantedGravitite>, <ore:blockZanite>]
]);

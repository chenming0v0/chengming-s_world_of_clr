import crafttweaker.item.IItemStack;

val remove as IItemStack[]=[
    <theaurorian:moontemplekey>, //\u6708\u5BAB\u94A5\u5319
    <theaurorian:darkstonekey>, //\u6697\u77F3\u5730\u7262\u94A5\u5319
];

for item in remove {
    recipes.remove(item);
}

//皎月之庇护
recipes.addShaped(<contenttweaker:jiao_yue_zhi_bi_hu>, 
[
    [<contenttweaker:tian>, <ore:ingotKnightslime>, <contenttweaker:tian>], 
    [<ore:ingotFiery>, <ore:ingotAurorianSteel>, <twilightforest:fiery_ingot>], 
    [null, <twilightforest:alpha_fur>, null]
]);
//暮光宝石
recipes.addShaped(<contenttweaker:mu_guang_bao_shi>, 
[
    [<ore:essenceDestroyer>, <theaurorian:trophykeeper>, <ore:essenceDestroyer>], 
    [<theaurorian:crystal>, <ore:gemScarlite>, <theaurorian:crystal>], 
    [<ore:essenceDestroyer>, <theaurorian:crystal>, <defiledlands:essence_destroyer>]
]);
//天宇锭复制合成
recipes.addShaped(<contenttweaker:tian> * 3, 
[
    [<contenttweaker:tian_shui_pian>, <contenttweaker:tian_shui_pian>, <contenttweaker:tian_shui_pian>], 
    [<contenttweaker:tian_shui_pian>, <contenttweaker:tian>, <contenttweaker:tian_shui_pian>], 
    [<contenttweaker:tian_shui_pian>, <contenttweaker:tian_shui_pian>, <contenttweaker:tian_shui_pian>]
]);
//史莱姆皇冠
recipes.addShaped(<contenttweaker:shi_lai_mu_wang_guang>, 
[
    [<twilightforest:naga_scale>, <defiledlands:book_wyrm_scale_golden>, <twilightforest:naga_scale>], 
    [<ore:ingotCerulean>, <defiledlands:ravaging_ingot>, <theaurorian:ceruleaningot>], 
    [null, <ebwizardry:magic_crystal>, null]
]);
//融合祭坛
recipes.addShaped(<chengming:rhjt>, 
[
    [<ore:ingotKnightslime>, <twilightforest:lamp_of_cinders>.reuse(), <ore:ingotKnightslime>], 
    [<twilightforest:alpha_fur>, <theaurorian:moonlightforge>, <twilightforest:alpha_fur>], 
    [<theaurorian:auroriansteel>, <tconstruct:metal:3>, <theaurorian:auroriansteel>]
]);
//月宫钥匙
recipes.addShaped(<theaurorian:moontemplekey>, 
[
    [null, null, <theaurorian:darkamulet>], 
    [<theaurorian:moongem>, <ore:ingotMoonstone>, null], 
    [<twilightforest:alpha_fur>, null, <twilightforest:lamp_of_cinders>.reuse()]
]);
//暗石地牢钥匙
recipes.addShaped(<theaurorian:darkstonekey>, 
[
    [null, null, <theaurorian:keeperamulet>], 
    [<theaurorian:crystal>, <ore:ingotKnightslime>, null], 
    [<ore:ingotKnightslime>, null, null]
]);

//植物纤维
recipes.addShapeless(<theaurorian:plantfiber>, 
[<theaurorian:silentwoodsapling>]);
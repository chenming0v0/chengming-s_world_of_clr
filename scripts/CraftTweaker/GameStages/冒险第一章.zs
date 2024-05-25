import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;
import crafttweaker.item.IItemStack;
import crafttweaker.mods.ILoadedMods;

//冒险第一章
mods.ItemStages.stageModItems("\u5192\u9669\u7B2C\u4E00\u7AE0", "theaurorian");
mods.ItemStages.stageModItems("\u5192\u9669\u7B2C\u4E00\u7AE0", "twilightforest");
mods.ItemStages.addItemStage('\u5192\u9669\u7B2C\u4E00\u7AE0',<chengming:rhjt>);
mods.ItemStages.addItemStage('\u5192\u9669\u7B2C\u4E00\u7AE0',<contenttweaker:shi_lai_mu_wang_guang>);
mods.ItemStages.addItemStage('\u5192\u9669\u7B2C\u4E00\u7AE0',<contenttweaker:tian>);
mods.ItemStages.addItemStage('\u5192\u9669\u7B2C\u4E00\u7AE0',<contenttweaker:jiao_yue_zhi_bi_hu>);
mods.ItemStages.addItemStage('\u5192\u9669\u7B2C\u4E00\u7AE0',<contenttweaker:shi_lai_mu_yi_bian_jing_hua>);
mods.ItemStages.addItemStage('\u5192\u9669\u7B2C\u4E00\u7AE0',<tconstruct:metal:3>);
mods.ItemStages.addItemStage('\u5192\u9669\u7B2C\u4E00\u7AE0',<tconstruct:ingots:3>);


for item in loadedMods["defiledlands"].items{
    if(item.definition.id != "defiledlands:idol_sorrow" && item.definition.id !="defiledlands:essence_mourner" && item.definition.id !="defiledlands:remorseful_gem"){
        mods.ItemStages.addItemStage('\u5192\u9669\u7B2C\u4E00\u7AE0', item);
    }
}

mods.DimensionStages.addDimensionStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", 7);//暮色
mods.DimensionStages.addDimensionStage("\u5192\u9669\u7b2c\u4e8c\u7ae0", 424);//极光幽境

//冒险第一章怪物盔甲修改

//冒险第一章怪物类型
var group = ArmorHandler.createArmorGroup("yuan_ban", 0.7);
var mxdyzgwlx as string[]= ["minecraft:zombie","minecraft:skeleton"];
for mx1mobs in mxdyzgwlx {
    var mx1_mobs = ArmorHandler.createArmorEntity(mx1mobs);
    group.addEntity(mx1_mobs);
}

//冒险第一章头戴的帽子
var mxdyzgw_head as IItemStack[] = [
<thermalfoundation:armor.helmet_nickel>,
<thermalfoundation:armor.helmet_aluminum>,
<thermalfoundation:armor.helmet_lead>,
<minecraft:golden_helmet>,
<minecraft:diamond_helmet>,
<minecraft:iron_helmet>,
<minecraft:chainmail_helmet>,
<thermalfoundation:armor.helmet_constantan>,
<thermalfoundation:armor.helmet_bronze>,
<thermalfoundation:armor.helmet_invar>,
<thermalfoundation:armor.helmet_electrum>,
<thermalfoundation:armor.helmet_steel>
];
for mx1head in mxdyzgw_head {
    var mx1_head = ArmorHandler.createArmorSlot("head", mx1head, 1, 0);
    group.addArmor(mx1_head);
}

//冒险第一章身上的衣服
var mxdyzgw_chest as IItemStack[] = [
<thermalfoundation:armor.plate_platinum>,
<thermalfoundation:armor.plate_nickel>,
<thermalfoundation:armor.plate_aluminum>,
<thermalfoundation:armor.plate_lead>,
<minecraft:golden_chestplate>,
<minecraft:diamond_chestplate>,
<minecraft:iron_chestplate>,
<minecraft:chainmail_chestplate>,
<thermalfoundation:armor.plate_constantan>,
<thermalfoundation:armor.plate_bronze>,
<thermalfoundation:armor.plate_invar>,
<thermalfoundation:armor.plate_electrum>,
<thermalfoundation:armor.plate_steel>
];
for mx1chest in mxdyzgw_chest {
    var mx1_chest = ArmorHandler.createArmorSlot("chest", mx1chest, 1, 0);
    group.addArmor(mx1_chest);
}

//冒险第一章身上的裤子
var mxdyzgw_legs as IItemStack[] = [
<thermalfoundation:armor.legs_nickel>,
<thermalfoundation:armor.legs_aluminum>,
<thermalfoundation:armor.legs_lead>,
<minecraft:golden_leggings>,
<minecraft:diamond_leggings>,
<minecraft:iron_leggings>,
<minecraft:chainmail_leggings>,
<thermalfoundation:armor.legs_constantan>,
<thermalfoundation:armor.legs_bronze>,
<thermalfoundation:armor.legs_invar>,
<thermalfoundation:armor.legs_electrum>,
<thermalfoundation:armor.legs_steel>
];
for mx1legs in mxdyzgw_legs {
    var mx1_legs = ArmorHandler.createArmorSlot("legs", mx1legs, 1, 0);
    group.addArmor(mx1_legs);
}

//冒险第一章身上的鞋子
var mxdyzgw_feet as IItemStack[] = [
<thermalfoundation:armor.boots_nickel>,
<thermalfoundation:armor.boots_aluminum>,
<thermalfoundation:armor.boots_lead>,
<minecraft:golden_boots>,
<minecraft:diamond_boots>,
<minecraft:iron_boots>,
<minecraft:chainmail_boots>,
<thermalfoundation:armor.boots_constantan>,
<thermalfoundation:armor.boots_bronze>,
<thermalfoundation:armor.boots_invar>,
<thermalfoundation:armor.boots_electrum>,
<thermalfoundation:armor.boots_steel>
];
for mx1feet in mxdyzgw_feet {
    var mx1_feet = ArmorHandler.createArmorSlot("feet", mx1feet, 1, 0);
    group.addArmor(mx1_feet);
}

//冒险第一章身上的主手
var mxdyzgw_mainhand as IItemStack[] = [
<thermalfoundation:tool.hammer_steel>,
<thermalfoundation:tool.hammer_platinum>,
<minecraft:diamond_axe>,
<minecraft:stone_axe>,
<minecraft:golden_sword>,
<minecraft:diamond_sword>,
<minecraft:iron_sword>,
<minecraft:stone_sword>,
<extrautils2:lawsword>,
<thermalfoundation:tool.sword_constantan>,
<thermalfoundation:tool.sword_bronze>,
<thermalfoundation:tool.sword_invar>,
<thermalfoundation:tool.sword_electrum>,
<thermalfoundation:tool.sword_steel>,
<thermalfoundation:tool.sword_platinum>,
<thermalfoundation:tool.sword_aluminum>,
<thermalfoundation:tool.sword_nickel>,
<minecraft:bow>,
<thermalfoundation:tool.bow_tin>,
<thermalfoundation:tool.bow_steel>,
<thermalfoundation:tool.bow_bronze>,
<thermalfoundation:tool.bow_platinum>,
<thermalfoundation:tool.bow_electrum>
];
for mx1mainhand in mxdyzgw_mainhand {
    var mx1_mainhand = ArmorHandler.createArmorSlot("mainhand", mx1mainhand, 1, 0);
    group.addArmor(mx1_mainhand);
}

//冒险第一章身上的副手
var mxdyzgw_offhand as IItemStack[] = [
<thermalfoundation:tool.shield_nickel>,
<thermalfoundation:tool.shield_aluminum>,
<thermalfoundation:tool.shield_lead>,
<thermalfoundation:tool.shield_silver>,
<thermalfoundation:tool.shield_tin>,
<thermalfoundation:tool.shield_copper>,
<minecraft:totem_of_undying>,
<minecraft:shield>,
<thermalfoundation:tool.shield_platinum>,
<thermalfoundation:tool.shield_iron>,
<thermalfoundation:tool.shield_constantan>,
<thermalfoundation:tool.shield_bronze>,
<thermalfoundation:tool.shield_invar>,
<thermalfoundation:tool.shield_electrum>,
<thermalfoundation:tool.shield_steel>,
<thermalfoundation:tool.shield_gold>,
<minecraft:bow>,
<thermalfoundation:tool.bow_tin>,
<thermalfoundation:tool.bow_steel>,
<thermalfoundation:tool.bow_bronze>,
<thermalfoundation:tool.bow_platinum>,
<thermalfoundation:tool.bow_electrum>
];
for mx1offhand in mxdyzgw_offhand {
    var mx1_offhand = ArmorHandler.createArmorSlot("offhand", mx1offhand, 1, 0);
    group.addArmor(mx1_offhand);
}
//"head"头盔, "chest"胸甲, "legs"裤子, "feet"靴子, "mainhand"主手, "offhand"副手)
group.addGameStage("\u5192\u9669\u7B2C\u4E00\u7AE0");




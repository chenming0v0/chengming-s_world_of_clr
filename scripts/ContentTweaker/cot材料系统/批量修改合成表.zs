#priority 20
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import mod.mekanism.gas.IGasStack;
import mods.futuremc.SmithingTable;


//这里是mek5倍的合成表函数
for ench in oreDict.entries /* oreDict.entries 在所有注册OD中循环 */ {
    var oreName as string = ench.name;
    var enchGear as IItemStack = ench.firstItem; // 获得OD的第一个物品
    // 进行条件判断获取cot新建的矿物水晶，第二条是排除mek原版已经搞好的的5倍
    if (oreName.startsWith("crystal") && enchGear.definition.owner != "mekanism") {
        var key as string = oreName.substring("crystal".length); // 获取金属名
        // 获取魔改需要的该金属的其他部件，水晶，碎片，碎块，污浊粉，粉,矿石
        var ore as IOreDictEntry= oreDict.get("ore" ~ key);//矿石
        var shard as IOreDictEntry = oreDict.get("shard" ~ key);//碎片
        var clump as IOreDictEntry = oreDict.get("clump" ~ key);//碎块
        var dirty_dust as IOreDictEntry = oreDict.get("dirtyDust" ~ key);//污浊粉
        var dust as IOreDictEntry = oreDict.get("dust" ~ key);//粉
        var ingot as IOreDictEntry = oreDict.get("ingot" ~ key);//锭
        //因为气体的名称通常为“矿物名字+类型”
        //例如<gas:abyssalnitedirty_ore_slurry_gas>所以获取的金属名要小写
        //所以将key转成小写
        var key1 as string = key.toLowerCase();
        //获取魔改需要的该金属的其他气体，污浊的矿物浆，纯净的矿物浆液
        var dirty_ore_slurry_gas as IGasStack = mods.mekanism.MekanismHelper.getGas(key1 ~ "dirty_ore_slurry_gas");//污浊的矿物浆
        var clean_ore_slurry_gas as IGasStack = mods.mekanism.MekanismHelper.getGas(key1 ~ "clean_ore_slurry_gas");//纯净的矿物浆液
        //避免撒B忘记注册导致脚本错误
        if ( ! dust.empty &&! shard.empty && ! clump.empty && ! dirty_dust.empty && ! ore.empty&& ! ingot.empty) {
            //倍矿基础
            //化学压射出碎片
            mods.mekanism.chemical.injection.addRecipe(enchGear, <gas:hydrogenchloride>, shard.firstItem);
            //净化仓出碎块
            mods.mekanism.purification.addRecipe(shard.firstItem, clump.firstItem);
            //粉碎机出污浊粉
            mods.mekanism.crusher.addRecipe(clump.firstItem, dirty_dust.firstItem);
            //富集仓出粉
            mods.mekanism.enrichment.addRecipe(dirty_dust.firstItem, dust.firstItem);
            //5倍矿出水晶
            //化学溶解室，化学清洗机，化学结晶器
            mods.mekanism.chemical.dissolution.addRecipe(ore, dirty_ore_slurry_gas * 1000);
            mods.mekanism.chemical.washer.addRecipe(dirty_ore_slurry_gas, clean_ore_slurry_gas);
            mods.mekanism.chemical.crystallizer.addRecipe(clean_ore_slurry_gas, enchGear);
            //4倍出碎片
            mods.mekanism.chemical.injection.addRecipe(ore, <gas:hydrogenchloride>, shard.firstItem * 4);
            //3倍出碎块
            mods.mekanism.purification.addRecipe(ore, clump.firstItem * 3);
            //2倍出粉
            mods.mekanism.enrichment.addRecipe(ore.firstItem, dust.firstItem * 2);
        }else{
            if( ! shard.empty && ! clump.empty && ! dirty_dust.empty ){
                //倍矿基础
                //化学压射出碎片
                mods.mekanism.chemical.injection.addRecipe(enchGear, <gas:hydrogenchloride>, shard.firstItem);
                //净化仓出碎块
                mods.mekanism.purification.addRecipe(shard.firstItem, clump.firstItem);
                //粉碎机出污浊粉
                mods.mekanism.crusher.addRecipe(clump.firstItem, dirty_dust.firstItem);
                //富集仓出粉
                mods.mekanism.enrichment.addRecipe(dirty_dust.firstItem, dust.firstItem);
                //5倍矿出水晶但没有矿石
                //化学溶解室，化学清洗机，化学结晶器
                mods.mekanism.chemical.washer.addRecipe(dirty_ore_slurry_gas, clean_ore_slurry_gas);
                mods.mekanism.chemical.crystallizer.addRecipe(clean_ore_slurry_gas, enchGear);
            }
        }
    }
}


for ench in oreDict.entries /* oreDict.entries 在所有注册OD中循环 */ {
    var oreName as string = ench.name;
    var enchGear as IItemStack = ench.firstItem; // 获得OD的第一个物品

    // 进行条件判断获取cot新建的齿轮与热力的齿轮，第二条是排除其他mod的齿轮
    if (oreName.startsWith("gear") && enchGear.definition.owner == "contenttweaker"&& enchGear.definition.owner == "thermalfoundation") {
        var key as string = oreName.substring("gear".length); // 获取金属名
        var ingot as IOreDictEntry = oreDict.get("ingot" ~ key);//锭
        var plate as IOreDictEntry = oreDict.get("plate" ~ key);//板
        var stick as IOreDictEntry = oreDict.get("stick" ~ key);//棍
        var key1 as string = key.toLowerCase();
        //避免撒B忘记注册导致脚本错误
        if ( ! ingot.empty &&! plate.empty && ! stick.empty && enchGear.definition.owner != "thermalfoundation") {
            //齿轮
            recipes.remove(enchGear);
            recipes.addShaped(enchGear,
            [[stick.firstItem, ingot.firstItem, stick.firstItem],
            [ingot.firstItem, plate.firstItem, ingot.firstItem],
            [stick.firstItem, ingot.firstItem, stick.firstItem]]);
            mods.thermalexpansion.Compactor.removeGearRecipe(enchGear);
            mods.thermalexpansion.Compactor.addGearRecipe(enchGear, ingot.firstItem * 4, 4000);
            mods.immersiveengineering.MetalPress.removeRecipe(enchGear);
            mods.immersiveengineering.MetalPress.addRecipe(enchGear, ingot.firstItem, <immersiveengineering:mold:1>, 4000, 4);
            //棍
            mods.immersiveengineering.MetalPress.addRecipe(stick.firstItem*2, ingot.firstItem, <immersiveengineering:mold:2>, 4000);
            //板
            mods.thermalexpansion.Compactor.removeStorageRecipe(plate.firstItem);
            mods.thermalexpansion.Compactor.addStorageRecipe(plate.firstItem, ingot.firstItem, 4000);
            mods.immersiveengineering.MetalPress.removeRecipe(plate.firstItem);
            mods.immersiveengineering.MetalPress.addRecipe(plate.firstItem, ingot.firstItem, <immersiveengineering:mold>, 4000);
            mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(plate.firstItem);
            mods.nuclearcraft.Pressurizer.addRecipe(ingot.firstItem,plate.firstItem);
        }
    }
}



//删除匠魂进化(tconevo)添加的齿轮
for ench in oreDict.entries /* oreDict.entries 在所有注册OD中循环 */ {
    var oreName as string = ench.name;
    var enchGear as IItemStack = ench.firstItem; // 获得OD的第一个物品
    // 进行条件判断获取cot新建的齿轮与热力的齿轮，第二条是排除其他mod的齿轮
    if (oreName.startsWith("gear") && enchGear.definition.owner == "tconevo") {
        recipes.remove(enchGear);
        mods.jei.JEI.hide(enchGear);
    }
}


mods.unidict.removalByKind.get("Crafting").remove("plate");

mods.unidict.removalByKind.get("Crafting").remove("wire");


mods.unidict.api.newShapedRecipeTemplate("plate", 1, [
    [<immersiveengineering:tool>,   "ingot",    null],
    ["ingot", "ingot", null],
    [null,    null,   null]
]);

//                                         第一个是<>调用的矿石item  第二个是族名
function addhechenbiao( ore as IItemStack , orename as string) {
        var key as string= orename;
        var key1 as string = key.toLowerCase();
        // 获取魔改需要的该金属的其他部件，水晶，碎片，碎块，粉,污浊的矿物浆
        var dirty_ore_slurry_gas as IGasStack = mods.mekanism.MekanismHelper.getGas(key1 ~ "dirty_ore_slurry_gas");//污浊的矿物浆
        var shard as IOreDictEntry = oreDict.get("shard" ~ key);//碎片
        var clump as IOreDictEntry = oreDict.get("clump" ~ key);//碎块
        var dust as IOreDictEntry = oreDict.get("dust" ~ key);//粉
    //倍矿物合成
    //5倍出污浊气体
    mods.mekanism.chemical.dissolution.addRecipe(ore, dirty_ore_slurry_gas * 1000);
    //4倍出碎片
    mods.mekanism.chemical.injection.addRecipe(ore, <gas:hydrogenchloride>, shard.firstItem * 4);
    //3倍出碎块
    mods.mekanism.purification.addRecipe(ore, clump.firstItem * 3);
    //2倍出粉
    mods.mekanism.enrichment.addRecipe(ore, dust.firstItem * 2);
}
//皎月石锭
addhechenbiao(<theaurorian:moonstoneore>,"Moonstone");

addhechenbiao(<theaurorian:ceruleanore>,"Cerulean");

var dirtyGravitonium as IGasStack = mods.mekanism.MekanismHelper.getGas("Gravitonium" ~ "dirty_ore_slurry_gas");//污浊的矿物浆
mods.mekanism.chemical.dissolution.addRecipe(<moretcon:oregravitoniumdense>, dirtyGravitonium * 4000);


val taigaore as IItemStack[]=[
    <taiga:karmesine_ore>,
    <taiga:ovium_ore>,
    <taiga:jauxum_ore>,
    <taiga:prometheum_ore>,
    <taiga:valyrium_ore>,
    <taiga:osram_ore>,
    <taiga:palladium_ore>,
    <taiga:aurorium_ore>,
    <taiga:abyssum_ore>,
    <taiga:duranite_ore>,
    <taiga:uru_ore>,
    <taiga:eezo_ore>,
    <taiga:vibranium_ore>
];

val taigaoreore as string[]=[
   "Karmesine",
   "Ovium",
   "Jauxum",
   "Prometheum",
   "Valyrium",
   "Osram",
   "Palladium",
   "Aurorium",
   "Abyssum",
   "Duranite",
   "Uru",
   "Eezo",
   "Vibranium",
];

for i in 0 to 13{
    addhechenbiao(taigaore[i],taigaoreore[i]);
}


val enrichmentore as IItemStack[][]=[
[
<rftools:dimensional_shard_ore:*>,
<aether_legacy:ambrosium_ore>,
<theaurorian:auroriancoalore>,
<theaurorian:geodeore>,
<netherex:rime_ore>,
<ebwizardry:crystal_ore>,
<abyssalcraft:coraliumore>,
<actuallyadditions:block_misc:3>,
<defiledlands:scarlite_ore>,
<moretcon:orevoidspar>,
<moretcon:oreenderal>,
<moretcon:oregarstone>,
<moretcon:orebloodstone>,
<moretcon:oreechostone>,
<legendera:devildom_amethyst_ore>,
<legendera:frosty_gemstone_ore>,
],
[
<rftools:dimensional_shard> * 6,
<aether_legacy:ambrosium_shard> * 6,
<theaurorian:auroriancoal> * 6,
<theaurorian:crystal> * 3,
<netherex:rime_crystal> * 2,
<ebwizardry:magic_crystal> * 6,
<abyssalcraft:coralium> * 4,
<actuallyadditions:item_misc:5> * 3,
<defiledlands:scarlite> * 2,
<moretcon:gemvoidspar> * 2,
<moretcon:gemenderal> * 2,
<moretcon:gemgarstone> * 2,
<moretcon:gembloodstone> * 2,
<moretcon:gemechostone> * 2,
<legendera:devildom_amethyst> * 3,
<legendera:frosty_gemstone> * 2,
]
];
for i in 0 to 15{
    mods.mekanism.enrichment.addRecipe(enrichmentore[0][i], enrichmentore[1][i]);
}


function addImmclbandsp( ingot as IItemStack , ingotname as string) {
        var key as string= ingotname;
        var plate as IOreDictEntry = oreDict.get("plate" ~ key);//板
        var gear as IOreDictEntry = oreDict.get("gear" ~ key);//齿轮
        var stick as IOreDictEntry = oreDict.get("stick" ~ key);//棍
    mods.immersiveengineering.MetalPress.addRecipe(gear.firstItem, ingot, <immersiveengineering:mold:1>, 4000, 4);
    mods.immersiveengineering.MetalPress.addRecipe(plate.firstItem, ingot, <immersiveengineering:mold>, 3000);
    mods.immersiveengineering.MetalPress.addRecipe(stick.firstItem*2, ingot, <immersiveengineering:mold:2>, 4000);
}
addImmclbandsp(<pneumaticcraft:ingot_iron_compressed>,"IronCompressed");
addImmclbandsp(<theaurorian:ceruleaningot>,"Cerulean");
addImmclbandsp(<theaurorian:moonstoneingot>,"Moonstone");

for i in 24 to 28{
    var THERcl as IItemStack = <thermalfoundation:material>.definition.makeStack(i);
    recipes.remove(THERcl);
}


for i in 256 to 265{
    var THERcl as IItemStack = <thermalfoundation:material>.definition.makeStack(i);
    recipes.remove(THERcl);
}

for i in 288 to 296{
    var THERcl as IItemStack = <thermalfoundation:material>.definition.makeStack(i);
    recipes.remove(THERcl);
}


mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:27>, <ore:gemEmerald>, <immersiveengineering:mold:1>, 4000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:26>, <ore:gemDiamond>, <immersiveengineering:mold:1>, 4000, 4);


function addgearimmther( ingot as IItemStack , gear as IItemStack) {
mods.immersiveengineering.MetalPress.addRecipe(gear, ingot, <immersiveengineering:mold:1>, 4000, 4);
mods.thermalexpansion.Compactor.addGearRecipe(gear, ingot * 4, 4000);
}

addgearimmther(<enderio:item_alloy_ingot:2>,<ore:gearVibrant>.firstItem);
addgearimmther(<enderio:item_alloy_ingot:1>,<ore:gearEnergized>.firstItem);
addgearimmther(<enderio:item_alloy_ingot:6>,<ore:gearDark>.firstItem);

furnace.addRecipe(<contenttweaker:nebu_ingot>, <ore:dustNebu>, 1.6);


//下届合金
if(true){
    recipes.remove(<futuremc:netherite_ingot>);
    recipes.addShaped(<futuremc:netherite_ingot>, 
    [
        [<futuremc:netherite_scrap>, <futuremc:netherite_scrap>, <futuremc:netherite_scrap>], 
        [<ore:ingotGold>, null, <futuremc:netherite_scrap>], 
        [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]
    ]);
    recipes.addShaped(<futuremc:netherite_ingot> * 2, 
    [
        [<futuremc:netherite_scrap>, <futuremc:netherite_scrap>, <futuremc:netherite_scrap>], 
        [<ore:ingotNebu>, null, <futuremc:netherite_scrap>], 
        [<ore:ingotNebu>, <ore:ingotNebu>, <ore:ingotNebu>]
    ]);
    mods.mekanism.crusher.addRecipe(<futuremc:ancient_debris>, <contenttweaker:fen_shui_xia_jei_he_jin>*3);
    mods.mekanism.enrichment.addRecipe(<contenttweaker:fen_shui_xia_jei_he_jin>, <futuremc:netherite_scrap>);
}


recipes.addShaped(<immersiveengineering:sheetmetal:8> * 2, 
[
    [<immersiveengineering:material:9>, <ore:plateSteel>, <immersiveengineering:material:9>], 
    [<ore:plateSteel>, null, <ore:plateSteel>], 
[<immersiveengineering:material:9>, <ore:plateSteel>, <immersiveengineering:material:9>]
]);

for i in 0 to 11{
        var blockSheetmetal as IItemStack = <immersiveengineering:sheetmetal>.definition.makeStack(i);
        recipes.remove(blockSheetmetal);
}

recipes.addShaped(<immersiveengineering:sheetmetal:5> * 2, [[<immersiveengineering:material:9>, <ore:plateUranium>, <immersiveengineering:material:9>], [<ore:plateUranium>, null, <ore:plateUranium>], [<immersiveengineering:material:9>, <ore:plateUranium>, <immersiveengineering:material:9>]]);
recipes.addShaped(<immersiveengineering:sheetmetal:9> * 2, [[<immersiveengineering:material:8>, <ore:plateIron>, <immersiveengineering:material:8>], [<ore:plateIron>, null, <ore:plateIron>], [<immersiveengineering:material:8>, <ore:plateIron>, <immersiveengineering:material:8>]]);
recipes.addShaped(<immersiveengineering:sheetmetal:3> * 2, [[<immersiveengineering:material:8>, <ore:plateSilver>, <immersiveengineering:material:8>], [<ore:plateSilver>, null, <ore:plateSilver>], [<immersiveengineering:material:8>, <ore:plateSilver>, <immersiveengineering:material:8>]]);
recipes.addShaped(<immersiveengineering:sheetmetal:4> * 2, [[<immersiveengineering:material:8>, <ore:plateNickel>, <immersiveengineering:material:8>], [<ore:plateNickel>, null, <ore:plateNickel>], [<immersiveengineering:material:8>, <ore:plateNickel>, <immersiveengineering:material:8>]]);
recipes.addShaped(<immersiveengineering:sheetmetal:2> * 2, [[<immersiveengineering:material:8>, <ore:plateLead>, <immersiveengineering:material:8>], [<ore:plateLead>, null, <ore:plateLead>], [<immersiveengineering:material:8>, <ore:plateLead>, <immersiveengineering:material:8>]]);
recipes.addShaped(<immersiveengineering:sheetmetal:10> * 2, [[<immersiveengineering:material:8>, <ore:plateGold>, <immersiveengineering:material:8>], [<ore:plateGold>, null, <ore:plateGold>], [<immersiveengineering:material:8>, <ore:plateGold>, <immersiveengineering:material:8>]]);
recipes.addShaped(<immersiveengineering:sheetmetal:7> * 2, [[<immersiveengineering:material:8>, <ore:plateElectrum>, <immersiveengineering:material:8>], [<ore:plateElectrum>, null, <ore:plateElectrum>], [<immersiveengineering:material:8>, <ore:plateElectrum>, <immersiveengineering:material:8>]]);
recipes.addShaped(<immersiveengineering:sheetmetal:6> * 2, [[<immersiveengineering:material:8>, <ore:plateConstantan>, <immersiveengineering:material:8>], [<ore:plateConstantan>, null, <ore:plateConstantan>], [<immersiveengineering:material:8>, <ore:plateConstantan>, <immersiveengineering:material:8>]]);
recipes.addShaped(<immersiveengineering:sheetmetal:1> * 2, [[<immersiveengineering:material:8>, <ore:plateAluminum>, <immersiveengineering:material:8>], [<ore:plateAluminum>, null, <ore:plateAluminum>], [<immersiveengineering:material:8>, <ore:plateAluminum>, <immersiveengineering:material:8>]]);
recipes.addShaped(<immersiveengineering:sheetmetal> * 2, [[<immersiveengineering:material:8>, <ore:plateCopper>, <immersiveengineering:material:8>], [<ore:plateCopper>, null, <ore:plateCopper>], [<immersiveengineering:material:8>, <ore:plateCopper>, <immersiveengineering:material:8>]]);

mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:ingot:8>);
mods.tconstruct.Melting.removeRecipe(<liquid:coal>);

mods.tconstruct.Casting.removeTableRecipe(<minecraft:diamond>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:16>);
mods.tconstruct.Casting.removeTableRecipe(<minecraft:diamond_block>);
mods.tconstruct.Melting.removeRecipe(<liquid:diamond>);

//为什么会有这样的合成表(铁 ——> 水)
mods.tconstruct.Melting.removeRecipe(<liquid:water>, <minecraft:iron_ingot>);

furnace.addRecipe(<aether_legacy:enchanted_gravitite>, <aether_legacy:gravitite_ore>, 3.7);

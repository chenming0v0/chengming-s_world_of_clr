#reloadable
import crafttweaker.item.IItemStack;

val remove as IItemStack[]=[
    <actuallyadditions:block_misc:9>,//铁质外壳
    <mekanism:basicblock:8>,//钢制外壳
    <mekanism:energytablet>,//能量板
    <actuallyadditions:item_misc:7>,//基础线圈
    <actuallyadditions:item_misc:8>,//高级线圈
    <actuallyadditions:item_battery>,//一阶段电池
    <actuallyadditions:block_display_stand>,//物品展示台
    <actuallyadditions:block_empowerer>,//充能台
    <mekanism:machineblock2:14>,//激光增幅器
    <actuallyadditions:block_atomic_reconstructor>, //原子再构机
    <nuclearcraft:part>,//基础板
    <nuclearcraft:part:1>,//高级板
    <nuclearcraft:part:10>, //机器框架(nco)
    <nuclearcraft:part:12>,//钢框架(nco)
    <nuclearcraft:nuclear_furnace>, //核动力熔炉
    <mekanism:machineblock:8>, //灌注机
    <mekanism:machineblock:1>, //锇压缩机
    <nuclearcraft:manufactory>, //小制造机
    <nuclearcraft:alloy_furnace>, //合金炉
    <immersiveengineering:stone_decoration:8>, //绝缘玻璃
    <appliedenergistics2:inscriber>, //压印器
    <mekanism:controlcircuit:1>,//高级控制电路
    <threng:material:4>, //福鲁伊克斯逻辑处理单元
    <appliedenergistics2:material:44>,//破坏核心
    <appliedenergistics2:material:43>, //成型核心
    <threng:machine>, //福鲁伊克斯聚合器
    <appliedenergistics2:condenser>, //聚合器
    <mekanism:controlcircuit:2>,//精英控制电路
    <appliedenergistics2:controller>,//me控制器
];

for item in remove {
    recipes.remove(item);
}
recipes.removeByRecipeName("extrautils2:machine_base");
recipes.removeByRecipeName("extrautils2:machine_furnace");


<extrautils2:machine>.withTag({Type: "extrautils2:furnace"});
//铁质外壳
recipes.addShaped(<actuallyadditions:block_misc:9>, 
[
    [<immersiveengineering:sheetmetal:9>, <immersiveengineering:material>, <immersiveengineering:sheetmetal:9>], 
    [<immersiveengineering:material>, <actuallyadditions:item_misc:5>, <immersiveengineering:material>], 
    [<immersiveengineering:sheetmetal:9>, <immersiveengineering:material>, <immersiveengineering:sheetmetal:9>]
]);


//钢制外壳
recipes.addShaped(<mekanism:basicblock:8> * 2, 
[
    [<immersiveengineering:sheetmetal:8>, <thermalfoundation:storage_alloy>, <immersiveengineering:sheetmetal:8>], 
    [<mekanism:basicblock>, <immersiveengineering:metal_decoration1:1>, <mekanism:basicblock>], 
    [<immersiveengineering:sheetmetal:8>, <actuallyadditions:block_misc:9>, <immersiveengineering:sheetmetal:8>]
]);

//机器方块
recipes.addShaped(<extrautils2:machine> * 4, 
[
    [<ore:gemRedstone>, <ore:plateIron>, <ore:gemRedstone>], 
    [<ore:plateIron>, <extrautils2:decorativesolid:3>, <ore:plateIron>], 
    [<ore:slabLead>, <ore:slabLead>, <ore:slabLead>]
]);

//能量板
recipes.addShaped(<mekanism:energytablet>, 
[
    [<ore:alloyAdvanced>, <ore:ingotOsgloglas>, <ore:alloyAdvanced>], 
    [<thermalfoundation:material:352>, <plustic:osgloglasingot>, <thermalfoundation:material:352>], 
    [<ore:alloyAdvanced>, <ore:ingotOsgloglas>, <ore:alloyAdvanced>]
]);

//基础线圈
recipes.addShaped(<actuallyadditions:item_misc:7> * 2, 
[
    [<actuallyadditions:item_crystal:5>, <ore:wireAluminum>, <ore:gemQuartzBlack>], 
    [<ore:wireAluminum>, <ore:stickTreatedWood>, <immersiveengineering:material:22>], 
    [<ore:gemQuartzBlack>, <immersiveengineering:material:22>, <actuallyadditions:item_crystal:5>]
]);

//高级线圈
recipes.addShaped(<actuallyadditions:item_misc:8>, 
[
    [<mekanism:ingot:3>, <ore:wireElectrum>, <thermalfoundation:material:352>], 
    [<ore:wireElectrum>, <ore:stickSteel>, <ore:wireElectrum>], 
    [<thermalfoundation:material:352>, <ore:wireElectrum>, <mekanism:ingot:3>]
]);
//一阶段电池
recipes.addShaped(<actuallyadditions:item_battery>, 
[
    [null, <plustic:osgloglasingot>, <actuallyadditions:item_misc:7>], 
    [<actuallyadditions:item_crystal:4>, <mekanism:energytablet>, <ore:ingotOsgloglas>], 
    [null, <actuallyadditions:item_crystal:4>, null]
]);

//物品展示台
recipes.addShaped(<actuallyadditions:block_display_stand>, 
[
    [null, <actuallyadditions:item_misc:7>, null], 
    [<actuallyadditions:block_crystal:4>, <ore:blockOsgloglas>, <actuallyadditions:block_crystal:4>], 
    [<actuallyadditions:block_crystal:5>, <immersiveengineering:sheetmetal:9>, <actuallyadditions:block_crystal:5>]
]);

//充能台
recipes.addShaped(<actuallyadditions:block_empowerer>, 
[
    [null, <actuallyadditions:item_battery>, null], 
    [<actuallyadditions:block_misc:9>, <actuallyadditions:block_display_stand>, <actuallyadditions:block_misc:9>], 
    [<actuallyadditions:block_misc:9>, <mekanism:energycube>, <actuallyadditions:block_misc:9>]
]);

//激光增幅器
recipes.addShaped(<mekanism:machineblock2:14>, 
[
    [<immersiveengineering:metal_decoration1:1>, <ore:stickIron>, <immersiveengineering:metal_decoration1:1>], 
    [<immersiveengineering:material:1>, <ore:blockRedstone>, <ore:stickIron>], 
    [<immersiveengineering:metal_decoration1:1>, <ore:stickIron>, <immersiveengineering:metal_decoration1:1>]
]);

//原子再构机
recipes.addShaped(<actuallyadditions:block_atomic_reconstructor>, 
[
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
    [<mekanism:machineblock2:14>, <plustic:laser_medium>, <actuallyadditions:item_misc:18>], 
    [<ore:plateSteel>, <thermalfoundation:material:352>, <ore:plateSteel>]
]);

//基础板
recipes.addShaped(<nuclearcraft:part> * 4, 
[
    [<immersiveengineering:sheetmetal:2>, <ore:plateLead>, <ore:blockSheetmetalLead>], 
    [<ore:plateLead>, <ore:blockGraphite>, <ore:plateLead>], 
    [<ore:blockSheetmetalLead>, <ore:plateLead>, <ore:blockSheetmetalLead>]
]);

//高级板
recipes.addShaped(<nuclearcraft:part:1> * 2, 
[
    [<ore:alloyAdvanced>, <ore:ingotExtreme>, <mekanism:enrichedalloy>], 
    [<ore:ingotMagnesium>, <ore:plateBasic>, <ore:ingotMagnesium>], 
    [<ore:alloyAdvanced>, <ore:ingotExtreme>, <mekanism:enrichedalloy>]
]);


//机器框架(nco)
recipes.addShaped(<nuclearcraft:part:10> * 2, 
[
    [<ore:plateAdvanced>, <nuclearcraft:alloy:10>, <ore:plateAdvanced>], 
    [<ore:blockSteel>, <ore:steelFrame>, <ore:blockSteel>], 
    [<ore:plateAdvanced>, <nuclearcraft:ingot_block:8>, <ore:plateAdvanced>]
]);

//钢框架(nco)
recipes.addShaped(<nuclearcraft:part:12> * 2, 
[
    [<ore:blockSheetmetalSteel>, <ore:ingotBoron>, <immersiveengineering:sheetmetal:9>], 
    [<ore:blockSteel>, <immersiveengineering:metal_decoration0:5>, <ore:blockSteel>], 
    [<ore:blockSheetmetalIron>, <ore:ingotBoron>, <ore:blockSheetmetalSteel>]
]);

//核动力熔炉
recipes.addShaped(<nuclearcraft:nuclear_furnace>, 
[
    [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>], 
    [<ore:plateLead>, <minecraft:furnace>, <ore:plateLead>], 
    [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]
]);

//灌注机
recipes.addShaped(<mekanism:machineblock:8>, 
[
    [<ore:blockSheetmetalIron>, <extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), <ore:blockSheetmetalIron>], 
    [<extrautils2:ingredients:13>, <actuallyadditions:block_misc:9>, <extrautils2:ingredients:13>], 
    [<ore:blockSheetmetalIron>, <ore:blockOsmium>, <ore:blockSheetmetalIron>]
]);

//锇压缩机
recipes.addShaped(<mekanism:machineblock:1>, 
[
    [<ore:blockSheetmetalLead>, <ore:blockOsmium>, <immersiveengineering:sheetmetal:2>], 
    [<minecraft:bucket>, <mekanism:basicblock:8>, <minecraft:bucket>], 
    [<ore:blockSheetmetalLead>, <ore:blockOsmium>, <immersiveengineering:sheetmetal:2>]
]);

//小制造机
recipes.addShaped(<nuclearcraft:manufactory>, 
[
    [<ore:blockSheetmetalLead>, <extrautils2:machine>.withTag({Type: "extrautils2:crusher"}), <ore:blockSheetmetalLead>], 
    [<ore:blockOsmium>, <ore:steelFrame>, <ore:blockOsmium>], 
    [<ore:blockSheetmetalLead>, <extrautils2:ingredients:13>, <ore:blockSheetmetalLead>]
]);

//合金炉
recipes.addShaped(<nuclearcraft:alloy_furnace>, 
[
    [<nuclearcraft:part>, <immersiveengineering:stone_decoration:10>, <ore:plateBasic>], 
    [<ore:circuitBasic>, <ore:steelFrame>, <ore:circuitBasic>], 
    [<nuclearcraft:part>, <extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), <ore:plateBasic>]
]);
recipes.addShaped(<nuclearcraft:alloy_furnace>, 
[
    [<nuclearcraft:part>, <extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), <ore:plateBasic>], 
    [<ore:circuitBasic>, <mekanism:machineblock4:4>, <ore:circuitBasic>], 
    [<nuclearcraft:part>, <ore:steelFrame>, <ore:plateBasic>]
]);


//电炉
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), 
[
    [<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>], 
    [<extrautils2:decorativesolid:3>, <nuclearcraft:nuclear_furnace>, <extrautils2:decorativesolid:3>], 
    [<extrautils2:decorativesolid:3>, <ore:xuRedstoneCoil>, <extrautils2:decorativesolid:3>]
]);



//删除所有工程块合成表
for i in 3 to 6{
    var imm_gong_chen as IItemStack = <immersiveengineering:metal_decoration0>.definition.makeStack(i);
    recipes.remove(imm_gong_chen);
}

//红石工程块
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 2, 
[[<ore:blockSheetmetalIron>, <ore:blockRedstone>, <ore:blockSheetmetalIron>], 
[<ore:blockRedstone>, <ore:scaffoldingSteel>, <ore:blockRedstone>], 
[<ore:blockSheetmetalIron>, <ore:blockRedstone>, <ore:blockSheetmetalIron>]]);


//重型工程块
recipes.addShaped(<immersiveengineering:metal_decoration0:5>*4, 
[[<ore:blockSheetmetalUranium>, <immersiveengineering:material:9>, <ore:blockSheetmetalUranium>], 
[<mekanism:enrichedalloy>, <immersiveengineering:metal_decoration0:4>, <mekanism:enrichedalloy>], 
[<ore:blockSheetmetalUranium>, <immersiveengineering:material:9>, <ore:blockSheetmetalUranium>]]);


//轻型工程块
recipes.addShaped(<immersiveengineering:metal_decoration0:4>*2, 
[[<ore:blockSheetmetalCopper>, <ore:itemEnrichedAlloy>, <ore:blockSheetmetalCopper>], 
[<ore:itemEnrichedAlloy>, <ore:scaffoldingSteel>, <ore:itemEnrichedAlloy>], 
[<ore:blockSheetmetalCopper>, <ore:itemEnrichedAlloy>, <ore:blockSheetmetalCopper>]]);


//绝缘玻璃
recipes.addShaped(<immersiveengineering:stone_decoration:8>* 4, 
[[<actuallyadditions:item_crystal:4>, <appliedenergistics2:quartz_glass>, <actuallyadditions:item_crystal:4>], 
[<ore:dustBoron>, <ore:dyeGreen>, <ore:dustBoron>], 
[<actuallyadditions:item_crystal:4>, <appliedenergistics2:quartz_glass>, <actuallyadditions:item_crystal:4>]]);

//压印器
recipes.addShaped(<appliedenergistics2:inscriber>, 
[
    [<threng:material>, <minecraft:piston>, <threng:material>], 
    [<threng:material>, null, <appliedenergistics2:material:12>], 
    [<threng:material>, <minecraft:piston>, <threng:material>]
]);

recipes.addShaped(<appliedenergistics2:inscriber>, [
    [<ore:ingotTough>, <ore:plateAdvanced>, <ore:ingotTough>], 
    [<minecraft:piston>, <mekanism:basicblock:8>, <minecraft:piston>], 
    [<ore:ingotTough>, <ore:plateAdvanced>, <ore:ingotTough>]
]);


//福鲁伊克斯逻辑处理单元
recipes.addShaped(<threng:material:4> * 2, 
[
    [<ore:ingotFluixSteel>, <appliedenergistics2:material:23>, <ore:ingotFluixSteel>], 
    [<appliedenergistics2:quartz_glass>, <mekanism:controlcircuit:1>, <appliedenergistics2:quartz_glass>], 
    [<ore:ingotFluixSteel>, <appliedenergistics2:material:23>, <threng:material>]
]);

//破坏核心
recipes.addShaped(<appliedenergistics2:material:44> * 2, 
[
    [<appliedenergistics2:material:1>, <appliedenergistics2:material:23>, <appliedenergistics2:material:1>], 
    [<appliedenergistics2:material:24>, <appliedenergistics2:material:10>, <appliedenergistics2:material:45>], 
    [<appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:material:23>, <appliedenergistics2:quartz_vibrant_glass>]
]);

//成型核心
recipes.addShaped(<appliedenergistics2:material:43> * 2, 
[
    [<appliedenergistics2:material:1>, <appliedenergistics2:material:23>, <appliedenergistics2:material:1>], 
    [<appliedenergistics2:material:22>, <appliedenergistics2:material:12>, <appliedenergistics2:material:45>], 
    [<appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:material:23>, <appliedenergistics2:quartz_vibrant_glass>]
]);

//福鲁伊克斯聚合器
recipes.addShaped(<threng:machine>, 
[
    [<ore:ingotFluixSteel>, <ore:pearlFluix>, <ore:ingotFluixSteel>], 
    [<ore:plateAdvanced>, <threng:material:4>, <ore:plateAdvanced>], 
    [<ore:ingotFluixSteel>, <appliedenergistics2:condenser>, <ore:ingotFluixSteel>]
]);

//聚合器
recipes.addShaped(<appliedenergistics2:condenser>, 
[
    [<threng:material:2>, <appliedenergistics2:quartz_glass>, <threng:material:2>], 
    [<appliedenergistics2:quartz_glass>, <threng:material:4>, <appliedenergistics2:quartz_glass>], 
    [<threng:material:2>, <appliedenergistics2:quartz_glass>, <threng:material:2>]
]);

//me控制器
recipes.addShaped(<appliedenergistics2:controller>, 
[
    [<mekanism:atomicalloy>, <threng:material:6>, <mekanism:atomicalloy>], 
    [<ore:circuitElite>, <ore:chassis>, <ore:circuitElite>], 
    [<mekanism:atomicalloy>, <threng:material:4>, <mekanism:atomicalloy>]
]);

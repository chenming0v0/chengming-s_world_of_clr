#loader contenttweaker
#ignoreBracketErrors
#priority 101

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;
import mods.tconstruct.Melting;



//开始阶段的矿物类匠魂材料

//原版

//煤炭<minecraft:coal>
val tic_coal = ExtendedMaterialBuilder.create("tic_coal");
tic_coal.color = 0x141414;
tic_coal.craftable = true;
tic_coal.addItem(<item:minecraft:coal>);
tic_coal.representativeItem = <item:minecraft:coal>;
tic_coal.localizedName = "煤炭";
tic_coal.addHeadMaterialStats(20, 4, 2.5, 0);//顶部
tic_coal.addHandleMaterialStats(0.3, -15);//手柄
tic_coal.addExtraMaterialStats(35);//其他部件
tic_coal.addBowMaterialStats(0.4, 0.4, 5);//弓臂
tic_coal.addProjectileMaterialStats();//箭头
tic_coal.addCoreMaterialStats(20,8);//基底
tic_coal.addPlatesMaterialStats(0.8,25,0);//护甲板
tic_coal.addTrimMaterialStats(-15);//护甲板
tic_coal.register();




//铁<minecraft:iron_ingot>
val tic_iron = ExtendedMaterialBuilder.create("tic_iron");
tic_iron.color = 0xFFFFFF;
tic_iron.castable = true;
tic_iron.representativeItem = <item:minecraft:iron_ingot>;
tic_iron.liquid = <liquid:iron>;
tic_iron.localizedName = "铁";
tic_iron.addHeadMaterialStats(100, 6.5, 5, 2);//顶部
tic_iron.addHandleMaterialStats(0.8, 80);//手柄
tic_iron.addExtraMaterialStats(50);//其他部件
tic_iron.addBowMaterialStats(0.5, 0.8, 7);//弓臂
tic_iron.addProjectileMaterialStats();//箭头
tic_iron.addCoreMaterialStats(250,15);//基底
tic_iron.addPlatesMaterialStats(0.9,100,1);//护甲夹板
tic_iron.addTrimMaterialStats(120);//护甲板3
tic_iron.register();

//金<minecraft:gold_ingot>
val Tic_gold_ingot = ExtendedMaterialBuilder.create("tic_gold_ingot");
Tic_gold_ingot.color = 0xffff0b;
Tic_gold_ingot.castable = true;
Tic_gold_ingot.representativeItem = <item:minecraft:gold_ingot>;
Tic_gold_ingot.liquid = <liquid:gold>;
Tic_gold_ingot.localizedName = "金";
Tic_gold_ingot.addHeadMaterialStats(16, 10, 4, 0);//顶部
Tic_gold_ingot.addHandleMaterialStats(0.8, 24);//手柄
Tic_gold_ingot.addExtraMaterialStats(12);//其他部件
Tic_gold_ingot.addBowMaterialStats(2, 0.7, 2);//弓臂
Tic_gold_ingot.addProjectileMaterialStats();//箭头
Tic_gold_ingot.addMaterialTrait("tu_kuai", "head");//顶部的特性
Tic_gold_ingot.addMaterialTrait("tu_kuai", "handle");//手柄的特性
Tic_gold_ingot.addMaterialTrait("tu_kuai", "extra");//额外的特性
Tic_gold_ingot.addMaterialTrait("tu_kuai", "bow");//弓臂的特性
Tic_gold_ingot.addMaterialTrait("tu_kuai", "projectile");//箭头的特性
Tic_gold_ingot.register();

//钻石<minecraft:diamond>
val tic_diamond = ExtendedMaterialBuilder.create("tic_diamond");
tic_diamond.color = 0x4aedd1;
tic_diamond.craftable = true;
tic_diamond.addItem(<item:minecraft:diamond>);
tic_diamond.representativeItem = <item:minecraft:diamond>;
tic_diamond.localizedName = "钻石";
tic_diamond.addHeadMaterialStats(200, 9.5, 7, 3);//顶部
tic_diamond.addHandleMaterialStats(1.4, 30);//手柄
tic_diamond.addExtraMaterialStats(60);//其他部件
tic_diamond.addBowMaterialStats(2, 1.3, 4);//弓臂
tic_diamond.addProjectileMaterialStats();//箭头
tic_diamond.addCoreMaterialStats(120,20);//基底
tic_diamond.addPlatesMaterialStats(1.6,50,3);//护甲板
tic_diamond.addTrimMaterialStats(50);//护甲板
tic_diamond.register();

//绿宝石<minecraft:emerald>
val tic_emerald = ExtendedMaterialBuilder.create("tic_emerald");
tic_emerald.color = 0x1fdb66;
tic_emerald.castable = true;
tic_emerald.liquid = <liquid:emerald>;
tic_emerald.representativeItem = <item:minecraft:emerald>;
tic_emerald.localizedName = "绿宝石";
tic_emerald.addHeadMaterialStats(150, 12.5, 9.5, 4);//顶部
tic_emerald.addHandleMaterialStats(1.4, 50);//手柄
tic_emerald.addExtraMaterialStats(80);//其他部件
tic_emerald.addBowMaterialStats(2, 1.5, 5);//弓臂
tic_emerald.addProjectileMaterialStats();//箭头
tic_emerald.addCoreMaterialStats(150,22);//基底
tic_emerald.addPlatesMaterialStats(1.6,80,3);//护甲板
tic_emerald.addTrimMaterialStats(80);//护甲板
tic_emerald.register();

//热力矿物
//铜<thermalfoundation:material:128><ore:ingotCopper>
val tic_copper = ExtendedMaterialBuilder.create("tic_copper");
tic_copper.color = 0xcf7201;
tic_copper.castable = true;
tic_copper.liquid = <liquid:copper>;
tic_copper.representativeItem = <item:thermalfoundation:material:128>;
tic_copper.localizedName = "铜";
tic_copper.addHeadMaterialStats(125, 7.5, 4, 1);//顶部
tic_copper.addHandleMaterialStats(1.2, 35);//手柄
tic_copper.addExtraMaterialStats(-15);//其他部件
tic_copper.addBowMaterialStats(0.7, 1.3, 3);//弓臂
tic_copper.addProjectileMaterialStats();//箭头
tic_copper.addCoreMaterialStats(125,10);//基底
tic_copper.addPlatesMaterialStats(1.1,45,2);//护甲板
tic_copper.addTrimMaterialStats(-5);//护甲板
tic_copper.register();

//锡<thermalfoundation:material:129><ore:ingotTin>
val tic_tin = ExtendedMaterialBuilder.create("tic_tin");
tic_tin.color = 0x80919f;
tic_tin.castable = true;
tic_tin.liquid = <liquid:tin>;
tic_tin.representativeItem = <item:thermalfoundation:material:129>;
tic_tin.localizedName = "锡";
tic_tin.addHeadMaterialStats(100, 8, 4.5, 1);//顶部
tic_tin.addHandleMaterialStats(1.3, 40);//手柄
tic_tin.addExtraMaterialStats(5);//其他部件
tic_tin.addBowMaterialStats(0.8, 1.2, 3.5);//弓臂
tic_tin.addProjectileMaterialStats();//箭头
tic_tin.addCoreMaterialStats(100,13.5);//基底
tic_tin.addPlatesMaterialStats(1.0,60,2.5);//护甲板
tic_tin.addTrimMaterialStats(-20);//护甲板
tic_tin.register();

//铅<thermalfoundation:material:131><ore:ingotLead>
val tic_lead = ExtendedMaterialBuilder.create("tic_lead");
tic_lead.color = 0x41485d;
tic_lead.castable = true;
tic_lead.liquid = <liquid:lead>;
tic_lead.representativeItem = <item:thermalfoundation:material:131>;
tic_lead.localizedName = "铅";
tic_lead.addHeadMaterialStats(130, 7, 5, 2);//顶部
tic_lead.addHandleMaterialStats(1.3, 55);//手柄
tic_lead.addExtraMaterialStats(35);//其他部件
tic_lead.addBowMaterialStats(0.6, 1.3, 4.2);//弓臂
tic_lead.addProjectileMaterialStats();//箭头
tic_lead.addCoreMaterialStats(130,21);//基底
tic_lead.addPlatesMaterialStats(1.3,60,4);//护甲板
tic_lead.addTrimMaterialStats(30);//护甲板
tic_lead.register();

//银<thermalfoundation:material:130><ore:ingotSilver>
val tic_silver = ExtendedMaterialBuilder.create("tic_silver");
tic_silver.color = 0x97bfc6;
tic_silver.castable = true;
tic_silver.liquid = <liquid:silver>;
tic_silver.representativeItem = <item:thermalfoundation:material:130>;
tic_silver.localizedName = "银";
tic_silver.addHeadMaterialStats(150, 7, 6.5, 2);//顶部
tic_silver.addHandleMaterialStats(1.3, 50);//手柄
tic_silver.addExtraMaterialStats(35);//其他部件
tic_silver.addBowMaterialStats(0.8, 1.25, 3);//弓臂
tic_silver.addProjectileMaterialStats();//箭头
tic_silver.addCoreMaterialStats(130,18);//基底
tic_silver.addPlatesMaterialStats(1.2,60,2.5);//护甲板
tic_silver.addTrimMaterialStats(10);//护甲板
tic_silver.register();

//铝<thermalfoundation:material:132><ore:ingotAluminum>
val tic_aluminum = ExtendedMaterialBuilder.create("tic_aluminum");
tic_aluminum.color = 0xdcdde7;
tic_aluminum.castable = true;
tic_aluminum.liquid = <liquid:aluminum>;
tic_aluminum.representativeItem = <item:thermalfoundation:material:132>;
tic_aluminum.localizedName = "铝";
tic_aluminum.addHeadMaterialStats(125, 8, 7.5, 2);//顶部
tic_aluminum.addHandleMaterialStats(1.2, 60);//手柄
tic_aluminum.addExtraMaterialStats(45);//其他部件
tic_aluminum.addBowMaterialStats(1.2, 1.2, 4.5);//弓臂
tic_aluminum.addProjectileMaterialStats();//箭头
tic_aluminum.addCoreMaterialStats(120,21);//基底
tic_aluminum.addPlatesMaterialStats(1.3,55,2);//护甲板
tic_aluminum.addTrimMaterialStats(45);//护甲板
tic_aluminum.register();

//赛特斯石英<appliedenergistics2:material><ore:crystalCertusQuartz>
val tic_certusquartz = ExtendedMaterialBuilder.create("tic_certusquartz");
tic_certusquartz.color = 0xc6d9ff;
tic_certusquartz.craftable = true;
tic_certusquartz.addItem(<item:appliedenergistics2:material>);
tic_certusquartz.representativeItem = <item:appliedenergistics2:material>;
tic_certusquartz.localizedName = "赛特斯石英";
tic_certusquartz.addHeadMaterialStats(150, 12, 3.5, 2);//顶部
tic_certusquartz.addHandleMaterialStats(0.75, 120);//手柄
tic_certusquartz.addExtraMaterialStats(80);//其他部件
tic_certusquartz.addBowMaterialStats(2, 0.9, 2);//弓臂
tic_certusquartz.addProjectileMaterialStats();//箭头
tic_certusquartz.addCoreMaterialStats(175,17);//基底
tic_certusquartz.addPlatesMaterialStats(0.8,80,1);//护甲板
tic_certusquartz.addTrimMaterialStats(150);//护甲板
tic_certusquartz.register();

//充能赛特斯石英<appliedenergistics2:material:1><ore:crystalCertusQuartz>
val tic_certusquartz1 = ExtendedMaterialBuilder.create("tic_certusquartz1");
    tic_certusquartz1.color = 0xc6d9ff;
    tic_certusquartz1.craftable = true;
    tic_certusquartz1.addItem(<item:appliedenergistics2:material:1>);
    tic_certusquartz1.representativeItem = <item:appliedenergistics2:material:1>;
    tic_certusquartz1.localizedName = "充能赛特斯石英";
    tic_certusquartz1.addHeadMaterialStats(150, 12.5, 4.5, 2);//顶部
    tic_certusquartz1.addHandleMaterialStats(1.15, 60);//手柄
    tic_certusquartz1.addExtraMaterialStats(80);//其他部件
    tic_certusquartz1.addBowMaterialStats(2, 0.9, 4);//弓臂
    tic_certusquartz1.addProjectileMaterialStats();//箭头
    tic_certusquartz1.addCoreMaterialStats(125,19);//基底
    tic_certusquartz1.addPlatesMaterialStats(1.3,80,3);//护甲板
    tic_certusquartz1.addTrimMaterialStats(150);//护甲板
tic_certusquartz1.register();

//知识精华锭<actuallyadditions:item_solidified_experience>
val tic_knowledge = ExtendedMaterialBuilder.create("tic_knowledge");
    tic_knowledge.color = 0xb8f684;
    tic_knowledge.craftable = true;
    tic_knowledge.addItem(<item:actuallyadditions:item_solidified_experience>);
    tic_knowledge.representativeItem = <item:actuallyadditions:item_solidified_experience>;
    tic_knowledge.localizedName = "知识精华锭";
    tic_knowledge.addHeadMaterialStats(50, 5, 3.2, 1);//顶部
    tic_knowledge.addHandleMaterialStats(1.8, 100);//手柄
    tic_knowledge.addExtraMaterialStats(65);//其他部件
    tic_knowledge.addBowMaterialStats(3, 1.5, 8);//弓臂
    tic_knowledge.addProjectileMaterialStats();//箭头
    tic_knowledge.addCoreMaterialStats(25,23);//基底
    tic_knowledge.addPlatesMaterialStats(1.3,80,2);//护甲板
    tic_knowledge.addTrimMaterialStats(-35);//护甲板
tic_knowledge.register();

//污秽之地

//邪恶荆棘<defiledlands:vilespine>
val tic_vilespine = ExtendedMaterialBuilder.create("tic_vilespine");
    tic_vilespine.color = 0x291948;
    tic_vilespine.craftable = true;
    tic_vilespine.addItem(<item:defiledlands:vilespine>);
    tic_vilespine.representativeItem = <item:defiledlands:vilespine>;
    tic_vilespine.localizedName = "邪恶荆棘";
    tic_vilespine.addHeadMaterialStats(64, 6, 3, 0);//顶部
    tic_vilespine.addHandleMaterialStats(0.8, 45);//手柄
    tic_vilespine.addExtraMaterialStats(25);//其他部件
    tic_vilespine.addProjectileMaterialStats();//箭头
tic_vilespine.register();



//毁灭锭<defiledlands:ravaging_ingot>
var ravaging = VanillaFactory.createFluid("ravaging", Color.fromHex("f2f2f2"));
ravaging.fillSound = <soundevent:block.anvil.place>;
ravaging.register();

//毁灭
val Tic_ravaging = ExtendedMaterialBuilder.create("tic_ravaging");
    Tic_ravaging.color = 0xdccbfe;
    Tic_ravaging.castable = true;
    Tic_ravaging.representativeItem = <item:defiledlands:ravaging_ingot>;
    Tic_ravaging.liquid = <liquid:ravaging>;
    Tic_ravaging.localizedName = "毁灭";
    Tic_ravaging.addHeadMaterialStats(200, 88, 10.5, 4);//顶部
    Tic_ravaging.addHandleMaterialStats(120, 5);//手柄
    Tic_ravaging.addExtraMaterialStats(300);//其他部件
    Tic_ravaging.addBowMaterialStats(0.3, 1.3, 5);//弓臂
    Tic_ravaging.addProjectileMaterialStats();//箭头
Tic_ravaging.register();

//玻璃碎片<quark:glass_shards>
val Tic_glass_shards = ExtendedMaterialBuilder.create("tic_glass_shards");
    Tic_glass_shards.color = 0xeeeeee;
    Tic_glass_shards.craftable = true;
    Tic_glass_shards.addItem(<item:quark:glass_shards>);
    Tic_glass_shards.representativeItem = <item:quark:glass_shards>;
    Tic_glass_shards.localizedName = "玻璃碎片";
    Tic_glass_shards.addHeadMaterialStats(2, 4.5, 17, 0);//顶部
    Tic_glass_shards.addProjectileMaterialStats();//箭头
Tic_glass_shards.register();

//<contenttweaker:tian>
//天宇锭
val tic_universe_sky = ExtendedMaterialBuilder.create("tic_tian");
    tic_universe_sky.color = 0x84e2f7;
    tic_universe_sky.castable = true;
    tic_universe_sky.representativeItem = <item:contenttweaker:tian>;
    tic_universe_sky.liquid = <liquid:tian>;
    tic_universe_sky.localizedName = "天宇";
    tic_universe_sky.addHeadMaterialStats(1400, 23, 38, 5);//顶部
    tic_universe_sky.addHandleMaterialStats( 8, 80);//手柄
    tic_universe_sky.addExtraMaterialStats(500);//其他部件
    tic_universe_sky.addBowMaterialStats(2.4, 3.2, 18);//弓臂
    tic_universe_sky.addProjectileMaterialStats();//箭头
    tic_universe_sky.addCoreMaterialStats(800,42);//基底
    tic_universe_sky.addPlatesMaterialStats(8.25,150,12);//护甲板
    tic_universe_sky.addTrimMaterialStats(600);//护甲板
tic_universe_sky.register();

//心之水晶<scalinghealth:crystalshard>
val tic_crystalshard = ExtendedMaterialBuilder.create("tic_crystalshard");
    tic_crystalshard.color = 0xf60404;
    tic_crystalshard.craftable = true;
    tic_crystalshard.addItem(<item:scalinghealth:crystalshard>);
    tic_crystalshard.representativeItem = <item:scalinghealth:crystalshard>;
    tic_crystalshard.localizedName = "心之水晶";
    tic_crystalshard.addHeadMaterialStats(180, 6.82, 8, 2);//顶部
    tic_crystalshard.addHandleMaterialStats(1.8, 300);//手柄
    tic_crystalshard.addExtraMaterialStats(150);//其他部件
    tic_crystalshard.addBowMaterialStats(1.8, 0.6, 3.5);//弓臂
    tic_crystalshard.addProjectileMaterialStats();//箭头
tic_crystalshard.register();

//螃蟹外壳<quark:crab_shell>
val tic_crab_shell = ExtendedMaterialBuilder.create("tic_crab_shell");
    tic_crab_shell.color = 0xa72f13;
    tic_crab_shell.craftable = true;
    tic_crab_shell.addItem(<item:quark:crab_shell>);
    tic_crab_shell.representativeItem = <item:quark:crab_shell>;
    tic_crab_shell.localizedName = "螃蟹外壳";
    tic_crab_shell.addHeadMaterialStats(50, 3.28, 5, 0);//顶部
    tic_crab_shell.addHandleMaterialStats(1.0, 18);//手柄
    tic_crab_shell.addExtraMaterialStats(10);//其他部件
    tic_crab_shell.addBowMaterialStats(0.3, 0.6, 3.5);//弓臂
    tic_crab_shell.addProjectileMaterialStats();//箭头
tic_crab_shell.register();

//<rftools:dimensional_shard>
//空间水晶
var dimensional_shard = VanillaFactory.createFluid("dimensional_shard", Color.fromHex("d3fdff"));
dimensional_shard.fillSound = <soundevent:block.anvil.place>;
dimensional_shard.register();

val tic_dimensional_shard = ExtendedMaterialBuilder.create("tic_dimensional_shard");
    tic_dimensional_shard.color = 0xd3fdff;
    tic_dimensional_shard.castable = true;
    tic_dimensional_shard.representativeItem = <item:rftools:dimensional_shard>;
    tic_dimensional_shard.liquid = <liquid:dimensional_shard>;
    tic_dimensional_shard.localizedName = "空间水晶";
    tic_dimensional_shard.addHeadMaterialStats(1200, 11, 14, 3);//顶部
    tic_dimensional_shard.addHandleMaterialStats(16.5, 35);//手柄
    tic_dimensional_shard.addExtraMaterialStats(600);//其他部件
    tic_dimensional_shard.addBowMaterialStats(1, 1.3, 7);//弓臂
    tic_dimensional_shard.addProjectileMaterialStats();//箭头
    tic_dimensional_shard.addCoreMaterialStats(500,36);//基底
    tic_dimensional_shard.addPlatesMaterialStats(21.5,45,4);//护甲板
    tic_dimensional_shard.addTrimMaterialStats(200);//护甲板
tic_dimensional_shard.register();

//<item:netherex:rime_crystal>
//下界霜晶
var rime_crystal = VanillaFactory.createFluid("rime_crystal", Color.fromHex("a0bdff"));
rime_crystal.fillSound = <soundevent:block.anvil.place>;
rime_crystal.register();
//极寒之霜晶

val tic_rime_crystal = ExtendedMaterialBuilder.create("tic_rime_crystal");
    tic_rime_crystal.color = 0xa0bdff;
    tic_rime_crystal.castable = true;
    tic_rime_crystal.representativeItem = <item:netherex:rime_crystal>;
    tic_rime_crystal.liquid = <liquid:rime_crystal>;
    tic_rime_crystal.localizedName = "下界霜晶";
    tic_rime_crystal.addHeadMaterialStats(800, 16, 24, 4);//顶部
    tic_rime_crystal.addHandleMaterialStats( 2.4, 160);//手柄
    tic_rime_crystal.addExtraMaterialStats(280);//其他部件
    tic_rime_crystal.addBowMaterialStats(1.8, 1.6, 12);//弓臂
    tic_rime_crystal.addProjectileMaterialStats();//箭头
    tic_rime_crystal.addCoreMaterialStats(1600,35);//基底
    tic_rime_crystal.addPlatesMaterialStats(4.5,500,8);//护甲板
    tic_rime_crystal.addTrimMaterialStats(800);//护甲板
tic_rime_crystal.register();

/*
Psi 生态学 psicological
⋯⋯反转
Psi 可以修复工具。
反重力 moretcon.antigravity
起来,走开!
你的工具可以使方块漂浮,生物飞天。
易燃 combustible_armor
这个护甲在着火！
当玩家着火时会蔓延至周围生物。
发射 launching
上钩拳！
将击中的生物抛向天空。
抗腐蚀 anticorrosion
以防你弄洒了化学药剂
手持该工具时，每一刻（tick）都有微小概率治愈持有者的中毒效果。
廉价 cheap
鼓起你的腰包！
修复工具时可以恢复更多的耐久。
非凡 mundane1_armor
武器助我一臂之力！
提高对徒手攻击的防护。
黏滑 slimey_blue_armor
唔，好黏！
我要洗掉它。
炼狱 hellish
来自深渊的最深处！
对非下界生物会造成额外的伤害。
延拓 moretcon.reaching
非 法 入 侵
你的工具能够触及更远的距离。
亡灵杀手 smite
为了正义！
对亡灵生物会造成大量的伤害。
磁力 magnetic1_armor
它们是如何做到的？！
护甲将会吸收掉落物。
复仇 vengeful_armor
他们会为此付出惨痛的代价！
当你被攻击后，攻击者将获得负面效果。
失明 blind
一个漆黑的夜晚，我甚至看不见！
黑暗带给你虚弱及失明。
冰霜行者 frostwalker_armor
冷酷而又惊艳。
你的靴子十分寒冷，它会冻结周围的水。
残像 moretcon.afterimage
你看到了吗?!?!
你的工具有几率会额外命中一次,这个额外命中会造成更大的伤害和击退。
冷火焰 moretcon.cold_fire
薄荷辣椒?!?!?!
点燃并在适当位置冻结你的敌人,冷冻对蜘蛛不起效。
荧光 glowing
闪闪发光
无论那里多么黑暗，你的工具都会牺牲自己来照亮那里。
复苏 reviving
再补几刀！
它们尸变了！
星能力共鸣【遁甲座】 tconevo.attuned_armara
星力洋溢！
这件工具已共鸣至遁甲座，使用之进行全力打击将获得抗性提升。
奥术 arcane
正在学习⋯⋯
如果学会正确使用它可能会持续更长的时间！
“万有”引力 moretcon.hypergravity
F=G[(m1 * m2)/(r ^ 2)]
你的攻击会将敌人拉近而非击退。
吝啬 cheapskate
无耻！
石头真是糟糕。你的工具耐久更少了。
终焉 dramatic_armor
屏住呼吸！
它会在紧要关头拉你一把吗？谁知道呢！
微光 glimmer
黑吗？对我来说并不！
有时候你会获得夜视。
诅咒 cursed
我觉得不行！
死亡的敌人越多，随机产生的负面效果就越多。
夷为平地 crushing
挖掘石头时有几率掉落沙子、沙砾、圆石或石头。
壁垒 tconevo.bulwark_armor
我挡！
这件盔甲会将外来伤害降低一颗心，最低保留一颗心的伤害。
美味培根 baconlicious_armor
培根！
受到伤害时有概率获得培根。
肉体 body
耐久
星能力共鸣【虚御座】 tconevo.attuned_vicio_armor
星力洋溢！
这件盔甲已共鸣至虚御座，承受伤害后提供移速加成。
柔软 softy
我爱泥土！
挖泥土能恢复耐久！
传送 II enderport-4
别挡我的路！
有概率将实体传送走。
威拉克的意志 tconevo.gaia_will_verac_armor
尘封的古籍。
暴击伤害穿透护甲。
传送 enderport-2
别挡我的路！
有概率将实体传送走。
传送 enderport-1
别挡我的路！
有概率将实体传送走。
传送 III enderport-0
别挡我的路！
有概率将实体传送走。
吸水 absorbent_armor
比海绵更好。
你的护甲将在雨天或者水中得到增强。
延伸 reach
天使之臂！
当持有这个工具，你可以触碰的更远。
持久 duritos_ranch_armor
用起来不像听起来那么好。
你的护甲将会更加耐用⋯⋯我指的是大多数情况下。
灵魂 soul1
额外3个强化槽
荧光 glowing_armor
闪闪发光
当你行走在黑暗的地方时，靴子将会消耗耐久点亮周围。
压电 tconevo.piezoelectric
机电工程！
使用该器械进行全力打击会使其将造成的部分伤害转化为可用的电力能源。
荆棘 spiny_armor
这就好比仙人掌！
受到伤害时会反弹给攻击者部分伤害，但会增加耐久消耗。
深度挖掘 depthdigger
你就是吸到新鲜空气就会死星人？
海拔越低，这件工具的采掘速度就越快。
报复 vindictive
你不可原谅！
对玩家造成额外伤害，你可以通过攻击其来恢复生命。
旅行者护目镜（灵魂窥视） soul_sight_armor
心灵是一种强大的力量。
你可以看到附近生物的灵魂。
炮击 tconevo.blasting
我二话不说就！*啪*
这把武器会造成爆炸。
镀金 gilded
闪亮的树液！
你能从金琥珀原木采集得到金琥珀。
蕴魔 tconevo.mana_infused
数据库挖掘？
这件工具会消耗Mana来修复自身。
抑影 enderference
反瞬移！
短时间内可以阻止末影人的瞬移。
噬魂者 souleater
血刀之名的代表。
如果你的武器杀死了很多敌人，那么攻击力将有所提高。
血腥玛丽 bloodymary
由传说中的英国女王赋予你⋯⋯
根据目标已失去的生命值造成额外伤害。同时，每次攻击有概率掉落凝血。
坚忍 stiff
不动如山！
格挡时可以减少更多的伤害。
自然之束 naturebound
你与自然融为一体！
以自然之名复原。
魔力 mana
可充电的⋯⋯用鲜花
魔力能代替装备的耐久，并随着时间的推移修补工具。
美味 tasty_armor
吧唧吧唧
闻起来真不错⋯⋯比起挨饿，你更愿意吃掉你的护甲。
漫散 diffuse
如此多的经验⋯⋯或者什么都没有？
经常会使破坏方块掉落经验，但是掉落物可能会消失。
细语 xu_whispering
会时不时的悄声细语说些话
水晶剑 tconevo.crystalys
我，不惧黑暗！
这件器械会撕裂灵魂网络，使其显露出虚弱的气血碎片。
凋零 withering
死亡将我们变成“恶魔”。
凋零目标。
千斤沉重 superheavy
远超9000吨！
当你不断挖掘，它会使你挖掘疲劳。
脉冲 moretcon.pulsating
正弦波动!
你的工具将会造成随机伤害,随机伤害总是在高伤害与低伤害之间波动。
启示录 apocalypse
时间终结⋯⋯
你的受害者将会变得奄奄一息，并且会受到越来越强的凋零效果的折磨。
妙手回春 tconevo.rejuvenating
你手上握着的是个叛徒！
这件器械会恢复其所击中目标的生命值。
游灵 tconevo.spectral_armor
一片模糊！
这件盔甲会赋予穿戴者一定的伤害闪避几率。
可塑 moldable2_armor
瑞士莲。
为你的护甲增加额外的材料属性槽。
扭曲 tconevo.warping_armor
奇异的低语预示着奥秘……
这件可憎的盔甲将使企图触碰它的人走火入魔。
振兴 invigorating_armor
这感觉很棒！
不知为何，你感觉更加强健。
星能力共鸣【晶金座】 tconevo.attuned_mineralis_armor
星力洋溢！
这件盔甲已共鸣至晶金座，进行采掘时将使同种方块现形。
血缚 tconevo.bloodbound
……把无垠的海水染作一片殷红……
这件工具会吸取其属主的生命源质来防止自身的磨损。
勘探 subterranean_armor
我们需要更深入些！
你的护甲在海平面下将更加耐用。
锻造 autoforge_armor
难以置信，它正在被修复！
护甲将在熔岩中修复耐久。
星能力共鸣【南极座】 tconevo.attuned_octans
星力洋溢！
这件工具已共鸣至南极座，获得水下速掘加持。
星能力共鸣【圣芒座】 tconevo.attuned_lucerna
星力洋溢！
这件工具已共鸣至圣芒座，使用之进行全力打击将使目标高亮。
生态 ecological_armor
绿色能源！
可再生资源真好，他们会自动修复！
珊瑚疫染 coraliumplague
感染一切！
在暴击时附加珊瑚瘟疫效果。
恣意 tconevo.willful_armor
汝魂魄尽我之有也！
这件盔甲会从来犯者身上诱捕出缠缚其身的恶魔意志。
稳定 steady_armor
请明确你的立场！
增加自身击退抗性，并击退攻击者。
环球旅行者 global
全世界⋯⋯折返
潜行右击一个方块，如果该方块是一个容器，则破坏的方块与杀死怪物的掉落物都会被传送到其中。
爱石 petramor
如此多的石头！
你的工具喜欢石头，它会吸收石头来恢复耐久。
碎骨 fractured
疼！
你的工具有了更高的伤害。
天镜之祝 moretcon.skys_blessing
免费的神能碎片
你的工具偶尔会掉落神能碎片。
炽热 fiery
现在好热！
给予额外的火焰伤害，让你的敌人着火！
狂暴 berserk
成为绿巨人！
激活生命消耗，三倍的速度与力量。
调试 moretcon.moddebug
你为啥会在这儿?
你的工具会在聊天栏里输出自身信息,通常被ExistingEevee用来调试工具。
已污染 defiled
锋利的紫色物质。
对不属于污秽之地的怪物造成额外伤害。
战斗狂热 tconevo.battle_furor
嗟！
使用这件器械进行全力打击将造成额外的伤害。
寄生 parasitic_armor
共生⋯⋯
你的护甲会进行自我修复。
柔和 squeaky
真可爱！
你的工具由于海绵的柔软而自带了精准采集，但它却失去了攻击力。
等离子体 moretcon.plasmatic
I HAVE THE HIGH GROUND(高处对低处,优势在我!)
你的工具将能够穿透并命中多个实体。
收割者 tconevo.reaping
黑暗质变！
这件器械能更有效地摄取生物灵魂。
电力装载 II tconevo.energized2_armor
一节更比六节强！
这件盔甲会优先消耗内部的电力缓存而非耐久。
坚硬核心 moretcon.hardcore
“核心坚硬”的工具并不“硬核”,这很讽刺,不是吗?
你的工具耐久越低挖掘速度越快。
生命窃取 necrotic
我又活过来了！！
依据对敌人造成的伤害，恢复自己的生命值。
冷血 coldblooded
残暴！
对满血的目标造成额外伤害。
憨厚的绅士 portly
在朝鲜海岸测试核弹，噢耶！
潜行右击一个实体来捕获它（基于实体的生命值消耗耐久）。按“释放实体”键（默认为“0”）释放它。
通量燃灭 tconevo.flux_burn
魔法止步于此。
这把武器会噬灭目标的能量护盾并使其中一部分能量反伤目标。
恣意 tconevo.willful
汝魂魄尽我之有也！
这件器械会从敌人身上剥离出缠缚其身的恶魔意志。
美味培根 baconlicious
培！根！
使用工具时将有几率得到培根。
耶稣受难日协议 goodfridayagreement_armor
麻烦终结者？
铁傀儡不会攻击拥有此强化属性的玩家。
易碎 breakable
这面朝上！
投掷物发生碰撞时有50%概率直接损坏。
处决 tconevo.executor
下辈子见！
这件器械会依照目标已损失的生命值造成额外伤害。
厄运光环 xu_withering
当手持时，使用者会拥有一个不幸的光环，由此带来厄运。
魂魄出窍 tconevo.soul_rend1
偷走你的魂！
这件器械天生摄人魂魄。
光伏 voltaic_armor
清洁！
当你被目标击中时这个护甲将会被充能并释放，这些能量将会对周围生物造成伤害。
黏滑 slimey_blue
唔，好黏！
我要洗掉它。
星能力共鸣【圣芒座】 tconevo.attuned_lucerna_armor
星力洋溢！
这件盔甲已共鸣至圣芒座，提供夜视效果。
天崩地裂 tconevo.sundering
均衡，脆弱无比……
这件器械会削弱敌人。
旅行者披风（隐身） travel_sneak_armor
鬼鬼祟祟~
让你隐形。
冲击器 moretcon.modimpactor
巨大的惯性你的弹射物将会基于其速度造成额外的伤害。
穿透 moretcon.penetrant
护甲越高,死得越惨
你的工具对穿着护甲的目标伤害更高。
贪心 insatiable
吞噬！
在战斗中你将能造成越来越高的伤害，但同时也会消耗越来越多的耐久。
星能力共鸣【唤生座】 tconevo.attuned_pelotrio_armor
星力洋溢！
这件盔甲已共鸣至唤生座，能够缓慢修复自身。
宰杀 tconevo.culling
优胜劣汰！
这件器械在目标生命值低于持握者的条件下会造成更高的伤害。
极密 tconevo.ultradense_armor
真的一点都不OP！真的！
这件盔甲能显著地削弱外界伤害。
堕落 tconevo.corrupting
虚空一瞥……
使用这件器械进行全力打击会对目标施加越来越重的凋零效果。
坍毁 crumbling
轰隆隆
可以更快地破坏那些徒手就能破坏的方块。
迅腾 speedy_armor
飞毛腿！
提高自身移动速度。
Cấm Đái Bậy camdaibay_armor
你当你在打越战呢？
如果玩家收到攻击，并被阻挡，则会对攻击者施加玩家拥有的负面效果。
红心 hearts
嘿，那家伙的模组上面的加号是什么？
你的生命值越高，造成的伤害越高。
可塑 tconevo.modifiable1
无限春光！
这件装备免费提供额外的强化槽。
光伏 tconevo.photovoltaic
低碳生活！
这件工具会利用光伏为自身充能。
感知 tconevo.sentient_armor
你在做，它在看……
这件盔甲会消耗恶魔意志来强化自身。
尖刺 prickly
哎呦，疼！
没人能从这些尖刺中幸免，它们扎人真疼。
血腥之斩 moretcon.bloody_arc
*并非真血,消耗它不安全
按下Shift+鼠标右键在敌人身上召唤血腥之斩。
无礼 sassy
无理取闹⋯⋯
对玩家和 Boss 暴击。
我是超级巨星 im_a_superstar
我是超级巨星！⋯⋯[掉进马桶里]
效果取决于玩家的共鸣
攻击伤害 tconevo.draconic_attack_damage
成吨伤害！
这件器械拥有更高的近战伤害。
暗影步 tconevo.shadowstep_armor
这儿可没啥好看的……
这件盔甲在黑暗中会使穿戴者隐身。
水蛭 moretcon.leeching
100%转基因血液,不使用动物实验体!
你的工具大约每3次命中敌人就会基于你造成伤害的10%给予你治疗。
魂魄出窍 III tconevo.soul_rend3
偷走你的魂！
这件器械天生摄人魂魄。
魂魄出窍 II tconevo.soul_rend2
偷走你的魂！
这件器械天生摄人魂魄。
折跃 enderport_armor
超越生死！
在生死攸关的时候将会把你进行随机传送。
毒性 poisonous_armor
这么多人要杀，没多少时间了！
令目标中毒。
凋零 withering_armor
We may have years，we may have hours...
凋零目标。
灵性 telekinetic_armor
栩栩如生
提高触及半径。
反重力 antigrav
螺旋上天！
当 Shift 右击方块时候，能使特定的方块飘浮，消耗 4 点耐久。
步履蹒跚 tconevo.staggering
给我接着揍！
使用该器械进行全力打击会短暂地固定住敌人。
modifier.leveling_armor.name leveling_armor
modifier.leveling_armor.desc
亘古永恒 tconevo.infinitum
由归纳而证明！
这件装备无法被破坏。
轻便 lightweight
疾如风！
提高工具的挖掘或攻击速度。
以太收割 moretcon.etheralharvest
触及异界!
你的工具能够挖掘末地里非有形的方块。
精神 mind
高效
黏液覆层 moretcon.overslime
黏糊糊!
你的工具会优先消耗粘液覆层而非耐久直至耗尽。这似乎对缺少粘液覆层的工具不是那么友好......
星能力共鸣【生息座】 tconevo.attuned_aevitas
星力洋溢！
这件工具已共鸣至生息座，使用之进行全力打击将恢复生命值。
投机 tconevo.opportunist
趁火打劫！
这件器械会对持有负面效果的目标造成额外伤害。
盲匪 blindbandit
呀⋯⋯有人。
当你攻击或被攻击时，有时会召唤出一个只持续一定时间的“盲匪”。它会攻击敌对生物以及敢攻击它的人（除了你），造成穿透伤害。
高跳 high_stride_armor
野蛮的标志。
你能跳得更高。
黑桃 spades
王牌：让匠魂再次强大！
你的生命值越低，造成的伤害越高。
弹射物保护 projectile_resistant_armor
刚正面，你个懦夫！
提供额外的弹射保护。
高钙 calcic_armor
强身健体
饮用牛奶能让你与你的护甲重新恢复活力。
保护 resistant_armor
意志坚定！
提供对所有额外伤害保护。
箭矢速度 tconevo.draconic_arrow_speed
曲率驱动！
弓箭弹道速度提升
蕴魔 tconevo.mana_infused_armor
数据库挖掘？
这件盔甲会消耗Mana来修复自身。
投机 congenial
你是我的对手！
已经认识的目标受到的伤害加倍。
旅行者腰带（存储） travel_belt_armor
力量训练！
给你第二个快捷栏。
杜南交通 dunanstransport_armor
联邦快递的一平方英寸土地
对骑乘状态中玩家提供护甲保护和韧性。
击退 knockback
本垒打！
让我们来以一种很酷的方式教教怪物如何飞行。
灵气亲和 tconevo.aura_affinity1_armor
内含扭曲！
这件盔甲会削减灵气消耗。
精灵细语 tconevo.fae_voice_armor
嘿，仔细听！
这件盔甲会时不时召唤出精灵来对付你的敌人。
恐惧疫染 dreadplague
向查伽洛斯臣服！
在暴击时附加恐惧瘟疫效果。
伤害吸收 tconevo.absorption_armor
山寨的符文护盾？
这件盔甲将提供额外的伤害吸收生命值。
交互 ported
让我起来！
通过右击某些方块可逃离洞穴，需要多尝试几次。
发射 launch
有时候会让你的敌人飞上天空。他们会喜欢⋯⋯至少落到地面之前是会这样想的
锯齿 jagged
锯齿般锋利！
耐久越低，伤害越高。
串联 tconevo.cascading
一股脑儿都下来了！
这件工具会破坏整列的下落方块。
暮光 twilit
那微弱的光芒便是暮色森林的祝福。
在暮色森林里速度更快。
在暮色森林外伤害更高。
解析 analysing
我知道你是什么！
少些掉落物，更多经验值！
悬浮 shulking
飞吧飞吧！
让你击中的那些敌人都飞走吧。
汲魔 tconevo.aura_siphon
三重雷！
这件器械会将其造成的一部分伤害转化为Mana。
厚积 moretcon.overcast
厚积而薄发!
这个特性能够使粘液覆层提供两倍的耐久消耗量!
星能力共鸣【生息座】 tconevo.attuned_aevitas_armor
星力洋溢！
这件盔甲已共鸣至生息座，承受攻击后将恢复穿戴者生命值。
匠心之作 tconevo.artifact
独一无二！
这件工具在使用“启封之板”启封前无法被强化或修复。
同调 synergy
看！没有苔藓！
物品栏里有钢叶的时候会自我修复。
三连击 moretcon.tripleshot
退!退!退!
你的工具能一次性发射三发弹射物,但冷却时间会延长。
电力装载 II tconevo.energized2
一节更比六节强！
这件工具会优先消耗内部的电力缓存而非耐久。
电力装载 tconevo.energized1
一节更比六节强！
这件工具会优先消耗内部的电力缓存而非耐久。
石缚 tconevo.stonebound_armor
你的盔甲深爱着石头！
耐久越低，该盔甲效用越高。
可燃 flammable
更多的火焰！
格挡时可以消除火焰伤害，还会使攻击者着火.
黏滑 slimey_green
唔，好黏！
我要洗掉它。
天地同源 huan_xie
你应该信任我,将生命奉献给我,然后,我自然会向你展示,什么叫做力量
当玩家最大生命值比怪物最大生命值低时，扣除一定百分比的血量，增加伤害
摧毁 pulverizing
浩克⋯⋯出击！
毁掉你挖掘的东西。
致命创伤 tconevo.mortal_wounds
血淋淋的教训！
这件器械会在一定时间内削弱敌人的治疗效果。
暗影 shadow
漫漫长夜！
会消耗魔力自动修复，击中敌人时会召唤黑暗精灵。
元素 elemental
感觉不一样
环境使该工具发生转变和扭曲。
液态 moretcon.liquid
该死,我把剑弄碎了
在炎热环境下你的工具将会更快地损坏
但会造成更高的伤害。
电力装载 tconevo.energized1_armor
一节更比六节强！
这件盔甲会优先消耗内部的电力缓存而非耐久。
黏滑 tconevo.slimey_pink
唔，好黏！
我要洗掉它。
爱石 petravidity_armor
石头，石头，满眼的石头！
你的护甲喜欢石头，在石头的环绕下它会更加坚韧。
屠宰 slaughtering
恩，美味！
有肉吃谁还需要经验？
皎月之光 jyzg
向皎月女王臣服!
在极光幽境中伤害翻倍!反之
艾琳的意志 tconevo.gaia_will_ahrim_armor
尘封的古籍。
暴击施加重度虚弱效果。
震击 shock
有时候用雷霆来冲击你的敌人。或者闪电啦，随便哪个
星能力共鸣【解离座】 tconevo.attuned_evorsio_armor
星力洋溢！
这件盔甲已共鸣至解离座，提供急迫效果。
暴怒 endorium
物理学哪去了？！
增加暴击几率。
异形 alien
感觉有些不对劲⋯⋯
好像它们在变化！也许时间会告诉我们答案？
共振 resonance
感受动能！
带走冲击！
旅行者护目镜（夜视） night_vision_armor
我就是黑夜。
你可以在黑暗中看清事物。
脆弱 cui_ruo
凡事都是具有两面性的...
每一次攻击时额外扣除10!点耐久
持久 duritos
用起来不像听起来那么好.
你的工具寿命会更长一些⋯⋯多数时候是这样.
炙热 garishly
它太热了。
它会瓦解掉掉落物。
星能力共鸣【非攻座】 tconevo.attuned_discidia_armor
星力洋溢！
这件盔甲已共鸣至非攻座，能够反弹一部分伤害。
动力 momentum
越来越快！
挖掘方块时，持续的挖掘会使挖掘速度越来越快。
旅行者披风（缓落） travel_slowfall_armor
让风载你而去。
你的摔落速度减慢了许多。
催熟 tconevo.fertilizing
绿意盎然！
这件工具可以消耗较高的耐久度来催熟作物。
古赞的意志 tconevo.gaia_will_guthan_armor
尘封的古籍。
暴击造成的部分伤害会回复生命。
永垂不朽 tconevo.eternity_armor
时断时续……
这件盔甲会为穿戴者提供不朽效果。
进化 tconevo.evolved
很平衡，大家都很平衡。
这件工具仅消耗能量且可利用聚合装置进行升级。
最后防线 tconevo.final_guard_armor
留神！
若储能充足，这件盔甲将会从死神手中帮你夺回一命。
炽热 superhot_armor
令人窒息
当你着火时将跑得更快。
净化 dreadpurity
消灭腐朽！
对任何被恐惧瘟疫感染的实体造成25%的额外伤害。
过热 superheat
再热一点！
对着火的敌人造成更多伤害。
天境 moretcon.aetheric
在天空中!
你的武器在天境中更具破坏性!
制伏 tconevo.overwhelm
欲握良器，必承其重……
这件器械会对有护甲值的目标造成额外伤害。
暴怒 tantrum
爆发吧！
连锁爆炸不会对你造成任何伤害。
烈风 tconevo.gale_force1_armor
风起！
这件盔甲会提升穿戴者的飞行速度。
粉碎 moretcon.modcrushing
这便是巨量伤害!
你的工具将会把自身10%的伤害转化为真实伤害。
护盾充能 tconevo.draconic_shield_capacity_armor
导流板准备就绪！
这件盔甲加装了电容量更大的护盾。
圣恩 tconevo.divine_grace_armor
支援已经上路！
这件盔甲会增强一切起效的治疗效果。
魔法反应 moretcon.magically_reactive
基本上只是一种驱魔剂
你的工具对附魔目标伤害更高。
根褶化 moretcon.rootplicating
为啥这里有两个?
你的工具能够复制天境材料。
剧毒 poisonous
并非完全不含铅！
给予攻击目标中毒效果。
涅槃 tconevo.phoenix_aspect_armor
英雄不朽！
这件盔甲会在危急时刻牺牲自己来救回穿戴者的性命。
东山再起 tconevo.second_wind_armor
风息，风又起……
这件盔甲受到攻击后会恢复穿戴者的生命。
星能力共鸣【时钟座】 tconevo.attuned_horologium_armor
星力洋溢！
这件盔甲已共鸣至时钟座，能够冻结攻击者。
致命一击 tconevo.deadly_precision
去买点头疼药吧
这件器械会造成极高的暴击伤害。
坚韧 skeletal_armor
我看你的⋯⋯骨骼惊奇？
提高护甲韧性。
扭曲 curvature
它带着我前后移动！
有时候它会传送走你和你周围的事物。
隐藏 concealed_armor
你在穿什么？
你的护甲开始变得透明起来。
星辰 tconevo.astral_armor
一闪一闪亮晶晶！
这件盔甲可在共鸣祭坛中进行星座共鸣。
魔力亲和 II tconevo.mana_affinity2_armor
没有扭曲！
这件盔甲会减免耗魔。
挖掘速度 tconevo.draconic_dig_speed
极速飞梭赛1号选手参上！
这件工具拥有更快的采掘速度。
旅行者腰带（酿造） potion_belt_armor
为药水爱好者定制。
给你一个特殊的药水储存空间。
光照派 illuminati
确认！
手持该属性工具时，附近的实体（仅限未手持该属性工具实体）会发光，且你将变得隐形。
挖掘范围 tconevo.draconic_dig_aoe
手一抖，眉一皱：转眼一看，家拆一半。
这件工具提供更大的挖掘范围。
黏滑 tconevo.slimey_pink_armor
唔，好黏！
我要洗掉它。
赤诚 hailhydra
头目
产生随机爆炸折磨你的敌人。此外，当你受到攻击时，有概率获得伤害吸收效果。
虚伪 hollow
脑死亡！
削掉它们的脑子。
锐利 sharp
甚至能切断声音！
击中敌人时会使他们在短时间内流血。
炉心之拥 tconevo.hearth_embrace_armor
真令人暖心！
这件盔甲会扑灭穿戴者身上的火焰并将其转化为治疗能量。
熵增 tconevo.entropic
破盾先锋！
这件器械将对能量护盾造成更多熵增压力。
耐久 reinforced_armor
如此强大！
每级增加20%的概率在使用工具时不消耗耐久。
保护 shielding_armor
现在我很特别，对吧？
提高对魔法伤害的防护。
好暑 aridiculous_armor
让温度来得更高些吧！
护甲将抵御高温。
星能力共鸣【非攻座】 tconevo.attuned_discidia
星力洋溢！
这件工具已共鸣至非攻座，提升其伤害输出。
黏滑 slimey_green_armor
唔，好黏！
我要洗掉它。
可塑 moldable1
瑞士莲。
为你的工具增加额外的材料属性槽。
余震 III tconevo.aftershock3
烈焰魔剑！
使用这件器械进行全力打击将造成额外的魔法伤害。
沉重 heavy
责任重于泰山
手持该工具进行攻击时不会被击退。
散射 splitting
一分为二！
箭头突然加速时有概率一分为二。
火焰保护 fire_resistant_armor
献祭可不好。
提供额外的火焰保护。
箭矢伤害 tconevo.draconic_arrow_damage
盯上你了！
箭矢造成更高伤害
攻击范围 tconevo.draconic_attack_aoe
吕布再世！
这件器械拥有更大的攻击范围。
月辉 conarmmoonlit_armor
它是个夜猫子！
在夜晚有 50% 的机会不消耗耐久，但在白天有 50% 的机会消耗更多耐久！
星能力共鸣【牧夫座】 tconevo.attuned_bootes
星力洋溢！
这件工具已共鸣至牧夫座，获得精准采集加持。
易爆 explosive
Ka-boom!
每次击中都会产生爆炸。
土块 tu_kuai
给阿姨来上一杯卡布奇诺...
攻击时有15分之1的概率打出25倍的的伤害,有15分之14的概率打出25分之1倍的的伤害
星能力共鸣【时钟座】 tconevo.attuned_horologium
星力洋溢！
这件工具已共鸣至时钟座，使用之进行全力打击将暂停时间流逝。
亘古密度 II tconevo.eternal_density2
花盆栽罐的力量！
这件器械会将击打过程中所产生的能量转化为EMC。
亘古密度 tconevo.eternal_density1
花盆栽罐的力量！
这件器械会将击打过程中所产生的能量转化为EMC。
元初 tconevo.primordial
魔法！她召唤着我！
该武器造成的一部分伤害将转化为混沌伤害。
救命！ sos
在过度使用重度受损时修复
存入 enderpickup
我的，都是我的！
将挖掘的物品直接传送到你的物品栏。
轻便 lightweight_armor
疾如风！
提高自身移动速度。
感知 tconevo.sentient
你在做，它在看……
这件工具会消耗恶魔意志来强化自身。
旋风 whirl
近似海绵！
移除以自己为中心的水。
超自然 unnatural
憎恶！
工具的挖掘等级比目标方块越大，挖掘速度越快。
力量 powerful_armor
我感受到了力量！
增加攻击伤害。
RF容量 tconevo.draconic_energy
能量无限！
这件工具拥有更大的RF容量。
生态 ecological
绿色能源！
可再生资源真好，他们会自动修复！
古怪 zany
由熵提供的速度。
在磨损的时候，工具的挖掘速度会大大加快。
辉光 tconevo.luminiferous
相对主义！
这件器械会暴露出被其击中之目标的位置。
磁力 magnetic1
它们是如何做到的？！
击中目标后会吸引周围物品？！
接地 tconevo.grounding
给我停下！
这把武器充满电后击中敌人会短暂地使之无法闪避。
末路之底 moretcon.bottomsend
等等,这是非法操作!
你的工具能够瓦解基岩和某些基岩基矿石的晶体结构并开采它们。
传送 enderport-3
别挡我的路！
有概率将实体传送走。
佚名 unnamed
神秘人⋯⋯
对目标附近的同类型实体造成额外伤害。
星怒 baonu
他妈的跟你爆了!
当血量低于75%,便不再暴击,但提升每次攻击的伤害
棘刺 spiky
200%冰冷的刺！
格挡攻击时会对攻击者造成伤害。
雄心 ambitious_armor
通往荣耀的殿堂！
你将获得额外的经验。
冲击 tconevo.impact_force
苦难的折磨！
这件器械在持握者拥有高移速的条件下能够造成更高的伤害。
振奋 uplifting
今天我们奋战！
在你使用你的工具时偶尔恢复生命值。
晶态 tconevo.crystalline
买上一架小小钢琴！
耐久越高，这件器械造成的伤害就越高。
节肢杀手 bane_of_arthopods
消灭蜘蛛！
对节肢动物造成大量的伤害。
轻快 shulkerweight_armor
仰望天空！
增加跳跃能力。
冷面杀手 tconevo.relentless
白进红出！
这件武器会针对被击中的目标缩短游戏本身的“一秒免伤”机制时长。
非凡 II mundane2_armor
武器助我一臂之力！
提高对徒手攻击的防护。
月辉 tamoonlit
它是个夜猫子！
在夜晚有 50% 的机会不消耗耐久，但在白天有 50% 的机会消耗更多耐久！
可塑 moldable2
瑞士莲。
为你的工具增加额外的材料属性槽。
捕手 catcher
一网打尽！
随机捕捉一种生物将其存储并释放！
修复苔藓 mending_armor
它是活的！
它会悄悄窃取玩家身上的经验来修复自身耐久。
坚毅 stalwart
勇猛无畏。
击中敌人让你壮胆。
振动 cascade
这个工具在振动！
破坏方块就如地震一样。
星能力共鸣【遁甲座】 tconevo.attuned_armara_armor
星力洋溢！
这件盔甲已共鸣至遁甲座，能够阻挡更多伤害。
空中火焰 moretcon.aerialflame
天!降!正!义!
你的弹射物会向下方的对手降下一道道火柱。
血神的祝福 moretcon.bloodgodsblessing
血祭血神!
连续杀戮将提供越来越强的增益。
蔓生 II moretcon.overgrowth2
就像霉菌一样!
你的工具会将腐蚀值当作耐久值消耗。
蔓生 moretcon.overgrowth1
就像霉菌一样!
你的工具会将腐蚀值当作耐久值消耗。
吸血 tconevo.vampiric
还在与人类结盟？
这件器械会从敌人身上榨取生命能量来滋养其持握者。
星能力共鸣【南极座】 tconevo.attuned_octans_armor
星力洋溢！
这件盔甲已共鸣至南极座，获得水下呼吸效果。
尖锐 jian_rui
玻璃真是夸张,这使得数值反复膨胀
每级增加工具7.5%的攻击伤害,当到达满级时再增加2.5%的伤害
光怪陆离 mirabile
看上去真奇妙
偶尔，你周围的石头中会出现金矿或钻石矿（以消耗工具耐久作为代价）。
烈风 II tconevo.gale_force2_armor
风起！
这件盔甲会提升穿戴者的飞行速度。
织网 webbed
呦吼！
让你的敌人被蜘蛛网缠住吧。
惊醒 rudeawakening
九头蛇跪倒在我面前⋯⋯
穿透目标护甲（仅怪物）。
经验提升 xu_xp_boost
击杀怪物或挖掘方块时候能够获得额外的经验。
余震 II tconevo.aftershock2
烈焰魔剑！
使用这件器械进行全力打击将造成额外的魔法伤害。
炼狱 infernal_armor
来自深渊的最深处！
非下界生物造成的伤害将会提供额外的保护。
碎裂 fracture
你要挖个很深的洞！
你有电钻或者别的东西吗？
中子凝聚 tconevo.condensing1
尽量不要去想它。
被这件器械杀死的敌人或破坏的方块可能会凝聚下少量的中子素。
飞仙 tconevo.celestial_armor
深渊之翼！
这件盔甲将给予穿戴者创造式飞行的能力。
超高温 moretcon.hyperheat
火焰,但很热,是的。
你的武器会不仅会点燃敌人,还会基于你武器的基础伤害面板对火焰伤害造成额外的乘算加成。
雷神之怒 tconevo.thundergod_wrath
此乃天谴！
这件器械会召唤一道天雷轰击满血的敌人。
可塑 II tconevo.modifiable2
无限春光！
这件装备免费提供额外的强化槽。
超密 tconevo.superdense_armor
一点都不OP！
这件盔甲能略微地削弱外界伤害。
制冷 refrigeration
工具形式的制冷器。
采集的方块会被冻住。
活泼 bouncy_armor
移动的堡垒！
你的护甲会反弹抛射物。
星能力共鸣【解离座】 tconevo.attuned_evorsio
星力洋溢！
这件工具已共鸣至解离座，提升其采掘速度。
蕴灵 tconevo.aura_infused_armor
陷阵之志！
这件盔甲会被动地产出Mana。
以牙还牙 payback
被激怒的材料，严重受损时会打出更大的伤害
星能力共鸣【晶金座】 tconevo.attuned_mineralis
星力洋溢！
这件工具已共鸣至晶金座，获得时运加持。
养蜂人 tconevo.apiary_affinity_armor
蜂情万种！
这件盔甲可以防止蜜蜂蛰咬。
噬魂者 shz
重置版！
击杀的敌人越多,伤害越高
高跳 tconevo.draconic_jump_boost_armor
不太神秘的退场！
这件盔甲将提升你的跳跃能力。
暗黑行者 darktraveler
混沌之王万岁！
周围的怪物会随机受到伤害。
磁力 II magnetic2
它们是如何做到的？！
击中目标后会吸引周围物品？！
吝啬 cheapskate_armor
无耻！
石头真是糟糕，你的工具耐久更少了。
魔力亲和 tconevo.mana_affinity1_armor
没有扭曲！
这件盔甲会减免耗魔。
致密 dense_armor
更⋯⋯硬⋯⋯
护甲耐久越低，可以持续使用的时间就越长。
轻巧 dexterous_armor
心灵手巧。
提高攻击速度。
主宰 tconevo.juggernaut
毁击！
这件器械会依照持握者当前的生命值造成更高伤害。
三色性 moretcon.trichromatic
吃定彩虹!
你的工具将会根据区块对颜色的契合度给予不同的效果。
熔化 melting
真烫！
燃烧吧！
喜水 aquadynamic
这儿越来越潮湿了！
水下的挖掘速度将不会受到影响，在雨天也会得到增强！
轻盈 featherweight_armor
轻如鸿毛。
你变得十分轻盈，受到的伤害也随之减小。
振奋 uplifting_armor
我命令你们抗敌，西方的人类！
在你受伤时偶尔恢复生命值。
假日 festive
拐杖糖！
用拐杖舔舐他们，从而杀死你的敌人。
老成 established
免费经验加成！
玩家可以获得额外的经验。
迅捷 tconevo.draconic_move_speed_armor
一如美梦，转瞬即逝……
这件盔甲将提升你的移动速度。
道德绑架退！退！退！ dao_de
他还是个孩子！难度不能打的重亿点吗？
脆弱 fragile
一种地震。
你的镐子会损失耐久使方块会变得更脆弱。
爆炸保护 blast_resistant_armor
提高警惕！
提供额外的爆炸保护。
残暴 rough_armor
请不要随意触碰。
根据护甲耐久对目标造成相应伤害。
史维特 swetty
呃，粘乎乎的
会洗掉的！
星能力共鸣【牧夫座】 tconevo.attuned_bootes_armor
星力洋溢！
这件盔甲已共鸣至牧夫座，承受伤害后召唤耀斑。
亲水 aquaspeed_armor
它开始渗透了！
护甲将在雨天或者水中无阻前行。
达洛克的意志 tconevo.gaia_will_dharok_armor
IS COOKING!
生命值越低，暴击伤害越高。
治愈 healer
可能是你太喜欢你的敌人了，每次尝试伤害他们，反倒会被治愈
闪电链 tconevo.chain_lightning
我称之为：全桥整流器！
使用这件器械进行全力打击会对目标周围的单位造成电弧伤害。
英勇 heroic
至死方休。
在生命结束前，你会变得更强壮。
发光 bright
一个明亮的白天，我感到了力量！
白天会使你发光。
Psi吞噬 psieater
通过消耗Psi加大挖掘速度和伤害！
开明 enlightened
神最喜爱的零食。
有 5% 的几率掉落神能晶片
混沌抗性 tconevo.chaos_resistance_armor
虹彩光芒！
这件盔甲会减弱外来的混沌伤害。
吃饱了害嗨害！ bao_le
吃饱了,我更NB了啊!害嗨害!害嗨害!
当饱食度大于等于15时,攻击力上升15%
水下呼吸 amphibious_armor
水下勘探。
延长你在水中呼吸的时间。
天根 skyrooted
先来个两倍吧。
天境自然生成的方块会额外掉落。
光之穿刺 light_pierce
阴影克星
对阴影生物造成大量伤害。
失重 tconevo.weightless_armor
你感觉自己很空灵。
这件盔甲更轻，所以不会阻碍闪避。
修复苔藓 mending_moss
它是活的！
它会悄悄窃取玩家身上的经验来修复自身耐久。
不稳定 unstable
你真的这么觉得？
真的，它很不稳定！
霜冻 freezing
寒冬将至
命中后会让目标迟缓。
坚实基础 II terrafirma2
固体地球
手持该工具时（或者盔甲磨损时），你将随着时间推移而愈合。
坚实基础 terrafirma1
固体地球
手持该工具时（或者盔甲磨损时），你将随着时间推移而愈合。
傲慢 prideful_armor
什么叫自恋？
你的护甲在受到攻击后会变得更坚韧，但会增加耐久消耗。
旅行者背包 travel_sack_armor
把贵重物品放在一起！
给你第二个储存空间。
应激 tconevo.reactive_armor
他们还想困住我？
这件盔甲受到攻击后会提升穿戴者的伤害抗性。
磁力 II magnetic2_armor
它们是如何做到的？！
护甲将会吸收掉落物。
反射 reflect
为什么要砸自己的脚
充能 tconevo.electric
好耶！
这件工具会优先消耗电量而非耐久。
虚空 moretcon.voidic
免费维修!
在虚空周围你的工具能快速修复自己,还能获得伤害加成。
光伏 tconevo.photovoltaic_armor
低碳生活！
这件盔甲会利用光伏为自身充能。
消溶 dissolving
我不在乎失去的经验。
以大量经验做交换。
铭刻 writable2
知识分子！
更多的文字，更多强化槽。这很符合逻辑！
铭刻 writable1
知识分子！
更多的文字，更多强化槽。这很符合逻辑！
通量注入 tconevo.fluxed_armor
老传家宝了！
这件盔甲会优先消耗电量而非耐久。
好暑 aridiculous
热量再多点！
环境越热，工具越顺手。
碎裂 splintering
给你敌人留下点纪念！
攻击次数越多，伤害越高。
切片 moretcon.slicing
细细的切成臊子(
你的工具会对敌人造成深深的伤口,让它们流血而亡。
辐照 tconevo.radiant_armor
面对烈日吧！
这件盔甲会短暂致盲攻击者。
四大皆空 tconevo.null_almighty_armor
狡兔三窟！
这件盔甲会将一切外来伤害削减至75%。
布朗魔术 brownmagic
你真奇怪。
按“设置传送门”键（默认为“N”）在你指向的方块上设置一个虚拟的传送门。按“Y”（默认时）传送到该位置（如果有足够空间）。
积淀 precipitate
最后的逃亡计划。
你的生命值越少，它就越快！
折跃 endspeed
量子移动！
投掷物会直接传送到目标上。
全知全能 tconevo.omnipotence
往后稍稍！
这件器械忤逆了神的旨意！
星辰 tconevo.astral
一闪一闪亮晶晶！
这件工具可在共鸣祭坛中进行星座共鸣。
极光之赐 aurorianempowered
极光涌流之力！
在极光幽境中工具速度更快！
modifier.toolleveling.name toolleveling
modifier.toolleveling.desc
石缚 stonebound
你的工具深爱着石头！
耐久越低，工具的挖掘速度越快，但伤害也越低。
寒冰之触 tconevo.chilling_touch_armor
冰冰棒！
这件盔甲会使来犯者获得短暂的缓慢效果。
扭曲 tconevo.warping
奇异的低语预示着奥秘……
这把可憎的兵刃将使它的敌人走火入魔。
护盾恢复 tconevo.draconic_shield_recovery_armor
高熔点！
这件盔甲会更快地恢复到低熵稳态中来。
粘性 sticky_armor
它真的烦人！
减缓敌人移速。
坚定意志 tconevo.will_strength_armor
保持专注！
这件盔甲将保护你在满血状态下不被一击必杀。
鱼鳍 fins
有些事情不对劲⋯⋯
在投掷物上附加鱼鳍会让它们在水下也能正常飞行。
记忆 jy
记住你啦!
chengming重置版!
你第一个杀死的敌人,你会记住它,以后对他的伤害翻倍
魔法强化 magical_modifier
为工具添加3个强化槽
自动冶炼 autosmelt
工具形式的熔炉！
自动烧炼采掘下来的方块。
神行 tconevo.foot_fleet
站稳--我要射你了！
使用该器械进行全力打击将获得爆发性移速加成。
碎裂 splinters
呜哇！
小心不要扎到碎片！
血缚 tconevo.bloodbound_armor
……把无垠的海水染作一片殷红……
这件盔甲会吸取其属主的生命源质来防止自身的磨损。
拉弓速度 tconevo.draconic_draw_speed
这是唱的哪一出？
拉弓速度加快
衰变 decay
放射性！！
随着时间的推移你的工具将不断损耗耐久。
卡瑞的意志 tconevo.gaia_will_karil_armor
尘封的古籍。
暴击施加凋零效果。
雷神之赐 tconevo.thundergod_favour_armor
电闪雷鸣我不怕！
装备该盔甲时免疫闪电伤害。
耐久 reinforced
如此强大！
每级增加20%的概率在使用工具时不消耗耐久。
摩根勒菲 morganlefay
兰斯洛特⋯⋯
造成额外的魔法伤害（从 0.0 到 5.0，高斯分布，绝对伤害）。
星能力共鸣【唤生座】 tconevo.attuned_pelotrio
星力洋溢！
这件工具已共鸣至唤生座，能够缓慢修复自身。
遁形 veiled
就像观察者！
弹射物将会隐形。
神圣 blessed_armor
小心亡灵
减低亡灵生物的能力。
弹性 moretcon.resilient
咚~~~
你的工具更能承受磨损,但当阻止耐久损耗时,工具速度会变慢。
震击 shocking
滋滋滋！
四处奔跑，破坏方块或进行攻击来充能你的工具。击中敌人时释放充能会造成伤害并增加速度。挖掘方块时释放充能会提高挖掘速度。
海星 starfishy
2 + 2 = 5
按“设置传送门”键（默认为“N”）在你指向的方块上设置一个虚拟的传送门。当你即将死亡时，如果你有 32 个铁晶，且传送门上方有足够的空间，则会消耗铁晶将你传送到传送门处，使你获救。（工具必须拿在手中）。
通量注入 tconevo.fluxed
老传家宝了！
这件工具会优先消耗电量而非耐久。
恶魔之力 devilsstrength
堪比撒旦⋯⋯
对非主世界的怪物造成额外的伤害。
黑暗 dark
天黑了，让我们战斗吧！
夜晚使你更具战斗力。
光合作用 tconevo.photosynthetic_armor
光 合 作 用
这件盔甲会在阳光下修复自身。
爆破 blasting
嘣，沙卡拉卡！
你可以把没用的的方块炸了，但是他们有可能会被炸毁。
木龙头 moretcon.treetap
琥珀磁石
你的工具在挖掘金琥珀原木时将掉落金琥珀。
重金属 heavy_metal
拒绝！
击退目标并赋予其缓慢效果。
充能 tconevo.electric_armor
好耶！
这件盔甲会优先消耗电量而非耐久
沉重 heavy_armor
责任重于泰山
穿戴该护甲时不会被击退。
魔法 moretcon.magical
嘶……现在你不是麻瓜了!
你的工具将会偶尔造成大量魔法击退。
可塑 moldable1_armor
瑞士莲。
为你的护甲增加额外的材料属性槽。
致密 dense
更⋯⋯硬⋯⋯
工具耐久越低，可以持续使用的时间就越长。
扼制 tconevo.stifling_armor
你这是以卵击石！
这件盔甲会弱化来犯者。
时运 luck
闪闪发亮！
你会得到好东西的，而且数量很多。
轻飘 cushy
像个垫子！
如丝般顺滑，但不会造成伤害。
御魂 tconevo.soul_guard_armor
在那一天，收割者放下了他的镰刀……
这件盔甲会吸取其属主的生命源质来削减一部分外来伤害。
魔法易碎 brittle
当它收到耐久消耗有随机的几率直接损坏。
modifier.infitool.name infitool
modifier.infitool.desc
RF容量 tconevo.draconic_energy_armor
能量无限！
这件盔甲拥有更大的RF容量。
美味 tasty
吧唧吧唧
闻起来真不错⋯⋯比起挨饿，你更愿意吃掉你的工具。
精灵细语 tconevo.fae_voice
嘿，仔细听！
这件器械会时不时召唤出精灵助你一臂之力。
Psi修复 psirepair
吸收玩家身上的Psi修复，但是只在快要毁坏的时候生效⋯⋯
星能力共鸣【天炉座】 tconevo.attuned_fornax_armor
星力洋溢！
这件盔甲已共鸣至天炉座，提供火焰保护效果。
星能力共鸣【天炉座】 tconevo.attuned_fornax
星力洋溢！
这件工具已共鸣至天炉座，使用之进行全力打击将点燃攻击目标。
盖亚之怒 tconevo.gaia_wrath
光与暗！
挥舞你的武器，发射毁灭光束！
进化 tconevo.evolved_armor
很平衡，大家都很平衡。
这件盔甲拥有能量护盾且可利用聚合装置进行升级。
modifier.mutate.name mutate
modifier.mutate.desc
月之声 wolframium
有人在吗？
满月时产生力量效果。
旅行者护目镜（远眺） travel_goggles_armor
看透你的盔甲。
你可以放大远处的景物。
光合作用 tconevo.photosynthetic
光 合 作 用
这件工具会在阳光下修复自身。
热力反转 thermalinversion
冰与火！
在热的环境中攻击会冻伤敌人；在冷的环境中攻击会灼伤敌人。
有益辐射 moretcon.helpful_radiation
哦,我、我可以用一只手数到10!
你工具的辐射会让你变得更强大,并给你的对手挂满有害的药水效果。
托拉格的意志 tconevo.gaia_will_torag_armor
尘封的古籍。
暴击施加重度缓慢效果。
廉价 cheap_armor
鼓起你的腰包！
修复工具时可以恢复更多的耐久。
不屈不挠 indomitable_armor
永不放弃！
你的护甲将更加耐用。
星能力共鸣【虚御座】 tconevo.attuned_vicio
星力洋溢！
这件工具已共鸣至虚御座，使用之进行全力打击将获得移速加成。
镜像映射 moretcon.mirroring
双倍的自负,双倍的教训
你的弹射物将会获得发射工具上材料的弹射物特性。
悬浮 hovering
轻盈如风
投掷物会忽略一部分重力，但速度会下降。
植物学 II botanical2
我早餐吃僵尸
增加强化槽；效果显著叠加。
植物学 botanical1
我早餐吃僵尸
增加强化槽；效果显著叠加。
罪孽根源 tconevo.ruination
客自海外归……
使用该器械进行全力打击会扣除敌人的生命值上限。
余震 tconevo.aftershock1
烈焰魔剑！
使用这件器械进行全力打击将造成额外的魔法伤害。
神圣 holy
圣光净化它！
对亡灵生物造成额外的伤害。
暗化 moretcon.darkened
拥抱黑暗
你的工具在黑暗中效率更高。
黑暗 darkness
黑暗不会帮助你的敌人，相反让他们感到痛苦！
黏滑 slimey_pink
唔，好黏！
我要洗掉它。
异形 alien_armor
感觉有些不对劲⋯⋯
好像它们在变化！也许时间会告诉我们答案？
粗暴 II crude2
懦夫才会用盔甲！
对无护甲的目标造成额外伤害。
粗暴 crude1
懦夫才会用盔甲！
对无护甲的目标造成额外伤害。
*/
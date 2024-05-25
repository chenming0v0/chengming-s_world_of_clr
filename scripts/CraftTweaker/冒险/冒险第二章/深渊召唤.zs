mods.abyssalcraft.SummonRitual.removeAll();
/* 
召唤仪式是这样添加的：
SummonRitual.addRitual(<unlocalizedName>, <bookType>, <dimension>, <requiredEnergy>, <livingSacrifice>, <entity>, [offerings], nbt*, customNBT*)

其中：是表示仪式的字符串（后来用“ac.ritual”作为前缀，并用“ac.ritual.<unlocalizedName>.desc”）进行描述字符串）。
并且是整数，其中 bookType 是执行仪式所需的死灵“级别”（0 = 正常，1 = 深渊荒原，2 = 恐惧之地，3 = Omothol 和 4 = Abyssalnomicon），dimension 是您可以执行它的维度（当前是主世界、深渊荒原、恐惧之地、Omothol 和黑暗领域，除非 mod 添加了对其维度的支持）。如果将维度指定为 -1，则可以在任何可用维度中执行仪式。
是一个浮点数，代表执行仪式所需的势能量（目前没有用处，除非使用的 AbyssalCraft 版本晚于 1.8.9，其中势能应该被实现到 mod 中）。
是仪式是否需要活祭（动物会做出很好的祭祀）。
是一个对象数组（最大数量为 8），其中是输入（例如放置在基座上的项目）。产品应指定为数组大小最多为 8。产品可以是 OreDict 条目，也可以是常规项目。
是一个 String 表示 Entity 的 ID（1.10.2 中的 “modid：name”， “name”，无论您在 /summon 命令中放入什么），或者表示扩展的 Entity 类的代码路径（本质上是任何活动实体，“example.path.to.an.EntityClass”）。
是一个标志，用于确定仪式祭品是否应该对 NBT 敏感（例如，您可以让它要求输入上存在特定标签，除非存在该标签，否则仪式不会通过），这目前用于涉及带有模组添加的各种液体的水桶的仪式（在 Minecraft 1.9 及更高版本中）， 因为这些项目将其特定数据存储在其 NBT 中。
是 crafttweaker.data.IData 的一个实例，其中包含您希望在召唤的生物上更改的 NBT 标签。
*这是可选的unlocalizedNamebookTypedimensionrequiredEnergylivingSacrificeofferingsofferings[<modid:name>, <modid:name>, <modid:name> etc]entityEntityLivingBasenbtcustomNBT

例： mods.abyssalcraft.SummonRitual.addRitual("testsummon", 0, -1, 100, false, "minecraft:zombie", [<ore:oreIron>, <minecraft:cobblestone>, <minecraft:stick>]); 
game.setLocalization("ac.ritual.testsummon", "Test Summoning Ritual"); 
game.setLocalization("ac.ritual.testsummon.desc", "Testing MineTweaker Summoning Ritual creation! This ritual summons a Zombie!");
这将增加一个召唤仪式，该仪式需要基础死灵之术，可以在任何地方执行，需要 100 PE，不需要活祭，通过提供在矿石字典中注册的铁矿石、一块鹅卵石和一根棍子来召唤僵尸。由于遗留原因，如果您不打算使用 NBT 敏感输入（因为它默认为 NBT 不敏感），则无需包含该参数。之后的位用于本地化仪式名称和描述（因此 Necronomicon 中的仪式页面有名称和描述）
*/
mods.abyssalcraft.SummonRitual.addRitual("mo_jei_ling_zhu", 1, 1000, 7500, false, "legendera:devildom_lord", [<legendera:evilkind_power_core>, <legendera:soul_essence_3>, <legendera:evilkind_life_essence> , <legendera:devildom_amethyst>,<aether_legacy:enchanted_blueberry>, <legendera:devildom_amethyst>, <legendera:evilkind_life_essence> , <legendera:soul_essence_3>]); 

game.setLocalization("ac.ritual.mo_jei_ling_zhu", "魔界领主仪式"); 
game.setLocalization("ac.ritual.mo_jei_ling_zhu.desc", "用于召唤根本找不到的魔界领主,要在魔界维度使用,并且魔界的基座要用深渊原石,不然是不会成型的,记得注意一下");

mods.abyssalcraft.Rituals.mapDimensionToBookTypeAndName(1000, 1, "魔界");

mods.abyssalcraft.SummonRitual.addRitual("a_shuo_la", 1, 50, 10000, false, "abyssalcraft:dragonboss", [<minecraft:enchanting_table>,<minecraft:ghast_tear>,<abyssalcraft:oc>,<forge:bucketfilled>.withTag({FluidName: "liquidcoralium", Amount: 1000}),<abyssalcraft:transmutationgem>,<forge:bucketfilled>.withTag({FluidName: "liquidcoralium", Amount: 1000}),<abyssalcraft:oc>,<minecraft:ghast_tear>]); 
game.setLocalization("ac.ritual.a_shuo_la", "沉睡者仪式"); 
game.setLocalization("ac.ritual.a_shuo_la.desc", "用于召唤那个黑暗领域的出生阿索拉 \n 招出来赶紧干死他,不知道什么原因导致看他翅膀会很卡注意一下");

//全部升级套件取消注册
mods.abyssalcraft.UpgradeKit.removeAll();
import loottweaker.LootTweaker;
import crafttweaker.item.IItemStack;
import crafttweaker.util.IRandom;
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;

//皎月女王的箱子战利品
val moontemplehigh = LootTweaker.getTable("theaurorian:chests/moontemplehigh");

//保底天宇奖池          小被抽取量, 最大被抽取量, 最小额外被抽取量, 最大额外被抽取量
val bdtyspjc = moontemplehigh.addPool("bdtyspjc",2,2,1,2);

bdtyspjc.addItemEntry(<contenttweaker:tian_shui_pian>*13, 1);
bdtyspjc.addItemEntry(<contenttweaker:tian_shui_pian>*17, 1);
bdtyspjc.addItemEntry(<contenttweaker:tian_shui_pian>*7, 2);

//额外随机奖池
val sjpool = moontemplehigh.addPool("sjjc",4,8,3,4);

val A as IItemStack[]=[
    <theaurorian:scrapaurorianite>*18,
    <theaurorian:scrapumbra>*16,
    <theaurorian:scrapcrystalline>*16,
    <contenttweaker:tian_shui_pian>*14,
    <theaurorian:crystallineshield>,
    <theaurorian:crystallinepickaxe>,
    <theaurorian:crystallinesword>
];
for items1 in A {
    sjpool.addItemEntry(items1, 3);
}
val B as IItemStack[]=[
    <theaurorian:scrapaurorianite>*8,
    <theaurorian:scrapumbra>*4,
    <theaurorian:scrapcrystalline>*7,
    <contenttweaker:tian_shui_pian>*12
];
for items2 in B {
    sjpool.addItemEntry(items2, 1);
}
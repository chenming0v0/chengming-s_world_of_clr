#loader contenttweaker
import mods.ctintegration.baubles.IBaubleInventory;
import mods.contenttweaker.VanillaFactory;
import crafttweaker.player.IPlayer;
var lian_shuo_bauble = VanillaFactory.createBaubleItem("lian_shuo_bauble");
lian_shuo_bauble.rarity = "rare";//设置物品珍惜度
lian_shuo_bauble.baubleType = "RING";//饰品类型
lian_shuo_bauble.register();

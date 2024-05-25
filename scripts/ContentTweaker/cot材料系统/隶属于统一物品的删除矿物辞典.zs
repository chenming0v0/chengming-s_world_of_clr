#priority 1000
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
//删除ae木齿轮矿物词典

function removeore(item as IItemStack , ore as IOreDictEntry) {
    ore.remove(item);
    recipes.remove(item);
    mods.jei.JEI.hide(item);
}



//ae2木齿轮
removeore(<appliedenergistics2:material:40>,<ore:gearWood>);
//压缩铁齿轮
removeore(<pneumaticcraft:compressed_iron_gear>,<ore:gearIronCompressed>);


<ore:dustAluminum>.remove(<nuclearcraft:dust:12>);
<ore:dustAluminium>.remove(<nuclearcraft:dust:12>);

recipes.remove(<redstonearsenal:material:96>);
recipes.remove(<redstonerepository:material:3>);


<ore:gearIronInfinity>.add(<thermalfoundation:material:24>);


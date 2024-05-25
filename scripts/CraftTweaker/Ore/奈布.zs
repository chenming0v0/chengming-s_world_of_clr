#priority 1000
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

function chengmingsaddOreDict(orename as string ,  ore as IItemStack , ingot as IItemStack , nugget as IItemStack) {
    var ore1 as IOreDictEntry= oreDict.get("ore" ~ orename);
    var ingot1 as IOreDictEntry= oreDict.get("ingot" ~ orename);
    var nugget1 as IOreDictEntry= oreDict.get("nugget" ~ orename);
    ore1.add(ore);
    ingot1.add(ingot);
    nugget1.add(nugget);
    furnace.addRecipe(ingot, ore, 1.6);
    recipes.addShapeless(nugget * 9,[ingot]);
    var ingot_box as IItemStack[]=[nugget,nugget,nugget];
    var ingot_box_box as IItemStack[][]=[ingot_box,ingot_box,ingot_box];
    recipes.addShaped(ingot,ingot_box_box);
}
chengmingsaddOreDict("Nebu" ,<contenttweaker:nebu_ore> ,<contenttweaker:nebu_ingot> ,<contenttweaker:nebu_drop>);


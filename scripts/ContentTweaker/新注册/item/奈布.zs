#priority 2333
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;

val nabu as string[]=[
"nebu_ingot",
"nebu_drop"
];

for i in nabu {
    VanillaFactory.createItem(i).register();
}

var nebu_block = VanillaFactory.createBlock("nebu_block", <blockmaterial:Iron>);
nebu_block.setBlockSoundType(<soundtype:stone>);
nebu_block.setToolClass("pickaxe");
nebu_block.setToolLevel(2);
nebu_block.register();
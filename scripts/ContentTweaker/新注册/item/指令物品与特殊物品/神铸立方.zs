#priority 2333
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;


var block = VanillaFactory.createBlock("shen_zhu_li_fang", <blockmaterial:Iron>);
block.setBlockSoundType(<soundtype:stone>);
block.setToolClass("pickaxe");
block.setToolLevel(5);
block.register();
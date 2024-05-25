#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var nebuore = VanillaFactory.createBlock("nebu_ore", <blockmaterial:Iron>);
nebuore.setBlockSoundType(<soundtype:stone>);
nebuore.setToolClass("pickaxe");
nebuore.setToolLevel(0);
nebuore.register();
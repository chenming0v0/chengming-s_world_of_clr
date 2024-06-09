#loader contenttweaker
#priority 1011
import mods.contenttweaker.VanillaFactory;
import mods.randomtweaker.cote.IPotion;
import mods.contenttweaker.Player;
var NoooooooooooooooooooFanWuZhi as IPotion = VanillaFactory.createPotion("INoFanWuZhi", 0x1bfffa);
NoooooooooooooooooooFanWuZhi.beneficial = true;
NoooooooooooooooooooFanWuZhi.shouldRender = true;
NoooooooooooooooooooFanWuZhi.shouldRenderHUD = true;
NoooooooooooooooooooFanWuZhi.register();
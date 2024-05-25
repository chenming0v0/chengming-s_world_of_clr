#loader contenttweaker
#priority 23333
import crafttweaker.liquid.ILiquidStack;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;

var slm_yi_bian_jing_hua = VanillaFactory.createFluid("slm_yi_bian_jing_hua_fluid", Color.fromHex("f7c9f9"));
slm_yi_bian_jing_hua.fillSound = <soundevent:block.anvil.place>;
slm_yi_bian_jing_hua.register();
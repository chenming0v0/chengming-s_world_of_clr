//删除恐惧之地蕴能石
mods.abyssalcraft.InfusionRitual.removeRitual(<abyssalcraft:psdl>);
//修改恐惧之地蕴能石
mods.abyssalcraft.InfusionRitual.addRitual("abyssalcraft", 1, 50, 1000, false, <abyssalcraft:psdl>, <abyssalcraft:ingotblock:1>, 
[<abyssalcraft:powerstonetracker>,<abyssalcraft:powerstonetracker>,<abyssalcraft:powerstonetracker>,<abyssalcraft:powerstonetracker>,<abyssalcraft:powerstonetracker>,<abyssalcraft:powerstonetracker>,<abyssalcraft:powerstonetracker>,<abyssalcraft:powerstonetracker>]);

//末影能量核心
mods.abyssalcraft.InfusionRitual.addRitual("mo_ying_nen", 1, 0, 7500, false, <legendera:ender_energy_core>, <actuallyadditions:block_misc:8>, 
[<netherex:ghast_queen_tear>,
<abyssalcraft:oblivionshard>,<rftools:infused_enderpearl>,<netherex:amethyst_crystal>,
<rftools:infused_enderpearl>,
<netherex:amethyst_crystal>,<rftools:infused_enderpearl>,<abyssalcraft:oblivionshard>]);
game.setLocalization("ac.ritual.mo_ying_nen", "末影能量核心"); 
game.setLocalization("ac.ritual.mo_ying_nen.desc", "用于前往魔界的传送门核心与之后挑战的重要物品");
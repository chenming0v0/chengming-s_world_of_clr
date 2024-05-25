import mods.dropt.Dropt;
import crafttweaker.item.IItemStack;
val cui_zhi as IItemStack[]=[
<thermalfoundation:tool.hammer_copper>,
<thermalfoundation:tool.hammer_tin>,
<thermalfoundation:tool.hammer_silver>,
<thermalfoundation:tool.hammer_lead>,
<thermalfoundation:tool.hammer_aluminum>,
<thermalfoundation:tool.hammer_nickel>,
<thermalfoundation:tool.hammer_platinum>,
<thermalfoundation:tool.hammer_steel>,
<thermalfoundation:tool.hammer_electrum>,
<thermalfoundation:tool.hammer_invar>,
<thermalfoundation:tool.hammer_bronze>,
<thermalfoundation:tool.hammer_constantan>,
<thermalfoundation:tool.hammer_iron>,
<thermalfoundation:tool.hammer_diamond>,
<thermalfoundation:tool.hammer_gold>,
<tconstruct:hammer:*>,
<redstonearsenal:tool.battlewrench_flux:*>,
<redstonearsenal:tool.hammer_flux:*>
];

Dropt.list("chui_zhi_chui_mu_tou")
.add(Dropt.rule().matchBlocks(["minecraft:log:*"])
.matchHarvester(Dropt.harvester().type("PLAYER").mainHand(cui_zhi))
.addDrop(Dropt.drop().items([<thermalfoundation:material:800>],Dropt.range(4, 6))));


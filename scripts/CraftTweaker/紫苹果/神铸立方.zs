import mods.dropt.Dropt;
import crafttweaker.item.IItemStack;
val shen_qi as IItemStack[]=[
<atum:montus_blast>,
<atum:montus_strike>,
<atum:anubiss_mercy>,
<atum:anubiss_wrath>,
<atum:nuits_vanishing>,
<atum:nuits_duality>,
<atum:nuits_ire>,
<atum:nuits_quarter>,
<atum:eyes_of_atum>,
<atum:body_of_atum>,
<atum:legs_of_atum>,
<atum:feet_of_atum>,
<atum:atums_will>,
<atum:atums_protection>,
<atum:atums_bounty>,
<atum:atums_homecoming>,
<atum:halo_of_ra>,
<atum:body_of_ra>,
<atum:legs_of_ra>,
<atum:feet_of_ra>,
<atum:ras_fury>,
<atum:ptahs_decadence>,
<atum:ptahs_undoing>,
<atum:gebs_toil>,
<atum:gebs_grounding>,
<atum:gebs_might>,
<atum:tefnuts_rain>,
<atum:tefnuts_call>,
<atum:tefnuts_blessing>,
<atum:shus_breath>,
<atum:shus_swiftness>,
<atum:horuss_soaring>,
<atum:horuss_ascension>,
<atum:seths_sting>,
<atum:seths_venom>,
<atum:anputs_hunger>
];

Dropt.list("shen_zhu_li_fang")
.add(Dropt.rule().matchBlocks(["contenttweaker:shen_zhu_li_fang"])
.addDrop(Dropt.drop().items("ONE", shen_qi)));
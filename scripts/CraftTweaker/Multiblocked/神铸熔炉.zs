#loader multiblocked
import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

var shenduanronglu as ComponentDefinition = MBDRegistry.getDefinition("atum:szrl");
var shen_duan_rong_lu = shenduanronglu as ControllerDefinition;

var a_tu_mu as IItemStack[] = [
<atum:eyes_of_atum:*>,
<atum:body_of_atum:*>,
<atum:legs_of_atum:*>,
<atum:feet_of_atum:*>,
<atum:atums_will:*>,
<atum:atums_protection:*>,
<atum:atums_bounty:*>,
<atum:atums_homecoming:*>
];

for atumu in a_tu_mu {
    shen_duan_rong_lu.recipeMap.start()
        .duration(200)
        .inputItems(atumu)
        
        .outputItems(<contenttweaker:a_tu_mu_godshard>*4)
        .buildAndRegister();
}


var la_zhi as IItemStack[] = [
<atum:halo_of_ra:*>,
<atum:body_of_ra:*>,
<atum:legs_of_ra:*>,
<atum:feet_of_ra:*>,
<atum:ras_fury:*>
];

for lazhi in la_zhi {
    shen_duan_rong_lu.recipeMap.start()
        .duration(200)
        .inputItems(lazhi)
        
        .outputItems(<contenttweaker:la_zhi_godshard>*4)
        .buildAndRegister();
}

var pu_ta as IItemStack[] = [
<atum:ptahs_decadence:*>,
<atum:ptahs_undoing:*>
];

for puta in pu_ta {
    shen_duan_rong_lu.recipeMap.start()
        .duration(200)
        .inputItems(puta)
        
        .outputItems(<contenttweaker:pu_ta_godshard>*4)
        .buildAndRegister();
}

var ge_bu as IItemStack[] = [
<atum:gebs_toil:*>,
<atum:gebs_grounding:*>,
<atum:gebs_might:*>
];

for gebu in ge_bu {
    shen_duan_rong_lu.recipeMap.start()
        .duration(200)
        .inputItems(gebu)
        
        .outputItems(<contenttweaker:ge_bu_godshard>*4)
        .buildAndRegister();
}

var te_fu_nu_te as IItemStack[] = [
<atum:tefnuts_rain:*>,
<atum:tefnuts_call:*>,
<atum:tefnuts_blessing:*>
];

for tefunute in te_fu_nu_te {
    shen_duan_rong_lu.recipeMap.start()
        .duration(200)
        .inputItems(tefunute)
        
        .outputItems(<contenttweaker:te_fu_nu_te_godshard>*4)
        .buildAndRegister();
}

var shu_zhi as IItemStack[] = [
<atum:shus_breath:*>,
<atum:shus_exile:*>,
<atum:shus_swiftness:*>
];

for shuzhi in shu_zhi {
    shen_duan_rong_lu.recipeMap.start()
        .duration(200)
        .inputItems(shuzhi)
        
        .outputItems(<contenttweaker:shu_zhi_godshard>*4)
        .buildAndRegister();
}

var he_lu_shi as IItemStack[] = [
<atum:horuss_soaring:*>,
<atum:horuss_ascension:*>
];

for helushi in he_lu_shi {
    shen_duan_rong_lu.recipeMap.start()
        .duration(200)
        .inputItems(helushi)
        
        .outputItems(<contenttweaker:he_lu_shi_godshard>*4)
        .buildAndRegister();
}

var sai_te as IItemStack[] = [
<atum:seths_sting:*>,
<atum:seths_venom:*>
];

for saite in sai_te {
    shen_duan_rong_lu.recipeMap.start()
        .duration(200)
        .inputItems(saite)
        
        .outputItems(<contenttweaker:sai_te_godshard>*4)
        .buildAndRegister();
}

shen_duan_rong_lu.recipeMap.start()
    .duration(200)
    .inputItems(<atum:isis_healing>)
    
    .outputItems(<contenttweaker:yi_xi_shi_godshard>*4)
.buildAndRegister();

var meng_tu as IItemStack[] = [
<atum:montus_blast:*>,
<atum:montus_strike:*>
];

for mengtu in meng_tu {
    shen_duan_rong_lu.recipeMap.start()
        .duration(200)
        .inputItems(mengtu)
        
        .outputItems(<contenttweaker:meng_tu_godshard>*4)
        .buildAndRegister();
}

var a_nu_bi as IItemStack[] = [
<atum:anubiss_mercy:*>,
<atum:anubiss_wrath:*>
];

for anubi in a_nu_bi {
    shen_duan_rong_lu.recipeMap.start()
        .duration(200)
        .inputItems(anubi)
        
        .outputItems(<contenttweaker:a_nu_bi_godshard>*4)
        .buildAndRegister();
}

var te_hu as IItemStack[] = [
<atum:nuits_vanishing:*>,
<atum:nuits_duality:*>,
<atum:nuits_ire:*>,
<atum:nuits_quarter:*>
];

for tehu in te_hu {
    shen_duan_rong_lu.recipeMap.start()
        .duration(200)
        .inputItems(tehu)
        
        .outputItems(<contenttweaker:te_hu_godshard>*4)
        .buildAndRegister();
}

shen_duan_rong_lu.recipeMap.start()
    .duration(200)
    .inputItems(<atum:anputs_hunger:*>)
    
    .outputItems(<contenttweaker:an_pu_te_godshard>*4)
.buildAndRegister();
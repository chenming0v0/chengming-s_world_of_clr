#reloadable
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeModifierBuilder;
import crafttweaker.item.IItemStack;



//==========================融合祭坛==================================
RecipeBuilder.newBuilder("rong_ji_tan1", "rong_ji_tan", 20)
    .addItemInputs([<moretcon:repitem:5>,<tconstruct:ingots:3>,<twilightforest:fiery_ingot>,<theaurorian:auroriansteel>,<defiledlands:ravaging_ingot>])
    .addOutput(<contenttweaker:tian>*3)
    .build();
RecipeBuilder.newBuilder("rong_ji_tan2", "rong_ji_tan", 20)
    .addItemInputs([<legendera:quartz_stick>,<netherex:amethyst_crystal>*16,<tconstruct:ingots:2>*8,<tconstruct:ingots:3>*4,<theaurorian:auroriansteel>*2])
    .addOutput(<contenttweaker:fa_zhan_zhang_bing>)
    .build();
RecipeBuilder.newBuilder("rong_ji_tan3", "rong_ji_tan", 20)
    .addItemInputs([<contenttweaker:fa_zhan_zhang_bing>,<tconstruct:ingots:2>*32,<aether_legacy:zanite_gemstone>*16,<tconstruct:ingots:3>*8,<aether_legacy:aechor_petal>*8,<aether_legacy:aerogel>*4])
    .addOutput(<legendera:devildom_portal_wand>)
    .build();
RecipeBuilder.newBuilder("rong_ji_tan4", "rong_ji_tan", 20)
    .addItemInputs([<ebwizardry:magic_silk>,<contenttweaker:tian>,<ebwizardry:medium_mana_flask>*16,<netherex:rime_crystal>*4])
    .addOutput(<contenttweaker:jiao_yu_tiao_zhan_quan>*2)
    .build();
RecipeBuilder.newBuilder("rong_ji_tan5", "rong_ji_tan", 20)
    .addItemInputs([<theaurorian:aurorianiteingot>,<theaurorian:crystallineingot>,<theaurorian:umbraingot>,<theaurorian:ceruleaningot>,<theaurorian:moonstoneingot>])
    .addOutput(<theaurorian:auroriansteel>*6)
    .build();
RecipeBuilder.newBuilder("rong_ji_tan6", "rong_ji_tan", 20)
    .addItemInputs([<thermalfoundation:material:134> * 16,<contenttweaker:tian_shui_pian> * 4,<contenttweaker:shi_lai_mu_yi_bian_jing_hua> * 4,<ebwizardry:medium_mana_flask> * 16,<ore:spectral_dust> * 16,<netherex:rime_crystal> * 8])
    .addOutput(<contenttweaker:chi_bang>)
    .build();
RecipeBuilder.newBuilder("rong_ji_tan7", "rong_ji_tan", 20)
    .addItemInputs([<netherex:gloomy_netherbrick> * 24,<ebwizardry:medium_mana_flask> * 16,<quark:crab_shell> * 16,<theaurorian:scrapumbra> * 12,<legendera:gunpowder_pellet> * 12,<futuremc:netherite_ingot> * 8])
    .addOutput(<contenttweaker:shao_jiao_shen_jia_chong>)
    .build();
RecipeBuilder.newBuilder("rong_ji_tan8", "rong_ji_tan", 20)
    .addItemInputs([<contenttweaker:chi_bang>,<contenttweaker:shao_jiao_shen_jia_chong>,<ic2:dust:5> * 16,<contenttweaker:tian>,<theaurorian:trophyspider>,<ebwizardry:medium_mana_flask> * 16])
    .addOutput(<atum:scarab>)
    .build();
RecipeBuilder.newBuilder("rong_ji_tan9", "rong_ji_tan", 20)
    .addItemInputs([<atum:idol_of_labor>,<defiledlands:scarlite> * 16,<aether_legacy:enchanted_blueberry> * 12,<defiledlands:ravaging_ingot> * 8,<atum:efreet_heart> * 8,<contenttweaker:an_pu_te_godshard> * 4])
    .addOutput(<defiledlands:idol_sorrow>)
    .build();
//==========================神铸熔炉==================================
if(true/*我知道你不想看的 by-辰林*/){
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
    for i,atumu in a_tu_mu {
        var name_rp as string ="shen_zu_a_tu_mu" + i;
        RecipeBuilder.newBuilder(name_rp, "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(atumu)
        .addOutput(<contenttweaker:a_tu_mu_godshard>*4)
        .build();
    }
    var la_zhi as IItemStack[] = [
    <atum:halo_of_ra:*>,
    <atum:body_of_ra:*>,
    <atum:legs_of_ra:*>,
    <atum:feet_of_ra:*>,
    <atum:ras_fury:*>
    ];
    for i,atumu in la_zhi {
        var name_rp as string ="shen_zu_la_zhi" + i;
        RecipeBuilder.newBuilder(name_rp, "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(atumu)
        .addOutput(<contenttweaker:la_zhi_godshard>*4)
        .build();
    }
    var pu_ta as IItemStack[] = [
    <atum:ptahs_decadence:*>,
    <atum:ptahs_undoing:*>
    ];
    for i,atumu in pu_ta {
        var name_rp as string ="shen_zu_pu_ta" + i;
        RecipeBuilder.newBuilder(name_rp, "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(atumu)
        .addOutput(<contenttweaker:pu_ta_godshard>*4)
        .build();
    }
    var ge_bu as IItemStack[] = [
    <atum:gebs_toil:*>,
    <atum:gebs_grounding:*>,
    <atum:gebs_might:*>
    ];
    for i,atumu in ge_bu {
        var name_rp as string ="shen_zu_ge_bu" + i;
        RecipeBuilder.newBuilder(name_rp, "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(atumu)
        .addOutput(<contenttweaker:ge_bu_godshard>*4)
        .build();
    }
    var te_fu_nu_te as IItemStack[] = [
    <atum:tefnuts_rain:*>,
    <atum:tefnuts_call:*>,
    <atum:tefnuts_blessing:*>
    ];
    for i,atumu in te_fu_nu_te {
        var name_rp as string ="shen_zu_te_fu_nu_te" + i;
        RecipeBuilder.newBuilder(name_rp, "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(atumu)
        .addOutput(<contenttweaker:te_fu_nu_te_godshard>*4)
        .build();
    }
    var shu_zhi as IItemStack[] = [
    <atum:shus_breath:*>,
    <atum:shus_exile:*>,
    <atum:shus_swiftness:*>
    ];
    for i,atumu in shu_zhi {
        var name_rp as string ="shen_zu_shu_zhi" + i;
        RecipeBuilder.newBuilder(name_rp, "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(atumu)
        .addOutput(<contenttweaker:shu_zhi_godshard>*4)
        .build();
    }
    var he_lu_shi as IItemStack[] = [
    <atum:horuss_soaring:*>,
    <atum:horuss_ascension:*>
    ];
    for i,atumu in he_lu_shi {
        var name_rp as string ="shen_zu_he_lu_shi" + i;
        RecipeBuilder.newBuilder(name_rp, "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(atumu)
        .addOutput(<contenttweaker:he_lu_shi_godshard>*4)
        .build();
    }
    var sai_te as IItemStack[] = [
    <atum:seths_sting:*>,
    <atum:seths_venom:*>
    ];
    for i,atumu in sai_te {
        var name_rp as string ="shen_zu_sai_te" + i;
        RecipeBuilder.newBuilder(name_rp, "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(atumu)
        .addOutput(<contenttweaker:sai_te_godshard>*4)
        .build();
    }
    RecipeBuilder.newBuilder("shen_zu_isis_healing", "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(<atum:isis_healing>)
        .addOutput(<contenttweaker:yi_xi_shi_godshard>*4)
        .build();

    var meng_tu as IItemStack[] = [
    <atum:montus_blast:*>,
    <atum:montus_strike:*>
    ];
    for i,atumu in meng_tu {
        var name_rp as string ="shen_zu_meng_tu" + i;
        RecipeBuilder.newBuilder(name_rp, "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(atumu)
        .addOutput(<contenttweaker:meng_tu_godshard>*4)
        .build();
    }
    var a_nu_bi as IItemStack[] = [
    <atum:anubiss_mercy:*>,
    <atum:anubiss_wrath:*>
    ];
    for i,atumu in a_nu_bi {
        var name_rp as string ="shen_zu_a_nu_bi" + i;
        RecipeBuilder.newBuilder(name_rp, "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(atumu)
        .addOutput(<contenttweaker:a_nu_bi_godshard>*4)
        .build();
    }
    var te_hu as IItemStack[] = [
    <atum:nuits_vanishing:*>,
    <atum:nuits_duality:*>,
    <atum:nuits_ire:*>,
    <atum:nuits_quarter:*>
    ];
    for i,atumu in te_hu {
        var name_rp as string ="shen_zu_te_hu" + i;
        RecipeBuilder.newBuilder(name_rp, "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(atumu)
        .addOutput(<contenttweaker:te_hu_godshard>*4)
        .build();
    }
        RecipeBuilder.newBuilder("shen_zu_anputs_hunger", "shen_zu", 4)
        .addEnergyPerTickInput(2560)
        .addInput(<liquid:lava> * 1000)
        .addItemInputs(<atum:anputs_hunger:*>)
        .addOutput(<contenttweaker:an_pu_te_godshard>*4)
        .build();
}
RecipeBuilder.newBuilder("shen_zu1", "shen_zu", 4)
    .addEnergyPerTickInput(2560)
    .addInput(<liquid:lava> * 1000)
    .addItemInputs(<futuremc:ancient_debris>)
    .addOutput(<futuremc:netherite_ingot>*2)
    .build();

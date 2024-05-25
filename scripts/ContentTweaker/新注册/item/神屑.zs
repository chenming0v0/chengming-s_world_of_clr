#priority 2333
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;

val oo00oo as string[]=[
"a_tu_mu_godshard",
"la_zhi_godshard",
"pu_ta_godshard",
"ge_bu_godshard",
"te_fu_nu_te_godshard",
"shu_zhi_godshard",
"he_lu_shi_godshard",
"sai_te_godshard",
"yi_xi_shi_godshard",
"meng_tu_godshard",
"a_nu_bi_godshard",
"te_hu_godshard",
"an_pu_te_godshard"
];

for i in oo00oo {
    VanillaFactory.createItem(i).register();
}
import crafttweaker.item.IItemStack;

val godshard as IItemStack[]=
[
<contenttweaker:a_tu_mu_godshard>,
<contenttweaker:la_zhi_godshard>,
<contenttweaker:pu_ta_godshard>,
<contenttweaker:ge_bu_godshard>,
<contenttweaker:te_fu_nu_te_godshard>,
<contenttweaker:shu_zhi_godshard>,
<contenttweaker:he_lu_shi_godshard>,
<contenttweaker:sai_te_godshard>,
<contenttweaker:yi_xi_shi_godshard>,
<contenttweaker:meng_tu_godshard>,
<contenttweaker:a_nu_bi_godshard>,
<contenttweaker:te_hu_godshard>,
<contenttweaker:an_pu_te_godshard>
];

for god_shard in godshard {
    <ore:godshard>.add(god_shard);
}
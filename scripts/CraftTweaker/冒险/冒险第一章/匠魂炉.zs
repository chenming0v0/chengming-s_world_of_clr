//删除骑士史莱姆熔融合金
mods.tconstruct.Alloy.removeRecipe(<liquid:knightslime>);

//添加骑士史莱姆熔融合金
mods.tconstruct.Alloy.addRecipe(<liquid:knightslime> * 144, [<liquid:slm_yi_bian_jing_hua_fluid> * 500, <liquid:knightmetal> * 288, <liquid:stone> * 144 *4]);

//史莱姆异变精华融化
mods.tconstruct.Melting.addRecipe(<liquid:slm_yi_bian_jing_hua_fluid> * 250,<contenttweaker:shi_lai_mu_yi_bian_jing_hua>, 300 + 178);
//史莱姆异变精华铸造
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:shi_lai_mu_yi_bian_jing_hua>, <tconstruct:cast_custom:2>, <liquid:slm_yi_bian_jing_hua_fluid>, 250 , false , 100);

//钢叶合金
mods.tconstruct.Casting.addTableRecipe(<moretcon:repitem:5>, <twilightforest:steeleaf_ingot>, <liquid:liquidironwood>, 288, true);

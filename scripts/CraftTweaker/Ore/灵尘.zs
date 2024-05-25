import crafttweaker.item.IItemStack;

val lingcheng as IItemStack[]=
[
<ebwizardry:spectral_dust:1>,
<ebwizardry:spectral_dust:2>,
<ebwizardry:spectral_dust:3>,
<ebwizardry:spectral_dust:4>,
<ebwizardry:spectral_dust:5>,
<ebwizardry:spectral_dust:6>,
<ebwizardry:spectral_dust:7>
];

for ling_cheng in lingcheng {
    <ore:spectral_dust>.add(ling_cheng);
}

val LP_magic_crystal as IItemStack[]=
[
<ebwizardry:magic_crystal:1>,
<ebwizardry:magic_crystal:2>,
<ebwizardry:magic_crystal:3>,
<ebwizardry:magic_crystal:4>,
<ebwizardry:magic_crystal:5>,
<ebwizardry:magic_crystal:6>,
<ebwizardry:magic_crystal:7>
];
for LP_magiccrystal in LP_magic_crystal {
    <ore:lpd_magic_crystal>.add(LP_magiccrystal);
}

val lp_novice_wand as IItemStack[]=
[
<ebwizardry:novice_fire_wand>,
<ebwizardry:novice_ice_wand>,
<ebwizardry:novice_lightning_wand>,
<ebwizardry:novice_necromancy_wand>,
<ebwizardry:novice_earth_wand>,
<ebwizardry:novice_sorcery_wand>,
<ebwizardry:novice_healing_wand>
];
for lp_novicewand in lp_novice_wand {
    <ore:lpd_novicewand>.add(lp_novicewand);
}
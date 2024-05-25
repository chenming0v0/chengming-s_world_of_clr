#priority 2333
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;

val oo00oo as string[]=[
"fu_ji_wu_1",
"fu_ji_wu_2",
"fu_ji_wu_3",
"fu_ji_wu_4"
];

for i in oo00oo {
    VanillaFactory.createItem(i).register();
}
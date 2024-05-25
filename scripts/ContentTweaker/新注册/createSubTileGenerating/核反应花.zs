#priority 20
#loader contenttweaker
import crafttweaker.world.IBlockPos;
import mods.contenttweaker.VanillaFactory;
import mods.randomtweaker.cote.ISubTileEntityFunctional;
import mods.randomtweaker.cote.ISubTileEntityGenerating;
import crafttweaker.util.Position3f;
import crafttweaker.entity.IEntityItem;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntity;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IFacing;

var he_hua as ISubTileEntityGenerating = VanillaFactory.createSubTileGenerating("he_hua", 0x4444FF);
he_hua.range = 4;
he_hua.maxMana = 20000000;
he_hua.acceptsRedstone = true;
he_hua.onUpdate = function(subtile, world, pos) {
    if(!world.isRemote() && subtile.getMana() < 12000000){
        val pos as IBlockPos =IBlockPos.create(pos.x , pos.y , pos.z);
        val s = pos.getOffset(IFacing.up(),2).getOffset(IFacing.west(),5).getOffset(IFacing.north(),5) as IBlockPos;
        val e = pos.getOffset(IFacing.down(),2).getOffset(IFacing.east(),5).getOffset(IFacing.south(),5) as IBlockPos;
        val entities = world.getEntitiesInArea(s.asPosition3f(),e.asPosition3f()) as IEntity[];
        for entity in entities{
            if(entity instanceof IEntityItem){
                val entityitem as IEntityItem = entity;
                val item as IItemStack = entityitem.item;
                if(item.definition.id == "minecraft:bread"){
                    item.mutable().shrink(1);
                    subtile.addMana(100000);
                    world.catenation()
                        .sleep(10)
                        .run(function(world, context) {
                        subtile.addMana(100000);})
                        .sleep(10)
                        .run(function(world, context) {
                        subtile.addMana(250000);})
                        .sleep(20)
                        .run(function(world, context) {
                        subtile.addMana(250000);})
                        .sleep(20)
                        .run(function(world, context) {
                        subtile.addMana(300000);})
                    .start();
                }
            }
        }
    }
};
he_hua.register();
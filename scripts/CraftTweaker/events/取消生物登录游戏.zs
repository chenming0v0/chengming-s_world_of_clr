
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
/*
events.onEntityJoinWorld(function(event as EntityJoinWorldEvent) {
    var entity = event.entity;
    if (!isNull(entity.definition.id)) {
        if (entity.definition.id == "netherex:coolmar_spider"){
            event.cancel();
        }
    } 
});
*/


events.onEntityJoinWorld(function(event as EntityJoinWorldEvent) {
    var entity = event.entity;
    if (entity instanceof IEntityLivingBase && !entity instanceof IPlayer){
        if(!isNull(entity.definition)){
            var entityID = entity.definition.id;
            if (entityID == "netherex:coolmar_spider"){
                event.cancel();
            }
        }
    } 
});

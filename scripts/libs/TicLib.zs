#reloadable
#priority 32627
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.entity.IEntityEquipmentSlot;
import mods.zenutils.StaticString;





zenClass ticLib {

    static allticitem as IItemStack[] = [
        <tconstruct:bolt>,
        <tinkersaether:dart_shooter>,
        <tconstruct:broadsword>,
        <tconstruct:longsword>,
        <tconstruct:rapier>,
        <tconstruct:frypan>,
        <tconstruct:battlesign>,
        <tconstruct:cleaver>,
        <tconstruct:shortbow>,
        <tconstruct:crossbow>,
        <tconstruct:arrow>,
        <tinkersaether:dart>,
        <tconstruct:shuriken>,
        <tconstruct:hammer>,
        <tconstruct:excavator>,
        <tconstruct:lumberaxe>,
        <tconstruct:scythe>,
        <tconstruct:pickaxe>,
        <tconstruct:shovel>,
        <tconstruct:hatchet>,
        <tconstruct:mattock>,
        <tconstruct:kama>,
        <conarm:boots>,
        <conarm:leggings>,
        <conarm:chestplate>,
        <conarm:helmet>,
    ];

    zenConstructor() {
    }

    function isTicTool(itemStack as IItemStack) as bool {
        
        var pass as bool = false;
        var tictool as IItemStack[] = [
            <tconstruct:bolt>,
            <tinkersaether:dart_shooter>,
            <tconstruct:broadsword>,
            <tconstruct:longsword>,
            <tconstruct:rapier>,
            <tconstruct:frypan>,
            <tconstruct:battlesign>,
            <tconstruct:cleaver>,
            <tconstruct:shortbow>,
            <tconstruct:crossbow>,
            <tconstruct:arrow>,
            <tinkersaether:dart>,
            <tconstruct:shuriken>,
            <tconstruct:hammer>,
            <tconstruct:excavator>,
            <tconstruct:lumberaxe>,
            <tconstruct:scythe>,
            <tconstruct:pickaxe>,
            <tconstruct:shovel>,
            <tconstruct:hatchet>,
            <tconstruct:mattock>,
            <tconstruct:kama>
        ];

        for i in tictool{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        return pass;
    }

    function isTicArmor(itemStack as IItemStack) as bool {
        
        var pass as bool = false;
        var ticarmor as IItemStack[] = [
            <conarm:boots>,
            <conarm:leggings>,
            <conarm:chestplate>,
            <conarm:helmet>
        ];

        for i in ticarmor{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        return pass;
    }


    function getTicMaterial(itemStack as IItemStack) as string[] {
        var Materials as string[] = [];
        var pass as bool = false;

        for i in allticitem{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        if(!pass) return Materials;
        if(isNull(itemStack.tag.TinkerData.Materials)) return Materials;

        var data as IData = itemStack.tag;
        var materials as string[] = data.TinkerData.Materials.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");

        for material in materials {
            Materials += material.trim();
        }
        return Materials;
    }


    function setTicBroken(itemStack as IItemStack, isBroken as bool) as bool {
        
        var pass as bool = false;

        for i in allticitem{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        if(!pass) return false;

        var num as int = (isBroken ? 1 : 0);

        itemStack.mutable().updateTag({Stats : {Broken : num as int}});

        return true;
    }


    function addTicMiningSpeed(itemStack as IItemStack, level as float, uuid as string) as bool {
        
        var pass as bool = false;

        var item as IItemStack[] = [
            <tconstruct:hammer>,
            <tconstruct:pickaxe>
        ];

        for i in item{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        if(!pass) return false;
        if(isNull(itemStack.tag.Stats.MiningSpeed)) return false;

        var data as float = itemStack.tag.Stats.MiningSpeed.asFloat();
        if(!hasTicuuid(itemStack, uuid)){
            addTicuuid(itemStack, uuid);
            itemStack.mutable().updateTag({Stats : {MiningSpeed : (level + data) as float}});
        }
        return true;
    }


    function addTicAttack(itemStack as IItemStack, level as float, uuid as string) as bool {
        
        var pass as bool = false;

        for i in allticitem{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        if(!pass) return false;
        if(isNull(itemStack.tag.Stats.Attack)) return false;

        var data as float = itemStack.tag.Stats.Attack.asFloat();
        if(!hasTicuuid(itemStack, uuid)){
            addTicuuid(itemStack, uuid);
            itemStack.mutable().updateTag({Stats : {Attack : (level + data) as float}});
        }
        return true;
    }

    
    function addTicFreeModifiers(itemStack as IItemStack, level as int, uuid as string) as bool {
        
        var pass as bool = false;


        for i in allticitem{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        if(!pass) return false;
        if(isNull(itemStack.tag.Stats.FreeModifiers)) return false;

        var data as int = itemStack.tag.Stats.FreeModifiers.asInt();
        if(!hasTicuuid(itemStack, uuid)){
            addTicuuid(itemStack, uuid);
            itemStack.mutable().updateTag({Stats : {FreeModifiers : (level + data) as int}});
        }
        return true;
    }


    function addTicDefense(itemStack as IItemStack, level as float, uuid as string) as bool {
        
        var pass as bool = false;


        for i in allticitem{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        if(!pass) return false;
        if(isNull(itemStack.tag.Stats.Defense)) return false;

        var data as float = itemStack.tag.Stats.Defense.asFloat();
        if(!hasTicuuid(itemStack, uuid)){
            addTicuuid(itemStack, uuid);
            if(itemStack.definition.id == "conarm:helmet"){
                itemStack.mutable().updateTag({Stats : {Defense : ((level / 0.16) + data) as float}});
            }
            if(itemStack.definition.id == "conarm:chestplate"){
                itemStack.mutable().updateTag({Stats : {Defense : ((level / 0.4) + data) as float}});
            }
            if(itemStack.definition.id == "conarm:leggings"){
                itemStack.mutable().updateTag({Stats : {Defense : ((level / 0.3) + data) as float}});
            }
            if(itemStack.definition.id == "conarm:boots"){
                itemStack.mutable().updateTag({Stats : {Defense : ((level / 0.14) + data) as float}});
            }
        }
        return true;
    }


    function addTicToughness(itemStack as IItemStack, level as float, uuid as string) as bool {
        
        var pass as bool = false;


        for i in allticitem{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        if(!pass) return false;
        if(isNull(itemStack.tag.Stats.Toughness)) return false;

        var data as float = itemStack.tag.Stats.Toughness.asFloat();
        if(!hasTicuuid(itemStack, uuid)){
            addTicuuid(itemStack, uuid);
            itemStack.mutable().updateTag({Stats : {Toughness : (level + data) as float}});
        }
        return true;
    }
    

    function addTicHarvestLevel(itemStack as IItemStack, level as int, uuid as string) as bool {
        
        var pass as bool = false;

        var item as IItemStack[] = [
            <tconstruct:hammer>,
            <tconstruct:pickaxe>
        ];

        for i in item{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        if(!pass) return false;
        if(isNull(itemStack.tag.Stats.HarvestLevel)) return false;

        var data as int = itemStack.tag.Stats.HarvestLevel.asInt();
        if(!hasTicuuid(itemStack, uuid)){
            addTicuuid(itemStack, uuid);
            itemStack.mutable().updateTag({Stats : {HarvestLevel : (level + data) as int}});
        }
        return true;
    }


    function hasTicuuid(itemStack as IItemStack, uuid as string) as bool {
        var pass as bool = false;

        for i in allticitem{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        if(!pass) return false;

        if(getTicuuid(itemStack) has uuid){
            return true;
        }
    }


    function getTicuuid(itemStack as IItemStack) as string[] {
        var Uuids as string[] = [];
        var pass as bool = false;

        for i in allticitem{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        if(!pass) return Uuids;
        if(isNull(itemStack.tag.UUIDS)) return Uuids;

        var data as IData = itemStack.tag;
        var uuids as string[] = data.UUIDS.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");

        for uuid in uuids {
            Uuids += uuid.trim();
        }
        return Uuids;
    }


    function addTicuuid(itemStack as IItemStack, uuid as string) as bool {
        var pass as bool = false;

        for i in allticitem{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        if(!pass) return false;
        if(isNull(itemStack.tag.UUIDS)){
            itemStack.mutable().updateTag({UUIDS : uuid as string});
        }else{
            var haduuid as string = itemStack.tag.UUIDS.asString();
            itemStack.mutable().updateTag({UUIDS : (haduuid + "," + uuid) as string});
        }
        return true;
    }


}

function getTicLib() as ticLib{
    return ticLib();
}
#loader contenttweaker
#priority 32627
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.entity.IEntityEquipmentSlot;
import mods.zenutils.DataUpdateOperation.OVERWRITE;
import mods.zenutils.DataUpdateOperation.APPEND;
import mods.zenutils.DataUpdateOperation.MERGE;
import mods.zenutils.DataUpdateOperation.REMOVE;
import mods.zenutils.DataUpdateOperation.BUMP;
import mods.zenutils.StaticString;




zenClass cotticTraitLib {

    static allticitem as IItemStack[] = [
        <item:tconstruct:bolt>,
        <item:tinkersaether:dart_shooter>,
        <item:tconstruct:broadsword>,
        <item:tconstruct:longsword>,
        <item:tconstruct:rapier>,
        <item:tconstruct:frypan>,
        <item:tconstruct:battlesign>,
        <item:tconstruct:cleaver>,
        <item:tconstruct:shortbow>,
        <item:tconstruct:crossbow>,
        <item:tconstruct:arrow>,
        <item:tinkersaether:dart>,
        <item:tconstruct:shuriken>,
        <item:tconstruct:hammer>,
        <item:tconstruct:excavator>,
        <item:tconstruct:lumberaxe>,
        <item:tconstruct:scythe>,
        <item:tconstruct:pickaxe>,
        <item:tconstruct:shovel>,
        <item:tconstruct:hatchet>,
        <item:tconstruct:mattock>,
        <item:tconstruct:kama>,
        <item:conarm:boots>,
        <item:conarm:leggings>,
        <item:conarm:chestplate>,
        <item:conarm:helmet>,
    ];

    zenConstructor() {
    }

    function removeTicTrait(itemStack as IItemStack, traitid as string, traitcolor as int, traitlevel as int) as bool{
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
        if(isNull(itemStack.tag.Traits)) return false;
        if(isNull(itemStack.tag.Modifiers)) return false;

        var data as IData = itemStack.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: traitcolor, level: traitlevel}];
        var addtrait as IData = [traitid as string];

        itemStack.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, REMOVE), Traits : traits.deepUpdate(addtrait, REMOVE)});
        return true;
    }


    function addTicTrait(itemStack as IItemStack, traitid as string, traitcolor as int, traitlevel as int) as bool{
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
        if(isNull(itemStack.tag.Traits)) return false;
        if(isNull(itemStack.tag.Modifiers)) return false;

        var data as IData = itemStack.tag;
        var modifiers as IData = data.Modifiers;
        var traits as IData = data.Traits;
        var addmodifier as IData = [{identifier: traitid, color: traitcolor, level: traitlevel}];
        var addtrait as IData = [traitid as string];

        itemStack.mutable().updateTag({Modifiers : modifiers.deepUpdate(addmodifier, MERGE), Traits : traits.deepUpdate(addtrait, MERGE)});
        return true;
    }


    function getTicTrait(itemStack as IItemStack) as string[] {
        var traits as string[] = [];
        var pass as bool = false;

        var allticitem as IItemStack[] = [
            <item:tconstruct:bolt>,
            <item:tinkersaether:dart_shooter>,
            <item:tconstruct:broadsword>,
            <item:tconstruct:longsword>,
            <item:tconstruct:rapier>,
            <item:tconstruct:frypan>,
            <item:tconstruct:battlesign>,
            <item:tconstruct:cleaver>,
            <item:tconstruct:shortbow>,
            <item:tconstruct:crossbow>,
            <item:tconstruct:arrow>,
            <item:tinkersaether:dart>,
            <item:tconstruct:shuriken>,
            <item:tconstruct:hammer>,
            <item:tconstruct:excavator>,
            <item:tconstruct:lumberaxe>,
            <item:tconstruct:scythe>,
            <item:tconstruct:pickaxe>,
            <item:tconstruct:shovel>,
            <item:tconstruct:hatchet>,
            <item:tconstruct:mattock>,
            <item:tconstruct:kama>,
            <item:conarm:boots>,
            <item:conarm:leggings>,
            <item:conarm:chestplate>,
            <item:conarm:helmet>,
        ];

        for i in allticitem{
            if(!isNull(itemStack)){
                if(i.definition.id == itemStack.definition.id){
                    pass = true;
                    break;
                }
            }
        }

        if(!pass) return traits;
        if(isNull(itemStack.tag.Traits)) return traits;

        var data as IData = itemStack.tag;
        var modifiers as string[] = data.Traits.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");

        for modifier in modifiers {
            traits += modifier.trim();
        }
        return traits;
    }


    function getPlayerTicBootsTrait(player as IPlayer) as string[] {
        var traits as string[] = [];
        var itemStack as IItemStack = player.getItemInSlot(IEntityEquipmentSlot.feet());
        
        if(isNull(itemStack)) return traits;
        if(isNull(itemStack.tag.Traits)) return traits;
        if(itemStack.definition.id != "conarm:boots") return traits;
        var data as IData = itemStack.tag;
        var modifiers as string[] = data.Traits.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");

        for modifier in modifiers {
            traits += modifier.trim();
        }
        return traits;
    }


    function getPlayerTicLeggingsTrait(player as IPlayer) as string[] {
        var traits as string[] = [];
        var itemStack as IItemStack = player.getItemInSlot(IEntityEquipmentSlot.legs());

        if(isNull(itemStack)) return traits;
        if(isNull(itemStack.tag.Traits)) return traits;
        if(itemStack.definition.id != "conarm:leggings") return traits;
        var data as IData = itemStack.tag;
        var modifiers as string[] = data.Traits.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");

        for modifier in modifiers {
            traits += modifier.trim();
        }
        return traits;
    }


    function getPlayerTicChestplateTrait(player as IPlayer) as string[] {
        var traits as string[] = [];
        var itemStack as IItemStack = player.getItemInSlot(IEntityEquipmentSlot.chest());

        if(isNull(itemStack)) return traits;
        if(isNull(itemStack.tag.Traits)) return traits;
        if(itemStack.definition.id != "conarm:chestplate") return traits;
        var data as IData = itemStack.tag;
        var modifiers as string[] = data.Traits.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");

        for modifier in modifiers {
            traits += modifier.trim();
        }
        return traits;
    }


    function getPlayerTicHelmetTrait(player as IPlayer) as string[] {
        var traits as string[] = [];
        var itemStack as IItemStack = player.getItemInSlot(IEntityEquipmentSlot.head());

        if(isNull(itemStack)) return traits;
        if(isNull(itemStack.tag.Traits)) return traits;
        if(itemStack.definition.id != "conarm:helmet") return traits;
        var data as IData = itemStack.tag;
        var modifiers as string[] = data.Traits.asString().replace("[", "").replace("]", "").replace("\"", "").split(",");

        for modifier in modifiers {
            traits += modifier.trim();
        }
        return traits;
    }


    function getPlayerTicArmorTrait(player as IPlayer) as string[] {
        var traits as string[] = [];
        for i in this.getPlayerTicHelmetTrait(player){
            traits += i;
        }
        for i in this.getPlayerTicChestplateTrait(player){
            traits += i;
        }
        for i in this.getPlayerTicLeggingsTrait(player){
            traits += i;
        }
        for i in this.getPlayerTicBootsTrait(player){
            traits += i;
        }

        return traits;
    }
}

function getCotTicTraitLib() as cotticTraitLib{
    return cotticTraitLib();
}
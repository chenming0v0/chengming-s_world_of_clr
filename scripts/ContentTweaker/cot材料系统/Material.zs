#loader contenttweaker
#priority 1001
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Part;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.RegisterMaterialPart;
import mods.contenttweaker.MaterialPart;
import mods.mekatweaker.Gas;
import mods.mekatweaker.GasFactory;
import mods.mekatweaker.InfuserType;

//创建mek气体类型
val gasPartType = MaterialSystem.createPartType("mekanism_gas_type", function(materialPart) {
    val material = materialPart.getMaterial();
    val part = materialPart.getPart(); // edited
    logger.logInfo("Registering Gas MaterialPart with Part " ~ materialPart.getPart().getName() ~ " and Material " ~ material.getName());
	var gas = GasFactory.createGas(material.getName().toLowerCase() ~ part.getName().toLowerCase()); // edited

	gas.setIcon("blocks/gas/" ~ part.getName().toLowerCase()); // edited
	gas.setColor(material.getColor());
	gas.setColorize(true);

    //This way users dont have to add all the names to the lang file themselves, remove this and you will have to localize "gas.<material.getName().toLowerCase()>"
	game.setLocalization("gas." ~ material.getName().toLowerCase() ~ part.getName().toLowerCase(), materialPart.getLocalizedName());
    gas.register();
});

//创建部件(纯净的矿物浆液气体)
val CleanOreSlurryGasPart = MaterialSystem.getPartBuilder()
    .setName("clean_ore_slurry_gas")
    .setPartType(gasPartType)
.build();

//创建部件(污浊的矿物浆液气体)
val DirtyOreSlurryGasPart = MaterialSystem.getPartBuilder()
    .setName("dirty_ore_slurry_gas")
    .setPartType(gasPartType)
.build();

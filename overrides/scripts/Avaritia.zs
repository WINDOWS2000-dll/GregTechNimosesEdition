#=================================================
# MODPACKNAME: GregTechNimosesEdition
# Writer: Sanjinoyatu1692
# DiscordName: Windows.EXE2000#2700
# Issue: Please send to my DirectMessage
#=================================================
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.thaumcraft.Infusion;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipeBuilder.newBuilder as mmRecipe;

print("------AVARITIA_LOADING_START------");
//Remove Recipes
var array1 = [<avaritia:resource>,<avaritia:resource:1>,<avaritia:compressed_crafting_table>,<avaritia:double_compressed_crafting_table>,<avaritia:extreme_crafting_table>] as IItemStack[];

for i in array1 {
    recipes.remove(i);
}


//ADD Recipe
mods.extendedcrafting.TableCrafting.addShaped(3, <avaritia:resource:1>, [
	[<extendedcrafting:material:12>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <extendedcrafting:material:12>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <extendedcrafting:material:12>], 
	[<ore:ingotCrystaltine>, <astralsorcery:itemcraftingcomponent:4>, <avaritia:resource>, <deepmoblearning:glitch_infused_ingot>, <avaritia:resource>, <astralsorcery:itemcraftingcomponent:4>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <astralsorcery:itemcraftingcomponent:4>, <ore:ingotMithrillium>, <ore:blockNetherStar>, <ore:ingotMithrillium>, <astralsorcery:itemcraftingcomponent:4>, <ore:ingotCrystaltine>], 
	[<extendedcrafting:material:12>, <ore:blockDiamond>, <ore:blockNetherStar>, <draconicevolution:draconic_core>, <ore:blockNetherStar>, <ore:blockDiamond>, <extendedcrafting:material:12>], 
	[<ore:ingotCrystaltine>, <astralsorcery:itemcraftingcomponent:4>, <ore:ingotMithrillium>, <ore:blockNetherStar>, <ore:ingotMithrillium>, <astralsorcery:itemcraftingcomponent:4>, <ore:ingotCrystaltine>], 
	[<ore:ingotCrystaltine>, <astralsorcery:itemcraftingcomponent:4>, <avaritia:resource>, <deepmoblearning:glitch_infused_ingot>, <avaritia:resource>, <astralsorcery:itemcraftingcomponent:4>, <ore:ingotCrystaltine>], 
	[<extendedcrafting:material:12>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <extendedcrafting:material:12>, <ore:ingotCrystaltine>, <ore:ingotCrystaltine>, <extendedcrafting:material:12>]
]);

forming_press.recipeBuilder()
    .inputs([<extendedcrafting:material:12>, <gregtech:meta_stick_long:323> * 4, <gregtech:meta_plate:276> * 2])
    .outputs(<avaritia:resource>)
    .EUt(1280)
    .duration(5000)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();

//クソネタレシピ
chem_reactor.recipeBuilder()
    .inputs(<minecraft:dirt:1>)
    .fluidInputs(<liquid:water> * 1000)
    .fluidOutputs(<liquid:infinity> * 1000)
    .EUt(2147483647)
    .duration(2147483647)
    .buildAndRegister();

//正直Infinity溶かすレシピ安すぎて逝きそうなんで
extractor.recipeBuilder()
    .inputs(<ore:ingotInfinity>)
    .fluidOutputs(<liquid:infinity> * 144)
    .EUt(2097152)
    .duration(4800)
    .buildAndRegister();

extractor.recipeBuilder()
    .inputs(<ore:blockInfinity>)
    .fluidOutputs(<liquid:infinity> * 1296)
    .EUt(2097152)
    .duration(43200)
    .buildAndRegister();

extractor.recipeBuilder()
    .inputs(<ore:dustInfinity>)
    .fluidOutputs(<liquid:infinity> * 144)
    .EUt(2097152)
    .duration(4800)
    .buildAndRegister();

//Neutronium Compressor
mods.extendedcrafting.TableCrafting.addShaped(4, <avaritia:neutronium_compressor> * 2, [
	[<ore:alloyUltimate>, <ore:plateDoubleDraconiumawakened>, <gregtech:transparent_casing:1>, <ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>, <gregtech:transparent_casing:1>, <ore:plateDoubleDraconiumawakened>, <ore:alloyUltimate>], 
	[<ore:plateDoubleDraconiumawakened>, <gregtech:transparent_casing:1>, <gregtech:meta_item_1:178>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:178>, <gregtech:transparent_casing:1>, <ore:plateDoubleDraconiumawakened>], 
	[<gregtech:transparent_casing:1>, <gregtech:meta_item_1:163>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:163>, <ore:laserRadon>, <gregtech:meta_item_1:163>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:163>, <gregtech:transparent_casing:1>], 
	[<ore:plateDraconiumawakened>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:178>, <ore:circuitUv>, <extendedcrafting:compressor>, <ore:circuitUv>, <gregtech:meta_item_1:178>, <gregtech:meta_item_1:103>, <ore:plateDraconiumawakened>], 
	[<ore:plateDraconiumawakened>, <gregtech:meta_item_1:103>, <ore:laserRadon>, <extendedcrafting:compressor>, <gregtech:machine_casing:8>, <extendedcrafting:compressor>, <ore:laserRadon>, <gregtech:meta_item_1:103>, <ore:plateDraconiumawakened>], 
	[<ore:plateDraconiumawakened>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:178>, <ore:circuitUv>, <extendedcrafting:compressor>, <ore:circuitUv>, <gregtech:meta_item_1:178>, <gregtech:meta_item_1:103>, <ore:plateDraconiumawakened>], 
	[<gregtech:transparent_casing:1>, <gregtech:meta_item_1:163>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:163>, <ore:laserRadon>, <gregtech:meta_item_1:163>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:163>, <gregtech:transparent_casing:1>], 
	[<ore:plateDoubleDraconiumawakened>, <gregtech:transparent_casing:1>, <gregtech:meta_item_1:178>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:178>, <gregtech:transparent_casing:1>, <ore:plateDoubleDraconiumawakened>], 
	[<ore:alloyUltimate>, <ore:plateDoubleDraconiumawakened>, <gregtech:transparent_casing:1>, <ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>, <gregtech:transparent_casing:1>, <ore:plateDoubleDraconiumawakened>, <ore:alloyUltimate>]
]);

//Neutron Collecter
mods.extendedcrafting.TableCrafting.addShaped(4, <avaritia:neutron_collector>, [
	[<ore:plateNeutronium>, <ore:plateNaquadria>, <ore:plateNaquadria>, <ore:plateNaquadria>, <ore:plateDoubleTrinaquadalloy>, <ore:plateNaquadria>, <ore:plateNaquadria>, <ore:plateNaquadria>, <ore:plateNeutronium>], 
	[<ore:plateNaquadria>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:104>, <ore:plateDoubleTrinaquadalloy>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:104>, <ore:plateNaquadria>], 
	[<ore:plateNaquadria>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:239>, <ore:circuitUhv>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:239>, <ore:plateNaquadria>], 
	[<ore:plateNaquadria>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:239>, <draconicevolution:awakened_core>, <gregtech:wire_coil:5>, <draconicevolution:awakened_core>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:104>, <ore:plateNaquadria>], 
	[<ore:plateDoubleTrinaquadalloy>, <ore:plateDoubleTrinaquadalloy>, <ore:circuitUhv>, <gregtech:wire_coil:5>, <avaritia:resource:5>, <gregtech:wire_coil:5>, <ore:circuitUhv>, <ore:plateDoubleTrinaquadalloy>, <ore:plateDoubleTrinaquadalloy>], 
	[<ore:plateNaquadria>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:239>, <draconicevolution:awakened_core>, <gregtech:wire_coil:5>, <draconicevolution:awakened_core>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:104>, <ore:plateNaquadria>], 
	[<ore:plateNaquadria>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:239>, <ore:circuitUhv>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:239>, <ore:plateNaquadria>], 
	[<ore:plateNaquadria>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:104>, <ore:plateDoubleTrinaquadalloy>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:104>, <ore:plateNaquadria>], 
	[<ore:plateNeutronium>, <ore:plateNaquadria>, <ore:plateNaquadria>, <ore:plateNaquadria>, <ore:plateDoubleTrinaquadalloy>, <ore:plateNaquadria>, <ore:plateNaquadria>, <ore:plateNaquadria>, <ore:plateNeutronium>]
]);

//Endest Pearl
mods.extendedcrafting.TableCrafting.addShaped(3, <avaritia:endest_pearl>, [
	[<ore:blockEnderPearl>, <ore:blockEnderEye>, <ore:blockEnderPearl>, <ore:endstone>, <ore:blockEnderPearl>, <ore:blockEnderEye>, <ore:blockEnderPearl>], 
	[<ore:blockEnderPearl>, <ore:blockEnderEye>, <ore:blockEnderPearl>, <ore:ingotEvilMetal>, <ore:blockEnderPearl>, <ore:blockEnderEye>, <ore:blockEnderPearl>], 
	[<ore:blockEnderPearl>, <ore:blockEnderEye>, <ore:blockEnderPearl>, <ore:netherStar>, <ore:blockEnderPearl>, <ore:blockEnderEye>, <ore:blockEnderPearl>], 
	[<ore:blockEnderPearl>, <ore:ingotEvilMetal>, <ore:netherStar>, <draconicevolution:wyvern_core>, <ore:netherStar>, <ore:ingotEvilMetal>, <ore:blockEnderPearl>], 
	[<ore:blockEnderPearl>, <ore:blockEnderEye>, <ore:blockEnderPearl>, <ore:netherStar>, <ore:blockEnderPearl>, <ore:blockEnderEye>, <ore:blockEnderPearl>], 
	[<ore:blockEnderPearl>, <ore:blockEnderEye>, <ore:blockEnderPearl>, <ore:ingotEvilMetal>, <ore:blockEnderPearl>, <ore:blockEnderEye>, <ore:blockEnderPearl>], 
	[<ore:blockEnderPearl>, <ore:blockEnderEye>, <ore:blockEnderPearl>, <ore:endstone>, <ore:blockEnderPearl>, <ore:blockEnderEye>, <ore:blockEnderPearl>]
]);
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
import mods.thermalexpansion.CompressionDynamo;
import mods.thermalexpansion.EnervationDynamo;
import mods.thermalexpansion.MagmaticDynamo;
import mods.thermalexpansion.NumisticDynamo;
import mods.thermalexpansion.ReactantDynamo;
import mods.thermalexpansion.SteamDynamo as Steam;

//Remove Recipe
var array1 = [<thermalfoundation:material:101>,<thermalfoundation:material:102>,<thermalfoundation:material:103>,<thermalfoundation:upgrade>,<thermalfoundation:upgrade:1>,<thermalfoundation:upgrade:2>,<thermalfoundation:upgrade:3>,<thermalfoundation:upgrade:33>,<thermalfoundation:upgrade:34>,<thermalfoundation:upgrade:35>,] as IItemStack[];

for i in array1 {
    recipes.remove(i);
}
/*
// シグナルムインゴット * 1
<recipemap:chemical_bath>.findRecipe(16, [<nuclearcraft:alloy:7>], [<liquid:redstone> * 250]).remove();

// ルミウムインゴット * 1
<recipemap:chemical_bath>.findRecipe(16, [<nuclearcraft:alloy:8>], [<liquid:glowstone> * 250]).remove();

// エンダリウムインゴット * 1
<recipemap:chemical_bath>.findRecipe(16, [<nuclearcraft:alloy:9>], [<liquid:ender> * 250]).remove();

// シグナルムの粉 * 1
<recipemap:chemical_bath>.findRecipe(16, [<metaitem:dustShibuichi>], [<liquid:redstone> * 250]).remove();
// Fluxed Electrum Blend * 1
<recipemap:chemical_bath>.findRecipe(16, [<metaitem:dustElectrum>], [<liquid:redstone> * 200]).remove();
// Molten Signalum * 144
<recipemap:extractor>.findRecipe(30, [<metaitem:dustSignalum>], null).remove();
*/

//ADD Recipe

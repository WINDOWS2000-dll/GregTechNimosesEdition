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

print("------APPLIED_ENERGESTICS2_Stuff_LOADING_START------");

//Remove Recipe
var array1 = [<ae2stuff:encoder>,<ae2stuff:wireless>,<ae2stuff:wireless_kit>,<ae2stuff:visualiser>] as IItemStack[];

//ADD Recipes
  //分類はめんどいんでやりません
assembler.recipeBuilder()
    .inputs([<threng:material:14>, <gregtech:meta_item_1:307> * 2, <appliedenergistics2:network_tool>, <appliedenergistics2:memory_card>, <extrabotany:cosmetic:3>])
    .outputs(<ae2stuff:visualiser>)
    .fluidInputs(<liquid:crystal_water> * 4000)
    .EUt(1920)
    .duration(200)
    .buildAndRegister();

mods.extendedcrafting.TableCrafting.addShaped(1, <ae2stuff:wireless_kit>, [
	[<ore:gemCertusQuartzCharged>, <appliedenergistics2:material:41>, <appliedenergistics2:material:23>], 
	[<appliedenergistics2:material:41>, <appliedenergistics2:network_tool>, <ore:gemFluix>], 
	[<appliedenergistics2:material:23>, <ore:gemFluix>, <appliedenergistics2:fluix_block>]
]);

assembler.recipeBuilder()
    .inputs([<appliedenergistics2:material:41> * 12, <appliedenergistics2:material:42> * 12, <threng:material:14> * 4, <appliedenergistics2:wireless_access_point> * 2, <gregtech:meta_item_1:503> * 4, <appliedenergistics2:part:76> * 2, <gregtech:machine:989> * 2])
    .outputs(<ae2stuff:wireless>)
    .fluidInputs(<liquid:crystal_water> * 12000)
    .EUt(2000)
    .duration(1000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<appliedenergistics2:part:340>, <appliedenergistics2:interface>, <threng:material:4> * 2, <appliedenergistics2:part:16> * 2])
    .outputs(<ae2stuff:encoder>)
    .EUt(480)
    .duration(200)
    .buildAndRegister();

print("------APPLIED_ENERGESTICS2_Stuff_LOADING_END------");
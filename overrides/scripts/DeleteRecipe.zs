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
import mods.thaumcraft.Infusion;

print("======RECIPES_DELETE_START======");

#=================================================
#CAUTION！！！！Delete Only Recipe
#=================================================
//minecraft:light_weight_pressure_plate DeleteTag=>CraftingTableRecipe
recipes.remove(<minecraft:light_weighted_pressure_plate>);
//minecraft:end_cryastal DeleteTag=>GTAssemblerRecipe
<recipemap:assembler>.findRecipe(16, [<minecraft:ghast_tear:0>, <minecraft:ender_eye:0>], [<liquid:glass> * 1008]).remove();
//enderio:item_endergy_conduit(T1) DeleteTag=>CraftingTable
recipes.remove(<enderio:item_endergy_conduit>);
//Vanilla Furnace Recipes
  furnace.remove(<enderio:item_alloy_ingot:7>);
  furnace.remove(<ore:ingotSteel>);
//Easy clock recipe
  // Clock * 1
    <recipemap:assembler>.findRecipe(4, [<minecraft:redstone:0>, <metaitem:plateGold> * 4], null).remove();


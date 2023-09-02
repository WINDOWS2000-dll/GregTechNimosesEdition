
#priority 860

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

print("------CONTENTTWEAKER_LOADING_START------");
//ADD Recipe
  //Space Suit Fabric
    forming_press.recipeBuilder()
      .inputs([
        <contenttweaker:kevlarfabric>,
        <contenttweaker:carbonreinforcedfabric>,
        <gregtech:meta_foil:55> * 8,
        <gregtech:fluid_pipe_tiny:1012> * 16,
        <gregtech:meta_item_1:500> * 16,
        <immersiveengineering:material:5> * 32
      ])
      .outputs(<contenttweaker:spacesuitfabric> * 2)
      .EUt(480)
      .duration(600)
      .buildAndRegister();
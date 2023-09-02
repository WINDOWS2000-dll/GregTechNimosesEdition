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
recipes.remove(<betterp2p:advanced_memory_card>,<aenetvistool:net_visualizer>);
//ADDRecipe
assembler.recipeBuilder()
    .inputs([<appliedenergistics2:memory_card>, <threng:material:4> * 4, <gregtech:meta_item_1:261> * 8, <gregtech:meta_item_1:262> * 4, <gregtech:meta_item_1:307>, <gregtech:meta_wire_fine:80> * 4, <gregtech:meta_item_1:404>])
    .outputs(<betterp2p:advanced_memory_card>)
    .EUt(2000)
    .duration(400)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<betterp2p:advanced_memory_card>, <ae2stuff:visualiser>, <threng:material:14> * 4, <ore:circuitIv> * 4, <gregtech:meta_item_1:594> * 32, <gregtech:meta_item_1:592> * 48, <gregtech:meta_item_1:597> * 16, <gregtech:meta_wire_fine:80> * 24, <gregtech:meta_item_1:405>])
    .outputs(<aenetvistool:net_visualizer>)
    .fluidInputs(<liquid:xenon> * 16000)
    .EUt(7960)
    .duration(2000)
    .buildAndRegister();

print("------APPLIED_ENERGESTICS2_Stuff_LOADING_END------");
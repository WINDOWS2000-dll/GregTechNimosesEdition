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

print("------BIGINING_AGE_LOADING_START------");

//RemoveRecipes

var array1 = [<minecraft:crafting_table>,<gregtech:meta_block_compressed_128:1>,<extendedcrafting:table_basic>] as IItemStack[];

for i in array1 {
    recipes.remove(i);
}

// 火打石 * 9
<recipemap:forge_hammer>.findRecipe(24, [<gregtech:meta_block_compressed_128:1>], null).remove();

// 火打石の粉 * 9
<recipemap:macerator>.findRecipe(2, [<gregtech:meta_block_compressed_128:1>], null).remove();

recipes.addShaped(<minecraft:crafting_table>, [[<gregtech:meta_block_compressed_128:1>, <gregtech:meta_block_compressed_128:1>],[<minecraft:log>, <minecraft:log>]]);

recipes.addShaped(<gregtech:meta_block_compressed_128:1>, [[<minecraft:flint>, <minecraft:flint>],[<minecraft:flint>, <minecraft:flint>]]);

recipes.addShaped(<extendedcrafting:table_basic>, [[<gregtech:meta_block_compressed_128:1>, <gregtech:meta_block_compressed_128:1>],[<gregtech:meta_block_compressed_128:1>, <minecraft:crafting_table>]]);

recipes.addShaped(<gregtech:meta_dust:1599> * 4, [[<minecraft:flint>, <minecraft:cobblestone>],[null, null]]);

recipes.removeShapeless(<minecraft:flint> * 9, [ <gregtech:meta_block_compressed_128:1>]);

print("------BIGINING_AGE_LOADING_END------");
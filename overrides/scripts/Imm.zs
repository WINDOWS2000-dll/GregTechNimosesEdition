#=================================================
# MODPACKNAME: GregTechNimosesEdition
# Writer: Sanjinoyatu1692
# DiscordName: Windows.EXE2000#2700
# Issue: Please send to my DirectMessage
#=================================================
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.gregtech.material.MaterialRegistry;
import mods.thaumcraft.Infusion;

mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>.withTag({graphDmg: 48000}));
mods.jei.JEI.removeAndHide(<immersiveengineering:material:19>);
mods.jei.JEI.removeAndHide(<immersiveengineering:material:18>);
mods.jei.JEI.removeAndHide(<immersiveengineering:graphite_electrode>);

var imm2 as string[] = [
  "molds",
  "components",
  "electrode"
];

for s in imm2 {
  recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: s}));
}


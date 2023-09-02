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

//Remove Recipe

var furnaceremove as IItemStack[] = [
  <draconicevolution:draconium_ingot>,
  <gregtech:meta_ingot:32014>,
  <mekanism:ingot:1>,
  <thermalfoundation:material:134>,
  <enderio:item_material:4>,
  <logisticspipes:chip_fpga>,
  <mekanism:nugget:1>,
  <mekanism:nugget:4>,
  <mekanism:nugget>,
  <logisticspipes:chip_advanced>,
  <mekanism:nugget:3>,
  <logisticspipes:chip_basic>,
  <thermalfoundation:material:136>,
  <thermalfoundation:material:132>,
  <gregtech:meta_ingot:32010>,
  <libvulpes:productingot:9>,
  <appliedenergistics2:material:5>,
  <gregtech:meta_ingot:32018>
];

for i in furnaceremove {
  furnace.remove(i);
}

furnace.remove(<draconicevolution:draconium_ingot>);
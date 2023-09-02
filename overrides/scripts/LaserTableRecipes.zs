import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.buildcraft.AssemblyTable;

//ADD Recipe
  //LogisticsPips
    //Basic Chip
      AssemblyTable.addRecipe("BasicChipLaserRecipe", <logisticspipes:chip_basic>, 6000, [<logisticspipes:chip_basic_raw>, <buildcraftsilicon:redstone_chipset:3>, <contenttweaker:crystaloscillator>, <gregtech:meta_item_1:591>, <ore:circuitMv>, <gregtech:meta_bolt:2517>, <gregtech:meta_plate:32002>]);
    //Advanced Chip
      AssemblyTable.addRecipe("AdvancedChipLaserRecipe", <logisticspipes:chip_advanced>, 8000, [<logisticspipes:chip_advanced_raw>, <buildcraftsilicon:redstone_chipset:2>, <contenttweaker:crystaloscillator>, <gregtech:meta_item_1:593>, <ore:circuitHv>, <gregtech:meta_bolt:2517>, <gregtech:meta_plate:32003>]);
    //FPGA
      AssemblyTable.addRecipe("FPGALaserRecipe", <logisticspipes:chip_fpga>, 12000, [<logisticspipes:chip_fpga_raw>, <buildcraftsilicon:redstone_chipset:4>, <contenttweaker:crystaloscillator>, <gregtech:meta_item_1:596>, <ore:circuitHv>, <gregtech:meta_bolt:2517>, <gregtech:meta_plate:32021>]);
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

print("------SOLARFLUXREBORN_LOADING_START------");
//Remove Recipe
  var arraySFR = [<solarflux:blank_upgrade>,<solarflux:block_charging_upgrade>,<solarflux:capacity_upgrade>,<solarflux:dispersive_upgrade>,<solarflux:efficiency_upgrade>,<solarflux:furnace_upgrade>,<solarflux:mirror>,<solarflux:photovoltaic_cell_1>,<solarflux:photovoltaic_cell_2>,<solarflux:photovoltaic_cell_3>,<solarflux:photovoltaic_cell_4>,<solarflux:photovoltaic_cell_5>,<solarflux:photovoltaic_cell_6>,<solarflux:solar_panel_1>,<solarflux:solar_panel_2>,<solarflux:solar_panel_3>,<solarflux:solar_panel_4>,<solarflux:solar_panel_5>,<solarflux:solar_panel_6>,<solarflux:solar_panel_7>,<solarflux:solar_panel_8>,<solarflux:solar_panel_wyvern>,<solarflux:solar_panel_draconic>,<solarflux:transfer_rate_upgrade>,<solarflux:traversal_upgrade>] as IItemStack[];

  for i in arraySFR {
    recipes.remove(i);
  }
//ADD Recipes
  //PhotoVoltaicCells
    //Mirror
      mods.extendedcrafting.TableCrafting.addShaped(0, <solarflux:mirror>, [
	      [<ore:plateSilver>, <ore:paneGlassColorless>, <ore:plateSilver>], 
	      [<ore:paneGlassColorless>, <ore:plateIron>, <ore:paneGlassColorless>], 
	      [<ore:plateSilver>, <ore:paneGlassColorless>, <ore:plateSilver>]
      ]);
    //Mk.1
      mods.extendedcrafting.TableCrafting.addShaped(0, <solarflux:photovoltaic_cell_1>, [
	      [<solarflux:mirror>, <ore:itemPlatePhotovoltaic>, <solarflux:mirror>], 
	      [<ore:itemPlatePhotovoltaic>, <ore:blockRedstone>, <ore:itemPlatePhotovoltaic>], 
	      [<solarflux:mirror>, <ore:itemPlatePhotovoltaic>, <solarflux:mirror>]
      ]);
    //Mk.2
      mods.extendedcrafting.TableCrafting.addShaped(0, <solarflux:photovoltaic_cell_2>, [
	      [<ore:plateRedAlloy>, <solarflux:photovoltaic_cell_1>, <ore:plateRedAlloy>], 
	      [<solarflux:photovoltaic_cell_1>, <ore:blockRedstone>, <solarflux:photovoltaic_cell_1>], 
	      [<ore:plateRedAlloy>, <solarflux:photovoltaic_cell_1>, <ore:plateRedAlloy>]
      ]);
    //Mk.3
      mods.extendedcrafting.TableCrafting.addShaped(0, <solarflux:photovoltaic_cell_3>, [
	      [<gregtech:meta_item_1:331>, <solarflux:photovoltaic_cell_2>, <gregtech:meta_item_1:331>], 
	      [<solarflux:photovoltaic_cell_2>, <gregtech:meta_item_1:602>, <solarflux:photovoltaic_cell_2>], 
	      [<gregtech:meta_item_1:331>, <solarflux:photovoltaic_cell_2>, <gregtech:meta_item_1:331>]
      ]);
    //Mk.4
      mods.extendedcrafting.TableCrafting.addShaped(2, <solarflux:photovoltaic_cell_4>, [
	      [<ore:componentResistor>, <ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>, <ore:componentResistor>], 
	      [<ore:alloyAdvanced>, <gregtech:meta_item_1:99>, <solarflux:photovoltaic_cell_3>, <gregtech:meta_item_1:99>, <ore:alloyAdvanced>], 
	      [<ore:circuitMv>, <solarflux:photovoltaic_cell_3>, <gregtech:meta_item_1:603>, <solarflux:photovoltaic_cell_3>, <ore:circuitMv>], 
	      [<ore:alloyAdvanced>, <gregtech:meta_item_1:99>, <solarflux:photovoltaic_cell_3>, <gregtech:meta_item_1:99>, <ore:alloyAdvanced>], 
	      [<ore:componentResistor>, <ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>, <ore:componentResistor>]
      ]);
    //Mk.5
      mods.extendedcrafting.TableCrafting.addShaped(2, <solarflux:photovoltaic_cell_5>, [
	      [<gregtech:meta_item_1:492>, <ore:alloyElite>, <ore:circuitHv>, <ore:alloyElite>, <gregtech:meta_item_1:492>], 
	      [<ore:alloyElite>, <gregtech:meta_item_1:100>, <solarflux:photovoltaic_cell_4>, <gregtech:meta_item_1:100>, <ore:alloyElite>], 
	      [<ore:circuitHv>, <solarflux:photovoltaic_cell_4>, <gregtech:meta_item_1:604>, <solarflux:photovoltaic_cell_4>, <ore:circuitHv>], 
	      [<ore:alloyElite>, <gregtech:meta_item_1:100>, <solarflux:photovoltaic_cell_4>, <gregtech:meta_item_1:100>, <ore:alloyElite>], 
	      [<gregtech:meta_item_1:492>, <ore:alloyElite>, <ore:circuitHv>, <ore:alloyElite>, <gregtech:meta_item_1:492>]
      ]);
    //Mk.6
      mods.extendedcrafting.TableCrafting.addShaped(3, <solarflux:photovoltaic_cell_6>, [
	      [<ore:alloyElite>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:531>, <gregtech:meta_item_1:528>, <gregtech:meta_item_1:531>, <gregtech:meta_item_1:492>, <ore:alloyElite>], 
	      [<gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:101>, <ore:circuitEv>, <gregtech:meta_item_1:101>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>], 
	      [<gregtech:meta_item_1:531>, <gregtech:meta_item_1:101>, <solarflux:photovoltaic_cell_5>, <gregtech:meta_item_1:605>, <solarflux:photovoltaic_cell_5>, <gregtech:meta_item_1:101>, <gregtech:meta_item_1:531>], 
	      [<gregtech:meta_item_1:529>, <ore:circuitEv>, <gregtech:meta_item_1:605>, <ore:circuitIv>, <gregtech:meta_item_1:605>, <ore:circuitEv>, <gregtech:meta_item_1:532>], 
	      [<gregtech:meta_item_1:531>, <gregtech:meta_item_1:101>, <solarflux:photovoltaic_cell_5>, <gregtech:meta_item_1:605>, <solarflux:photovoltaic_cell_5>, <gregtech:meta_item_1:101>, <gregtech:meta_item_1:531>], 
      	[<gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:101>, <ore:circuitEv>, <gregtech:meta_item_1:101>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>], 
	      [<ore:alloyElite>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:531>, <gregtech:meta_item_1:530>, <gregtech:meta_item_1:531>, <gregtech:meta_item_1:492>, <ore:alloyElite>]
        ]);
  //Solar
    //ULLLLLLLLLLLV
      mods.extendedcrafting.TableCrafting.addShaped(0, <solarflux:solar_panel_1>, [
	      [<ore:plankWood>, <solarflux:mirror>, <ore:plankWood>], 
	      [<solarflux:mirror>, <ore:blockRedstone>, <solarflux:mirror>], 
	      [<ore:plankWood>, <solarflux:mirror>, <ore:plankWood>]
      ]);
    //ULLLLLLV
      mods.extendedcrafting.TableCrafting.addShaped(0, <solarflux:solar_panel_2>, [
	      [<solarflux:solar_panel_1>, <solarflux:solar_panel_1>, <solarflux:solar_panel_1>], 
	      [<solarflux:solar_panel_1>, <ore:blockRedstone>, <solarflux:solar_panel_1>], 
	      [<solarflux:solar_panel_1>, <solarflux:solar_panel_1>, <solarflux:solar_panel_1>]
      ]);
    //ULV
      mods.extendedcrafting.TableCrafting.addShaped(0, <solarflux:solar_panel_3>, [
	      [<ore:circuitUlv>, <solarflux:solar_panel_2>, <ore:circuitUlv>], 
	      [<solarflux:solar_panel_2>, <solarflux:photovoltaic_cell_1>, <solarflux:solar_panel_2>], 
	      [<ore:circuitUlv>, <solarflux:solar_panel_2>, <ore:circuitUlv>]
      ]);
    //LV
      mods.extendedcrafting.TableCrafting.addShaped(0, <solarflux:solar_panel_4>, [
	      [<ore:circuitMv>, <solarflux:solar_panel_3>, <ore:circuitMv>], 
	      [<solarflux:solar_panel_3>, <solarflux:photovoltaic_cell_2>, <solarflux:solar_panel_3>], 
	      [<ore:circuitMv>, <solarflux:solar_panel_3>, <ore:circuitMv>]
      ]);
    //MV
      mods.extendedcrafting.TableCrafting.addShaped(0, <solarflux:solar_panel_5>, [
	      [<ore:circuitHv>, <solarflux:solar_panel_4>, <ore:circuitHv>], 
	      [<solarflux:solar_panel_4>, <solarflux:photovoltaic_cell_3>, <solarflux:solar_panel_4>], 
	      [<ore:circuitHv>, <solarflux:solar_panel_4>, <ore:circuitHv>]
      ]);
    //HV
      mods.extendedcrafting.TableCrafting.addShaped(2, <solarflux:solar_panel_6>, [
	      [<ore:plateSignalum>, <ore:alloyElite>, <ore:circuitHv>, <ore:alloyElite>, <ore:plateSignalum>], 
	      [<ore:alloyElite>, <ore:circuitEv>, <solarflux:solar_panel_5>, <ore:circuitEv>, <ore:alloyElite>], 
	      [<ore:circuitHv>, <solarflux:solar_panel_5>, <solarflux:photovoltaic_cell_4>, <solarflux:solar_panel_5>, <ore:circuitHv>], 
	      [<ore:alloyElite>, <ore:circuitEv>, <solarflux:solar_panel_5>, <ore:circuitEv>, <ore:alloyElite>], 
	      [<ore:plateSignalum>, <ore:alloyElite>, <ore:circuitHv>, <ore:alloyElite>, <ore:plateSignalum>]
      ]);
    //EV
      mods.extendedcrafting.TableCrafting.addShaped(2, <solarflux:solar_panel_7>, [
	      [<ore:alloyElite>, <ore:plateAstral>, <ore:alloyElite>, <ore:plateAstral>, <ore:alloyElite>], 
	      [<ore:plateAstral>, <solarflux:solar_panel_6>, <ore:circuitIv>, <solarflux:solar_panel_6>, <ore:plateAstral>], 
	      [<ore:alloyElite>, <ore:circuitIv>, <solarflux:photovoltaic_cell_5>, <ore:circuitIv>, <ore:alloyElite>], 
	      [<ore:plateAstral>, <solarflux:solar_panel_6>, <ore:circuitIv>, <solarflux:solar_panel_6>, <ore:plateAstral>], 
      	[<ore:alloyElite>, <ore:plateAstral>, <ore:alloyElite>, <ore:plateAstral>, <ore:alloyElite>]
      ]);
    //IV
      mods.extendedcrafting.TableCrafting.addShaped(3, <solarflux:solar_panel_8>, [
	      [<ore:plateVoid>, <ore:plateDoubleAstral>, <gregtech:meta_item_1:492>, <buildcraftsilicon:redstone_chipset:4>, <gregtech:meta_item_1:492>, <ore:plateDoubleAstral>, <ore:plateVoid>], 
	      [<ore:plateDoubleAstral>, <gregtech:meta_item_1:101>, <ore:circuitLuv>, <ore:alloyUltimate>, <ore:circuitLuv>, <gregtech:meta_item_1:101>, <ore:plateDoubleAstral>], 
	      [<gregtech:meta_item_1:492>, <ore:circuitLuv>, <solarflux:solar_panel_7>, <gregtech:meta_item_1:604>, <solarflux:solar_panel_7>, <ore:circuitLuv>, <gregtech:meta_item_1:492>], 
	      [<buildcraftsilicon:redstone_chipset:4>, <ore:alloyUltimate>, <gregtech:meta_item_1:604>, <solarflux:photovoltaic_cell_6>, <gregtech:meta_item_1:604>, <ore:alloyUltimate>, <buildcraftsilicon:redstone_chipset:4>], 
	      [<gregtech:meta_item_1:492>, <ore:circuitLuv>, <solarflux:solar_panel_7>, <gregtech:meta_item_1:604>, <solarflux:solar_panel_7>, <ore:circuitLuv>, <gregtech:meta_item_1:492>], 
	      [<ore:plateDoubleAstral>, <gregtech:meta_item_1:101>, <ore:circuitLuv>, <ore:alloyUltimate>, <ore:circuitLuv>, <gregtech:meta_item_1:101>, <ore:plateDoubleAstral>], 
	      [<ore:plateVoid>, <ore:plateDoubleAstral>, <gregtech:meta_item_1:492>, <buildcraftsilicon:redstone_chipset:4>, <gregtech:meta_item_1:492>, <ore:plateDoubleAstral>, <ore:plateVoid>]
      ]);
    //LuV
      mods.extendedcrafting.TableCrafting.addShaped(3, <solarflux:solar_panel_wyvern>, [
	      [<ore:plateDoubleAstral>, <gregtech:meta_item_1:501>, <gregtech:meta_item_1:492>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:501>, <ore:plateDoubleAstral>], 
	      [<gregtech:meta_item_1:501>, <gregtech:meta_item_1:605>, <draconicevolution:draconic_core>, <ore:circuitLuv>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:501>], 
	      [<gregtech:meta_item_1:492>, <draconicevolution:draconic_core>, <ore:circuitZpm>, <solarflux:solar_panel_8>, <ore:circuitZpm>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:492>], 
	      [<ore:plateDoubleDraconium>, <ore:circuitLuv>, <solarflux:solar_panel_8>, <draconicevolution:wyvern_core>, <solarflux:solar_panel_8>, <ore:circuitLuv>, <ore:plateDoubleDraconium>], 
      	[<gregtech:meta_item_1:492>, <draconicevolution:draconic_core>, <ore:circuitZpm>, <solarflux:solar_panel_8>, <ore:circuitZpm>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:492>], 
      	[<gregtech:meta_item_1:501>, <gregtech:meta_item_1:605>, <draconicevolution:draconic_core>, <ore:circuitLuv>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:501>], 
        [<ore:plateDoubleAstral>, <gregtech:meta_item_1:501>, <gregtech:meta_item_1:492>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:501>, <ore:plateDoubleAstral>]
      ]);
    //ZPM
      mods.extendedcrafting.TableCrafting.addShaped(4, <solarflux:solar_panel_draconic>, [
	      [<ore:ingotCrystalMatrix>, <ore:plateDraconiumawakened>, <gregtech:meta_item_1:705>, <gregtech:meta_item_1:492>, <ore:circuitUltimate>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:705>, <ore:plateDraconiumawakened>, <ore:ingotCrystalMatrix>], 
	      [<ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>, <draconicevolution:wyvern_core>, <draconicevolution:draconic_core>, <ore:alloyUltimate>, <draconicevolution:draconic_core>, <draconicevolution:wyvern_core>, <ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>], 
      	[<gregtech:meta_item_1:705>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:606>, <ore:circuitZpm>, <solarflux:solar_panel_wyvern>, <ore:circuitZpm>, <gregtech:meta_item_1:606>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:705>], 
       	[<gregtech:meta_item_1:492>, <draconicevolution:draconic_core>, <ore:circuitZpm>, <ore:circuitUv>, <ore:alloyUltimate>, <ore:circuitUv>, <ore:circuitZpm>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:492>], 
	      [<ore:ingotCrystalMatrix>, <ore:alloyUltimate>, <solarflux:solar_panel_wyvern>, <ore:alloyUltimate>, <draconicevolution:awakened_core>, <ore:alloyUltimate>, <solarflux:solar_panel_wyvern>, <ore:alloyUltimate>, <ore:ingotCrystalMatrix>], 
	      [<gregtech:meta_item_1:492>, <draconicevolution:draconic_core>, <ore:circuitZpm>, <ore:circuitUv>, <ore:alloyUltimate>, <ore:circuitUv>, <ore:circuitZpm>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:492>], 
	      [<gregtech:meta_item_1:705>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:606>, <ore:circuitZpm>, <solarflux:solar_panel_wyvern>, <ore:circuitZpm>, <gregtech:meta_item_1:606>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:705>], 
        [<ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>, <draconicevolution:wyvern_core>, <draconicevolution:draconic_core>, <ore:alloyUltimate>, <draconicevolution:draconic_core>, <draconicevolution:wyvern_core>, <ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>], 
      	[<ore:ingotCrystalMatrix>, <ore:plateDraconiumawakened>, <gregtech:meta_item_1:705>, <gregtech:meta_item_1:492>, <ore:circuitUltimate>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:705>, <ore:plateDraconiumawakened>, <ore:ingotCrystalMatrix>]
      ]);
    //UV
      mods.extendedcrafting.TableCrafting.addShaped(4, <solarflux:solar_panel_chaotic>, [
	      [<ore:ingotCosmicNeutronium>, <gregtech:meta_item_1:208>, <ore:plateAntimatter>, <ore:plateAntimatter>, <gregtech:meta_item_1:104>, <ore:plateAntimatter>, <ore:plateAntimatter>, <gregtech:meta_item_1:208>, <ore:ingotCosmicNeutronium>], 
	      [<gregtech:meta_item_1:208>, <ore:ingotIceDragonsteel>, <ore:circuitUv>, <ore:circuitUv>, <astralsorcery:iteminfusedglass>, <ore:circuitUv>, <ore:circuitUv>, <ore:ingotIceDragonsteel>, <gregtech:meta_item_1:208>], 
      	[<ore:plateAntimatter>, <ore:circuitUv>, <gregtech:meta_item_1:282>, <draconicevolution:draconic_energy_core>, <solarflux:solar_panel_draconic>, <draconicevolution:draconic_energy_core>, <gregtech:meta_item_1:282>, <ore:circuitUv>, <ore:plateAntimatter>], 
      	[<ore:plateAntimatter>, <ore:circuitUv>, <draconicevolution:draconic_energy_core>, <draconicevolution:draconic_energy_core>, <ore:circuitUhv>, <draconicevolution:draconic_energy_core>, <draconicevolution:draconic_energy_core>, <ore:circuitUv>, <ore:plateAntimatter>], 
      	[<gregtech:meta_item_1:104>, <astralsorcery:iteminfusedglass>, <solarflux:solar_panel_draconic>, <ore:circuitUhv>, <draconicevolution:chaotic_core>, <ore:circuitUhv>, <solarflux:solar_panel_draconic>, <astralsorcery:iteminfusedglass>, <gregtech:meta_item_1:104>], 
      	[<ore:plateAntimatter>, <ore:circuitUv>, <draconicevolution:draconic_energy_core>, <draconicevolution:draconic_energy_core>, <ore:circuitUhv>, <draconicevolution:draconic_energy_core>, <draconicevolution:draconic_energy_core>, <ore:circuitUv>, <ore:plateAntimatter>], 
	      [<ore:plateAntimatter>, <ore:circuitUv>, <gregtech:meta_item_1:282>, <draconicevolution:draconic_energy_core>, <solarflux:solar_panel_draconic>, <draconicevolution:draconic_energy_core>, <gregtech:meta_item_1:282>, <ore:circuitUv>, <ore:plateAntimatter>], 
      	[<gregtech:meta_item_1:208>, <ore:ingotIceDragonsteel>, <ore:circuitUv>, <ore:circuitUv>, <astralsorcery:iteminfusedglass>, <ore:circuitUv>, <ore:circuitUv>, <ore:ingotIceDragonsteel>, <gregtech:meta_item_1:208>], 
      	[<ore:ingotCosmicNeutronium>, <gregtech:meta_item_1:208>, <ore:plateAntimatter>, <ore:plateAntimatter>, <gregtech:meta_item_1:104>, <ore:plateAntimatter>, <ore:plateAntimatter>, <gregtech:meta_item_1:208>, <ore:ingotCosmicNeutronium>]
      ]);
    //UHV
      mods.extendedcrafting.TableCrafting.addShaped(4, <solarflux:solar_panel_neutronium>, [
	      [<gregtech:meta_item_1:283>, <ore:circuitUhv>, <ore:circuitUhv>, <ore:blockStellarAlloy>, <ore:blockCosmicNeutronium>, <ore:blockStellarAlloy>, <ore:circuitUhv>, <ore:circuitUhv>, <gregtech:meta_item_1:283>], 
	      [<ore:circuitUhv>, <ore:blockStellarAlloy>, <ore:blockCosmicNeutronium>, <ore:plateNeutronium>, <ore:plateDenseNeutronium>, <ore:plateNeutronium>, <ore:blockCosmicNeutronium>, <ore:blockStellarAlloy>, <ore:circuitUhv>], 
	      [<ore:circuitUhv>, <ore:blockCosmicNeutronium>, <gregtech:meta_item_1:209>, <ore:plateDoubleAntimatter>, <solarflux:solar_panel_chaotic>, <ore:plateDoubleAntimatter>, <gregtech:meta_item_1:209>, <ore:blockCosmicNeutronium>, <ore:circuitUhv>], 
	      [<ore:blockStellarAlloy>, <ore:plateNeutronium>, <ore:plateDoubleAntimatter>, <ore:circuitUev>, <draconicadditions:chaotic_energy_core>, <ore:circuitUev>, <ore:plateDoubleAntimatter>, <ore:plateNeutronium>, <ore:blockStellarAlloy>], 
	      [<ore:blockCosmicNeutronium>, <ore:plateDenseNeutronium>, <solarflux:solar_panel_chaotic>, <draconicadditions:chaotic_energy_core>, <avaritia:resource:5>, <draconicadditions:chaotic_energy_core>, <solarflux:solar_panel_chaotic>, <ore:plateDenseNeutronium>, <ore:blockCosmicNeutronium>], 
	      [<ore:blockStellarAlloy>, <ore:plateNeutronium>, <ore:plateDoubleAntimatter>, <ore:circuitUev>, <draconicadditions:chaotic_energy_core>, <ore:circuitUev>, <ore:plateDoubleAntimatter>, <ore:plateNeutronium>, <ore:blockStellarAlloy>], 
	      [<ore:circuitUhv>, <ore:blockCosmicNeutronium>, <gregtech:meta_item_1:209>, <ore:plateDoubleAntimatter>, <solarflux:solar_panel_chaotic>, <ore:plateDoubleAntimatter>, <gregtech:meta_item_1:209>, <ore:blockCosmicNeutronium>, <ore:circuitUhv>], 
	      [<ore:circuitUhv>, <ore:blockStellarAlloy>, <ore:blockCosmicNeutronium>, <ore:plateNeutronium>, <ore:plateDenseNeutronium>, <ore:plateNeutronium>, <ore:blockCosmicNeutronium>, <ore:blockStellarAlloy>, <ore:circuitUhv>], 
	      [<gregtech:meta_item_1:283>, <ore:circuitUhv>, <ore:circuitUhv>, <ore:blockStellarAlloy>, <ore:blockCosmicNeutronium>, <ore:blockStellarAlloy>, <ore:circuitUhv>, <ore:circuitUhv>, <gregtech:meta_item_1:283>]
      ]);
    //MAX
      mods.extendedcrafting.TableCrafting.addShaped(4, <solarflux:solar_panel_infinity>, [
	      [<extendedcrafting:singularity_ultimate>, <solarflux:solar_panel_chaotic>, <ore:blockCrystalMatrix>, <draconicevolution:chaotic_core>, <ore:blockCosmicNeutronium>, <draconicevolution:chaotic_core>, <ore:blockCrystalMatrix>, <solarflux:solar_panel_chaotic>, <extendedcrafting:singularity_ultimate>], 
	      [<solarflux:solar_panel_chaotic>, <solarflux:solar_panel_chaotic>, <solarflux:solar_panel_neutronium>, <solarflux:solar_panel_neutronium>, <enderio:block_solar_panel:6>, <solarflux:solar_panel_neutronium>, <solarflux:solar_panel_neutronium>, <solarflux:solar_panel_chaotic>, <solarflux:solar_panel_chaotic>], 
      	[<ore:blockCrystalMatrix>, <solarflux:solar_panel_neutronium>, <avaritia:resource:5>, <ore:plateDoubleInfinity>, <eternalsingularity:eternal_singularity>, <ore:plateDoubleInfinity>, <avaritia:resource:5>, <solarflux:solar_panel_neutronium>, <ore:blockCrystalMatrix>], 
	      [<draconicevolution:chaotic_core>, <solarflux:solar_panel_neutronium>, <ore:plateDoubleInfinity>, <ore:ingotInfinity>, <ore:circuitUxv>, <ore:ingotInfinity>, <ore:plateDoubleInfinity>, <solarflux:solar_panel_neutronium>, <draconicevolution:chaotic_core>], 
      	[<ore:blockCosmicNeutronium>, <enderio:block_solar_panel:6>, <eternalsingularity:eternal_singularity>, <ore:circuitUxv>, <ore:plateStrangelet>, <ore:circuitUxv>, <eternalsingularity:eternal_singularity>, <enderio:block_solar_panel:6>, <ore:blockCosmicNeutronium>], 
      	[<draconicevolution:chaotic_core>, <solarflux:solar_panel_neutronium>, <ore:plateDoubleInfinity>, <ore:ingotInfinity>, <ore:circuitUxv>, <ore:ingotInfinity>, <ore:plateDoubleInfinity>, <solarflux:solar_panel_neutronium>, <draconicevolution:chaotic_core>], 
      	[<ore:blockCrystalMatrix>, <solarflux:solar_panel_neutronium>, <avaritia:resource:5>, <ore:plateDoubleInfinity>, <eternalsingularity:eternal_singularity>, <ore:plateDoubleInfinity>, <avaritia:resource:5>, <solarflux:solar_panel_neutronium>, <ore:blockCrystalMatrix>], 
      	[<solarflux:solar_panel_chaotic>, <solarflux:solar_panel_chaotic>, <solarflux:solar_panel_neutronium>, <solarflux:solar_panel_neutronium>, <enderio:block_solar_panel:6>, <solarflux:solar_panel_neutronium>, <solarflux:solar_panel_neutronium>, <solarflux:solar_panel_chaotic>, <solarflux:solar_panel_chaotic>], 
      	[<extendedcrafting:singularity_ultimate>, <solarflux:solar_panel_chaotic>, <ore:blockCrystalMatrix>, <draconicevolution:chaotic_core>, <ore:blockCosmicNeutronium>, <draconicevolution:chaotic_core>, <ore:blockCrystalMatrix>, <solarflux:solar_panel_chaotic>, <extendedcrafting:singularity_ultimate>]
      ]);

print("------SOLARFLUXREBORN_LOADING_END------");

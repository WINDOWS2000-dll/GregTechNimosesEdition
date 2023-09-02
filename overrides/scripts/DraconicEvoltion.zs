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

print("------DRACONIC_EVOLUTION_LOADING_START------");
print("------Fusion Crafting Recipe not here------");
//Remove Recipes
  var array_DracinicEvolution as IItemStack[] = [
    <draconicevolution:draconic_core>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_energy_core>,
    <draconicevolution:draconic_energy_core>,
    <draconicevolution:draconium_chest>,
    <draconicevolution:item_dislocation_inhibitor>,
    <draconicevolution:draconium_chest>,
    <draconicevolution:crystal_binder>,
    <draconicevolution:generator>,
    <draconicevolution:grinder>,
    <draconicevolution:particle_generator>,
    <draconicevolution:particle_generator:2>,
    <draconicevolution:energy_infuser>,
    <draconicevolution:dislocator_receptacle>,
    <draconicevolution:dislocator_pedestal>,
    <draconicevolution:rain_sensor>,
    <draconicevolution:diss_enchanter>,
    <draconicevolution:potentiometer>,
    <draconicevolution:entity_detector>,
    <draconicevolution:entity_detector:1>,
    <draconicevolution:energy_storage_core>,
    <draconicevolution:energy_pylon>,
    <draconicevolution:fusion_crafting_core>,
    <draconicevolution:crafting_injector>,
    <draconicevolution:celestial_manipulator>,
    <draconicevolution:flow_gate>,
    <draconicevolution:flow_gate:8>,
    <draconicevolution:reactor_part>,
    <draconicevolution:reactor_part:1>,
    <draconicevolution:reactor_part:2>,
    <draconicevolution:reactor_part:3>,
    <draconicevolution:reactor_part:4>,
    <draconicevolution:draconium_capacitor>,
    <draconicevolution:draconium_capacitor:1>,
    <draconicevolution:wyvern_pick>,
    <draconicevolution:wyvern_shovel>,
    <draconicevolution:wyvern_axe>,
    <draconicevolution:wyvern_bow>,
    <draconicevolution:wyvern_sword>,
    <draconicevolution:tool_upgrade>,
    <draconicevolution:tool_upgrade:1>,
    <draconicevolution:tool_upgrade:2>,
    <draconicevolution:tool_upgrade:3>,
    <draconicevolution:tool_upgrade:4>,
    <draconicevolution:tool_upgrade:5>,
    <draconicevolution:tool_upgrade:6>,
    <draconicevolution:tool_upgrade:7>,
    <draconicevolution:tool_upgrade:8>,
    <draconicevolution:tool_upgrade:9>,
    <draconicevolution:tool_upgrade:10>,
    <draconicevolution:tool_upgrade:11>,
    <draconicevolution:dislocator>,
    <draconicevolution:energy_crystal>,
    <draconicevolution:energy_crystal:1>,
    <draconicevolution:magnet>,
    <draconicevolution:magnet:1>,
    <draconicevolution:wyvern_helm>,
    <draconicevolution:wyvern_chest>,
    <draconicevolution:wyvern_legs>,
    <draconicevolution:wyvern_boots>,
    <draconicevolution:energy_crystal:6>,
    <draconicevolution:energy_crystal:7>,
    <draconicevolution:energy_crystal:8>
  ];

  for i in array_DracinicEvolution {
    recipes.remove(i);
  }
//ADD Recipe
  //Cores
    //DraconicCore
      mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:draconic_core>, [
	      [null, <ore:plateDraconium>, null, <ore:plateDraconium>, null], 
	      [<ore:plateDraconium>, <ore:circuitIv>, <gregtech:meta_item_1:604>, <ore:circuitIv>, <ore:plateDraconium>], 
	      [null, <ore:alloyElite>, <gregtech:meta_item_1:282>, <ore:alloyElite>, null], 
	      [<ore:plateDraconium>, <ore:circuitIv>, <gregtech:meta_item_1:604>, <ore:circuitIv>, <ore:plateDraconium>], 
	      [null, <ore:plateDraconium>, null, <ore:plateDraconium>, null]
        ]);
    //WyvernCore
      mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:wyvern_core> * 2, [
	      [<ore:stickSamariumMagnetic>, <ore:plateDoubleTungstenCarbide>, <ore:plateDoubleDraconium>, <ore:plateDoubleTungstenCarbide>, <ore:stickSamariumMagnetic>], 
	      [<ore:plateDoubleTungstenCarbide>, <draconicevolution:draconic_core>, <ore:circuitLuv>, <draconicevolution:draconic_core>, <ore:plateDoubleTungstenCarbide>], 
	      [<ore:plateDoubleDraconium>, <ore:circuitLuv>, <gregtech:meta_item_1:282>, <ore:circuitLuv>, <ore:plateDoubleDraconium>], 
	      [<ore:plateDoubleTungstenCarbide>, <draconicevolution:draconic_core>, <ore:circuitLuv>, <draconicevolution:draconic_core>, <ore:plateDoubleTungstenCarbide>], 
	      [<ore:stickSamariumMagnetic>, <ore:plateDoubleTungstenCarbide>, <ore:plateDoubleDraconium>, <ore:plateDoubleTungstenCarbide>, <ore:stickSamariumMagnetic>]
        ]);
    //AwakenedCore
      mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:awakened_core> * 2, [
	      [<ore:plateDoubleVoid>, <ore:plateEuropium>, <ore:plateDraconiumawakened>, <ore:plateDoubleTungstenCarbide>, <ore:plateDraconiumawakened>, <ore:plateEuropium>, <ore:plateDoubleVoid>], 
	      [<ore:plateEuropium>, <ore:plateEuropium>, <ore:circuitZpm>, <draconicevolution:draconic_core>, <ore:circuitZpm>, <ore:plateEuropium>, <ore:plateEuropium>], 
	      [<ore:plateDraconiumawakened>, <ore:circuitZpm>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:282>, <draconicevolution:wyvern_core>, <ore:circuitZpm>, <ore:plateDraconiumawakened>], 
	      [<ore:plateDoubleTungstenCarbide>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:207>, <gregtech:meta_item_1:282>, <draconicevolution:draconic_core>, <ore:plateDoubleTungstenCarbide>], 
	      [<ore:plateDraconiumawakened>, <ore:circuitZpm>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:282>, <draconicevolution:wyvern_core>, <ore:circuitZpm>, <ore:plateDraconiumawakened>], 
	      [<ore:plateEuropium>, <ore:plateEuropium>, <ore:circuitZpm>, <draconicevolution:draconic_core>, <ore:circuitZpm>, <ore:plateEuropium>, <ore:plateEuropium>], 
	      [<ore:plateDoubleVoid>, <ore:plateEuropium>, <ore:plateDraconiumawakened>, <ore:plateDoubleTungstenCarbide>, <ore:plateDraconiumawakened>, <ore:plateEuropium>, <ore:plateDoubleVoid>]
        ]);
    //ChaoticCore
      mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:chaotic_core> * 2, [
	      [<thaumicaugmentation:material:3>, <ore:itemWeatherCrystal>, <ore:plateChaoticmetal>, <gregtech:meta_item_1:751>, <ore:plateAntimatter>, <gregtech:meta_item_1:751>, <ore:plateChaoticmetal>, <ore:itemWeatherCrystal>, <thaumicaugmentation:material:3>], 
	      [<ore:itemWeatherCrystal>, <ore:plateChaoticmetal>, <ore:plateAntimatter>, <gregtech:meta_item_1:599>, <ore:plateAntimatter>, <gregtech:meta_item_1:599>, <ore:plateAntimatter>, <ore:plateChaoticmetal>, <ore:itemWeatherCrystal>], 
	      [<ore:plateChaoticmetal>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:circuitUhv>, <draconicevolution:awakened_core>, <ore:circuitUhv>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:plateChaoticmetal>], 
	      [<gregtech:meta_item_1:751>, <gregtech:meta_item_1:599>, <ore:circuitUhv>, <botania:storage:1>, <ore:plateMithminite>, <botania:storage:1>, <ore:circuitUhv>, <gregtech:meta_item_1:599>, <gregtech:meta_item_1:751>], 
	      [<ore:plateAntimatter>, <ore:plateAntimatter>, <draconicevolution:awakened_core>, <iceandfire:fire_dragon_heart>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}), <iceandfire:ice_dragon_heart>, <draconicevolution:awakened_core>, <ore:plateAntimatter>, <ore:plateAntimatter>], 
	      [<gregtech:meta_item_1:751>, <gregtech:meta_item_1:599>, <ore:circuitUhv>, <botania:storage:1>, <ore:plateMithminite>, <botania:storage:1>, <ore:circuitUhv>, <gregtech:meta_item_1:599>, <gregtech:meta_item_1:751>], 
	      [<ore:plateChaoticmetal>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:circuitUhv>, <draconicevolution:awakened_core>, <ore:circuitUhv>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:plateChaoticmetal>], 
	      [<ore:itemWeatherCrystal>, <ore:plateChaoticmetal>, <ore:plateAntimatter>, <gregtech:meta_item_1:599>, <ore:plateAntimatter>, <gregtech:meta_item_1:599>, <ore:plateAntimatter>, <ore:plateChaoticmetal>, <ore:itemWeatherCrystal>], 
	      [<thaumicaugmentation:material:3>, <ore:itemWeatherCrystal>, <ore:plateChaoticmetal>, <gregtech:meta_item_1:751>, <ore:plateAntimatter>, <gregtech:meta_item_1:751>, <ore:plateChaoticmetal>, <ore:itemWeatherCrystal>, <thaumicaugmentation:material:3>]
        ]);
  //EnergyCore
    //WyvernEnergyCore
      mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:wyvern_energy_core>, [
        [null, <ore:circuitIv>, <gregtech:meta_item_1:605>, <ore:plateNetherStar>, <gregtech:meta_item_1:605>, <ore:circuitIv>, null], 
        [<ore:circuitIv>, <gregtech:meta_item_1:206>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:222>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:206>, <ore:circuitIv>], 
        [<gregtech:meta_item_1:605>, <draconicevolution:wyvern_core>, <ore:circuitLuv>, <gregtech:meta_item_1:102>, <ore:circuitLuv>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:605>], 
        [<ore:plateNetherStar>, <gregtech:meta_item_1:237>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:237>, <ore:plateNetherStar>], 
        [<gregtech:meta_item_1:605>, <draconicevolution:wyvern_core>, <ore:circuitLuv>, <gregtech:meta_item_1:102>, <ore:circuitLuv>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:605>], 
        [<ore:circuitIv>, <gregtech:meta_item_1:206>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:222>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:206>, <ore:circuitIv>], 
        [null, <ore:circuitIv>, <gregtech:meta_item_1:605>, <ore:plateNetherStar>, <gregtech:meta_item_1:605>, <ore:circuitIv>, null]
      ]);
    //DraconicEnergyCore
      mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:draconic_energy_core>, [
        [<enderio:item_capacitor_stellar>, <gregtech:meta_item_1:497>, <extendedcrafting:material:11>, <ore:plateElite>, <mekanism:teleportationcore>, <ore:plateElite>, <extendedcrafting:material:11>, <gregtech:meta_item_1:497>, <enderio:item_capacitor_stellar>], 
        [<gregtech:meta_item_1:497>, <gregtech:meta_item_1:606>, <ore:plateDoubleDraconiumawakened>, <draconicevolution:awakened_core>, <ore:circuitUhv>, <draconicevolution:awakened_core>, <ore:plateDoubleDraconiumawakened>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:497>], 
        [<threng:material:14>, <ore:plateDoubleDraconiumawakened>, <gregtech:meta_item_1:749>, <ore:circuitUv>, <ore:circuitUhv>, <ore:circuitUv>, <gregtech:meta_item_1:749>, <ore:plateDoubleDraconiumawakened>, <threng:material:14>], 
        [<solarflux:photovoltaic_cell_6>, <draconicevolution:awakened_core>, <ore:circuitUv>, <draconicevolution:wyvern_energy_core>, <gregtech:meta_item_1:223>, <draconicevolution:wyvern_energy_core>, <ore:circuitUv>, <draconicevolution:awakened_core>, <solarflux:photovoltaic_cell_6>], 
        [<fluxnetworks:fluxblock>, <ore:circuitUhv>, <ore:circuitUhv>, <gregtech:meta_item_1:223>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:238>, <ore:circuitUhv>, <ore:circuitUhv>, <fluxnetworks:fluxblock>], 
        [<solarflux:photovoltaic_cell_6>, <draconicevolution:awakened_core>, <ore:circuitUv>, <draconicevolution:wyvern_energy_core>, <gregtech:meta_item_1:238>, <draconicevolution:wyvern_energy_core>, <ore:circuitUv>, <draconicevolution:awakened_core>, <solarflux:photovoltaic_cell_6>], 
        [<threng:material:14>, <ore:plateDoubleDraconiumawakened>, <gregtech:meta_item_1:749>, <ore:circuitUv>, <ore:circuitUhv>, <ore:circuitUv>, <gregtech:meta_item_1:749>, <ore:plateDoubleDraconiumawakened>, <threng:material:14>], 
        [<gregtech:meta_item_1:497>, <gregtech:meta_item_1:606>, <ore:plateDoubleDraconiumawakened>, <draconicevolution:awakened_core>, <ore:circuitUhv>, <draconicevolution:awakened_core>, <ore:plateDoubleDraconiumawakened>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:497>], 
        [<enderio:item_capacitor_stellar>, <gregtech:meta_item_1:497>, <extendedcrafting:material:11>, <ore:plateElite>, <mekanism:teleportationcore>, <ore:plateElite>, <extendedcrafting:material:11>, <gregtech:meta_item_1:497>, <enderio:item_capacitor_stellar>]
      ]);
    //ChaoticEnergyCore
      mods.extendedcrafting.TableCrafting.addShaped(4, <draconicadditions:chaotic_energy_core>, [
        [<draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, <ore:blockCrystalMatrix>, <ore:blockCrystalMatrix>, <eternalsingularity:combined_singularity:8>, <ore:blockCrystalMatrix>, <ore:blockCrystalMatrix>, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>], 
        [<draconicevolution:chaos_shard>, <ore:wireGtOctalAntimatter>, <gregtech:meta_item_1:209>, <ore:plateDoubleAntimatter>, <ore:plateDoubleAntimatter>, <ore:plateDoubleAntimatter>, <gregtech:meta_item_1:209>, <ore:wireGtOctalAntimatter>, <draconicevolution:chaos_shard>], 
        [<ore:blockCrystalMatrix>, <gregtech:meta_item_1:209>, <ore:batteryUhv>, <ore:circuitUiv>, <gregtech:meta_item_1:752>, <ore:circuitUiv>, <ore:batteryUhv>, <gregtech:meta_item_1:209>, <ore:blockCrystalMatrix>], 
        [<ore:blockCrystalMatrix>, <ore:plateDoubleAntimatter>, <ore:circuitUiv>, <ore:circuitUxv>, <draconicevolution:chaotic_core>, <ore:circuitUxv>, <ore:circuitUiv>, <ore:plateDoubleAntimatter>, <ore:blockCrystalMatrix>], 
        [<eternalsingularity:combined_singularity:12>, <ore:plateDoubleAntimatter>, <gregtech:meta_item_1:752>, <draconicevolution:chaotic_core>, <extendedcrafting:material:13>, <draconicevolution:chaotic_core>, <gregtech:meta_item_1:752>, <ore:plateDoubleAntimatter>, <eternalsingularity:combined_singularity:14>], 
        [<ore:blockCrystalMatrix>, <ore:plateDoubleAntimatter>, <ore:circuitUiv>, <ore:circuitUxv>, <draconicevolution:chaotic_core>, <ore:circuitUxv>, <ore:circuitUiv>, <ore:plateDoubleAntimatter>, <ore:blockCrystalMatrix>], 
        [<ore:blockCrystalMatrix>, <gregtech:meta_item_1:209>, <ore:batteryUhv>, <ore:circuitUiv>, <gregtech:meta_item_1:752>, <ore:circuitUiv>, <ore:batteryUhv>, <gregtech:meta_item_1:209>, <ore:blockCrystalMatrix>], 
        [<draconicevolution:chaos_shard>, <ore:wireGtOctalAntimatter>, <gregtech:meta_item_1:209>, <ore:plateDoubleAntimatter>, <ore:plateDoubleAntimatter>, <ore:plateDoubleAntimatter>, <gregtech:meta_item_1:209>, <ore:wireGtOctalAntimatter>, <draconicevolution:chaos_shard>], 
        [<draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, <ore:blockCrystalMatrix>, <ore:blockCrystalMatrix>, <eternalsingularity:combined_singularity:13>, <ore:blockCrystalMatrix>, <ore:blockCrystalMatrix>, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>]
      ]);
  //Magnet
    //Draconium
      mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:magnet>, [
        [<gregtech:meta_item_1:101>, <ore:stickSamariumMagnetic>, <ore:stickSamariumMagnetic>, <ore:stickSamariumMagnetic>, <gregtech:meta_item_1:101>], 
        [<ore:stickSamariumMagnetic>, <ore:ingotDraconium>, <ore:ingotDraconium>, <ore:ingotDraconium>, <ore:stickSamariumMagnetic>], 
        [<ore:stickNeodymiumMagnetic>, <ore:stickDraconium>, <ore:stickNeodymiumMagnetic>, <ore:stickDraconium>, <ore:ingotDraconium>], 
        [<ore:stickSamariumMagnetic>, <ore:ingotDraconium>, <ore:ingotDraconium>, <ore:ingotDraconium>, <ore:stickSamariumMagnetic>], 
        [<gregtech:meta_item_1:101>, <ore:stickSamariumMagnetic>, <ore:stickSamariumMagnetic>, <ore:stickSamariumMagnetic>, <gregtech:meta_item_1:101>]
      ]);
    //Awakened Draconium
      mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:magnet:1>, [
        [null, null, null, null, null, null, null, null, null], 
        [null, null, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, null, null], 
        [null, <draconicevolution:magnet>, <ore:ingotDraconiumAwakened>, <ore:ingotDraconiumAwakened>, <ore:ingotDraconiumAwakened>, <ore:ingotDraconiumAwakened>, <ore:ingotDraconiumAwakened>, <draconicevolution:magnet>, null], 
        [<draconicevolution:wyvern_energy_core>, <ore:stickLongDraconium>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:ingotDraconiumAwakened>, <ore:stickLongSamariumMagnetic>], 
        [<gregtech:meta_item_1:103>, <gregtech:meta_item_1:103>, <ore:circuitZpm>, <gregtech:meta_item_1:282>, <ore:circuitZpm>, <gregtech:meta_item_1:282>, <ore:circuitZpm>, <ore:ingotDraconiumAwakened>, <ore:stickLongSamariumMagnetic>], 
        [<draconicevolution:wyvern_energy_core>, <ore:stickLongDraconium>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:ingotDraconiumAwakened>, <ore:stickLongSamariumMagnetic>], 
        [null, <draconicevolution:magnet>, <ore:ingotDraconiumAwakened>, <ore:ingotDraconiumAwakened>, <ore:ingotDraconiumAwakened>, <ore:ingotDraconiumAwakened>, <ore:ingotDraconiumAwakened>, <draconicevolution:magnet>, null], 
        [null, null, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, null, null], 
        [null, null, null, null, null, null, null, null, null]
      ]);
    //Dislocation Nomalization Field Projecter
      mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:item_dislocation_inhibitor>, [
        [<ore:barsIron>, <ore:barsIron>, <ore:plateDraconium>, <ore:barsIron>, <ore:plateDraconium>, <ore:barsIron>, <ore:barsIron>], 
        [<ore:barsIron>, <ore:plateTungstenCarbide>, <gregtech:meta_item_1:101>, <ore:plateDraconium>, <gregtech:meta_item_1:101>, <ore:plateTungstenCarbide>, <ore:barsIron>], 
        [<ore:plateTungstenCarbide>, <gregtech:meta_item_1:101>, <ore:circuitEv>, <draconicevolution:magnet:1>, <ore:circuitEv>, <gregtech:meta_item_1:101>, <ore:plateTungstenCarbide>], 
        [<ore:plateNetherStar>, <ore:circuitEv>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:206>, <ore:circuitEv>, <ore:plateNetherStar>], 
        [<ore:plateTungstenCarbide>, <gregtech:meta_item_1:101>, <ore:circuitEv>, <draconicevolution:magnet:1>, <ore:circuitEv>, <gregtech:meta_item_1:101>, <ore:plateTungstenCarbide>], 
        [<ore:barsIron>, <ore:plateTungstenCarbide>, <gregtech:meta_item_1:101>, <ore:plateDraconium>, <gregtech:meta_item_1:101>, <ore:plateTungstenCarbide>, <ore:barsIron>], 
        [<ore:barsIron>, <ore:barsIron>, <ore:plateDraconium>, <ore:barsIron>, <ore:plateDraconium>, <ore:barsIron>, <ore:barsIron>]
      ]);
  //Materials
    //Awakened Draconium
      fusion_reactor.recipeBuilder()
        .fluidInputs([<liquid:naquadria> * 144, <liquid:draconium> * 144])
        .fluidOutputs(<liquid:draconiumawakened> * 144)
        .property("eu_to_start", 300000000)
        .EUt(49152)
        .duration(20)
        .buildAndRegister();
  //DraconicChest
    mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:draconium_chest>, [
      [<ore:plateNetherStar>, <ore:plateDiamond>, <ore:plateDraconium>, <gregtech:meta_item_1:308>, <ore:plateDraconium>, <ore:plateDiamond>, <ore:plateNetherStar>], 
      [<ore:plateDiamond>, <ore:plateAstral>, <ore:chest>, <gregtech:meta_item_1:605>, <ore:chest>, <ore:plateAstral>, <ore:plateDiamond>], 
      [<ore:plateDraconium>, <ore:chest>, <ore:circuitIv>, <gregtech:meta_item_1:206>, <ore:circuitIv>, <ore:chest>, <ore:plateDraconium>], 
      [<draconicevolution:draconic_core>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:262>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:605>, <draconicevolution:draconic_core>], 
      [<ore:plateDraconium>, <ore:chest>, <ore:circuitIv>, <gregtech:meta_item_1:206>, <ore:circuitIv>, <ore:chest>, <ore:plateDraconium>], 
      [<ore:plateDiamond>, <ore:plateAstral>, <ore:chest>, <gregtech:meta_item_1:605>, <ore:chest>, <ore:plateAstral>, <ore:plateDiamond>], 
      [<ore:plateNetherStar>, <ore:plateDiamond>, <ore:plateDraconium>, <gregtech:machine:84>, <ore:plateDraconium>, <ore:plateDiamond>, <ore:plateNetherStar>]
    ]);
  //Crystal Energy Transmitter System
    //Wrench
      mods.extendedcrafting.TableCrafting.addShaped(1, <draconicevolution:crystal_binder>, [
        [<ore:blockRedstone>, <gregtech:meta_item_1:492>, <ore:netherStar>], 
        [<ore:circuitHv>, <ore:stickDraconium>, <gregtech:meta_item_1:492>], 
        [<gregtech:meta_item_1:492>, <ore:circuitHv>, <ore:blockRedstone>]
      ]);
    //Energy Relay Crystal
      //Basic
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:energy_crystal>, [
          [null, null, <gregtech:meta_item_1:492>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:492>, null, null], 
          [null, null, <ore:netherStar>, <ore:gemExquisiteDiamond>, <ore:netherStar>, null, null], 
          [null, <gregtech:meta_item_1:492>, <ore:plateDoubleDraconium>, <ore:stickLongDraconium>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:492>, null], 
          [null, <gregtech:meta_item_1:492>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:221>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:492>, null], 
          [null, <gregtech:meta_item_1:492>, <ore:plateDoubleDraconium>, <ore:stickLongDraconium>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:492>, null], 
          [null, null, <ore:netherStar>, <ore:gemExquisiteDiamond>, <ore:netherStar>, null, null], 
          [null, null, <gregtech:meta_item_1:492>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:492>, null, null]
        ]);
      //Wyvern
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:energy_crystal:1>, [
          [null, null, <gregtech:meta_item_1:492>, <draconicevolution:energy_crystal>, <gregtech:meta_item_1:492>, null, null], 
          [null, null, <gregtech:meta_item_1:282>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:282>, null, null], 
          [null, <gregtech:meta_item_1:492>, <ore:plateDoubleDraconium>, <ore:stickLongDraconium>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:492>, null], 
          [null, <gregtech:meta_item_1:492>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:222>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:492>, null], 
          [null, <gregtech:meta_item_1:492>, <ore:plateDoubleDraconium>, <ore:stickLongDraconium>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:492>, null], 
          [null, null, <gregtech:meta_item_1:282>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:282>, null, null], 
          [null, null, <gregtech:meta_item_1:492>, <draconicevolution:energy_crystal>, <gregtech:meta_item_1:492>, null, null]
        ]);
      //Draconic
        mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:energy_crystal:2>, [
          [null, null, null, <gregtech:meta_item_1:492>, <ore:stickLongDraconiumawakened>, <gregtech:meta_item_1:492>, null, null, null], 
          [null, null, null, <gregtech:meta_item_1:282>, <ore:stickLongDraconiumawakened>, <gregtech:meta_item_1:282>, null, null, null], 
          [null, null, <gregtech:meta_item_1:492>, <ore:stickDraconiumawakened>, <draconicevolution:energy_crystal:7>, <ore:stickDraconiumawakened>, <gregtech:meta_item_1:492>, null, null], 
          [null, null, <draconicevolution:wyvern_core>, <ore:stickDraconiumawakened>, <gregtech:meta_item_1:222>, <ore:stickDraconiumawakened>, <draconicevolution:wyvern_core>, null, null], 
          [null, null, <ore:plateDraconiumawakened>, <gregtech:meta_item_1:282>, <draconicevolution:awakened_core>, <gregtech:meta_item_1:282>, <ore:plateDraconiumawakened>, null, null], 
          [null, null, <draconicevolution:wyvern_core>, <ore:stickDraconiumawakened>, <gregtech:meta_item_1:222>, <ore:stickDraconiumawakened>, <draconicevolution:wyvern_core>, null, null], 
          [null, null, <gregtech:meta_item_1:492>, <ore:stickDraconiumawakened>, <draconicevolution:energy_crystal:7>, <ore:stickDraconiumawakened>, <gregtech:meta_item_1:492>, null, null], 
          [null, null, null, <gregtech:meta_item_1:282>, <ore:stickLongDraconiumawakened>, <gregtech:meta_item_1:282>, null, null, null], 
          [null, null, null, <gregtech:meta_item_1:492>, <ore:stickLongDraconiumawakened>, <gregtech:meta_item_1:492>, null, null, null]
        ]);
    //Wireless Energy Relay Crystal
      //Basic
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:energy_crystal:6>, [
          [null, null, <ore:stickLongDraconium>, <ore:circuitLuv>, <ore:stickLongDraconium>, null, null], 
          [null, null, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:492>, null, null], 
          [null, <ore:platePlutonium241>, <gregtech:meta_item_1:221>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:221>, <ore:platePlutonium241>, null], 
          [null, <ore:platePlutonium241>, <ore:stickLongDraconium>, <draconicevolution:energy_crystal>, <ore:stickLongDraconium>, <ore:platePlutonium241>, null], 
          [null, <ore:platePlutonium241>, <gregtech:meta_item_1:221>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:221>, <ore:platePlutonium241>, null], 
          [null, null, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:492>, null, null], 
          [null, null, <ore:stickLongDraconium>, <ore:circuitLuv>, <ore:stickLongDraconium>, null, null]
        ]);
      //Wyvern
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:energy_crystal:7>, [
          [null, null, <draconicevolution:wyvern_core>, <ore:circuitZpm>, <draconicevolution:wyvern_core>, null, null], 
          [null, <ore:plateTerrasteel>, <ore:stickLongDraconium>, <gregtech:meta_item_1:207>, <ore:stickLongDraconium>, <ore:plateTerrasteel>, null], 
          [null, <ore:plateTerrasteel>, <gregtech:meta_item_1:222>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:222>, <ore:plateTerrasteel>, null], 
          [null, <gregtech:meta_item_1:492>, <ore:stickLongDraconium>, <draconicevolution:energy_crystal:1>, <ore:stickLongDraconium>, <gregtech:meta_item_1:492>, null], 
          [null, <ore:plateTerrasteel>, <gregtech:meta_item_1:222>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:222>, <ore:plateTerrasteel>, null], 
          [null, <ore:plateTerrasteel>, <ore:stickLongDraconium>, <gregtech:meta_item_1:207>, <ore:stickLongDraconium>, <ore:plateTerrasteel>, null], 
          [null, null, <draconicevolution:wyvern_core>, <ore:circuitZpm>, <draconicevolution:wyvern_core>, null, null]
        ]);
      //Draconic
        mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:energy_crystal:8>, [
          [null, null, null, <ore:stickLongDraconiumawakened>, <gregtech:meta_item_1:492>, <ore:stickLongDraconiumawakened>, null, null, null], 
          [null, null, null, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:492>, null, null, null], 
          [null, null, <ore:plateDoubleTerrasteel>, <gregtech:meta_item_1:223>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:223>, <ore:plateDoubleTerrasteel>, null, null], 
          [null, null, <ore:plateDoubleTerrasteel>, <gregtech:meta_item_1:282>, <draconicevolution:wyvern_energy_core>, <gregtech:meta_item_1:282>, <ore:plateDoubleTerrasteel>, null, null], 
          [null, null, <ore:plateDoubleOsmiridium>, <ore:stickLongDraconiumawakened>, <draconicevolution:energy_crystal:2>, <ore:stickLongDraconiumawakened>, <ore:plateDoubleOsmiridium>, null, null], 
          [null, null, <ore:plateDoubleTerrasteel>, <gregtech:meta_item_1:282>, <draconicevolution:wyvern_energy_core>, <gregtech:meta_item_1:282>, <ore:plateDoubleTerrasteel>, null, null], 
          [null, null, <ore:plateDoubleTerrasteel>, <gregtech:meta_item_1:223>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:223>, <ore:plateDoubleTerrasteel>, null, null], 
          [null, null, null, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:492>, null, null, null], 
          [null, null, null, <ore:stickLongDraconiumawakened>, <gregtech:meta_item_1:492>, <ore:stickLongDraconiumawakened>, null, null, null]
        ]);
  //Generator
      mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:generator>, [
        [<gregtech:meta_item_1:501>, <ore:plateTitanium>, <ore:plateDoubleTitanium>, <ore:plateTitanium>, <gregtech:meta_item_1:501>], 
        [<gregtech:meta_item_1:501>, <gregtech:meta_item_1:100>, <gregtech:meta_item_1:131>, <gregtech:meta_item_1:100>, <gregtech:meta_item_1:501>], 
        [<gregtech:meta_item_1:501>, <ore:circuitHv>, <ore:craftingFurnace>, <ore:circuitHv>, <gregtech:meta_item_1:501>], 
        [<gregtech:meta_item_1:501>, <gregtech:meta_item_1:100>, <gregtech:meta_item_1:131>, <gregtech:meta_item_1:100>, <gregtech:meta_item_1:501>], 
        [<gregtech:meta_item_1:501>, <ore:plateTitanium>, <ore:plateDoubleTitanium>, <ore:plateTitanium>, <gregtech:meta_item_1:501>]
      ]);
  //Killer
      mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:grinder>, [
        [null, <ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>, null], 
        [<ore:stickLongVoid>, <gregtech:meta_item_1:463>, <ore:stickDraconium>, <gregtech:meta_item_1:463>, <ore:stickLongVoid>], 
        [<ore:stickDraconium>, <ore:circuitIv>, <gregtech:machine:990>, <ore:circuitIv>, <ore:stickDraconium>], 
        [<ore:stickLongVoid>, <gregtech:meta_item_1:463>, <ore:stickDraconium>, <gregtech:meta_item_1:463>, <ore:stickLongVoid>], 
        [null, <ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>, null]
      ]);
  //Particle Projecter
      mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:particle_generator>, [
        [<ore:stickDraconium>, <ore:rodBlaze>, <ore:stickDiamond>, <ore:stickDraconium>, <ore:rodBlaze>], 
        [<ore:rodBlaze>, <ore:stickRedAlloy>, <ore:stickDiamond>, <ore:rodBlaze>, <ore:stickRedAlloy>], 
        [<ore:stickDiamond>, <ore:stickDiamond>, <gregtech:meta_item_1:205>, <ore:stickDiamond>, <ore:stickDiamond>], 
        [<ore:stickDraconium>, <ore:rodBlaze>, <ore:stickDiamond>, <ore:stickDraconium>, <ore:rodBlaze>], 
        [<ore:rodBlaze>, <ore:stickRedAlloy>, <ore:stickDiamond>, <ore:rodBlaze>, <ore:stickRedAlloy>]
      ]);
  //THE ENERGY CORE
    //ENERGY CORE STABILIZER
      mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:particle_generator:2>, [
        [<ore:stickLongDraconium>, <draconicevolution:particle_generator>, <ore:rodBlaze>, <ore:stickNaquadria>, <ore:stickNaquadria>, <draconicevolution:particle_generator>, <ore:rodBlaze>], 
        [<ore:stickLongDraconium>, <ore:rodBlaze>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickNaquadria>, <ore:rodBlaze>, <ore:stickLongDraconium>], 
        [<ore:rodBlaze>, <ore:stickDiamond>, <ore:stickDraconiumawakened>, <draconicevolution:particle_generator>, <ore:rodBlaze>, <ore:stickDiamond>, <ore:stickLongDraconium>], 
        [<draconicevolution:particle_generator>, <ore:stickDiamond>, <ore:stickGaia>, <ore:stickLongDraconiumawakened>, <ore:stickGaia>, <ore:stickDiamond>, <draconicevolution:particle_generator>], 
        [<ore:stickLongDraconium>, <ore:stickDiamond>, <ore:rodBlaze>, <draconicevolution:particle_generator>, <ore:stickDraconiumawakened>, <ore:stickDiamond>, <ore:rodBlaze>], 
        [<ore:stickLongDraconium>, <ore:rodBlaze>, <ore:stickNaquadria>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:rodBlaze>, <ore:stickLongDraconium>], 
        [<ore:rodBlaze>, <draconicevolution:particle_generator>, <ore:stickNaquadria>, <ore:stickNaquadria>, <ore:rodBlaze>, <draconicevolution:particle_generator>, <ore:stickLongDraconium>]
      ]);
    //THE ENERGY CORE
      mmRecipe("The_Draconic_Energy_Core", "Large_Assembly_Line", 2400) //RecipeName UseMachine RecipeTick
        .addEnergyPerTickInput(4000000)//EnergyInput
        .addItemInput(<draconicevolution:wyvern_energy_core> * 8)//1
        .addItemInput(<draconicevolution:awakened_core> * 4)//2
        .addItemInput(<gregtech:meta_plate:32007> * 64)//3
        .addItemInput(<gregtech:meta_plate:32008> * 16)//4
        .addItemInput(<gregtech:meta_item_1:497> * 64)//5
        .addItemInput(<gregtech:meta_item_1:643> * 8)//6
        .addItemInput(<gregtech:meta_item_1:208> * 4)//7
        .addItemInput(<gregtech:meta_item_1:606> * 48)//8
        .addItemInput(<gregtech:meta_item_1:749> * 32)//9
        .addItemInput(<gregtech:meta_item_1:237> * 32)//10
        .addItemInput(<gregtech:meta_item_1:222> * 32)//11
        .addItemInput(<avaritia:singularity:3> * 2)//12
        .addItemInput(<draconicevolution:chaos_shard>)//13
        .addItemInput(<extendedcrafting:material:12> * 64)//14
        .addItemInput(<extendedcrafting:material:11> * 48)//15
        .addItemInput(<mekanism:atomicalloy> * 64)//16
        .addItemInput(<gregtech:meta_block_frame_8> * 4)//17
        .addFluidInput(<liquid:redstone> * 128000)//1
        .addFluidInput(<liquid:plasma.helium> * 12500)//2
        .addItemOutput(<draconicevolution:energy_storage_core>)//OutPutItem
        .build();//BuildRecipe
    //ENERGY PYLON
      mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:energy_pylon>, [
        [<ore:gemExquisiteDiamond>, <draconicevolution:energy_crystal:1>, <ore:gemExquisiteDiamond>, <astralsorcery:blockcelestialcollectorcrystal>.withTag({astralsorcery: {collectorType: 1}}), <ore:gemExquisiteDiamond>, <draconicevolution:energy_crystal:1>, <ore:gemExquisiteDiamond>], 
        [<draconicevolution:energy_crystal:1>, <botania:pylon:1>, <ore:laserXenon>, <draconicevolution:wyvern_energy_core>, <ore:laserXenon>, <botania:pylon:1>, <draconicevolution:energy_crystal:1>], 
        [<ore:ingotEvilMetal>, <ore:stickDraconium>, <gregtech:meta_item_1:237>, <gregtech:meta_item_1:222>, <gregtech:meta_item_1:237>, <ore:stickDraconium>, <ore:ingotEvilMetal>], 
        [<ore:ingotIceDragonsteel>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:207>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:606>, <ore:ingotIceDragonsteel>], 
        [<ore:alloyUltimate>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:103>, <ore:circuitZpm>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:606>, <ore:alloyUltimate>], 
        [<ore:alloyUltimate>, <ore:wireGtQuadrupleTerrasteel>, <gregtech:meta_item_1:606>, <ore:wireGtQuadrupleTerrasteel>, <gregtech:meta_item_1:606>, <ore:wireGtQuadrupleTerrasteel>, <ore:alloyUltimate>], 
        [<ore:circuitUltimate>, <ore:alloyUltimate>, <ore:alloyUltimate>, <ore:ingotCalifornium251Base>, <ore:alloyUltimate>, <ore:alloyUltimate>, <ore:circuitUltimate>]
      ]);
  //Energy Infuser
    mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:energy_infuser>, [
      [<draconicevolution:draconic_core>, <ore:plateDraconium>, <gregtech:meta_item_1:492>, <ore:wireGtHexSignalum>, <ore:stickLongDraconium>, <ore:wireGtHexSignalum>, <gregtech:meta_item_1:492>, <ore:plateDraconium>, <draconicevolution:draconic_core>], 
      [<ore:plateDraconium>, <gregtech:meta_item_1:492>, <ore:alloyUltimate>, <ore:alloyUltimate>, <ore:stickLongDraconium>, <ore:alloyUltimate>, <ore:alloyUltimate>, <gregtech:meta_item_1:492>, <ore:plateDraconium>], 
      [<gregtech:meta_item_1:492>, <ore:stickLongDraconium>, <ore:circuitLuv>, <gregtech:meta_item_1:605>, <ore:laserRadon>, <gregtech:meta_item_1:605>, <ore:circuitLuv>, <ore:stickLongDraconium>, <gregtech:meta_item_1:492>], 
      [<ore:wireGtHexSignalum>, <gregtech:meta_item_1:102>, <ore:stickLongDraconium>, <draconicevolution:draconic_core>, <draconicevolution:wyvern_core>, <draconicevolution:draconic_core>, <ore:stickLongDraconium>, <gregtech:meta_item_1:102>, <ore:wireGtHexSignalum>], 
      [<ore:stickLongDraconium>, <ore:stickLongDraconium>, <ore:laserRadon>, <draconicevolution:wyvern_core>, <draconicevolution:wyvern_energy_core>, <draconicevolution:wyvern_core>, <ore:laserRadon>, <ore:stickLongDraconium>, <ore:stickLongDraconium>], 
      [<ore:wireGtHexSignalum>, <gregtech:meta_item_1:102>, <ore:stickLongDraconium>, <draconicevolution:draconic_core>, <draconicevolution:wyvern_core>, <draconicevolution:draconic_core>, <ore:stickLongDraconium>, <gregtech:meta_item_1:102>, <ore:wireGtHexSignalum>], 
      [<gregtech:meta_item_1:492>, <ore:stickLongDraconium>, <ore:circuitLuv>, <gregtech:meta_item_1:605>, <ore:laserRadon>, <gregtech:meta_item_1:605>, <ore:circuitLuv>, <ore:stickLongDraconium>, <gregtech:meta_item_1:492>], 
      [<ore:plateDraconium>, <gregtech:meta_item_1:492>, <ore:alloyUltimate>, <ore:alloyUltimate>, <ore:stickLongDraconium>, <ore:alloyUltimate>, <ore:alloyUltimate>, <gregtech:meta_item_1:492>, <ore:plateDraconium>], 
      [<draconicevolution:draconic_core>, <ore:plateDraconium>, <gregtech:meta_item_1:492>, <ore:wireGtHexSignalum>, <ore:stickLongDraconium>, <ore:wireGtHexSignalum>, <gregtech:meta_item_1:492>, <ore:plateDraconium>, <draconicevolution:draconic_core>]
    ]);
  //Teleportaion Gate Core
    mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:dislocator_receptacle>, [
      [<gregtech:meta_item_1:282>, <draconicevolution:wyvern_core>, <ore:stickDraconiumawakened>, <gregtech:meta_item_1:501>, <gregtech:meta_item_1:501>, <gregtech:meta_item_1:501>, <ore:stickDraconiumawakened>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:282>], 
      [<draconicevolution:wyvern_core>, <ore:alloyUltimate>, <ore:stickDraconiumawakened>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:206>, <ore:plateDoubleDraconium>, <ore:stickDraconiumawakened>, <ore:alloyUltimate>, <draconicevolution:wyvern_core>], 
      [<ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:frameGtEuropium>, <ore:circuitZpm>, <ore:circuitZpm>, <ore:circuitZpm>, <ore:frameGtEuropium>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>], 
      [<gregtech:meta_item_1:501>, <ore:plateDoubleDraconium>, <ore:circuitZpm>, <gregtech:meta_item_1:207>, <gregtech:meta_item_1:237>, <gregtech:meta_item_1:207>, <ore:circuitZpm>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:501>], 
      [<gregtech:meta_item_1:501>, <gregtech:meta_item_1:206>, <ore:circuitZpm>, <gregtech:meta_item_1:222>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:222>, <ore:circuitZpm>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:501>], 
      [<gregtech:meta_item_1:501>, <ore:plateDoubleDraconium>, <ore:circuitZpm>, <gregtech:meta_item_1:207>, <gregtech:meta_item_1:237>, <gregtech:meta_item_1:207>, <ore:circuitZpm>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:501>], 
      [<ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:frameGtEuropium>, <ore:circuitZpm>, <ore:circuitZpm>, <ore:circuitZpm>, <ore:frameGtEuropium>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>], 
      [<draconicevolution:wyvern_core>, <ore:alloyUltimate>, <ore:stickDraconiumawakened>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:206>, <ore:plateDoubleDraconium>, <ore:stickDraconiumawakened>, <ore:alloyUltimate>, <draconicevolution:wyvern_core>], 
      [<gregtech:meta_item_1:282>, <draconicevolution:wyvern_core>, <ore:stickDraconiumawakened>, <gregtech:meta_item_1:501>, <gregtech:meta_item_1:501>, <gregtech:meta_item_1:501>, <ore:stickDraconiumawakened>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:282>]
    ]);
  //Diclocator Pedestal
    mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:dislocator_pedestal>, [
      [null, <ore:stoneConcrete>, null, <ore:stoneConcrete>, null], 
      [null, <ore:stickDiamond>, <ore:stoneConcrete>, <ore:stickDiamond>, null], 
      [<gregtech:meta_item_1:501>, <ore:stickDiamond>, <ore:stickDraconium>, <ore:stickDiamond>, <gregtech:meta_item_1:501>], 
      [<gregtech:meta_item_1:501>, <ore:stickDiamond>, <ore:stoneConcrete>, <ore:stickDiamond>, <gregtech:meta_item_1:501>], 
      [<ore:stoneConcrete>, <ore:stoneConcrete>, <ore:stoneConcrete>, <ore:stoneConcrete>, <ore:stoneConcrete>]
    ]);
  //Rain Sensor
    mods.extendedcrafting.TableCrafting.addShaped(1, <draconicevolution:rain_sensor>, [
      [null, <gregtech:meta_item_1:232>, null], 
      [<ore:circuitMv>, <minecraft:daylight_detector>, <ore:circuitMv>], 
      [<ore:stoneConcrete>, <ore:stoneConcrete>, <ore:stoneConcrete>]
    ]);
  //DisEnchanter
    mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:diss_enchanter>, [
      [null, null, null, null, null], 
      [null, <ore:plateDraconium>, <ore:circuitHv>, <ore:plateDraconium>, null], 
      [null, <ore:circuitHv>, <minecraft:enchanting_table>, <ore:circuitHv>, null], 
      [<ore:plateAstral>, <ore:circuitEv>, <ore:circuitHv>, <ore:circuitEv>, <ore:plateAstral>], 
      [null, <ore:plateManasteel>, <ore:plateDoubleThaumium>, <ore:plateManasteel>, null]
    ]);
  //Potentiometer
    mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:potentiometer>, [
      [<ore:torchRedstoneActive>, <ore:alloyBasic>, <ore:alloyBasic>, <ore:alloyBasic>, <ore:torchRedstoneActive>], 
      [<ore:alloyBasic>, <minecraft:repeater>, <projectred-core:resource_item:11>, <minecraft:repeater>, <ore:alloyBasic>], 
      [<ore:alloyBasic>, <minecraft:comparator>, <ore:alloyBasic>, <minecraft:comparator>, <ore:alloyBasic>], 
      [<ore:alloyBasic>, <minecraft:repeater>, <projectred-core:resource_item:10>, <minecraft:repeater>, <ore:alloyBasic>], 
      [<ore:torchRedstoneActive>, <ore:alloyBasic>, <ore:alloyBasic>, <ore:alloyBasic>, <ore:torchRedstoneActive>]
    ]);
  //Entity Detector
    mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:entity_detector>, [
      [<ore:alloyBasic>, <minecraft:repeater>, <minecraft:comparator>, <minecraft:repeater>, <ore:alloyBasic>], 
      [<ore:torchRedstoneActive>, <ore:rodBlaze>, <gregtech:meta_item_1:234>, <ore:rodBlaze>, <ore:torchRedstoneActive>], 
      [<ore:plateManasteel>, <gregtech:meta_item_1:234>, <ore:gemEnderEye>, <gregtech:meta_item_1:234>, <ore:plateManasteel>], 
      [<ore:plateStainlessSteel>, <ore:circuitEv>, <gregtech:meta_item_1:234>, <ore:circuitEv>, <ore:plateStainlessSteel>], 
      [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateThaumium>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]
    ]);
  //Advanced Entity Detector
    mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:entity_detector:1>, [
      [<projectred-core:resource_item:11>, <gregtech:meta_item_1:302>, <projectred-core:resource_item:12>, <gregtech:meta_item_1:302>, <projectred-core:resource_item:10>], 
      [<ore:plateTitaniumCarbide>, <ore:circuitIv>, <gregtech:meta_item_1:235>, <ore:circuitIv>, <ore:plateTitaniumCarbide>], 
      [<ore:plateAstral>, <ore:itemSkull>, <draconicevolution:entity_detector>, <ore:itemSkull>, <ore:plateAstral>], 
      [<ore:plateTitaniumCarbide>, <ore:circuitIv>, <gregtech:meta_item_1:235>, <ore:circuitIv>, <ore:plateTitaniumCarbide>], 
      [<ore:plateTitaniumCarbide>, <ore:plateTitaniumCarbide>, <minecraft:repeater>, <ore:plateTitaniumCarbide>, <ore:plateTitaniumCarbide>]
    ]);
  //Fusion Crafting
    //Fusion Crafting Core
      mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:fusion_crafting_core>, [
        [<botania:storage:1>, <ore:circuitUltimate>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:infusion_matrix>, <astralsorcery:itemcraftingcomponent:4>, <ore:circuitUltimate>, <botania:storage:1>], 
        [<ore:circuitUltimate>, <ore:circuitZpm>, <extendedcrafting:material:11>, <draconicevolution:wyvern_energy_core>, <extendedcrafting:material:11>, <ore:circuitZpm>, <ore:circuitUltimate>], 
        [<appliedenergistics2:material:43>, <extendedcrafting:material:11>, <gregtech:meta_item_1:206>, <ore:wireGtQuadrupleTerrasteel>, <gregtech:meta_item_1:206>, <extendedcrafting:material:11>, <appliedenergistics2:material:43>], 
        [<draconicevolution:wyvern_core>, <draconicevolution:wyvern_energy_core>, <ore:wireGtQuadrupleTerrasteel>, <ore:frameGtTerrasteel>, <ore:wireGtQuadrupleTerrasteel>, <draconicevolution:wyvern_energy_core>, <draconicevolution:wyvern_core>], 
        [<appliedenergistics2:material:43>, <extendedcrafting:material:11>, <gregtech:meta_item_1:206>, <ore:wireGtQuadrupleTerrasteel>, <gregtech:meta_item_1:206>, <extendedcrafting:material:11>, <appliedenergistics2:material:43>], 
        [<ore:circuitUltimate>, <ore:circuitZpm>, <extendedcrafting:material:11>, <draconicevolution:wyvern_energy_core>, <extendedcrafting:material:11>, <ore:circuitZpm>, <ore:circuitUltimate>], 
        [<botania:storage:1>, <ore:circuitUltimate>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:infusion_matrix>, <astralsorcery:itemcraftingcomponent:4>, <ore:circuitUltimate>, <botania:storage:1>]
      ]);
    //Fusion Crafting Injector
      //Basic
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:crafting_injector>, [
          [<ore:ingotCrystalMatrix>, <ore:plateDraconium>, <draconicevolution:draconic_core>, <ore:plateDraconium>, <ore:ingotCrystalMatrix>], 
          [<ore:plateDraconium>, <gregtech:meta_item_1:206>, <ore:circuitZpm>, <gregtech:meta_item_1:206>, <ore:plateDraconium>], 
          [<draconicevolution:draconic_core>, <ore:circuitZpm>, <draconicevolution:wyvern_energy_core>, <ore:circuitZpm>, <draconicevolution:draconic_core>], 
          [<ore:plateDraconium>, <gregtech:meta_item_1:206>, <ore:circuitZpm>, <gregtech:meta_item_1:206>, <ore:plateDraconium>], 
          [<ore:ingotCrystalMatrix>, <ore:plateDraconium>, <draconicevolution:draconic_core>, <ore:plateDraconium>, <ore:ingotCrystalMatrix>]
        ]);
      //Wyvern
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:crafting_injector:1>, [
          [<mekanism:teleportationcore>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <threng:material:14>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <mekanism:teleportationcore>], 
          [<ore:ingotCrystalMatrix>, <extendedcrafting:material:11>, <gregtech:meta_item_1:223>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:223>, <extendedcrafting:material:11>, <ore:ingotCrystalMatrix>], 
          [<ore:ingotCrystalMatrix>, <gregtech:meta_item_1:223>, <gregtech:fusion_casing:1>, <gregtech:meta_item_1:208>, <gregtech:fusion_casing:1>, <gregtech:meta_item_1:223>, <ore:ingotCrystalMatrix>], 
          [<threng:material:14>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:208>, <draconicevolution:wyvern_energy_core>, <gregtech:meta_item_1:208>, <draconicevolution:wyvern_core>, <threng:material:14>], 
          [<ore:ingotCrystalMatrix>, <gregtech:meta_item_1:223>, <gregtech:fusion_casing:1>, <gregtech:meta_item_1:208>, <gregtech:fusion_casing:1>, <gregtech:meta_item_1:223>, <ore:ingotCrystalMatrix>], 
          [<ore:ingotCrystalMatrix>, <extendedcrafting:material:11>, <gregtech:meta_item_1:223>, <draconicevolution:wyvern_core>, <gregtech:meta_item_1:223>, <extendedcrafting:material:11>, <ore:ingotCrystalMatrix>], 
          [<mekanism:teleportationcore>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <threng:material:14>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <mekanism:teleportationcore>]
        ]);
      //Draconic
        assline.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:283> * 4,
            <gregtech:meta_item_1:209> * 4,
            <gregtech:meta_item_1:208> * 16,
            <gregtech:meta_item_1:224> * 16,
            <gregtech:meta_item_1:239> * 16,
            <gregtech:meta_item_1:599> * 16,
            <gregtech:meta_item_1:606> * 64,
            <ore:circuitUev> * 4,
            <ore:circuitUhv> * 16,
            <ore:circuitUv> * 64,
            <gregtech:meta_laser:21001> * 48,
            <draconicevolution:draconic_energy_core> * 8,
            <draconicevolution:awakened_core> * 32,
            <gregtech:wire_coil:7> * 16,
            <gregtech:fusion_casing:1> * 16,
            <ore:blockDraconiumAwakened> * 16
          ])
          .outputs([<draconicevolution:crafting_injector:2> * 4])
          .fluidInputs([
            <liquid:redstone> * 1440000,
            <liquid:plasma.nitrogen> * 25000,
            <liquid:xenon> * 200000,
            <liquid:naquadah> * 5760
          ])
          .EUt(1000000)
          .duration(4800)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Chaotic
        //GregTechNimosesEdition/Config/modularmachinary/recipes/ChaoticInfuser.json
  //Celestial ManiPulator
    mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:celestial_manipulator>, [
      [<draconicevolution:wyvern_core>, <ore:plateNetherStar>, <ore:plateNetherStar>, <ore:stickLongDraconium>, <ore:plateNetherStar>, <ore:plateNetherStar>, <draconicevolution:wyvern_core>], 
      [<ore:plateNetherStar>, <draconicevolution:wyvern_core>, <randomthings:eclipsedclock>, <minecraft:end_crystal>, <randomthings:eclipsedclock>, <draconicevolution:wyvern_core>, <ore:plateNetherStar>], 
      [<ore:plateNetherStar>, <randomthings:eclipsedclock>, <ore:stickLongDraconium>, <ore:circuitLuv>, <ore:stickLongDraconium>, <randomthings:eclipsedclock>, <ore:plateNetherStar>], 
      [<ore:stickLongDraconium>, <minecraft:end_crystal>, <ore:circuitLuv>, <ore:dragonEgg>, <ore:circuitLuv>, <minecraft:end_crystal>, <ore:stickLongDraconium>], 
      [<ore:plateNetherStar>, <randomthings:eclipsedclock>, <ore:stickLongDraconium>, <ore:circuitLuv>, <ore:stickLongDraconium>, <randomthings:eclipsedclock>, <ore:plateNetherStar>], 
      [<ore:plateNetherStar>, <draconicevolution:wyvern_core>, <randomthings:eclipsedclock>, <minecraft:end_crystal>, <randomthings:eclipsedclock>, <draconicevolution:wyvern_core>, <ore:plateNetherStar>], 
      [<draconicevolution:wyvern_core>, <ore:plateNetherStar>, <ore:plateNetherStar>, <ore:stickLongDraconium>, <ore:plateNetherStar>, <ore:plateNetherStar>, <draconicevolution:wyvern_core>]
    ]);
  /*
    ブーンだ！
　　／⌒ヽ
二（　＾ω＾）二⊃ 　　　　　　　　　／⌒ヽ ﾌﾞｰﾝ
　　|　　　 / 　／⌒ヽ ﾌﾞｰﾝ 　二（　＾ω＾）二⊃
　 （　ヽノ 二（　＾ω＾）／⌒ヽﾌﾞｰﾝ 　　 /
　 ﾉ>ノ 　 　　⊂二二二（　＾ω＾）二⊃ ヽノ　　　　／⌒ヽ ﾌﾞｰﾝ
　レﾚ 　　　　　|　　　 / 　　ﾉ>ノ　 　　　　⊂二（　＾ω＾）二⊃
　　　　　　 ﾉ ／⌒ヽ ﾌﾞｰﾝ 　 　　　レﾚ　　　　　|　　　 /
　　⊂二二二（　＾ω＾）二⊃ 　／⌒ヽ ﾌﾞｰﾝ 　　　（　ヽノ
　　　　　　|　　　 / ﾚ 　二（　＾ω＾）二⊃　　　ﾉ>ノ
　　　　 　（　ヽノ 　　　　　|　　　 /　　　　　レﾚ
　　　　　　 ﾉ>ノ　 　　　　 （　ヽノ
　　　　 三　レﾚ 　　　　　　 ﾉ>ノ
　　　　　　　　　　　　三　　レﾚ
  */
  //Flux Gate
    mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:flow_gate>, [
      [<ore:plateDoubleDraconium>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>], 
      [<ore:plateDoubleDraconium>, <ore:circuitUhv>, <ore:plateTerrasteel>, <ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:plateDraconiumawakened>], 
      [<ore:plateDoubleDraconium>, <ore:circuitUhv>, <gregtech:meta_item_1:104>, <gregtech:wire_coil:7>, <gregtech:wire_coil:7>, <gregtech:fusion_casing:1>, <gregtech:fusion_casing:1>, <gregtech:fusion_casing:1>, <gregtech:wire_coil:7>], 
      [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:224>, <gregtech:meta_item_1:208>, <ore:laserNaquadriaTetratrinite>, <gregtech:meta_item_1:208>, <ore:laserNaquadriaTetratrinite>], 
      [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:224>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>], 
      [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:224>, <gregtech:meta_item_1:208>, <ore:laserNaquadriaTetratrinite>, <gregtech:meta_item_1:208>, <ore:laserNaquadriaTetratrinite>], 
      [<ore:plateDoubleDraconium>, <ore:circuitUhv>, <gregtech:meta_item_1:104>, <gregtech:wire_coil:7>, <gregtech:wire_coil:7>, <gregtech:fusion_casing:1>, <gregtech:fusion_casing:1>, <gregtech:fusion_casing:1>, <gregtech:wire_coil:7>], 
      [<ore:plateDoubleDraconium>, <ore:circuitUhv>, <ore:plateTerrasteel>, <ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:plateDraconiumawakened>], 
      [<ore:plateDoubleDraconium>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>]
    ]);
  //Fluid Gate
    mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:flow_gate:8>, [
      [<ore:plateDoubleDraconium>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>], 
      [<ore:plateDoubleDraconium>, <ore:circuitUhv>, <ore:plateTerrasteel>, <ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:plateDraconiumawakened>], 
      [<ore:plateDoubleDraconium>, <ore:circuitUhv>, <gregtech:meta_item_1:104>, <gregtech:wire_coil:7>, <gregtech:wire_coil:7>, <ore:pipeLargeFluidNeutronium>, <ore:pipeLargeFluidNeutronium>, <ore:pipeLargeFluidNeutronium>, <gregtech:wire_coil:7>], 
      [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:599>, <gregtech:meta_item_1:599>, <gregtech:meta_item_1:149>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:254>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:254>], 
      [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:599>, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:149>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>], 
      [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:599>, <gregtech:meta_item_1:599>, <gregtech:meta_item_1:149>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:254>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:254>], 
      [<ore:plateDoubleDraconium>, <ore:circuitUhv>, <gregtech:meta_item_1:104>, <gregtech:wire_coil:7>, <gregtech:wire_coil:7>, <ore:pipeLargeFluidNeutronium>, <ore:pipeLargeFluidNeutronium>, <ore:pipeLargeFluidNeutronium>, <gregtech:wire_coil:7>], 
      [<ore:plateDoubleDraconium>, <ore:circuitUhv>, <ore:plateTerrasteel>, <ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:plateDraconiumawakened>], 
      [<ore:plateDoubleDraconium>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <ore:plateTerrasteel>]
    ]);
  //Draconic Reactor
    //Reactor Stabilizer
      //Frame
        mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:reactor_part>, [
          [<ore:frameGtDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:frameGtDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:frameGtDraconiumawakened>], 
          [<ore:stickDraconiumawakened>, <ore:plateElite>, <ore:plateElite>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:208>, <ore:plateElite>, <ore:plateElite>, <ore:stickDraconiumawakened>], 
          [<ore:stickDraconiumawakened>, <ore:plateElite>, <gregtech:meta_item_1:104>, <ore:circuitUv>, <draconicevolution:draconic_energy_core>, <ore:circuitUv>, <gregtech:meta_item_1:104>, <ore:plateElite>, <ore:stickDraconiumawakened>], 
          [<ore:stickDraconiumawakened>, <gregtech:meta_item_1:208>, <ore:circuitUv>, <gregtech:meta_item_1:497>, <gregtech:meta_item_1:497>, <gregtech:meta_item_1:497>, <ore:circuitUv>, <gregtech:meta_item_1:208>, <ore:stickDraconiumawakened>], 
          [<ore:frameGtDraconiumawakened>, <gregtech:meta_item_1:239>, <draconicevolution:draconic_energy_core>, <gregtech:meta_item_1:497>, <gregtech:meta_item_1:497>, <gregtech:meta_item_1:497>, <draconicevolution:draconic_energy_core>, <gregtech:meta_item_1:239>, <ore:frameGtDraconiumawakened>], 
          [<ore:stickDraconiumawakened>, <gregtech:meta_item_1:208>, <ore:circuitUv>, <gregtech:meta_item_1:497>, <gregtech:meta_item_1:497>, <gregtech:meta_item_1:497>, <ore:circuitUv>, <gregtech:meta_item_1:208>, <ore:stickDraconiumawakened>], 
          [<ore:stickDraconiumawakened>, <ore:plateElite>, <gregtech:meta_item_1:104>, <ore:circuitUv>, <draconicevolution:draconic_energy_core>, <ore:circuitUv>, <gregtech:meta_item_1:104>, <ore:plateElite>, <ore:stickDraconiumawakened>], 
          [<ore:stickDraconiumawakened>, <ore:plateElite>, <ore:plateElite>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:208>, <ore:plateElite>, <ore:plateElite>, <ore:stickDraconiumawakened>], 
          [<ore:frameGtDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:frameGtDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:stickDraconiumawakened>, <ore:frameGtDraconiumawakened>]
        ]);
      //Inner Rotor
        mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:reactor_part:1>, [
          [<draconicevolution:wyvern_energy_core>, <ore:circuitUhv>, <ore:circuitUhv>, <ore:circuitUhv>, <draconicevolution:draconic_energy_core>, <ore:circuitUhv>, <ore:circuitUhv>, <ore:circuitUhv>, <draconicevolution:wyvern_energy_core>], 
          [<ore:stickLongDraconium>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:stickLongDraconium>], 
          [<ore:stickLongDraconiumawakened>, <gregtech:meta_item_1:224>, <gregtech:meta_item_1:224>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:224>, <gregtech:meta_item_1:224>, <ore:stickLongDraconiumawakened>], 
          [<ore:stickLongDraconium>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:stickLongDraconium>], 
          [<ore:stickLongDraconiumawakened>, <gregtech:meta_item_1:224>, <gregtech:meta_item_1:224>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:224>, <gregtech:meta_item_1:224>, <ore:stickLongDraconiumawakened>], 
          [<ore:stickLongDraconium>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:stickLongDraconium>], 
          [<ore:stickLongDraconiumawakened>, <gregtech:meta_item_1:224>, <gregtech:meta_item_1:224>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:224>, <gregtech:meta_item_1:224>, <ore:stickLongDraconiumawakened>], 
          [<ore:stickLongDraconium>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:plateDoubleDraconiumawakened>, <ore:stickLongDraconium>], 
          [<draconicevolution:wyvern_energy_core>, <ore:circuitUhv>, <ore:circuitUhv>, <ore:circuitUhv>, <draconicevolution:draconic_energy_core>, <ore:circuitUhv>, <ore:circuitUhv>, <ore:circuitUhv>, <draconicevolution:wyvern_energy_core>]
        ]);
      //Outer Rotor
        mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:reactor_part:2>, [
          [<gregtech:meta_stick_long:32008>, <gregtech:meta_item_1:208>, <gregtech:meta_plate:32011>, <gregtech:meta_plate:32011>, <gregtech:meta_plate:32011>, <gregtech:meta_plate:32011>, <gregtech:meta_plate:32011>, <gregtech:meta_item_1:208>, <gregtech:meta_stick_long:32008>], 
          [<gregtech:meta_stick_long:32007>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:104>, <gregtech:meta_stick_long:32007>, <gregtech:meta_item_1:104>, <gregtech:meta_stick_long:32007>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:104>, <gregtech:meta_stick_long:32007>], 
          [<gregtech:meta_stick_long:32008>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_stick_long:32008>], 
          [<gregtech:meta_stick_long:32007>, <gregtech:meta_item_1:749>, <gregtech:meta_item_1:749>, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:749>, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:749>, <gregtech:meta_item_1:749>, <gregtech:meta_stick_long:32007>], 
          [<gregtech:meta_stick_long:32008>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_stick_long:32008>], 
          [<gregtech:meta_stick_long:32007>, <gregtech:meta_item_1:749>, <gregtech:meta_item_1:749>, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:749>, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:749>, <gregtech:meta_item_1:749>, <gregtech:meta_stick_long:32007>], 
          [<gregtech:meta_stick_long:32008>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_stick_long:32008>], 
          [<gregtech:meta_stick_long:32007>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:104>, <gregtech:meta_stick_long:32007>, <gregtech:meta_item_1:104>, <gregtech:meta_stick_long:32007>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:104>, <gregtech:meta_stick_long:32007>], 
          [<gregtech:meta_stick_long:32008>, <gregtech:meta_item_1:208>, <gregtech:meta_plate:32011>, <gregtech:meta_plate:32011>, <gregtech:meta_plate:32011>, <gregtech:meta_plate:32011>, <gregtech:meta_plate:32011>, <gregtech:meta_item_1:208>, <gregtech:meta_stick_long:32008>]
        ]);
      //Reactor Stabilizer
        assline.recipeBuilder()
          .inputs([
            <draconicevolution:reactor_part:2> * 2,
            <draconicevolution:reactor_part:1> * 2,
            <gregtech:meta_stick_long:32008> * 2,
            <gregtech:meta_stick_long:32005> * 2
          ])
          .outputs([<draconicevolution:reactor_part:3>])
          .EUt(750000)
          .duration(1200)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Reactor Stabilizer Ring
        mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:reactor_part:4>, [
          [null, null, null, <ore:plateAstral>, <ore:plateAstral>, <ore:plateAstral>, null, null, null], 
          [null, null, <ore:plateDraconium>, <ore:stickLongDraconiumawakened>, <ore:stickLongDraconiumawakened>, <ore:stickLongDraconiumawakened>, <ore:plateDraconium>, null, null], 
          [null, <ore:plateDraconium>, <ore:stickLongDraconiumawakened>, <ore:stickDiamond>, null, <ore:stickDiamond>, <ore:stickLongDraconiumawakened>, <ore:plateDraconium>, null], 
          [<ore:plateAstral>, <ore:stickLongDraconiumawakened>, <ore:stickDiamond>, <ore:stickLongDraconiumawakened>, null, <ore:stickLongDraconiumawakened>, <ore:stickDiamond>, <ore:stickLongDraconiumawakened>, <ore:plateAstral>], 
          [<ore:plateAstral>, <ore:stickLongDraconiumawakened>, null, null, <gregtech:meta_item_1:282>, null, null, <ore:stickLongDraconiumawakened>, <ore:plateAstral>], 
          [<ore:plateAstral>, <ore:stickLongDraconiumawakened>, <ore:stickDiamond>, <ore:stickLongDraconiumawakened>, null, <ore:stickLongDraconiumawakened>, <ore:stickDiamond>, <ore:stickLongDraconiumawakened>, <ore:plateAstral>], 
          [null, <ore:plateDraconium>, <ore:stickLongDraconiumawakened>, <ore:stickDiamond>, null, <ore:stickDiamond>, <ore:stickLongDraconiumawakened>, <ore:plateDraconium>, null], 
          [null, null, <ore:plateDraconium>, <ore:stickLongDraconiumawakened>, <ore:stickLongDraconiumawakened>, <ore:stickLongDraconiumawakened>, <ore:plateDraconium>, null, null], 
          [null, null, null, <ore:plateAstral>, <ore:plateAstral>, <ore:plateAstral>, null, null, null]
        ]);
      //Reactor Stabilizer
        assline.recipeBuilder()
          .inputs([
            <draconicevolution:reactor_part>,
            <draconicevolution:reactor_part:3>,
            <draconicevolution:reactor_part:4>,
            <gregtech:meta_stick_long:32008> * 4
          ])
          .outputs([<draconicevolution:reactor_component>])
          .EUt(1000000)
          .duration(1200)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
    //Reactor Energy Injecter
      mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:reactor_component:1>, [
        [<ore:circuitUv>, <ore:plateNetherStar>, <gregtech:meta_item_1:223>, <ore:stickLongDraconium>, <gregtech:meta_item_1:223>, <ore:plateNetherStar>, <ore:circuitUv>], 
        [<ore:plateNetherStar>, <ore:stickLongDraconiumawakened>, <ore:plateDoubleDraconium>, <ore:stickLongDraconium>, <ore:plateDoubleDraconium>, <ore:stickLongDraconiumawakened>, <ore:plateNetherStar>], 
        [<gregtech:meta_item_1:223>, <ore:plateDoubleDraconium>, <draconicevolution:wyvern_core>, <draconicevolution:reactor_part:1>, <draconicevolution:wyvern_core>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:223>], 
        [<ore:stickLongDraconium>, <ore:stickLongDraconium>, <draconicevolution:reactor_part:1>, <draconicevolution:wyvern_energy_core>, <draconicevolution:reactor_part:1>, <ore:stickLongDraconium>, <ore:stickLongDraconium>], 
        [<gregtech:meta_item_1:223>, <ore:plateDoubleDraconium>, <draconicevolution:wyvern_core>, <draconicevolution:reactor_part:1>, <draconicevolution:wyvern_core>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:223>], 
        [<ore:plateNetherStar>, <ore:stickLongDraconiumawakened>, <ore:plateDoubleDraconium>, <ore:stickLongDraconium>, <ore:plateDoubleDraconium>, <ore:stickLongDraconiumawakened>, <ore:plateNetherStar>], 
        [<ore:circuitUv>, <ore:plateNetherStar>, <gregtech:meta_item_1:223>, <ore:stickLongDraconium>, <gregtech:meta_item_1:223>, <ore:plateNetherStar>, <ore:circuitUv>]
      ]);
  //Armor and Tools UpGrade Key
    //Energy Capacity
      mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:tool_upgrade>, [
        [<gregtech:meta_item_1:102>, <ore:plateDoubleDraconium>, <draconicevolution:wyvern_energy_core>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:102>], 
        [<ore:plateDoubleDraconium>, <draconicevolution:draconic_core>, <ore:circuitLuv>, <draconicevolution:draconic_core>, <ore:plateDoubleDraconium>], 
        [<draconicevolution:wyvern_energy_core>, <ore:circuitLuv>, <ore:batteryLuv>, <ore:circuitLuv>, <draconicevolution:wyvern_energy_core>], 
        [<ore:plateDoubleDraconium>, <draconicevolution:draconic_core>, <ore:circuitLuv>, <draconicevolution:draconic_core>, <ore:plateDoubleDraconium>], 
        [<gregtech:meta_item_1:102>, <ore:plateDoubleDraconium>, <draconicevolution:wyvern_energy_core>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:102>]
      ]);
    //Pickaxe
      //DIG Speed
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:tool_upgrade:1>, [
          [<ore:ingotExtreme>, <ore:plateDoubleDraconium>, <ore:circuitLuv>, <ore:plateDoubleDraconium>, <ore:ingotExtreme>], 
          [<ore:plateDoubleDraconium>, <draconicevolution:wyvern_energy_core>, <mekanismtools:obsidianpickaxe>, <draconicevolution:wyvern_energy_core>, <ore:plateDoubleDraconium>], 
          [<ore:circuitLuv>, <mekanismtools:obsidianpickaxe>, <gregtech:meta_item_1:267>, <mekanismtools:obsidianpickaxe>, <ore:circuitLuv>], 
          [<ore:plateDoubleDraconium>, <draconicevolution:wyvern_energy_core>, <mekanismtools:obsidianpickaxe>, <draconicevolution:wyvern_energy_core>, <ore:plateDoubleDraconium>], 
          [<ore:ingotExtreme>, <ore:plateDoubleDraconium>, <ore:circuitLuv>, <ore:plateDoubleDraconium>, <ore:ingotExtreme>]
        ]);
      //DIG AOE
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:tool_upgrade:2>, [
          [<ore:circuitLuv>, <ore:plateDoubleDraconium>, <draconicevolution:wyvern_core>, <ore:plateDoubleDraconium>, <ore:circuitLuv>], 
          [<ore:plateDoubleDraconium>, <draconicevolution:wyvern_core>, <tconstruct:hammer_head>.withTag({Material: "crystal_matrix"}), <draconicevolution:wyvern_core>, <ore:plateDoubleDraconium>], 
          [<draconicevolution:wyvern_core>, <tconstruct:hammer_head>.withTag({Material: "adamant"}), <draconicevolution:wyvern_energy_core>, <tconstruct:hammer_head>.withTag({Material: "wyvern_metal"}), <draconicevolution:wyvern_core>], 
          [<ore:plateDoubleDraconium>, <draconicevolution:wyvern_core>, <tconstruct:hammer_head>.withTag({Material: "dragonsteel_ice"}), <draconicevolution:wyvern_core>, <ore:plateDoubleDraconium>], 
          [<ore:circuitLuv>, <ore:plateDoubleDraconium>, <draconicevolution:wyvern_core>, <ore:plateDoubleDraconium>, <ore:circuitLuv>]
        ]);
    //Sword
      //Attack Damage
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:tool_upgrade:3>, [
          [<flammpfeil.slashblade:proudsoul:2>, <ore:plateDoubleDraconium>, <draconicevolution:draconic_core>, <ore:plateDoubleDraconium>, <flammpfeil.slashblade:proudsoul:2>], 
          [<ore:plateDoubleDraconium>, <ore:circuitLuv>, <deepmoblearning:glitch_infused_sword>, <ore:circuitLuv>, <ore:plateDoubleDraconium>], 
          [<draconicevolution:draconic_core>, <deepmoblearning:glitch_infused_sword>, <draconicevolution:wyvern_energy_core>, <deepmoblearning:glitch_infused_sword>, <draconicevolution:draconic_core>], 
          [<ore:plateDoubleDraconium>, <ore:circuitLuv>, <deepmoblearning:glitch_infused_sword>, <ore:circuitLuv>, <ore:plateDoubleDraconium>], 
          [<flammpfeil.slashblade:proudsoul:2>, <ore:plateDoubleDraconium>, <draconicevolution:draconic_core>, <ore:plateDoubleDraconium>, <flammpfeil.slashblade:proudsoul:2>]
        ]);
      //Attack AOE
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:tool_upgrade:4>, [
          [<draconicevolution:draconic_core>, <ore:plateDoubleDraconium>, <ore:circuitLuv>, <ore:plateDoubleDraconium>, <draconicevolution:draconic_core>], 
          [<ore:plateDoubleDraconium>, <ore:stickLongDraconium>, <botania:terrasword>, <ore:stickLongDraconium>, <ore:plateDoubleDraconium>], 
          [<ore:circuitLuv>, <botania:terrasword>, <draconicevolution:wyvern_energy_core>, <botania:terrasword>, <ore:circuitLuv>], 
          [<ore:plateDoubleDraconium>, <ore:stickLongDraconium>, <botania:terrasword>, <ore:stickLongDraconium>, <ore:plateDoubleDraconium>], 
          [<draconicevolution:draconic_core>, <ore:plateDoubleDraconium>, <ore:circuitLuv>, <ore:plateDoubleDraconium>, <draconicevolution:draconic_core>]
        ]);
    //Bow
      //Arrow Damage
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:tool_upgrade:5>, [
          [<minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_harming"}), <ore:plateDoubleDraconium>, <draconicevolution:draconic_core>, <ore:plateDoubleDraconium>, <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_harming"})], 
          [<ore:plateDoubleDraconium>, <ore:circuitLuv>, <mekanism:electricbow>, <ore:circuitLuv>, <ore:plateDoubleDraconium>], 
          [<draconicevolution:draconic_core>, <mekanism:electricbow>, <draconicevolution:wyvern_energy_core>, <mekanism:electricbow>, <draconicevolution:draconic_core>], 
          [<ore:plateDoubleDraconium>, <ore:circuitLuv>, <mekanism:electricbow>, <ore:circuitLuv>, <ore:plateDoubleDraconium>], 
          [<minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_harming"}), <ore:plateDoubleDraconium>, <draconicevolution:draconic_core>, <ore:plateDoubleDraconium>, <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_harming"})]
        ]);
      //Draw Speed
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:tool_upgrade:6>, [
          [<ore:stickPolytetrafluoroethylene>, <ore:plateDoubleDraconium>, <draconicevolution:draconic_core>, <ore:plateDoubleDraconium>, <ore:stickPolytetrafluoroethylene>], 
          [<ore:plateDoubleDraconium>, <ore:circuitLuv>, <botania:crystalbow>, <ore:circuitLuv>, <ore:plateDoubleDraconium>], 
          [<draconicevolution:draconic_core>, <botania:crystalbow>, <draconicevolution:wyvern_energy_core>, <botania:crystalbow>, <draconicevolution:draconic_core>], 
          [<ore:plateDoubleDraconium>, <ore:circuitLuv>, <botania:crystalbow>, <ore:circuitLuv>, <ore:plateDoubleDraconium>], 
          [<ore:stickPolytetrafluoroethylene>, <ore:plateDoubleDraconium>, <draconicevolution:draconic_core>, <ore:plateDoubleDraconium>, <ore:stickPolytetrafluoroethylene>]
        ]);
      //Arrow Speed
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:tool_upgrade:7>, [
          [<iceandfire:stymphalian_bird_feather>, <ore:plateDoubleDraconium>, <ore:stickLongDraconium>, <ore:plateDoubleDraconium>, <iceandfire:stymphalian_bird_feather>], 
          [<ore:plateDoubleDraconium>, <ore:circuitLuv>, <iceandfire:stymphalian_feather_bundle>, <ore:circuitLuv>, <ore:plateDoubleDraconium>], 
          [<ore:stickLongDraconium>, <iceandfire:stymphalian_feather_bundle>, <draconicevolution:wyvern_energy_core>, <iceandfire:stymphalian_feather_bundle>, <ore:stickLongDraconium>], 
          [<ore:plateDoubleDraconium>, <ore:circuitLuv>, <iceandfire:stymphalian_feather_bundle>, <ore:circuitLuv>, <ore:plateDoubleDraconium>], 
          [<iceandfire:stymphalian_bird_feather>, <ore:plateDoubleDraconium>, <ore:stickLongDraconium>, <ore:plateDoubleDraconium>, <iceandfire:stymphalian_bird_feather>]
        ]);
    //Armor
      //Shield Capacity
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:tool_upgrade:8>, [
          [<mechtech:meta_item:1014>, <ore:plateDoubleDraconium>, <draconicevolution:wyvern_energy_core>, <ore:plateDoubleDraconium>, <mechtech:meta_item:1014>], 
          [<ore:plateDoubleDraconium>, <ore:circuitZpm>, <ore:plateDraconiumawakened>, <ore:circuitZpm>, <ore:plateDoubleDraconium>], 
          [<draconicevolution:wyvern_energy_core>, <ore:plateDraconiumawakened>, <gregtech:meta_item_1:207>, <ore:plateDraconiumawakened>, <draconicevolution:wyvern_energy_core>], 
          [<ore:plateDoubleDraconium>, <ore:circuitZpm>, <ore:plateDraconiumawakened>, <ore:circuitZpm>, <ore:plateDoubleDraconium>], 
          [<mechtech:meta_item:1014>, <ore:plateDoubleDraconium>, <draconicevolution:wyvern_energy_core>, <ore:plateDoubleDraconium>, <mechtech:meta_item:1014>]
        ]);
      //Shield Recovery
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:tool_upgrade:9>, [
          [<ore:ingotHardCarbon>, <gregtech:meta_item_1:206>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:206>, <ore:ingotHardCarbon>], 
          [<gregtech:meta_item_1:206>, <gregtech:meta_item_1:102>, <draconicevolution:wyvern_energy_core>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:206>], 
          [<draconicevolution:draconic_core>, <draconicevolution:wyvern_energy_core>, <gregtech:meta_item_1:207>, <draconicevolution:wyvern_energy_core>, <draconicevolution:draconic_core>], 
          [<gregtech:meta_item_1:206>, <gregtech:meta_item_1:102>, <draconicevolution:wyvern_energy_core>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:206>], 
          [<ore:ingotHardCarbon>, <gregtech:meta_item_1:206>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:206>, <ore:ingotHardCarbon>]
        ]);
      //Movement Speed
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:tool_upgrade:10>, [
          [<ore:gearSmallTerrasteel>, <ore:plateDoubleDraconium>, <draconicevolution:draconic_core>, <ore:plateDoubleDraconium>, <ore:gearSmallTerrasteel>], 
          [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:133>, <gregtech:meta_item_1:605>, <ore:plateDoubleDraconium>], 
          [<draconicevolution:draconic_core>, <gregtech:meta_item_1:133>, <draconicevolution:wyvern_energy_core>, <gregtech:meta_item_1:133>, <draconicevolution:draconic_core>], 
          [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:133>, <gregtech:meta_item_1:605>, <ore:plateDoubleDraconium>], 
          [<ore:gearSmallTerrasteel>, <ore:plateDoubleDraconium>, <draconicevolution:draconic_core>, <ore:plateDoubleDraconium>, <ore:gearSmallTerrasteel>]
        ]);
      //Jump Boost
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:tool_upgrade:11>, [
          [<ore:gearLumium>, <ore:plateDoubleDraconium>, <draconicevolution:draconic_core>, <ore:plateDoubleDraconium>, <ore:gearLumium>], 
          [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:177>, <gregtech:meta_item_1:605>, <ore:plateDoubleDraconium>], 
          [<draconicevolution:draconic_core>, <gregtech:meta_item_1:177>, <draconicevolution:wyvern_energy_core>, <gregtech:meta_item_1:177>, <draconicevolution:draconic_core>], 
          [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:177>, <gregtech:meta_item_1:605>, <ore:plateDoubleDraconium>], 
          [<ore:gearLumium>, <ore:plateDoubleDraconium>, <draconicevolution:draconic_core>, <ore:plateDoubleDraconium>, <ore:gearLumium>]
        ]);
  //Wyvern Tools And Utils and Armor
    //Wyvern Battery
      assembler.recipeBuilder()
        .inputs([
          <draconicevolution:wyvern_energy_core> * 4,
          <avaritia:resource:1> * 8,
          <gregtech:meta_item_1:605> * 16,
          <gregtech:meta_item_1:531> * 64,
          <gregtech:meta_item_1:530> * 64,
          <draconicevolution:wyvern_core> * 4,
          <ore:circuitLuv> * 4,
          <gregtech:meta_item_1:101> * 4,
          <gregtech:meta_plate:32007> * 8
        ])
        .outputs(<draconicevolution:draconium_capacitor>)
        .fluidInputs(<liquid:naquadah_enriched> * 576)
        .EUt(32000)
        .duration(800)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
    //Wyvern Tools
      //Axe
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:wyvern_axe>, [
          [null, null, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, null], 
          [null, null, <ore:circuitLuv>, <enderio:item_stellar_alloy_axe>, <ore:toolAxe>, <ore:plateDoubleDraconium>, null], 
          [null, null, null, <draconicevolution:wyvern_energy_core>, <mekanism:atomicdisassembler>, <ore:plateDoubleDraconium>, null], 
          [null, null, null, <ore:stickLongDraconium>, <twilightforest:ironwood_axe>, <ore:plateDoubleDraconium>, null], 
          [null, null, null, <ore:stickLongDraconium>, null, <ore:plateDoubleDraconium>, null], 
          [null, null, null, <ore:stickLongDraconium>, null, null, null], 
          [null, null, null, <ore:stickLongDraconium>, null, null, null]
        ]);
      //Bow
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:wyvern_bow>, [
          [null, null, null, <ore:stickLongDraconium>, <ore:bRedString>, null, null], 
          [null, null, <mekanism:electricbow>, null, <ore:bRedString>, null, null], 
          [null, <ore:stickLongDraconium>, <draconicevolution:wyvern_energy_core>, null, <ore:manaString>, null, null], 
          [null, <twilightforest:ice_bow>, <ore:circuitLuv>, null, <ore:manaString>, null, null], 
          [null, <ore:stickLongDraconium>, <draconicevolution:wyvern_energy_core>, null, <ore:manaString>, null, null], 
          [null, null, <iceandfire:dragonbone_bow>, null, <ore:bRedString>, null, null], 
          [null, null, null, <ore:stickLongDraconium>, <ore:bRedString>, null, null]
        ]);
      //Pickaxe
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:wyvern_pick>, [
          [null, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, null], 
          [<ore:plateDoubleDraconium>, <botania:terrapick>, <enderio:item_stellar_alloy_pickaxe>, <mekanism:atomicdisassembler>, <iceandfire:dragonsteel_ice_pickaxe>, <thaumcraft:elemental_pick>, <ore:plateDoubleDraconium>], 
          [null, null, <draconicevolution:wyvern_energy_core>, <ore:circuitLuv>, <draconicevolution:wyvern_energy_core>, null, null], 
          [null, null, null, <ore:stickLongDraconium>, null, null, null], 
          [null, null, null, <ore:stickLongDraconium>, null, null, null], 
          [null, null, null, <ore:stickLongDraconium>, null, null, null], 
          [null, null, null, <ore:stickLongDraconium>, null, null, null]
        ]);
      //Shovel
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:wyvern_shovel>, [
          [null, null, null, null, null, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>], 
          [null, null, null, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <botania:elementiumshovel>, <ore:plateDoubleDraconium>], 
          [null, null, <ore:plateDoubleDraconium>, <thaumadditions:void_elemental_shovel>.withTag({infench: [{lvl: 1 as short, id: 1 as short}]}), <mekanism:atomicdisassembler>, <ore:plateDoubleDraconium>, null], 
          [null, null, <draconicevolution:wyvern_energy_core>, <ore:circuitLuv>, <iceandfire:dragonsteel_ice_shovel>, <ore:plateDoubleDraconium>, null], 
          [null, null, <ore:stickLongDraconium>, <draconicevolution:wyvern_energy_core>, <ore:plateDoubleDraconium>, null, null], 
          [null, <ore:stickLongDraconium>, null, null, null, null, null], 
          [<ore:stickLongDraconium>, null, null, null, null, null, null]
        ]);
      //Sword
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:wyvern_sword>, [
          [null, null, null, null, null, <ore:plateDoubleDraconium>, <twilightforest:fiery_sword>.withTag({ench: [{lvl: 2 as short, id: 20}]})], 
          [null, null, null, null, <ore:plateDoubleDraconium>, <iceandfire:dragonsteel_ice_sword>, <ore:plateDoubleDraconium>], 
          [null, null, null, <ore:plateDoubleDraconium>, <enderio:item_stellar_alloy_sword>, <ore:plateDoubleDraconium>, null], 
          [null, null, <ore:plateDoubleDraconium>, <botania:starsword>, <ore:plateDoubleDraconium>, null, null], 
          [<ore:plateNetherStar>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_sword>, <ore:plateDoubleDraconium>, null, null, null], 
          [<ore:circuitLuv>, <ore:stickLongDraconium>, <ore:plateNetherStar>, null, null, null, null], 
          [<draconicevolution:wyvern_energy_core>, <ore:circuitLuv>, <ore:plateNetherStar>, null, null, null, null]
        ]);
    //Wyvern Armor
      //Head
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:wyvern_helm>, [
          [null, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, null], 
          [<ore:plateDoubleDraconium>, <ore:plateElite>, <mechtech:meta_item:1014>, <enderio:item_stellar_alloy_helmet>, <mechtech:meta_item:1014>, <ore:plateElite>, <ore:plateDoubleDraconium>], 
          [<ore:plateDoubleDraconium>, <draconicevolution:wyvern_energy_core>, <gregtech:gt_armor:40>, <gregtech:meta_item_1:207>, <deepmoblearning:glitch_infused_helmet>, <draconicevolution:wyvern_energy_core>, <ore:plateDoubleDraconium>], 
          [<ore:plateDoubleDraconium>, <ore:plateElite>, <mechtech:meta_item:1014>, <botania:terrasteelhelm>, <mechtech:meta_item:1014>, <ore:plateElite>, <ore:plateDoubleDraconium>], 
          [null, <ore:plateDoubleDraconium>, <ore:plateDoubleAstral>, null, <ore:plateDoubleAstral>, <ore:plateDoubleDraconium>, null], 
          [null, null, null, null, null, null, null], 
          [null, null, null, null, null, null, null]
        ]);
      //ChestPlate
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:wyvern_chest>, [
          [<ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, null, null, null, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>], 
          [<ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <draconicevolution:wyvern_energy_core>, <ore:plateElite>, <draconicevolution:wyvern_energy_core>, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>], 
          [null, <ore:plateDoubleDraconium>, <mechtech:meta_item:1014>, <enderio:item_stellar_alloy_chestplate>, <mechtech:meta_item:1014>, <ore:plateDoubleDraconium>, null], 
          [null, <ore:plateDoubleDraconium>, <gregtech:gt_armor:50>, <gregtech:meta_item_1:207>, <deepmoblearning:glitch_infused_chestplate>, <ore:plateDoubleDraconium>, null], 
          [null, <ore:plateDoubleDraconium>, <mechtech:meta_item:1014>, <botania:terrasteelchest>, <mechtech:meta_item:1014>, <ore:plateDoubleDraconium>, null], 
          [null, null, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, null, null], 
          [null, null, null, null, null, null, null]
        ]);
      //Leggings
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:wyvern_legs>, [
          [<ore:plateNetherStar>, <ore:plateNetherStar>, <ore:plateNetherStar>, <ore:plateNetherStar>, <ore:plateNetherStar>, <ore:plateNetherStar>, <ore:plateNetherStar>], 
          [<ore:plateDraconium>, <mechtech:meta_item:1014>, <draconicevolution:wyvern_energy_core>, <gregtech:meta_item_1:207>, <draconicevolution:wyvern_energy_core>, <mechtech:meta_item:1014>, <ore:plateDraconium>], 
          [<ore:plateDraconium>, <gregtech:gt_armor:42>, <ore:plateElite>, <ore:plateDoubleDraconium>, <ore:plateElite>, <enderio:item_stellar_alloy_leggings>, <ore:plateDraconium>], 
          [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:132>, <ore:plateDoubleDraconium>, null, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:132>, <ore:plateDoubleDraconium>], 
          [<ore:plateDoubleDraconium>, <botania:terrasteellegs>, <ore:plateDoubleDraconium>, null, <ore:plateDoubleDraconium>, <deepmoblearning:glitch_infused_leggings>, <ore:plateDoubleDraconium>], 
          [<ore:plateDraconium>, <gregtech:meta_item_1:132>, <ore:plateDraconium>, null, <ore:plateDraconium>, <gregtech:meta_item_1:132>, <ore:plateDraconium>], 
          [<ore:plateDraconium>, <mechtech:meta_item:1014>, <ore:plateDraconium>, null, <ore:plateDraconium>, <mechtech:meta_item:1014>, <ore:plateDraconium>]
        ]);
      //Boots
        mods.extendedcrafting.TableCrafting.addShaped(3, <draconicevolution:wyvern_boots>, [
          [null, null, null, null, null, null, null], 
          [null, null, <ore:plateElite>, null, <ore:plateElite>, null, null], 
          [<ore:plateElite>, <draconicevolution:wyvern_energy_core>, <mechtech:meta_item:1014>, <gregtech:meta_item_1:207>, <mechtech:meta_item:1014>, <draconicevolution:wyvern_energy_core>, <ore:plateElite>], 
          [<mechtech:meta_item:1014>, <enderio:item_stellar_alloy_boots>, <ore:plateDoubleDraconium>, null, <ore:plateDoubleDraconium>, <deepmoblearning:glitch_infused_boots>, <mechtech:meta_item:1014>], 
          [<ore:plateDoubleDraconium>, <gregtech:gt_armor:43>, <ore:plateDoubleDraconium>, null, <ore:plateDoubleDraconium>, <botania:terrasteelboots>, <ore:plateDoubleDraconium>], 
          [<ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, null, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>, <ore:plateDoubleDraconium>], 
          [null, null, null, null, null, null, null]
        ]);
  //Draconic Tools And Util and Armor
    //Others
      assline.recipeBuilder()
        .inputs([
          <draconicevolution:draconium_capacitor>,
          <draconicevolution:draconium_capacitor>,
          <draconicevolution:draconium_capacitor>,
          <draconicevolution:draconium_capacitor>,
          <draconicevolution:awakened_core> * 8,
          <draconicevolution:draconic_energy_core> * 4,
          <gregtech:meta_item_1:606> * 32,
          <ore:circuitZpm> * 8,
          <ore:circuitLuv> * 12,
          <gregtech:meta_item_1:492> * 64,
          <gregtech:meta_item_1:492> * 64,
          <mekanism:atomicalloy> * 8,
          <gregtech:meta_item_1:748> * 4
        ])
        .outputs(<draconicevolution:draconium_capacitor:1>)
        .fluidInputs(
          <liquid:naquadria> * 1152,
          <liquid:naquadah_enriched> * 1152
        )
        .EUt(130000)
        .duration(720)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
    //Tools
      //Axe
        assline.recipeBuilder()
          .inputs([
            <draconicevolution:wyvern_axe>,
            <gregtech:meta_stick_long:32008> * 3,
            <gregtech:meta_plate_double:32008> * 8,
            <draconicevolution:awakened_core> * 4,
            <draconicevolution:draconic_energy_core> * 2,
            <ore:circuitUhv>,
            <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}) * 16
          ])
          .outputs(<draconicevolution:draconic_axe>)
          .fluidInputs([
            <liquid:europium> * 1440,
            <liquid:americium> * 720
          ])
          .EUt(130000)
          .duration(480)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Bow
        assline.recipeBuilder()
          .inputs([
            <draconicevolution:wyvern_bow>,
            <gregtech:meta_stick_long:32008> * 10,
            <draconicevolution:awakened_core> * 4,
            <draconicevolution:draconic_energy_core> * 2,
            <ore:circuitUhv>,
            <gregtech:meta_wire_fine:128> * 8,
            <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}) * 16
          ])
          .outputs(<draconicevolution:draconic_bow>)
          .fluidInputs([
            <liquid:europium> * 1440,
            <liquid:americium> * 720
          ])
          .EUt(130000)
          .duration(480)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Pickaxe
        assline.recipeBuilder()
          .inputs([
            <draconicevolution:wyvern_pick>,
            <gregtech:meta_plate_double:32008> * 7,
            <gregtech:meta_stick_long:32008> * 4,
            <draconicevolution:awakened_core> * 4,
            <draconicevolution:draconic_energy_core> * 2,
            <ore:circuitUhv>,
            <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}) * 16
          ])
          .outputs(<draconicevolution:draconic_pick>)
          .fluidInputs([
            <liquid:europium> * 1440,
            <liquid:americium> * 720
          ])
          .EUt(130000)
          .duration(480)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Shovel
        assline.recipeBuilder()
          .inputs([
            <draconicevolution:wyvern_shovel>,
            <gregtech:meta_stick_long:32008> * 3,
            <gregtech:meta_plate_double:32008> * 9,
            <draconicevolution:awakened_core> * 4,
            <draconicevolution:draconic_energy_core> * 2,
            <ore:circuitUhv>,
            <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}) * 16
          ])
          .outputs(<draconicevolution:draconic_shovel>)
          .fluidInputs([
            <liquid:europium> * 1440,
            <liquid:americium> * 720
          ])
          .EUt(130000)
          .duration(480)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Sword
        assline.recipeBuilder()
          .inputs([
            <draconicevolution:wyvern_sword>,
            <gregtech:meta_stick_long:32008>,
            <gregtech:meta_plate_double:32008> * 8,
            <draconicevolution:awakened_core> * 4,
            <draconicevolution:draconic_energy_core> * 2,
            <ore:circuitUhv> * 2,
            <gregtech:meta_plate:1602> * 4,
            <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}) * 16
          ])
          .outputs(<draconicevolution:draconic_sword>)
          .fluidInputs([
            <liquid:europium> * 1440,
            <liquid:americium> * 720
          ])
          .EUt(130000)
          .duration(480)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Hoe
        mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:draconic_hoe>, [
          [null, <ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>, <ore:plateDraconiumawakened>, null], 
          [null, null, <draconicevolution:wyvern_energy_core>, null, <ore:plateDraconiumawakened>], 
          [null, null, <ore:stickAluminium>, null, null], 
          [null, null, <ore:stickAluminium>, null, null], 
          [null, null, <ore:stickAluminium>, null, null]
        ]);
      //DRACONIC STAFF OF POWER
        assline.recipeBuilder()
          .inputs([
            <draconicevolution:draconic_axe>,
            <draconicevolution:draconic_hoe>,
            <draconicevolution:draconic_pick>,
            <draconicevolution:draconic_shovel>,
            <draconicevolution:draconic_sword>,
            <ore:circuitUev> * 4,
            <ore:circuitUhv> * 8,
            <draconicevolution:awakened_core> * 16,
            <draconicevolution:draconic_energy_core> * 4,
            <gregtech:meta_stick_long:32008> * 32,
            <gregtech:meta_plate_double:32008> * 16,
            <draconicevolution:chaos_shard>,
            <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}) * 48
          ])
          .outputs(<draconicevolution:draconic_staff_of_power>.withTag({Profile_0: {showDigAOE: 0 as byte, digDepth: 0, digSpeed: 100, aoeSafeMode: 0 as byte, digAOE: 0, attackAOE: 2.0, junkNbtSens: 0 as byte, enableJunkFilter: 0 as byte}}))
          .fluidInputs([
            <liquid:naquadria_tetratrinite> * 1000,
            <liquid:naquadah_alloy> * 1152
          ])
          .EUt(480000)
          .duration(1800)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
    //Armor
      //Head
        assline.recipeBuilder()
          .inputs([
            <draconicevolution:wyvern_helm>,
            <mechtech:meta_item:1015> * 64,
            <gregtech:meta_plate_double:396> * 16,
            <gregtech:meta_plate_double:32000> * 8,
            <gregtech:meta_plate_double:32008> * 16,
            <draconicevolution:awakened_core> * 4,
            <draconicevolution:draconic_energy_core> * 2,
            <gregtech:meta_item_1:208> * 2,
            <ore:circuitUhv>,
            <thaumadditions:mithminite_plate> * 8
          ])
          .outputs([<draconicevolution:draconic_helm>])
          .fluidInputs([
            <liquid:europium> * 1152,
            <liquid:americium> * 1152,
            <liquid:naquadah_alloy> * 1152
          ])
          .EUt(300000)
          .duration(512)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Chest Plate
        assline.recipeBuilder()
          .inputs([
            <draconicevolution:wyvern_chest>,
            <mechtech:meta_item:1015> * 64,
            <gregtech:meta_plate_double:396> * 16,
            <gregtech:meta_plate_double:32000> * 8,
            <gregtech:meta_plate_double:32008> * 16,
            <draconicevolution:awakened_core> * 4,
            <draconicevolution:draconic_energy_core> * 2,
            <gregtech:meta_item_1:208> * 2,
            <ore:circuitUhv>,
            <thaumadditions:mithminite_plate> * 8
          ])
          .outputs([<draconicevolution:draconic_chest>])
          .fluidInputs([
            <liquid:europium> * 1152,
            <liquid:americium> * 1152,
            <liquid:naquadah_alloy> * 1152
          ])
          .EUt(300000)
          .duration(512)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Leggings
        assline.recipeBuilder()
          .inputs([
            <draconicevolution:wyvern_legs>,
            <mechtech:meta_item:1015> * 64,
            <gregtech:meta_plate_double:396> * 16,
            <gregtech:meta_plate_double:32000> * 8,
            <gregtech:meta_plate_double:32008> * 16,
            <draconicevolution:awakened_core> * 4,
            <draconicevolution:draconic_energy_core> * 2,
            <gregtech:meta_item_1:208> * 2,
            <ore:circuitUhv>,
            <thaumadditions:mithminite_plate> * 8
          ])
          .outputs([<draconicevolution:draconic_legs>])
          .fluidInputs([
            <liquid:europium> * 1152,
            <liquid:americium> * 1152,
            <liquid:naquadah_alloy> * 1152
          ])
          .EUt(300000)
          .duration(512)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Boots
        assline.recipeBuilder()
          .inputs([
            <draconicevolution:wyvern_boots>,
            <mechtech:meta_item:1015> * 64,
            <gregtech:meta_plate_double:396> * 16,
            <gregtech:meta_plate_double:32000> * 8,
            <gregtech:meta_plate_double:32008> * 16,
            <draconicevolution:awakened_core> * 4,
            <draconicevolution:draconic_energy_core> * 2,
            <gregtech:meta_item_1:208> * 2,
            <ore:circuitUhv>,
            <thaumadditions:mithminite_plate> * 8
          ])
          .outputs([<draconicevolution:draconic_boots>])
          .fluidInputs([
            <liquid:europium> * 1152,
            <liquid:americium> * 1152,
            <liquid:naquadah_alloy> * 1152
          ])
          .EUt(300000)
          .duration(512)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
  //DisLocator
    //Basic
      mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:dislocator>, [
        [<ore:blockEnderPearl>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:281>, <ore:plateDoubleDraconium>, <ore:blockEnderPearl>], 
        [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:206>, <ore:circuitLuv>, <gregtech:meta_item_1:206>, <ore:plateDoubleDraconium>], 
        [<gregtech:meta_item_1:281>, <ore:circuitLuv>, <avaritia:endest_pearl>, <ore:circuitLuv>, <gregtech:meta_item_1:281>], 
        [<ore:plateDoubleDraconium>, <gregtech:meta_item_1:206>, <ore:circuitLuv>, <gregtech:meta_item_1:206>, <ore:plateDoubleDraconium>], 
        [<ore:blockEnderPearl>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:281>, <ore:plateDoubleDraconium>, <ore:blockEnderPearl>]
      ]);
    //Advanced
      assline.recipeBuilder()
        .inputs([
          <draconicevolution:dislocator>,
          <ore:circuitUv> * 4,
          <gregtech:meta_item_1:208> * 4,
          <gregtech:meta_item_1:223> * 8,
          <gregtech:meta_item_1:238> * 8,
          <gregtech:meta_item_1:103> * 16,
          <draconicevolution:awakened_core> * 4,
          <draconicevolution:wyvern_energy_core> * 16,
          <enderio:item_material:44> * 24,
          <enderio:item_alloy_endergy_ingot:3> * 24,
          <enderio:item_material:16> * 16,
          <mekanism:teleportationcore> * 8
        ])
        .outputs([<draconicevolution:dislocator_advanced>])
        .fluidInputs([
          <liquid:ender> * 1000000
        ])
        .EUt(240000)
        .duration(1200)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
print("------DRACONIC_EVOLUTION_LOADING_END------");
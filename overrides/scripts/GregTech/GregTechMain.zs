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
import mods.astralsorcery.Utils;
import mods.astralsorcery.Altar.addTraitAltarRecipe as AlterT4Recipe;

val rockCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(false, false);
val celestialCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(true, false);
val attunedCelestialCrystal = mods.astralsorcery.Utils.getCrystalORIngredient(true,true);

//Remove Recipes
  //Casings
    var Casings as IItemStack[] = [
      <gregtech:machine_casing:1>,
      <gregtech:machine_casing:2>,
      <gregtech:machine_casing:3>,
      <gregtech:machine_casing:4>,
      <gregtech:machine_casing:5>,
      <gregtech:machine_casing:6>,
      <gregtech:machine_casing:7>,
      <gregtech:machine_casing:8>,
      <gregtech:machine_casing:9>
    ];
      for i in Casings {
        recipes.remove(i);
      }
  //AssLine MultiBlocks
    var Assline as IItemStack[] = [
      <gregtech:multiblock_casing:3>,
      <gregtech:multiblock_casing:4>,
      <gregtech:machine:1019>
    ];
      for i in Assline {
        recipes.remove(i);
      }
  //Parts Recipe Remove
    var Gtparts as IItemStack[] = [
      <gregtech:meta_item_1:191>,
      <gregtech:meta_item_1:221>,
      <gregtech:meta_item_1:236>
    ];
      for i in Gtparts {
        recipes.remove(i);
      }
  //AssLine Recipes Remove
    //LuV
      //RoBot Arm
        // LuV Robot Arm * 1
          <recipemap:assembly_line>.findRecipe(6000, [<metaitem:stickLongHsss> * 4, <metaitem:gearHsss>, <metaitem:gearSmallHsss> * 3, <metaitem:electric.motor.luv> * 2, <metaitem:electric.piston.luv>, <metaitem:circuit.nano_mainframe>, <metaitem:circuit.mainframe> * 2, <metaitem:circuit.workstation> * 4, <metaitem:cableGtSingleNiobiumTitanium> * 4], [<liquid:soldering_alloy> * 576, <liquid:lubricant> * 250]).remove();
      //Emitter
        // LuV Emitter * 1
          <recipemap:assembly_line>.findRecipe(6000, [<metaitem:frameHsss>, <metaitem:electric.motor.luv>, <metaitem:stickLongRuridit> * 4, <metaitem:quantumstar>, <metaitem:circuit.nano_mainframe> * 2, <metaitem:foilPalladium> * 64, <metaitem:foilPalladium> * 32, <metaitem:cableGtSingleNiobiumTitanium> * 4], [<liquid:soldering_alloy> * 288]).remove();
      //Sensor
        // LuV Sensor * 1
          <recipemap:assembly_line>.findRecipe(6000, [<metaitem:frameHsss>, <metaitem:electric.motor.luv>, <metaitem:plateRuridit> * 4, <metaitem:quantumstar>, <metaitem:circuit.nano_mainframe> * 2, <metaitem:foilPalladium> * 64, <metaitem:foilPalladium> * 32, <metaitem:cableGtSingleNiobiumTitanium> * 4], [<liquid:soldering_alloy> * 288]).remove();
      //Field Generator
        // LuV Field Generator * 1
          <recipemap:assembly_line>.findRecipe(6000, [<metaitem:frameHsss>, <metaitem:plateHsss> * 6, <metaitem:quantumstar>, <metaitem:emitter.luv> * 2, <metaitem:circuit.nano_mainframe> * 2, <metaitem:wireFineIndiumTinBariumTitaniumCuprate> * 64, <metaitem:wireFineIndiumTinBariumTitaniumCuprate> * 64, <metaitem:cableGtSingleNiobiumTitanium> * 4], [<liquid:soldering_alloy> * 576]).remove();
      //Fusion Reactor
        // Fusion Reactor Computer Mark 1 * 1
          <recipemap:assembly_line>.findRecipe(30720, [<gregtech:fusion_casing:0>, <metaitem:circuit.quantum_mainframe>, <metaitem:circuit.quantum_mainframe>, <metaitem:circuit.quantum_mainframe>, <metaitem:circuit.quantum_mainframe>, <metaitem:plateDoublePlutonium241>, <metaitem:plateDoubleOsmiridium>, <metaitem:field.generator.iv> * 2, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:wireGtSingleIndiumTinBariumTitaniumCuprate> * 32], [<liquid:soldering_alloy> * 1152, <liquid:niobium_titanium> * 1152]).remove();
    //ZPM
      //RoBot Arm
        // ZPM Robot Arm * 1
          <recipemap:assembly_line>.findRecipe(24000, [<metaitem:stickLongOsmiridium> * 4, <metaitem:gearOsmiridium>, <metaitem:gearSmallOsmiridium> * 3, <metaitem:electric.motor.zpm> * 2, <metaitem:electric.piston.zpm>, <metaitem:circuit.quantum_mainframe>, <metaitem:circuit.nano_mainframe> * 2, <metaitem:circuit.mainframe> * 4, <metaitem:cableGtSingleVanadiumGallium> * 4], [<liquid:soldering_alloy> * 1152, <liquid:lubricant> * 500]).remove();
      //Emitter
        // ZPM Emitter * 1
          <recipemap:assembly_line>.findRecipe(24000, [<metaitem:frameNaquadahAlloy>, <metaitem:electric.motor.zpm>, <metaitem:stickLongOsmiridium> * 4, <metaitem:quantumstar> * 2, <metaitem:circuit.quantum_mainframe> * 2, <metaitem:foilTrinium> * 64, <metaitem:foilTrinium> * 32, <metaitem:cableGtSingleVanadiumGallium> * 4], [<liquid:soldering_alloy> * 576]).remove();
      //Sensor
        // ZPM Sensor * 1
          <recipemap:assembly_line>.findRecipe(24000, [<metaitem:frameNaquadahAlloy>, <metaitem:electric.motor.zpm>, <metaitem:plateOsmiridium> * 4, <metaitem:quantumstar> * 2, <metaitem:circuit.quantum_mainframe> * 2, <metaitem:foilTrinium> * 64, <metaitem:foilTrinium> * 32, <metaitem:cableGtSingleVanadiumGallium> * 4], [<liquid:soldering_alloy> * 576]).remove();
      //Field Generator
        // ZPM Field Generator * 1
          <recipemap:assembly_line>.findRecipe(24000, [<metaitem:frameNaquadahAlloy>, <metaitem:plateNaquadahAlloy> * 6, <metaitem:quantumstar>, <metaitem:emitter.zpm> * 2, <metaitem:circuit.quantum_mainframe> * 2, <metaitem:wireFineUraniumRhodiumDinaquadide> * 64, <metaitem:wireFineUraniumRhodiumDinaquadide> * 64, <metaitem:cableGtSingleVanadiumGallium> * 4], [<liquid:soldering_alloy> * 1152]).remove();
      //Fusion Reactor MK.2
        // Fusion Reactor Computer Mark 2 * 1
          <recipemap:assembly_line>.findRecipe(61440, [<gregtech:fusion_casing:1>, <metaitem:circuit.crystal_mainframe>, <metaitem:circuit.crystal_mainframe>, <metaitem:circuit.crystal_mainframe>, <metaitem:circuit.crystal_mainframe>, <metaitem:plateDoubleNaquadria>, <metaitem:plateDoubleEuropium>, <metaitem:field.generator.luv> * 2, <metaitem:plate.ultra_high_power_integrated_circuit> * 48, <metaitem:plate.ultra_high_power_integrated_circuit> * 48, <metaitem:wireGtSingleUraniumRhodiumDinaquadide> * 32], [<liquid:soldering_alloy> * 1152, <liquid:vanadium_gallium> * 1152]).remove();
    //UV
      //RoBot Arm
        // UV Robot Arm * 1
          <recipemap:assembly_line>.findRecipe(100000, [<metaitem:stickLongTritanium> * 4, <metaitem:gearTritanium>, <metaitem:gearSmallTritanium> * 3, <metaitem:electric.motor.uv> * 2, <metaitem:electric.piston.uv>, <metaitem:circuit.crystal_mainframe>, <metaitem:circuit.quantum_mainframe> * 2, <metaitem:circuit.nano_mainframe> * 4, <metaitem:cableGtSingleYttriumBariumCuprate> * 4], [<liquid:soldering_alloy> * 1728, <liquid:lubricant> * 1000, <liquid:naquadria> * 576]).remove();
      //Emitter
        // UV Emitter * 1
          <recipemap:assembly_line>.findRecipe(100000, [<metaitem:frameTritanium>, <metaitem:electric.motor.uv>, <metaitem:stickLongTritanium> * 4, <metaitem:gravistar>, <metaitem:circuit.crystal_mainframe> * 2, <metaitem:foilNaquadria> * 64, <metaitem:foilNaquadria> * 32, <metaitem:cableGtSingleYttriumBariumCuprate> * 4], [<liquid:soldering_alloy> * 1152, <liquid:naquadria> * 576]).remove();
      //Sensor
        // UV Sensor * 1
          <recipemap:assembly_line>.findRecipe(100000, [<metaitem:frameTritanium>, <metaitem:electric.motor.uv>, <metaitem:plateTritanium> * 4, <metaitem:gravistar>, <metaitem:circuit.crystal_mainframe> * 2, <metaitem:foilNaquadria> * 64, <metaitem:foilNaquadria> * 32, <metaitem:cableGtSingleYttriumBariumCuprate> * 4], [<liquid:soldering_alloy> * 1152, <liquid:naquadria> * 576]).remove();
      //Field Generator
        // UV Field Generator * 1
          <recipemap:assembly_line>.findRecipe(100000, [<metaitem:frameTritanium>, <metaitem:plateTritanium> * 6, <metaitem:gravistar>, <metaitem:emitter.uv> * 2, <metaitem:circuit.crystal_mainframe> * 2, <metaitem:wireFineEnrichedNaquadahTriniumEuropiumDuranide> * 64, <metaitem:wireFineEnrichedNaquadahTriniumEuropiumDuranide> * 64, <metaitem:cableGtSingleYttriumBariumCuprate> * 4], [<liquid:soldering_alloy> * 1728, <liquid:naquadria> * 576]).remove();
      //Fusion Reactor MK.3
        // Fusion Reactor Computer Mark 3 * 1
          <recipemap:assembly_line>.findRecipe(122880, [<gregtech:fusion_casing:1>, <metaitem:circuit.wetware_mainframe>, <metaitem:circuit.wetware_mainframe>, <metaitem:circuit.wetware_mainframe>, <metaitem:circuit.wetware_mainframe>, <metaitem:quantumstar>, <metaitem:plateDoubleAmericium>, <metaitem:field.generator.zpm> * 2, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:plate.ultra_high_power_integrated_circuit> * 64, <metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 32], [<liquid:soldering_alloy> * 1152, <liquid:yttrium_barium_cuprate> * 1152]).remove();
  //Assembling Machine Recipe Remove
    //IV
  //Chemical Reactor Remove
    // Copper Dust * 1
      <recipemap:electrolyzer>.findRecipe(60, null, [<liquid:sulfuric_copper_solution> * 1000]).remove();


//ADD Recipe
  //Casings
    //LV
      mods.extendedcrafting.TableCrafting.addShaped(1, <gregtech:machine_casing:1>, [
        [<ore:stickIronMagnetic>, <ore:plateDoubleSteel>, <ore:stickIronMagnetic>], 
        [<ore:plateDoubleSteel>, <extendedcrafting:material:8>, <ore:plateDoubleSteel>], 
        [<ore:stickIronMagnetic>, <ore:plateDoubleSteel>, <ore:stickIronMagnetic>]
      ]);
    //LV(Ass)

    //MV
      mods.extendedcrafting.TableCrafting.addShaped(2, <gregtech:machine_casing:2>, [
      [<ore:plateManasteel>, <ore:plateDoubleAluminium>, <ore:plateManasteel>, <ore:plateDoubleAluminium>, <ore:plateManasteel>], 
      [<ore:plateDoubleAluminium>, <gregtech:meta_item_1:188>, <gregtech:machine_casing:1>, <gregtech:meta_item_1:158>, <ore:plateDoubleAluminium>], 
      [<ore:plateManasteel>, <gregtech:machine_casing:1>, <ore:gearBlackSteel>, <gregtech:machine_casing:1>, <ore:plateManasteel>], 
      [<ore:plateDoubleAluminium>, <gregtech:meta_item_1:173>, <gregtech:machine_casing:1>, <gregtech:meta_item_1:128>, <ore:plateDoubleAluminium>], 
      [<ore:plateManasteel>, <ore:plateDoubleAluminium>, <ore:plateManasteel>, <ore:plateDoubleAluminium>, <ore:plateManasteel>]
    ]);
    //MV(Ass)

    //HV
      mods.extendedcrafting.TableCrafting.addShaped(2, <gregtech:machine_casing:3>, [
        [<ore:alloyAdvanced>, <ore:plateDoubleStainlessSteel>, <ore:plateBasic>, <ore:plateDoubleStainlessSteel>, <ore:alloyAdvanced>], 
        [<ore:plateDoubleStainlessSteel>, <ore:ingotAstralStarmetal>, <ore:plateSignalum>, <ore:ingotAstralStarmetal>, <ore:plateDoubleStainlessSteel>], 
        [<ore:plateBasic>, <ore:plateSignalum>, <ore:circuitEv>, <ore:plateSignalum>, <ore:plateBasic>], 
        [<ore:plateDoubleStainlessSteel>, <ore:ingotAstralStarmetal>, <ore:plateSignalum>, <ore:ingotAstralStarmetal>, <ore:plateDoubleStainlessSteel>], 
        [<ore:alloyAdvanced>, <ore:plateDoubleStainlessSteel>, <ore:plateBasic>, <ore:plateDoubleStainlessSteel>, <ore:alloyAdvanced>]
      ]);
    //HV(Ass)

    //EV
      mods.extendedcrafting.TableCrafting.addShaped(3, <gregtech:machine_casing:4>, [
      [<extrautils2:opinium:5>, <ore:plateTitanium>, <ore:plateTitanium>, <ore:stickHDPE>, <ore:plateTitanium>, <ore:plateTitanium>, <extrautils2:opinium:5>], 
      [<ore:plateTitanium>, <ore:alloyElite>, <deepmoblearning:soot_covered_plate>, <ore:itemUnsouledMachineChassi>, <deepmoblearning:soot_covered_plate>, <ore:alloyElite>, <ore:plateTitanium>], 
      [<ore:plateTitanium>, <deepmoblearning:soot_covered_plate>, <thaumcraft:mechanism_complex>, <botanicadds:rune_energy>, <thaumcraft:mechanism_complex>, <deepmoblearning:soot_covered_plate>, <ore:plateTitanium>], 
      [<ore:stickHDPE>, <ore:itemUnsouledMachineChassi>, <botanicadds:rune_energy>, <ore:ingotAmericium242Base>, <botanicadds:rune_energy>, <ore:itemUnsouledMachineChassi>, <ore:stickHDPE>], 
      [<ore:plateTitanium>, <deepmoblearning:soot_covered_plate>, <thaumcraft:mechanism_complex>, <botanicadds:rune_energy>, <thaumcraft:mechanism_complex>, <deepmoblearning:soot_covered_plate>, <ore:plateTitanium>], 
      [<ore:plateTitanium>, <ore:alloyElite>, <deepmoblearning:soot_covered_plate>, <ore:itemUnsouledMachineChassi>, <deepmoblearning:soot_covered_plate>, <ore:alloyElite>, <ore:plateTitanium>], 
      [<extrautils2:opinium:5>, <ore:plateTitanium>, <ore:plateTitanium>, <ore:stickHDPE>, <ore:plateTitanium>, <ore:plateTitanium>, <extrautils2:opinium:5>]
    ]);
    //EV(Ass)

    //IV
      AlterT4Recipe("GTNE:shaped/internal/altar/casingiv", <gregtech:machine_casing:5>, 7000, 100, [
        <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}), <ore:itemEndSteelMachineChassi>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.evorsio"}}), <ore:itemEndSteelMachineChassi>, <gregtech:machine_casing:4>, 
        <ore:itemEndSteelMachineChassi>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}), <ore:itemEndSteelMachineChassi>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}), <ore:circuitElite>, 
        <ore:circuitElite>, <ore:circuitElite>, <ore:circuitElite>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>,
        <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>, <ore:plateDoubleTungstenSteel>, 
        <ore:plateDoubleTungstenSteel>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
        //Outer Items, indices 25+
        <avaritia:resource:1>, <avaritia:resource:1>, <gregtech:transparent_casing:2>, <gregtech:transparent_casing:2>, <gregtech:transparent_casing:2>, <gregtech:transparent_casing:2>, <draconicevolution:wyvern_core>, <draconicevolution:wyvern_core>
      ],
      "astralsorcery.constellation.horologium");
    //IV(Ass)

    //LuV
      mods.extendedcrafting.TableCrafting.addShaped(4, <gregtech:machine_casing:6>, [
        [<botania:storage:1>, <ore:plateDoubleRhodiumPlatedPalladium>, <tconstruct:large_plate>.withTag({Material: "xu_evil_metal"}), <ore:plateDoubleRhodiumPlatedPalladium>, <ore:plateElite>, <ore:plateDoubleRhodiumPlatedPalladium>, <tconstruct:large_plate>.withTag({Material: "xu_evil_metal"}), <ore:plateDoubleRhodiumPlatedPalladium>, <botania:storage:1>], 
        [<ore:plateDoubleRhodiumPlatedPalladium>, <ore:ingotCrystalMatrix>, <ore:circuitLuv>, <ore:alloyUltimate>, <ore:ingotCalifornium251Base>, <ore:alloyUltimate>, <ore:circuitLuv>, <ore:ingotCrystalMatrix>, <ore:plateDoubleRhodiumPlatedPalladium>], 
        [<tconstruct:large_plate>.withTag({Material: "xu_evil_metal"}), <ore:circuitZpm>, <gregtech:meta_item_1:206>, <ore:circuitZpm>, <ore:skullSentientEnder>, <ore:circuitZpm>, <gregtech:meta_item_1:206>, <ore:circuitZpm>, <tconstruct:large_plate>.withTag({Material: "xu_evil_metal"})], 
        [<ore:plateDoubleRhodiumPlatedPalladium>, <ore:alloyUltimate>, <ore:circuitLuv>, <ore:ingotCrystalMatrix>, <thaumcraft:primordial_pearl>, <ore:ingotCrystalMatrix>, <ore:circuitLuv>, <ore:alloyUltimate>, <ore:plateDoubleRhodiumPlatedPalladium>], 
        [<ore:plateElite>, <ore:ingotCalifornium251Base>, <ore:skullSentientEnder>, <iceandfire:fire_dragon_heart>, <gregtech:meta_item_1:282>, <iceandfire:ice_dragon_heart>, <ore:skullSentientEnder>, <ore:ingotCalifornium251Base>, <ore:plateElite>], 
        [<ore:plateDoubleRhodiumPlatedPalladium>, <ore:alloyUltimate>, <ore:circuitLuv>, <ore:ingotCrystalMatrix>, <astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.horologium"}}), <ore:ingotCrystalMatrix>, <ore:circuitLuv>, <ore:alloyUltimate>, <ore:plateDoubleRhodiumPlatedPalladium>], 
        [<tconstruct:large_plate>.withTag({Material: "xu_evil_metal"}), <ore:circuitZpm>, <gregtech:meta_item_1:206>, <ore:circuitZpm>, <ore:skullSentientEnder>, <ore:circuitZpm>, <gregtech:meta_item_1:206>, <ore:circuitZpm>, <tconstruct:large_plate>.withTag({Material: "xu_evil_metal"})], 
        [<ore:plateDoubleRhodiumPlatedPalladium>, <ore:ingotCrystalMatrix>, <ore:circuitLuv>, <ore:alloyUltimate>, <ore:ingotCalifornium251Base>, <ore:alloyUltimate>, <ore:circuitLuv>, <ore:ingotCrystalMatrix>, <ore:plateDoubleRhodiumPlatedPalladium>], 
        [<botania:storage:1>, <ore:plateDoubleRhodiumPlatedPalladium>, <tconstruct:large_plate>.withTag({Material: "xu_evil_metal"}), <ore:plateDoubleRhodiumPlatedPalladium>, <ore:plateElite>, <ore:plateDoubleRhodiumPlatedPalladium>, <tconstruct:large_plate>.withTag({Material: "xu_evil_metal"}), <ore:plateDoubleRhodiumPlatedPalladium>, <botania:storage:1>]
      ]);
    //LuV(Ass)

    //ZPM
      mods.extendedcrafting.TableCrafting.addShaped(4, <gregtech:machine_casing:7>, [
        [<draconicevolution:wyvern_energy_core>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateElectrumFlux>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <draconicevolution:wyvern_energy_core>], 
        [<ore:plateNaquadahAlloy>, <ore:plateDoubleGaia>, <ore:plateDoubleTerrasteel>, <ore:plateDoubleTerrasteel>, <ore:itemEnhancedMachineChassi>, <ore:plateDoubleTerrasteel>, <ore:plateDoubleTerrasteel>, <ore:plateDoubleGaia>, <ore:plateNaquadahAlloy>], 
        [<ore:plateNaquadahAlloy>, <ore:plateDoubleTerrasteel>, <ore:blockCrystalMatrix>, <ore:ingotIceDragonsteel>, <ore:ingotFireDragonsteel>, <ore:ingotFireDragonsteel>, <ore:blockCrystalMatrix>, <ore:plateDoubleTerrasteel>, <ore:plateNaquadahAlloy>], 
        [<ore:plateNaquadahAlloy>, <ore:plateDoubleTerrasteel>, <ore:ingotIceDragonsteel>, <ore:plateMithminite>, <ore:circuitUv>, <ore:plateMithminite>, <ore:ingotFireDragonsteel>, <ore:plateDoubleTerrasteel>, <ore:plateNaquadahAlloy>], 
        [<ore:plateElectrumFlux>, <ore:itemEnhancedMachineChassi>, <ore:ingotIceDragonsteel>, <ore:circuitUv>, <extrautils2:opinium:8>, <ore:circuitUv>, <ore:ingotIceDragonsteel>, <ore:itemEnhancedMachineChassi>, <ore:plateElectrumFlux>], 
        [<ore:plateNaquadahAlloy>, <ore:plateDoubleTerrasteel>, <ore:ingotFireDragonsteel>, <ore:plateMithminite>, <ore:circuitUv>, <ore:plateMithminite>, <ore:ingotIceDragonsteel>, <ore:plateDoubleTerrasteel>, <ore:plateNaquadahAlloy>], 
        [<ore:plateNaquadahAlloy>, <ore:plateDoubleTerrasteel>, <ore:blockCrystalMatrix>, <ore:ingotFireDragonsteel>, <ore:ingotFireDragonsteel>, <ore:ingotIceDragonsteel>, <ore:blockCrystalMatrix>, <ore:plateDoubleTerrasteel>, <ore:plateNaquadahAlloy>], 
        [<ore:plateNaquadahAlloy>, <ore:plateDoubleGaia>, <ore:plateDoubleTerrasteel>, <ore:plateDoubleTerrasteel>, <ore:itemEnhancedMachineChassi>, <ore:plateDoubleTerrasteel>, <ore:plateDoubleTerrasteel>, <ore:plateDoubleGaia>, <ore:plateNaquadahAlloy>], 
        [<draconicevolution:wyvern_energy_core>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateElectrumFlux>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <draconicevolution:wyvern_energy_core>]
      ]);
    //ZPM(Ass)

    //UV

    //UV(Ass)

    //UHV

    //UHV(Ass)
  //Other Ages
    //SteamAge

    //LV Age
      //DogeCoin(LV?)
        forming_press.recipeBuilder()
          .inputs([
            <ore:blockGold> * 64,
            <ore:blockGold> * 64,
            <ore:blockGold> * 64,
            <ore:blockGold> * 64,
            <ore:blockGold> * 64,
            <ore:blockGold> * 64
          ])
          .outputs(<gregtech:meta_item_1:9>)
          .EUt(10)
          .duration(2147483647)
          .buildAndRegister();
    //MV Age
      //Seleninum
        electrolyzer.recipeBuilder()
          .fluidInputs(<liquid:sulfuric_copper_solution> * 1000)
          .outputs([
            <gregtech:meta_dust_small:32027> * 2,
            <gregtech:meta_dust:25>
          ])
          .fluidOutputs([
            <liquid:oxygen> * 1000,
            <liquid:sulfuric_acid> * 1000
          ])
          .EUt(120)
          .duration(160)
          .buildAndRegister();
    //HV Age
      //Lens
        //Lazurite Lens
          lathe.recipeBuilder()
            .inputs(<gregtech:meta_gem_exquisite:289>)
            .outputs(<contenttweaker:lens_lazurite>)
            .EUt(360)
            .duration(1200)
            .buildAndRegister();
        //Uvarovite Lens
          lathe.recipeBuilder()
            .inputs(<gregtech:meta_gem_exquisite:333>)
            .outputs(<contenttweaker:lens_uvarovite>)
            .EUt(360)
            .duration(1200)
            .buildAndRegister();

    //EV Age

    //IV Age
      //AssLine GTNH Recipe
        //Ass Line Casing
          assembler.recipeBuilder()
            .inputs([
              <gcym:large_multiblock_casing:2>,
              <ore:circuitZpm> * 6,
              <ore:circuitLuv>,
              <gregtech:meta_item_1:236> * 2,
              <gregtech:meta_item_1:221> * 2
              ])
            .outputs(<gregtech:multiblock_casing:3>)
            .fluidInputs(<liquid:hsse> * 576)
            .EUt(7680)
            .duration(100)
            .buildAndRegister();
        //Ass Controll Casing
          assembler.recipeBuilder()
            .inputs([
              <gregtech:meta_block_frame_125:13>,
              <gregtech:meta_gear:310> * 2,
              <gregtech:meta_gear_small:396> * 4,
              <gregtech:meta_item_1:191> * 2,
              <gregtech:meta_item_1:131> * 4,
              <gregtech:meta_item_1:236>,
              <gregtech:meta_item_1:262>
            ])
            .outputs(<gregtech:multiblock_casing:4>)
            .fluidInputs(<liquid:hsse> * 1440)
            .EUt(7680)
            .duration(160)
            .buildAndRegister();
        //Ass Line
          assembler.recipeBuilder()
            .inputs([
              <gregtech:multiblock_casing:3>,
              <gregtech:multiblock_casing:4>,
              <ore:circuitZpm> * 4,
              <gregtech:meta_gear:396> * 16,
              <gregtech:meta_item_1:191> * 4,
              <gregtech:meta_item_1:206> * 2,
              <gregtech:meta_item_1:605> * 16,
              <gregtech:cable_single:32014> * 8,
              <nuclearcraft:part:3> * 4
            ])
            .outputs(<gregtech:machine:1019>)
            .fluidInputs(<liquid:enderium> * 576)
            .EUt(7680)
            .duration(200)
            .buildAndRegister();
      //Other Compoments
        //Sensor
          assembler.recipeBuilder()
            .inputs([
              <gregtech:meta_block_frame_125:13>,
              <gregtech:meta_plate:2013> * 4,
              <gregtech:meta_stick:50>,
              <gregtech:meta_item_1:282>,
              <ore:circuitIv> * 2,
              <gregtech:meta_item_1:235> * 2,
              <gregtech:meta_item_1:234> * 4,
              <gregtech:meta_item_1:233> * 8,
              <gregtech:cable_single:115> * 4
            ])
            .outputs(<gregtech:meta_item_1:236>)
            .fluidInputs(<liquid:soldering_alloy> * 576)
            .EUt(1920)
            .duration(240)
            .buildAndRegister();
        //Field Generator
    //LuV Age
      //Other Compoments
        //RoBot Arm
          assline.recipeBuilder()
            .inputs([
              <gregtech:meta_stick_long:2520> * 4,
              <gregtech:meta_gear:2520>,
              <gregtech:meta_gear_small:2520> * 4,
              <gregtech:meta_item_1:132> * 2,
              <gregtech:meta_item_1:177>,
              <ore:circuitLuv> * 2,
              <ore:circuitIv> * 4,
              <ore:circuitEv> * 8,
              <gregtech:cable_single:296> * 6
            ])
            .outputs([<gregtech:meta_item_1:192>])
            .fluidInputs([
              <liquid:soldering_alloy> * 576,
              <liquid:lubricant> * 500
            ])
            .EUt(6000)
            .duration(600)
            .buildAndRegister();
        //Emitter
          assline.recipeBuilder()
            .inputs([
              <gregtech:meta_block_frame_157:8>,
              <gregtech:meta_item_1:132> * 2,
              <gregtech:meta_stick_long:310> * 4,
              <gregtech:meta_item_1:282> * 2,
              <ore:circuitLuv> * 2,
              <gregtech:meta_item_1:221> * 2,
              <gregtech:meta_item_1:220> * 4,
              <gregtech:meta_item_1:219> * 8,
              <gregtech:meta_foil:77> * 64,
              <gregtech:meta_foil:77> * 64,
              <gregtech:meta_foil:77> * 64,
              <gregtech:cable_single:296> * 6
            ])
            .outputs([<gregtech:meta_item_1:222>])
            .fluidInputs([
              <liquid:soldering_alloy> * 1440,
              <liquid:osmiridium> * 288
            ])
            .EUt(7500)
            .duration(800)
            .buildAndRegister();
        //Sensor
          assline.recipeBuilder()
            .inputs([
              <gregtech:meta_block_frame_157:8>,
              <gregtech:meta_item_1:132> * 2,
              <gregtech:meta_plate:310> * 4,
              <gregtech:meta_item_1:282> * 2,
              <ore:circuitLuv> * 2,
              <gregtech:meta_item_1:236> * 2,
              <gregtech:meta_item_1:235> * 4,
              <gregtech:meta_item_1:234> * 8,
              <gregtech:meta_foil:77> * 64,
              <gregtech:meta_foil:77> * 64,
              <gregtech:meta_foil:77> * 64,
              <gregtech:cable_single:296> * 6
            ])
            .outputs([<gregtech:meta_item_1:237>])
            .fluidInputs([
              <liquid:soldering_alloy> * 1440,
              <liquid:osmiridium> * 288
            ])
            .EUt(7500)
            .duration(800)
            .buildAndRegister();
        //Field Generator
          assline.recipeBuilder()
            .inputs([
              <gregtech:meta_block_frame_157:8> * 2,
              <gregtech:meta_plate:2520> * 8,
              <gregtech:meta_plate:33> * 4,
              <gregtech:meta_item_1:282> * 2,
              <gregtech:meta_item_1:262>,
              <gregtech:meta_item_1:237> * 2,
              <gregtech:meta_item_1:222> * 2,
              <gregtech:meta_item_1:206> * 2,
              <ore:circuitLuv> * 4,
              <gregtech:meta_wire_fine:429> * 64,
              <gregtech:meta_wire_fine:429> * 64,
              <gregtech:meta_wire_fine:429> * 64,
              <gregtech:cable_single:296> * 10
            ])
            .outputs([<gregtech:meta_item_1:207>])
            .fluidInputs([
              <liquid:soldering_alloy> * 2880,
              <liquid:europium> * 288
            ])
            .EUt(12000)
            .duration(4800)
            .buildAndRegister();
    //Fusion Reactor Mk.1
      assline.recipeBuilder()
        .inputs([
          <gregtech:fusion_casing> * 2,
          <ore:circuitZpm> * 4,
          <ore:circuitZpm> * 4,
          <ore:circuitZpm> * 4,
          <ore:circuitZpm> * 4,
          <mekanism:controlcircuit:3> * 16,
          <gregtech:meta_plate_double:82> * 2,
          <gregtech:meta_plate_double:344> * 4,
          <draconicevolution:wyvern_core> * 8,
          <gregtech:meta_item_1:206> * 8,
          <gregtech:meta_item_1:606> * 64,
          <gregtech:wire_double:429> * 32,
          <nuclearcraft:part:3> * 32
        ])
        .outputs([<gregtech:machine:1020>])
        .fluidInputs([
          <liquid:soldering_alloy> * 1152,
          <liquid:niobium_titanium> * 1152,
          <liquid:naquadah> * 1152
        ])
        .EUt(32768)
        .duration(20000)
        .buildAndRegister();
      //AssLine LuV Recipe
        //Assembling Controll Casing

        //Assembling Line Casing

    //ZPM Age
      //Otehr Compoments
        //RoBot Arm
          assline.recipeBuilder()
            .inputs([
              <gregtech:meta_stick_long:2042> * 4,
              <gregtech:meta_gear:2042>,
              <gregtech:meta_gear_small:2042> * 4,
              <gregtech:meta_item_1:133> * 2,
              <gregtech:meta_item_1:178>,
              <ore:circuitZpm> * 2,
              <ore:circuitLuv> * 4,
              <ore:circuitIv> * 8,
              <gregtech:cable_single:334> * 6
            ])
            .outputs([<gregtech:meta_item_1:193>])
            .fluidInputs([
              <liquid:soldering_alloy> * 1152,
              <liquid:lubricant> * 500
            ])
            .EUt(32000)
            .duration(800)
            .buildAndRegister();
        //Emitter
          assline.recipeBuilder()
            .inputs([
              <gregtech:meta_block_frame_127:10>,
              <gregtech:meta_item_1:133> * 2,
              <gregtech:meta_stick_long:2042> * 4,
              <gregtech:meta_item_1:282> * 4,
              <ore:circuitZpm> * 2,
              <gregtech:meta_item_1:222> * 2,
              <gregtech:meta_item_1:221> * 4,
              <gregtech:meta_item_1:220> * 8,
              <gregtech:meta_foil:130> * 64,
              <gregtech:meta_foil:130> * 64,
              <gregtech:meta_foil:130> * 64,
              <gregtech:cable_single:334> * 6
            ])
            .outputs([<gregtech:meta_item_1:223>])
            .fluidInputs([
              <liquid:soldering_alloy> * 2800,
              <liquid:naquadah_alloy> * 288
            ])
            .EUt(40000)
            .duration(1200)
            .buildAndRegister();
        //Sensor
          assline.recipeBuilder()
            .inputs([
              <gregtech:meta_block_frame_127:10>,
              <gregtech:meta_item_1:133> * 2,
              <gregtech:meta_plate:2042> * 4,
              <gregtech:meta_item_1:282> * 4,
              <ore:circuitZpm> * 2,
              <gregtech:meta_item_1:237> * 2,
              <gregtech:meta_item_1:236> * 4,
              <gregtech:meta_item_1:235> * 8,
              <gregtech:meta_foil:130> * 64,
              <gregtech:meta_foil:130> * 64,
              <gregtech:meta_foil:130> * 64,
              <gregtech:cable_single:334> * 6
            ])
            .outputs([<gregtech:meta_item_1:238>])
            .fluidInputs([
              <liquid:soldering_alloy> * 2880,
              <liquid:naquadah_alloy> * 288
            ])
            .EUt(40000)
            .duration(1200)
            .buildAndRegister();
        //Field Generator
          assline.recipeBuilder()
            .inputs([
              <gregtech:meta_block_frame_127:10>,
              <gregtech:meta_plate:2042> * 8,
              <gregtech:meta_plate:3> * 4,
              <gregtech:meta_item_1:282> * 4,
              <gregtech:meta_item_1:262> * 2,
              <gregtech:meta_item_1:238> * 2,
              <gregtech:meta_item_1:223> * 2,
              <gregtech:meta_item_1:207> * 2,
              <ore:circuitZpm> * 4,
              <gregtech:meta_wire_fine:430> * 64,
              <gregtech:meta_wire_fine:430> * 64,
              <gregtech:meta_wire_fine:430> * 64,
              <gregtech:cable_single:334> * 10
            ])
            .outputs([<gregtech:meta_item_1:208>])
            .fluidInputs([
              <liquid:soldering_alloy> * 5760,
              <liquid:americium> * 288,
              <liquid:draconiumawakened> * 16
            ])
            .EUt(65536)
            .duration(1600)
            .buildAndRegister();
      //Fusion Reactor MK.2
        assline.recipeBuilder()
          .inputs([
            <gregtech:fusion_casing:1> * 2,
            <ore:circuitUv> * 4,
            <ore:circuitUv> * 4,
            <ore:circuitUv> * 4,
            <ore:circuitUv> * 4,
            <mekanism:controlcircuit:3> * 64,
            <gregtech:meta_plate_double:126> * 2,
            <gregtech:meta_plate_double:33> * 4,
            <gregtech:meta_spring:33> * 4,
            <draconicevolution:wyvern_core> * 16,
            <gregtech:meta_item_1:207> * 8,
            <gregtech:meta_item_1:606> * 64,
            <gregtech:meta_item_1:606> * 64,
            <gregtech:wire_double:430> * 32,
            <gregtech:meta_item_1:497> * 32,
            <nuclearcraft:part:3> * 32
          ])
          .outputs([<gregtech:machine:1021>])
          .fluidInputs([
            <liquid:soldering_alloy> * 2880,
            <liquid:vanadium_gallium> * 2880,
            <liquid:naquadah_alloy> * 2880,
            <liquid:fluxed_electrum> * 2880
          ])
          .EUt(131072)
          .duration(40000)
          .buildAndRegister();
      //HASoc
        assline.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:595> * 64,
            <gregtech:meta_item_1:598> * 64,
            <gregtech:meta_item_1:598> * 64,
            <gregtech:meta_item_1:592> * 64,
            <gregtech:meta_item_1:592> * 64,
            <gregtech:meta_item_1:592> * 64,
            <gregtech:meta_item_1:592> * 64,
            <gregtech:meta_item_1:601> * 64,
            <gregtech:meta_item_1:601> * 64,
            <gregtech:meta_item_1:528> * 64,
            <gregtech:meta_item_1:529> * 64,
            <gregtech:meta_item_1:530> * 64,
            <gregtech:meta_item_1:531> * 64,
            <gregtech:meta_item_1:532> * 64,
            <gregtech:meta_item_1:606> * 32,
            <gregtech:meta_wire_fine:344> * 64
          ])
          .outputs([<gregtech:meta_item_1:599> * 4])
          .fluidInputs([
            <liquid:soldering_alloy> * 144000
          ])
          .EUt(200000)
          .duration(640)
          .buildAndRegister();
            //ちんちん！！！！！！！！！！！！！！！！！！
              //５０００兆原石ほしい！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！
    //UV Age
      //Other Compoment
        //RoBot Arm
          assline.recipeBuilder()
            .inputs([
              <gregtech:meta_stick_long:128> * 6,
              <gregtech:meta_gear:128> * 2,
              <gregtech:meta_gear_small:128> * 8,
              <gregtech:meta_item_1:134> * 4,
              <gregtech:meta_item_1:179> * 2,
              <ore:circuitUv> * 4,
              <ore:circuitZpm> * 6,
              <ore:circuitLuv> * 10,
              <gregtech:cable_single:338> * 8
            ])
            .outputs([<gregtech:meta_item_1:194>])
            .fluidInputs([
              <liquid:soldering_alloy> * 1728,
              <liquid:lubricant> * 1500,
              <liquid:naquadria> * 576,
              <liquid:naquadah_alloy> * 1152
            ])
            .EUt(120000)
            .duration(640)
            .buildAndRegister();
        //Emitetr
          assline.recipeBuilder()
            .inputs([
              <gregtech:meta_block_frame_8>,
              <gregtech:meta_item_1:134> * 2,
              <gregtech:meta_stick_long:128> * 4,
              <gregtech:meta_item_1:283> * 2,
              <ore:circuitUv> * 4,
              <gregtech:meta_item_1:223> * 2,
              <gregtech:meta_item_1:222> * 4,
              <gregtech:meta_item_1:221> * 8,
              <gregtech:meta_foil:126> * 64,
              <gregtech:meta_foil:126> * 64,
              <gregtech:meta_foil:126> * 64,
              <gregtech:cable_single:338> * 8
            ])
            .outputs([<gregtech:meta_item_1:224>])
            .fluidInputs([
              <liquid:soldering_alloy> * 5760,
              <liquid:naquadria_tetratrinite> * 300,
              <liquid:naquadria> * 1152,
              <liquid:draconiumawakened> * 1440
            ])
            .EUt(200000)
            .duration(800)
            .buildAndRegister();
        //Sensor
          assline.recipeBuilder()
            .inputs([
              <gregtech:meta_block_frame_8>,
              <gregtech:meta_item_1:134> * 2,
              <gregtech:meta_plate:128> * 4,
              <gregtech:meta_item_1:283> * 2,
              <ore:circuitUv> * 2,
              <gregtech:meta_item_1:238> * 2,
              <gregtech:meta_item_1:237> * 4,
              <gregtech:meta_item_1:236> * 8,
              <gregtech:meta_foil:126> * 64,
              <gregtech:meta_foil:126> * 64,
              <gregtech:meta_foil:126> * 64,
              <gregtech:cable_single:338> * 8
            ])
            .outputs([<gregtech:meta_item_1:239>])
            .fluidInputs([
              <liquid:soldering_alloy> * 5760,
              <liquid:naquadria_tetratrinite> * 300,
              <liquid:naquadria> * 1152,
              <liquid:draconiumawakened> * 1440
            ])
            .EUt(200000)
            .duration(800)
            .buildAndRegister();
        //Field Generator
          assline.recipeBuilder()
            .inputs([
              <gregtech:meta_block_frame_8> * 2,
              <gregtech:meta_plate:128> * 8,
              <gregtech:meta_plate:127> * 4,
              <gregtech:meta_item_1:283> * 4,
              <gregtech:meta_item_1:262> * 4,
              <gregtech:meta_item_1:239> * 2,
              <gregtech:meta_item_1:224> * 2,
              <gregtech:meta_item_1:208> * 2,
              <ore:circuitUv> * 6,
              <gregtech:meta_item_1:599> * 64,
              <gregtech:meta_item_1:606> * 64,
              <gregtech:meta_wire_fine:431> * 64,
              <gregtech:meta_wire_fine:431> * 64,
              <gregtech:meta_wire_fine:431> * 64,
              <gregtech:cable_single:338> * 10
            ])
            .outputs([<gregtech:meta_item_1:209>])
            .fluidInputs([
              <liquid:soldering_alloy> * 5760,
              <liquid:naquadria_tetratrinite> * 300,
              <liquid:naquadria> * 1152,
              <liquid:draconiumawakened> * 1440
            ])
            .EUt(524288)
            .duration(1000)
            .buildAndRegister();
      //Fusion Reactor Mk.3
        advanced_precision_assembly_line.recipeBuilder()
          .inputs([
              <gregtech:fusion_casing:4> * 2,
              <gregtech:fusion_casing:1> * 4,
              <gregtech:machine:1020>,
              <gregtech:machine:1021>,
              <ore:circuitUhv> * 32,
              <ore:circuitUv> * 64,
              <draconicevolution:awakened_core> * 16,
              <draconicevolution:draconic_core> * 64,
              <gregtech:meta_plate_double:3> * 8,
              <gregtech:meta_plate_double:126> * 16,
              <gregtech:meta_spring:32008> * 8,
              <gregtech:meta_item_1:104> * 32,
              <gregtech:meta_item_1:208> * 4,
              <gregtech:meta_item_1:751> * 4,
              <draconicevolution:draconic_energy_core> * 8,
              <gregtech:meta_item_1:606> * 64,
              <gregtech:meta_item_1:599> * 64,
              <gregtech:wire_double:431> * 32,
              <nuclearcraft:part:3> * 64,
              <gregtech:meta_item_1:497> * 64
            ])
            .fluidInputs([
              <liquid:soldering_alloy> * 144000,
              <liquid:naquadah_alloy> * 11520,
              <liquid:yttrium_barium_cuprate> * 28800,
              <liquid:draconiumawakened> * 14400,
              <liquid:uranium_rhodium_dinaquadide> * 14400,
              <liquid:uranium_rhodium_dinaquadide> * 144000,
              <liquid:uu_matter> * 64000,
              <liquid:liquid_helium> * 72000
            ])
            .outputs([
              <gregtech:machine:1022>
            ])
            .EUt(2621440)
            .duration(80000)
            .buildAndRegister();
      //Fusion Reactor Mk.3(廉価版)
        assline.recipeBuilder()
          .inputs([
            <gregtech:fusion_casing:1> * 2,
            <gregtech:meta_item_1:647> * 8,
            <draconicevolution:awakened_core> * 4,
            <draconicevolution:wyvern_core> * 16,
            <gregtech:meta_plate:32011> * 4,
            <gregtech:meta_item_1:104> * 16,
            <gregtech:meta_item_1:209> * 2,
            <gregtech:meta_item_1:606> * 64,
            <gregtech:meta_item_1:599> * 64,
            <gregtech:wire_single:432> * 16,
            <nuclearcraft:part:3> * 64,
            <gregtech:meta_item_1:497> * 32
          ])
          .outputs([<gregtech:machine:1022>])
          .fluidInputs([
            <liquid:soldering_alloy> * 14000,
            <liquid:yttrium_barium_cuprate> * 2880,
            <liquid:naquadah_alloy> * 1440,
            <liquid:draconiumawakened> * 1440
          ])
          .EUt(4000000)
          .duration(15000)
          .buildAndRegister();
    //UHV Age

    //UEV Age

    //UIV Age

    //UXV Age

    //MAX Age

    //Creative Age
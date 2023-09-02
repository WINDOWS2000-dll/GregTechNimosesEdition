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
import mods.mekanism.infuser as Infuser;

print("------MEKAMISM_LOADING_START------");

//Remove Recipe
  //Infuser Recipe Remove
    Infuser.removeRecipe(<mekanism:enrichedalloy>);
    Infuser.removeRecipe(<mekanism:reinforcedalloy>);
    Infuser.removeRecipe(<mekanism:atomicalloy>);
    Infuser.removeRecipe(<mekanism:controlcircuit>);
  //さぎょーだいれしぴけすやつ
    var arrayMekanismRemove = [<mekanism:electricbow>,<mekanism:energytablet>,<mekanism:speedupgrade>,<mekanism:energyupgrade>,<mekanism:filterupgrade>,<mekanism:mufflingupgrade>,<mekanism:gasupgrade>,<mekanism:anchorupgrade>,<mekanism:robit>,<mekanism:atomicdisassembler>,<mekanism:controlcircuit:1>,<mekanism:controlcircuit:2>,<mekanism:controlcircuit:3>,<mekanism:portableteleporter>,<mekanism:teleportationcore>,<mekanism:configurator>,<mekanism:networkreader>,<mekanism:walkietalkie>,<mekanism:jetpack>,<mekanism:dictionary>,<mekanism:gasmask>,<mekanism:scubatank>,<mekanism:electrolyticcore>,<mekanism:freerunners>,<mekanism:armoredjetpack>,<mekanism:configurationcard>,<mekanism:craftingformula>,<mekanism:seismicreader>,<mekanism:flamethrower>,<mekanism:gaugedropper>,<mekanism:tierinstaller>,<mekanism:tierinstaller:1>,<mekanism:tierinstaller:2>,<mekanism:tierinstaller:3>,<mekanism:basicblock:6>.withTag({tier: 0}),<mekanism:basicblock:6>.withTag({tier: 1}),<mekanism:basicblock:6>.withTag({tier: 2}),<mekanism:basicblock:6>.withTag({tier: 3}),<mekanism:basicblock:7>,<mekanism:basicblock:11>,<mekanism:basicblock:10>,<mekanism:basicblock:9>,<mekanism:basicblock:8>,<mekanism:basicblock:14>,<mekanism:basicblock:15>,<mekanism:basicblock2>,<mekanism:basicblock2:1>,<mekanism:basicblock2:2>,<mekanism:basicblock2:3>.withTag({tier: 0}),<mekanism:basicblock2:3>.withTag({tier: 1}),<mekanism:basicblock2:3>.withTag({tier: 2}),<mekanism:basicblock2:3>.withTag({tier: 3}),
    <mekanism:basicblock2:4>.withTag({tier: 0}),<mekanism:basicblock2:4>.withTag({tier: 1}),<mekanism:basicblock2:4>.withTag({tier: 2}),<mekanism:basicblock2:4>.withTag({tier: 3}),<mekanism:basicblock2:5>,<mekanism:basicblock2:6>,<mekanism:basicblock2:7>,<mekanism:basicblock2:8>,<mekanism:basicblock2:9>,<mekanism:machineblock:11>,<mekanism:machineblock:12>,<mekanism:machineblock:15>,<mekanism:machineblock:14>,<mekanism:machineblock:13>,<mekanism:machineblock2:11>.withTag({tier: 0}),
    <mekanism:machineblock2:11>.withTag({tier: 1}),
    <mekanism:machineblock2:11>.withTag({tier: 2}),
    <mekanism:machineblock2:11>.withTag({tier: 3}),<mekanism:machineblock2:12>,<mekanism:machineblock2:15>,<mekanism:machineblock2:14>,<mekanism:machineblock2:13>,<mekanism:machineblock3>,<mekanism:machineblock3:1>,<mekanism:machineblock3:3>,<mekanism:energycube>.withTag({tier: 0}),<mekanism:energycube>.withTag({tier: 1}),<mekanism:energycube>.withTag({tier: 2}),<mekanism:energycube>.withTag({tier: 3}),<mekanismgenerators:solarpanel>,<mekanismgenerators:hohlraum>,<mekanismgenerators:turbineblade>,<mekanismgenerators:generator:1>,<mekanismgenerators:generator:5>,<mekanismgenerators:generator:7>,<mekanismgenerators:generator:8>,<mekanismgenerators:generator:9>,<mekanismgenerators:generator:10>,<mekanismgenerators:generator:11>,<mekanismgenerators:generator:12>,<mekanismgenerators:generator:13>,<mekanismgenerators:reactor>,<mekanismgenerators:reactor:1>,<mekanismgenerators:reactor:2>,<mekanismgenerators:reactor:3>,<mekanismgenerators:reactorglass>,<mekanismgenerators:reactorglass:1>,<mekanism:gastank>.withTag({tier: 0}),<mekanism:gastank>.withTag({tier: 1}),<mekanism:gastank>.withTag({tier: 2}),<mekanism:gastank>.withTag({tier: 3}),<mekanism:transmitter>.withTag({tier: 0}),<mekanism:transmitter>.withTag({tier: 1}),<mekanism:transmitter>.withTag({tier: 2}),<mekanism:transmitter>.withTag({tier: 3}),<mekanism:transmitter:1>.withTag({tier: 0}),<mekanism:transmitter:1>.withTag({tier: 1}),<mekanism:transmitter:1>.withTag({tier: 2}),<mekanism:transmitter:1>.withTag({tier: 3}),<mekanism:transmitter:2>.withTag({tier: 0}),<mekanism:transmitter:2>.withTag({tier: 1}),<mekanism:transmitter:2>.withTag({tier: 2}),<mekanism:transmitter:2>.withTag({tier: 3}),<mekanism:transmitter:3>.withTag({tier: 0}),<mekanism:transmitter:3>.withTag({tier: 1}),<mekanism:transmitter:3>.withTag({tier: 2}),<mekanism:transmitter:3>.withTag({tier: 3}),<mekanism:transmitter:4>.withTag({tier: 0}),<mekanism:transmitter:5>.withTag({tier: 0}),<mekanism:transmitter:6>.withTag({tier: 0}),<mekanism:transmitter:6>.withTag({tier: 1}),<mekanism:transmitter:6>.withTag({tier: 2}),<mekanism:transmitter:6>.withTag({tier: 3}),<mekanism:cardboardbox>,<mekanism:machineblock2:1>,<mekanism:machineblock2:7>,<mekanism:machineblock2:8>,<mekanism:machineblock2>,<mekanism:machineblock:1>,<mekanism:machineblock:3>,<mekanism:machineblock:4>,<mekanism:machineblock:8>,<mekanism:machineblock:2>,<mekanism:machineblock:9>,<mekanism:machineblock2:9>,<mekanism:machineblock:10>,<mekanism:machineblock>,<mekanism:machineblock2:2>,<mekanism:machineblock2:6>,<mekanism:machineblock2:5>,<mekanism:machineblock2:4>,<mekanism:machineblock2:3>,<mekanism:machineblock2:10>] as IItemStack[];

  for i in arrayMekanismRemove {
    recipes.remove(i);
  }

//ADD Recipe
  //Material
   //Circuit
     //Basic
      cir_ass.recipeBuilder()
          .inputs([<ore:circuitMv>* 2, <gregtech:meta_item_1:523>, <gregtech:meta_item_1:524>, <gregtech:meta_item_1:525>, <gregtech:meta_item_1:526>])
          .fluidInputs(<liquid:redstone> * 288)
          .outputs([<mekanism:controlcircuit>  * 2])
          .EUt(96)
          .duration(120)
          .buildAndRegister();
     //Advanced
      chem_reactor.recipeBuilder()
          .inputs([<mekanism:controlcircuit>, <mekanism:enrichedalloy> * 4])
          .fluidInputs([<liquid:redstone> * 576, <liquid:signalum> * 144])
          .outputs([<mekanism:controlcircuit:1> * 2])
          .EUt(280)
          .duration(200)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
     //Elite
      chem_reactor.recipeBuilder()
          .inputs([<mekanism:controlcircuit:1>, <mekanism:reinforcedalloy> * 4])
          .fluidInputs([<liquid:redstone> * 1440, <liquid:enderium> * 144])
          .outputs([<mekanism:controlcircuit:2> * 2])
          .EUt(1920)
          .duration(240)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
     //Ultimate
      chem_reactor.recipeBuilder()
          .inputs([<mekanism:controlcircuit:2> * 2, <mekanism:atomicalloy>])
          .fluidInputs([<liquid:redstone> * 2880, <liquid:naquadah> * 288])
          .outputs([<mekanism:controlcircuit:3> * 2])
          .EUt(8000)
          .duration(200)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
   //Alloys
     //Enriched
      chem_reactor.recipeBuilder()
          .inputs([<gregtech:meta_ingot:277>, <ore:ingotThaumium>])
          .fluidInputs([<liquid:redstone> * 576])
          .outputs([<mekanism:enrichedalloy>])
          .EUt(96)
          .duration(120)
          .buildAndRegister();
     //Reinforced
      chem_reactor.recipeBuilder()
          .inputs([<mekanism:enrichedalloy>, <ore:ingotSignalum>])
          .fluidInputs([<liquid:diamond> * 333, <liquid:blue_alloy> * 144])
          .outputs([<mekanism:reinforcedalloy>])
          .EUt(240)
          .duration(120)
          .buildAndRegister();
     //Atomic
      mmRecipe("AtonicAlloy", "High_Pressure_Blast_Furnace", 2400)
          .addEnergyPerTickInput(32768)
          .addItemInput(<mekanism:reinforcedalloy> * 4)
          .addItemInput(<mekanism:ingot> * 4)
          .addItemInput(<avaritia:resource:1> * 2)
          .addFluidInput(<liquid:xenon> * 1000)
          .addFluidInput(<liquid:red_alloy> * 720)
          .addFluidInput(<liquid:crystal> * 12000)
          .addItemOutput(<mekanism:atomicalloy> * 4)
          .addFluidOutput(<liquid:distilled_water> * 6400)
          .build();
   //Part
      //Teleportation Core
        mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:teleportationcore> * 4, [
          [<draconicevolution:wyvern_core>, <deepmoblearning:infused_ingot_block>, <ore:blockEvilMetal>], 
	        [<ore:alloyUltimate>, <avaritia:endest_pearl>, <flammpfeil.slashblade:proudsoul:2>], 
	        [<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}), <botania:storage:1>, <thaumcraft:primordial_pearl>]
          ]);
      //ElectiluticCore
        mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:electrolyticcore>, [
	        [<ore:alloyAdvanced>, <ore:alloyBasic>, <ore:alloyAdvanced>], 
	        [<ore:stickPlatinum>, <extendedcrafting:material:9>, <ore:stickPlatinum>], 
	        [<ore:cableGtSingleManasteel>, <extendedcrafting:material:9>, <ore:cableGtSingleManasteel>]
          ]);
      //EnergyTablet
        assembler.recipeBuilder()
        .inputs([<mekanism:enrichedalloy> * 2, <gregtech:meta_item_1:602>, <ore:circuitUlv> * 2, <gregtech:meta_plate:41> * 3, <gregtech:meta_wire_fine:41> * 2])
        .outputs(<mekanism:energytablet>)
        .fluidInputs(<liquid:redstone> * 576)
        .EUt(100)
        .duration(40)
        .buildAndRegister();
      //SteelCasing
        assembler.recipeBuilder()
          .inputs([<gregtech:machine:986>, <gregtech:meta_stick:51> *4, <gregtech:meta_stick_long:324> * 2, <mekanism:enrichedalloy>])
          .outputs(<mekanism:basicblock:8>)
          .fluidInputs(<liquid:redstone> * 144)
          .EUt(100)
          .duration(40)
          .buildAndRegister();
      //SolarCell
        laser_engraver.recipeBuilder()
          .inputs([<gregtech:meta_item_1:331>, <mekanism:enrichedalloy> * 2])
          .outputs([<mekanismgenerators:solarpanel> * 2])
          .EUt(96)
          .duration(80)
          .buildAndRegister();
  //Upgrades
   //Speed
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:speedupgrade>, [
	  [<minecraft:rabbit_foot>, <gregtech:meta_item_1:604>, <minecraft:rabbit_foot>], 
	  [<gregtech:meta_item_1:99>, <ore:alloyElite>, <gregtech:meta_item_1:99>], 
	  [<minecraft:rabbit_foot>, <gregtech:meta_item_1:604>, <minecraft:rabbit_foot>]
    ]);
   //Energy
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:energyupgrade>, [
	  [<gregtech:meta_item_1:99>, <ore:batteryLv>, <gregtech:meta_item_1:99>], 
	  [<ore:batteryLv>, <ore:alloyElite>, <ore:batteryLv>], 
	  [<gregtech:meta_item_1:99>, <ore:batteryLv>, <gregtech:meta_item_1:99>]
    ]);
   //Filter
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:filterupgrade>, [
	  [<ore:circuitLv>, <gregtech:meta_item_1:293>, <gregtech:meta_item_1:593>], 
	  [<gregtech:meta_item_1:290>, <ore:alloyElite>, <gregtech:meta_item_1:292>], 
	  [<gregtech:meta_item_1:593>, <gregtech:meta_item_1:291>, <ore:circuitLv>]
    ]);
   //Muffler
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:mufflingupgrade>, [
	  [<ore:dustTreatedWood>, <gregtech:meta_item_1:347>, <ore:dustTreatedWood>], 
	  [<gregtech:meta_item_1:347>, <ore:alloyElite>, <gregtech:meta_item_1:347>], 
	  [<ore:dustTreatedWood>, <gregtech:meta_item_1:347>, <ore:dustTreatedWood>]
    ]);
   //Gas
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:gasupgrade>, [
	  [<ore:alloyElite>, <ore:circuitMv>, <gregtech:meta_item_1:99>], 
	  [<gregtech:meta_item_1:290>, <gregtech:meta_item_1:143>, <ore:pipeNormalFluidChrome>], 
	  [<ore:alloyElite>, <ore:circuitMv>, <gregtech:meta_item_1:99>]
    ]);
   //Anchor
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:anchorupgrade>, [
	  [<extrautils2:chunkloader>, <ore:circuitLuv>, <extrautils2:chunkloader>], 
	  [<ore:circuitLuv>, <ore:oc:chunkloaderUpgrade>, <ore:circuitLuv>], 
	  [<extrautils2:chunkloader>, <ore:circuitLuv>, <extrautils2:chunkloader>]
    ]);
  //Tools And Armors,Wepones....rob it
   //Atomic Dissassembler
    mmRecipe("AtomicDissassembler", "Prototype_Assembling_Line", 600)
      .addEnergyPerTickInput(40000)
      .addItemInput(<twilightforest:fiery_pickaxe>)
      .addItemInput(<iceandfire:dragonbone_pickaxe>)
      .addItemInput(<mekanism:atomicalloy> * 2)
      .addItemInput(<gregtech:meta_item_1:266> * 4)
      .addItemInput(<gregtech:meta_item_1:605> * 4)
      .addItemInput(<gregtech:meta_item_1:634> * 2)
      .addItemInput(<gregtech:meta_item_1:742>)
      .addItemInput(<botania:manaresource:4> * 2)
      .addItemInput(<nuclearcraft:alloy:10> * 4)
      .addItemInput(<enderio:item_alloy_endergy_ingot:3> * 2)
      .addFluidInput(<liquid:crystal_matrix> * 288)
      .addFluidInput(<liquid:polybenzimidazole> * 500)
      .addFluidInput(<liquid:redstone> * 5760)
      .addFluidInput(<liquid:naquadah> * 576)
      .addItemOutput(<mekanism:atomicdisassembler>)
      .build();
   //Configurator
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:configurator>, [
	    [<ore:wireFineElectrum>, <ore:alloyAdvanced>, <ore:stickLongGold>], 
	    [<ore:circuitMv>, <ore:stickLongAnnealedCopper>, <ore:alloyAdvanced>], 
	    [<ore:stickAluminium>, <ore:circuitMv>, <ore:wireFineElectrum>]
      ]);
   //Network Reader
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:networkreader>, [
	    [<ore:stickIron>, null, <ore:stickIron>], 
	    [<gregtech:meta_item_1:99>, <ore:circuitHv>, <gregtech:meta_item_1:99>], 
	    [<ore:alloyElite>, <gregtech:meta_item_1:261>, <ore:alloyElite>]
      ]);
   //Transceiver
    mods.extendedcrafting.TableCrafting.addShaped(0, <mekanism:walkietalkie>, [
	    [<gregtech:meta_item_1:503>, <gregtech:meta_item_1:98>, <gregtech:meta_item_1:503>], 
	    [<ore:plateAluminium>, <ore:circuitHv>, <ore:plateAluminium>], 
	    [<thermalfoundation:material:513>, <gregtech:meta_item_1:403>, <thermalfoundation:material:514>]
      ]);
   //JetPack
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:jetpack>, [
	    [<gregtech:meta_item_1:501>, <ore:circuitMv>, <gregtech:meta_item_1:501>], 
	    [<ore:circuitAdvanced>, <gregtech:gt_armor:2>, <ore:circuitAdvanced>], 
	    [<ore:alloyElite>, <mekanism:gastank>.withTag({tier: 1}), <ore:alloyElite>]
      ]);
   //OreDictionary
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:dictionary>, [
	    [<ore:circuitMv>, <gregtech:meta_item_1:233>, <ore:circuitMv>], 
	    [<ore:gemDiamond>, <ore:bookEmpty>, <ore:ingotIron>], 
	    [<ore:ingotGold>, <ore:alloyAdvanced>, <ore:itemCoal>]
      ]);
   //GasMask
    assembler.recipeBuilder()
      .inputs([<gregtech:transparent_casing> * 2, <gregtech:meta_item_1:144>, <ore:circuitHv> * 2, <gregtech:fluid_pipe_tiny:2> * 4, <gregtech:meta_plate:2> * 16, <gregtech:meta_item_1:290> * 2, <mekanism:enrichedalloy> * 2])
      .outputs(<mekanism:gasmask>)
      .fluidInputs(<liquid:styrene_butadiene_rubber> * 576)
      .EUt(240)
      .duration(360)
      .buildAndRegister();
   //ScubaTank
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:scubatank>, [
	    [<gregtech:meta_item_1:143>, <ore:alloyAdvanced>, <gregtech:meta_item_1:143>], 
	    [<mekanism:gastank>.withTag({tier: 1}), <ore:circuitBasic>, <mekanism:gastank>.withTag({tier: 1})], 
	    [<ore:plateDoubleAluminium>, <ore:alloyAdvanced>, <ore:plateDoubleAluminium>]
    ]);
   //Poatable teleporter
    assembler.recipeBuilder()
    .inputs([<mekanism:teleportationcore> * 4, <mekanism:controlcircuit:3>, <gregtech:meta_item_1:206> * 4, <gregtech:meta_item_1:237>, <gregtech:meta_item_1:102> * 4, <ore:circuitLuv> * 4, <gregtech:meta_item_1:282>, <draconicevolution:wyvern_core> * 4, <gregtech:meta_plate_double:113> * 16])
    .outputs(<mekanism:portableteleporter>)
    .EUt(8000)
    .duration(1400)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();

   //FreeRanners
    assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_1:501> * 4, <mechtech:meta_item:1>, <gregtech:meta_item_1:174> * 2, <gregtech:meta_item_1:129> * 2, <gregtech:meta_plate:2> * 16, <mekanism:reinforcedalloy> * 2])
    .outputs(<mekanism:freerunners>)
    .EUt(480)
    .duration(160)
    .buildAndRegister();
   //Armored JetPack
    assembler.recipeBuilder()
    .inputs([<mekanism:jetpack>, <gregtech:meta_plate_double:396> * 4, <mechtech:meta_item:1007> * 16, <gregtech:meta_item_1:501> * 32, <gregtech:meta_item_1:502> * 32])
    .outputs(<mekanism:armoredjetpack>)
    .EUt(1920)
    .duration(380)
    .buildAndRegister();
   //Elastic Wave Analyzer
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:seismicreader>, [
	    [<ore:plateDoubleAluminium>, <gregtech:meta_item_1:503>, <ore:plateDoubleAluminium>], 
	    [<ore:circuitEv>, <gregtech:meta_item_1:591>, <ore:circuitEv>], 
	    [<ore:circuitElite>, <gregtech:meta_item_1:592>, <ore:alloyElite>]
      ]);
   //FlameThrower
    assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_1:144> * 2, <ore:circuitHv> * 4, <mekanism:reinforcedalloy> * 4, <gregtech:wire_double:32002> * 16, <gregtech:meta_item_1:98> * 2, <gregtech:fluid_pipe_small:323> * 4, <gregtech:meta_plate:323> * 8])
    .outputs(<mekanism:flamethrower>)
    .EUt(240)
    .duration(800)
    .buildAndRegister();
   //GaugeDropper
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:gaugedropper>, [
	    [<ore:foilAluminium>, <ore:plateRubber>, <ore:stickBorosilicateGlass>], 
	    [<ore:alloyAdvanced>, <ore:stickLongBorosilicateGlass>, <ore:plateRubber>], 
	    [<ore:ringRubber>, <ore:alloyAdvanced>, <ore:foilAluminium>]
    ]);
   //ElectricBow
    assembler.recipeBuilder()
        .inputs([<minecraft:bow>, <mekanism:reinforcedalloy> * 2, <mekanism:controlcircuit:2>, <mekanism:energytablet>, <mekanism:polyethene:3> * 4])
        .outputs(<mekanism:electricbow>)
        .EUt(240)
        .duration(180)
        .buildAndRegister();
   //Robit
    assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:631>, <gregtech:meta_item_1:128> * 4, <gregtech:meta_item_1:158> * 2, <gregtech:meta_item_1:503> * 2, <gregtech:meta_item_1:501> * 16, <gregtech:wire_double:32018> * 2, <gregtech:meta_stick:2> * 30, <gregtech:meta_plate:2> * 32, <gregtech:meta_item_1:740> * 2])
        .outputs(<mekanism:robit>)
        .EUt(1920)
        .duration(1200)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
  //Storage
   //Item
    //PresonalChest
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:machineblock:13>, [
	      [<ore:alloyElite>, <gregtech:meta_item_1:591>, <ore:alloyElite>], 
	      [<ore:circuitElite>, <ore:frameGtHslaSteel>, <ore:circuitElite>], 
	      [<ore:alloyElite>, <gregtech:machine:1626>, <ore:alloyElite>]
        ]);
    //Bin
     //Basic
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:basicblock:6>.withTag({tier: 0}), [
	      [<ore:plateAluminium>, <ore:circuitBasic>, <ore:plateAluminium>], 
	      [<ore:circuitHv>, <ore:chest>, <ore:circuitHv>], 
	      [<ore:alloyAdvanced>, <gregtech:meta_item_1:202>, <ore:alloyAdvanced>]
        ]);
     //Advanced
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:basicblock:6>.withTag({tier: 1}), [
	      [<ore:circuitAdvanced>, <ore:plateDoubleTungstenSteel>, <ore:circuitAdvanced>], 
        [<ore:alloyElite>, <mekanism:basicblock:6>, <ore:alloyElite>], 
	      [<ore:circuitEv>, <gregtech:meta_item_1:204>, <ore:circuitEv>]
        ]);
     //Elite
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:basicblock:6>.withTag({tier: 2}), [
	      [<ore:circuitIv>, <ore:circuitElite>, <ore:circuitIv>], 
      	[<ore:alloyElite>, <gregtech:meta_item_1:205>, <ore:alloyElite>], 
      	[<ore:plateDoubleTungstenCarbide>, <mekanism:basicblock:6>, <ore:plateDoubleTungstenCarbide>]
        ]);
     //Ultimate
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:208> * 2, <mekanism:controlcircuit:3> * 2, <mekanism:atomicalloy> * 4, <gregtech:meta_plate_dense:27> * 2, <ore:circuitUv>, <gregtech:machine_casing:7>, <gregtech:cable_single:32005>])
        .outputs(<mekanism:basicblock:6>.withTag({tier: 3}))
        .EUt(262144)
        .duration(120)
        .buildAndRegister();
   //Fluid
    //Dynamic Tank
     //valve
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:309> * 2, <gregtech:meta_item_1:144> * 2, <gregtech:meta_plate_double:324> * 2, <ore:circuitHv> * 2, <mekanism:basicblock:9>])
        .outputs(<mekanism:basicblock:11>)
        .fluidInputs(<liquid:tin_alloy> * 432)
        .EUt(160)
        .duration(80)
        .buildAndRegister();
     //Casing
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:basicblock:9>, [
      	[<ore:plateAluminium>, <ore:plateDoubleSteel>, <ore:plateAluminium>], 
      	[<ore:alloyAdvanced>, <gregtech:meta_block_frame_2000:2>, <ore:alloyAdvanced>], 
      	[<ore:plateAluminium>, <ore:plateDoubleSteel>, <ore:plateAluminium>]
        ]);
     //Glass
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:basicblock:10> * 4, [
	      [<ore:plateSteel>, <gregtech:transparent_casing>, <ore:plateSteel>], 
	      [<gregtech:transparent_casing>, <ore:alloyAdvanced>, <gregtech:transparent_casing>], 
	      [<ore:plateSteel>, <gregtech:transparent_casing>, <ore:plateSteel>]
        ]);
    //Tank
     //Basic
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:machineblock2:11>.withTag({tier: 0}), [
	      [<ore:alloyAdvanced>, <ore:rotorBronze>, <ore:alloyAdvanced>], 
	      [<ore:plateAluminium>, <extracells:certustank>, <ore:plateAluminium>], 
	      [<ore:alloyAdvanced>, <gregtech:meta_item_1:127>, <ore:alloyAdvanced>]
        ]);
     //Advanced
      mods.extendedcrafting.TableCrafting.addShaped(2, <mekanism:machineblock2:11>.withTag({tier: 1}), [
	      [<ore:gearSmallStainlessSteel>, <ore:rotorSteel>, <gregtech:meta_item_1:143>, <ore:rotorSteel>, <ore:gearSmallStainlessSteel>], 
	      [<ore:plateChrome>, <ore:plateChrome>, <mekanism:machineblock2:11>, <ore:plateChrome>, <ore:plateChrome>], 
	      [<gregtech:meta_item_1:128>, <mekanism:machineblock2:11>, <ore:alloyAdvanced>, <mekanism:machineblock2:11>, <gregtech:meta_item_1:128>], 
	      [<ore:plateChrome>, <ore:plateChrome>, <mekanism:machineblock2:11>, <ore:plateChrome>, <ore:plateChrome>], 
	      [<ore:gearSmallStainlessSteel>, <ore:rotorSteel>, <gregtech:meta_item_1:143>, <ore:rotorSteel>, <ore:gearSmallStainlessSteel>]
        ]);
     //Elite
      mods.extendedcrafting.TableCrafting.addShaped(3, <mekanism:machineblock2:11>.withTag({tier: 2}), [
	      [<ore:frameGtManasteel>, <gregtech:meta_item_1:501>, <ore:rotorTitanium>, <mekanism:machineblock2:11>, <ore:rotorTitanium>, <gregtech:meta_item_1:501>, <ore:frameGtManasteel>], 
	      [<ore:foilAluminium>, <gregtech:meta_item_1:501>, <gregtech:meta_item_1:144>, <gregtech:meta_item_1:145>, <gregtech:meta_item_1:144>, <gregtech:meta_item_1:501>, <ore:foilAluminium>], 
	      [<gregtech:meta_item_1:501>, <ore:stickLongTitanium>, <gregtech:meta_item_1:129>, <ore:pipeHugeFluidAluminium>, <gregtech:meta_item_1:129>, <ore:stickLongTitanium>, <gregtech:meta_item_1:501>], 
	      [<ore:foilAluminium>, <gregtech:meta_item_1:501>, <ore:alloyElite>, <mekanism:machineblock2:11>, <ore:alloyElite>, <gregtech:meta_item_1:501>, <ore:foilAluminium>], 
	      [<gregtech:meta_item_1:501>, <ore:stickLongTitanium>, <gregtech:meta_item_1:129>, <ore:pipeHugeFluidAluminium>, <gregtech:meta_item_1:129>, <ore:stickLongTitanium>, <gregtech:meta_item_1:501>], 
	      [<ore:foilAluminium>, <gregtech:meta_item_1:501>, <gregtech:meta_item_1:144>, <gregtech:meta_item_1:145>, <gregtech:meta_item_1:144>, <gregtech:meta_item_1:501>, <ore:foilAluminium>], 
	      [<ore:frameGtManasteel>, <gregtech:meta_item_1:501>, <ore:rotorTitanium>, <mekanism:machineblock2:11>, <ore:rotorTitanium>, <gregtech:meta_item_1:501>, <ore:frameGtManasteel>]
        ]);
     //Ultimate
      mods.extendedcrafting.TableCrafting.addShaped(4, <mekanism:machineblock2:11>.withTag({tier: 3}), [
	      [<ore:frameGtTungstenCarbide>, <ore:pipeHugeFluidTungstenCarbide>, <ore:frameGtDraconium>, <ore:rotorDraconium>, <ore:springTungstenCarbide>, <ore:rotorDraconium>, <ore:frameGtDraconium>, <ore:pipeHugeFluidTungstenCarbide>, <ore:frameGtTungstenCarbide>], 
	      [<ore:plateDoubleTungstenCarbide>, <mekanism:machineblock2:11>, <ore:blockTungstenCarbide>, <ore:pipeHugeFluidTungstenCarbide>, <gregtech:boiler_casing:3>, <ore:pipeHugeFluidTungstenCarbide>, <ore:blockTungstenCarbide>, <mekanism:machineblock2:11>, <ore:plateDoubleTungstenCarbide>], 
	      [<ore:plateDoubleTungstenCarbide>, <ore:pipeHugeFluidTungstenCarbide>, <ore:alloyUltimate>, <gregtech:meta_item_1:206>, <ore:gearSmallTungstenCarbide>, <gregtech:meta_item_1:206>, <ore:alloyUltimate>, <ore:pipeHugeFluidTungstenCarbide>, <ore:plateDoubleTungstenCarbide>], 
	      [<ore:plateDoubleTungstenCarbide>, <ore:alloyUltimate>, <ore:stickLongTungstenCarbide>, <ore:rotorTungstenCarbide>, <ore:gearTungstenCarbide>, <ore:rotorTungstenCarbide>, <ore:stickLongTungstenCarbide>, <ore:alloyUltimate>, <ore:plateDoubleTungstenCarbide>], 
	      [<ore:rotorDraconium>, <gregtech:boiler_casing:3>, <ore:stickLongTungstenCarbide>, <gregtech:meta_item_1:206>, <ore:circuitLuv>, <gregtech:meta_item_1:206>, <ore:stickLongTungstenCarbide>, <gregtech:boiler_casing:3>, <ore:rotorDraconium>], 
	      [<ore:plateDoubleTungstenCarbide>, <ore:alloyUltimate>, <ore:stickLongTungstenCarbide>, <ore:rotorTungstenCarbide>, <ore:gearTungstenCarbide>, <ore:rotorTungstenCarbide>, <ore:stickLongTungstenCarbide>, <ore:alloyUltimate>, <ore:plateDoubleTungstenCarbide>], 
	      [<ore:plateDoubleTungstenCarbide>, <ore:pipeHugeFluidTungstenCarbide>, <ore:alloyUltimate>, <gregtech:meta_item_1:206>, <ore:gearSmallTungstenCarbide>, <gregtech:meta_item_1:206>, <ore:alloyUltimate>, <ore:pipeHugeFluidTungstenCarbide>, <ore:plateDoubleTungstenCarbide>], 
	      [<ore:plateDoubleTungstenCarbide>, <mekanism:machineblock2:11>, <ore:blockTungstenCarbide>, <ore:pipeHugeFluidTungstenCarbide>, <gregtech:boiler_casing:3>, <ore:pipeHugeFluidTungstenCarbide>, <ore:blockTungstenCarbide>, <mekanism:machineblock2:11>, <ore:plateDoubleTungstenCarbide>], 
	      [<ore:frameGtTungstenCarbide>, <ore:pipeHugeFluidTungstenCarbide>, <ore:frameGtDraconium>, <ore:rotorDraconium>, <ore:springTungstenCarbide>, <ore:rotorDraconium>, <ore:frameGtDraconium>, <ore:pipeHugeFluidTungstenCarbide>, <ore:frameGtTungstenCarbide>]
        ]);
   //Energy
    //Induction Matlix
     //Valve
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:605> * 8, <gregtech:meta_item_1:492> * 4, <gregtech:machine:990>, <gregtech:meta_item_1:101> * 4, <gregtech:wire_octal:428> * 4, <gregtech:machine:1693>, <gregtech:machine:1215>, <mekanism:controlcircuit:2> * 4, <mekanism:basicblock2:1> * 2])
        .outputs(<mekanism:basicblock2:2> * 2)
        .fluidInputs(<liquid:electrum> * 2880)
        .EUt(7500)
        .duration(1200)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
     //Casing
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:basicblock2:1> * 4, [
	      [<gregtech:machine:988>, <ore:circuitElite>, <gregtech:machine:988>], 
	      [<gregtech:meta_item_1:501>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:501>], 
	      [<ore:alloyElite>, <ore:plateDoubleCopper>, <ore:alloyElite>]
        ]);
     //Cell
       //Basinc
        mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:basicblock2:3>.withTag({tier: 0}) * 2, [
	        [<mekanism:energycube>, <gregtech:meta_item_1:100>, <mekanism:energycube>], 
	        [<ore:batteryHv>, <gregtech:meta_item_1:605>, <ore:batteryHv>], 
	        [<mekanism:energycube>, <gregtech:meta_item_1:100>, <mekanism:energycube>]
          ]);
       //Advanced
        mods.extendedcrafting.TableCrafting.addShaped(2, <mekanism:basicblock2:3>.withTag({tier: 1}) * 2, [
	        [<mekanism:basicblock2:3>.withTag({tier: 0}), <mekanism:energycube>, <ore:wireGtQuadrupleSamariumIronArsenicOxide>, <mekanism:energycube>, <mekanism:basicblock2:3>.withTag({tier: 0})], 
	        [<mekanism:energycube>, <ore:circuitElite>, <gregtech:meta_item_1:580>, <ore:circuitElite>, <mekanism:energycube>], 
	        [<ore:circuitLuv>, <gregtech:meta_item_1:101>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:101>, <ore:circuitLuv>], 
	        [<mekanism:energycube>, <ore:circuitElite>, <gregtech:meta_item_1:580>, <ore:circuitElite>, <mekanism:energycube>], 
	        [<mekanism:basicblock2:3>.withTag({tier: 0}), <mekanism:energycube>, <ore:wireGtQuadrupleSamariumIronArsenicOxide>, <mekanism:energycube>, <mekanism:basicblock2:3>.withTag({tier: 0})]
          ]);
       //Elite
        mods.extendedcrafting.TableCrafting.addShaped(3, <mekanism:basicblock2:3>.withTag({tier: 2}) * 2, [
	        [<mekanism:basicblock2:3>.withTag({tier: 1}), <ore:wireGtQuadrupleIndiumTinBariumTitaniumCuprate>, <ore:frameGtTerrasteel>, <mekanism:basicblock2:3>.withTag({tier: 1}), <ore:frameGtTerrasteel>, <ore:wireGtQuadrupleIndiumTinBariumTitaniumCuprate>, <mekanism:basicblock2:3>.withTag({tier: 1})], 
	        [<ore:wireGtQuadrupleIndiumTinBariumTitaniumCuprate>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:606>, <ore:wireGtQuadrupleIndiumTinBariumTitaniumCuprate>], 
	        [<ore:circuitUltimate>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:492>, <ore:batteryIv>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:102>, <ore:circuitUltimate>], 
	        [<mekanism:basicblock2:3>.withTag({tier: 1}), <gregtech:meta_item_1:492>, <ore:batteryIv>, <gregtech:meta_item_1:207>, <ore:batteryIv>, <gregtech:meta_item_1:492>, <mekanism:basicblock2:3>.withTag({tier: 1})], 
	        [<ore:circuitUltimate>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:492>, <ore:batteryIv>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:102>, <ore:circuitUltimate>], 
	        [<ore:wireGtQuadrupleIndiumTinBariumTitaniumCuprate>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:606>, <ore:wireGtQuadrupleIndiumTinBariumTitaniumCuprate>], 
	        [<mekanism:basicblock2:3>.withTag({tier: 1}), <ore:wireGtQuadrupleIndiumTinBariumTitaniumCuprate>, <ore:frameGtTerrasteel>, <mekanism:basicblock2:3>.withTag({tier: 1}), <ore:frameGtTerrasteel>, <ore:wireGtQuadrupleIndiumTinBariumTitaniumCuprate>, <mekanism:basicblock2:3>.withTag({tier: 1})]
          ]);
       //Ultimate
        mods.extendedcrafting.TableCrafting.addShaped(4, <mekanism:basicblock2:3>.withTag({tier: 3}) * 2, [
	        [<ore:batteryLuv>, <mekanism:basicblock2:3>.withTag({tier: 2}), <mekanism:basicblock2:3>.withTag({tier: 2}), <mekanism:basicblock2:3>.withTag({tier: 2}), <ore:laserArgon>, <mekanism:basicblock2:3>.withTag({tier: 2}), <mekanism:basicblock2:3>.withTag({tier: 2}), <mekanism:basicblock2:3>.withTag({tier: 2}), <ore:batteryLuv>], 
	        [<mekanism:basicblock2:3>.withTag({tier: 2}), <gregtech:meta_item_1:581>, <ore:circuitUv>, <gregtech:meta_item_1:705>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:705>, <ore:circuitUv>, <gregtech:meta_item_1:581>, <mekanism:basicblock2:3>.withTag({tier: 2})], 
	        [<mekanism:basicblock2:3>.withTag({tier: 2}), <ore:circuitUv>, <ore:batteryLuv>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:circuitUltimate>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:batteryLuv>, <ore:circuitUv>, <mekanism:basicblock2:3>.withTag({tier: 2})], 
	        [<mekanism:basicblock2:3>.withTag({tier: 2}), <gregtech:meta_item_1:705>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:blockTungstenCarbide>, <gregtech:meta_item_1:208>, <ore:blockTungstenCarbide>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <gregtech:meta_item_1:705>, <mekanism:basicblock2:3>.withTag({tier: 2})], 
	        [<ore:laserArgon>, <gregtech:meta_item_1:104>, <ore:circuitUltimate>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:208>, <ore:circuitUltimate>, <gregtech:meta_item_1:104>, <ore:laserArgon>], 
	        [<mekanism:basicblock2:3>.withTag({tier: 2}), <gregtech:meta_item_1:705>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:blockTungstenCarbide>, <gregtech:meta_item_1:208>, <ore:blockTungstenCarbide>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <gregtech:meta_item_1:705>, <mekanism:basicblock2:3>.withTag({tier: 2})], 
	        [<mekanism:basicblock2:3>.withTag({tier: 2}), <ore:circuitUv>, <ore:batteryLuv>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:circuitUltimate>, <ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:batteryLuv>, <ore:circuitUv>, <mekanism:basicblock2:3>.withTag({tier: 2})], 
	        [<mekanism:basicblock2:3>.withTag({tier: 2}), <gregtech:meta_item_1:581>, <ore:circuitUv>, <gregtech:meta_item_1:705>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:705>, <ore:circuitUv>, <gregtech:meta_item_1:581>, <mekanism:basicblock2:3>.withTag({tier: 2})], 
	        [<ore:batteryLuv>, <mekanism:basicblock2:3>.withTag({tier: 2}), <mekanism:basicblock2:3>.withTag({tier: 2}), <mekanism:basicblock2:3>.withTag({tier: 2}), <ore:laserArgon>, <mekanism:basicblock2:3>.withTag({tier: 2}), <mekanism:basicblock2:3>.withTag({tier: 2}), <mekanism:basicblock2:3>.withTag({tier: 2}), <ore:batteryLuv>]
          ]);
     //Induction Provider
       //Basic
        mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:basicblock2:4>.withTag({tier: 0}), [
	        [<gregtech:meta_item_1:101>, <ore:alloyElite>, <gregtech:meta_item_1:101>], 
	        [<gregtech:meta_item_1:605>, <gregtech:machine:990>, <gregtech:meta_item_1:605>], 
	        [<gregtech:meta_item_1:101>, <ore:alloyElite>, <gregtech:meta_item_1:101>]
          ]);
       //Advanced
        mods.extendedcrafting.TableCrafting.addShaped(2, <mekanism:basicblock2:4>.withTag({tier: 1}) * 2, [
	        [<ore:wireGtDoubleIndiumTinBariumTitaniumCuprate>, <gregtech:meta_item_1:102>, <ore:wireGtHexRedAlloy>, <gregtech:meta_item_1:102>, <ore:wireGtDoubleIndiumTinBariumTitaniumCuprate>], 
	        [<gregtech:meta_item_1:102>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:102>], 
	        [<ore:alloyUltimate>, <gregtech:meta_item_1:102>, <gregtech:machine:991>, <gregtech:meta_item_1:102>, <ore:alloyUltimate>], 
	        [<gregtech:meta_item_1:102>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:102>], 
	        [<ore:wireGtDoubleIndiumTinBariumTitaniumCuprate>, <gregtech:meta_item_1:102>, <ore:wireGtHexRedAlloy>, <gregtech:meta_item_1:102>, <ore:wireGtDoubleIndiumTinBariumTitaniumCuprate>]
          ]);
       //Elite
        mods.extendedcrafting.TableCrafting.addShaped(3, <mekanism:basicblock2:4>.withTag({tier: 2}) * 4, [
	        [<ore:wireGtQuadrupleUraniumRhodiumDinaquadide>, <ore:alloyUltimate>, <ore:frameGtVoid>, <ore:wireGtHexRedAlloy>, <ore:frameGtVoid>, <ore:alloyUltimate>, <ore:wireGtQuadrupleUraniumRhodiumDinaquadide>], 
	        [<ore:alloyUltimate>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:531>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:531>, <gregtech:meta_item_1:103>, <ore:alloyUltimate>], 
	        [<ore:circuitUltimate>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:580>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:606>, <ore:circuitUltimate>], 
	        [<ore:laserNeon>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:532>, <gregtech:machine:992>, <gregtech:meta_item_1:532>, <gregtech:meta_item_1:103>, <ore:laserNeon>], 
	        [<ore:circuitUltimate>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:580>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:606>, <ore:circuitUltimate>], 
	        [<ore:alloyUltimate>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:531>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:531>, <gregtech:meta_item_1:103>, <ore:alloyUltimate>], 
	        [<ore:wireGtQuadrupleUraniumRhodiumDinaquadide>, <ore:alloyUltimate>, <ore:frameGtVoid>, <ore:wireGtHexRedAlloy>, <ore:frameGtVoid>, <ore:alloyUltimate>, <ore:wireGtQuadrupleUraniumRhodiumDinaquadide>]
          ]);
       //Ultimate
        mods.extendedcrafting.TableCrafting.addShaped(4, <mekanism:basicblock2:4>.withTag({tier: 3}) * 4, [
	        [<gregtech:machine:1234>, <ore:wireGtHexRedAlloy>, <gregtech:meta_item_1:104>, <ore:frameGtDraconiumawakened>, <ore:wireGtOctalEnrichedNaquadahTriniumEuropiumDuranide>, <ore:frameGtDraconiumawakened>, <gregtech:meta_item_1:104>, <ore:wireGtHexRedAlloy>, <gregtech:machine:1219>], 
	        [<ore:wireGtHexRedAlloy>, <gregtech:meta_item_1:103>, <ore:circuitUv>, <gregtech:meta_item_1:208>, <ore:springUraniumRhodiumDinaquadide>, <gregtech:meta_item_1:208>, <ore:circuitUv>, <gregtech:meta_item_1:103>, <ore:wireGtHexRedAlloy>], 
	        [<gregtech:meta_item_1:104>, <ore:circuitUv>, <gregtech:meta_item_1:581>, <gregtech:meta_item_1:104>, <ore:wireGtOctalEnrichedNaquadahTriniumEuropiumDuranide>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:581>, <ore:circuitUv>, <gregtech:meta_item_1:104>], 
	        [<ore:laserNaquadriaTetratrinite>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:104>, <ore:batteryIv>, <ore:springUraniumRhodiumDinaquadide>, <ore:batteryIv>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:103>, <ore:laserNaquadriaTetratrinite>], 
	        [<ore:wireGtOctalEnrichedNaquadahTriniumEuropiumDuranide>, <ore:springUraniumRhodiumDinaquadide>, <ore:wireGtOctalEnrichedNaquadahTriniumEuropiumDuranide>, <ore:springUraniumRhodiumDinaquadide>, <gregtech:machine:993>, <ore:springUraniumRhodiumDinaquadide>, <ore:wireGtOctalEnrichedNaquadahTriniumEuropiumDuranide>, <ore:springUraniumRhodiumDinaquadide>, <ore:wireGtOctalEnrichedNaquadahTriniumEuropiumDuranide>], 
	        [<ore:laserNaquadriaTetratrinite>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:104>, <ore:batteryIv>, <ore:springUraniumRhodiumDinaquadide>, <ore:batteryIv>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:103>, <ore:laserNaquadriaTetratrinite>], 
	        [<gregtech:meta_item_1:104>, <ore:circuitUv>, <gregtech:meta_item_1:581>, <gregtech:meta_item_1:104>, <ore:wireGtOctalEnrichedNaquadahTriniumEuropiumDuranide>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:581>, <ore:circuitUv>, <gregtech:meta_item_1:104>], 
	        [<ore:wireGtHexRedAlloy>, <gregtech:meta_item_1:103>, <ore:circuitUv>, <gregtech:meta_item_1:208>, <ore:springUraniumRhodiumDinaquadide>, <gregtech:meta_item_1:208>, <ore:circuitUv>, <gregtech:meta_item_1:103>, <ore:wireGtHexRedAlloy>], 
	        [<gregtech:machine:1219>, <ore:wireGtHexRedAlloy>, <gregtech:meta_item_1:104>, <ore:frameGtDraconiumawakened>, <ore:wireGtOctalEnrichedNaquadahTriniumEuropiumDuranide>, <ore:frameGtDraconiumawakened>, <gregtech:meta_item_1:104>, <ore:wireGtHexRedAlloy>, <gregtech:machine:1234>]
          ]);
    //EnergyCube
     //Basic
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:energycube>.withTag({tier: 0}), [
	      [<ore:plateSignalum>, <gregtech:meta_item_1:603>, <ore:plateSignalum>], 
	      [<mekanism:energytablet>, <ore:alloyAdvanced>, <mekanism:energytablet>], 
	      [<ore:plateSignalum>, <gregtech:meta_item_1:603>, <ore:plateSignalum>]
        ]);
     //Advanced
      mods.extendedcrafting.TableCrafting.addShaped(2, <mekanism:energycube>.withTag({tier: 1}), [
	      [<ore:plateStainlessSteel>, <ore:alloyAdvanced>, <ore:wireGtDoubleSignalum>, <ore:alloyAdvanced>, <ore:plateStainlessSteel>], 
	      [<ore:alloyAdvanced>, <mekanism:energycube>.withTag({tier: 0}), <gregtech:meta_item_1:604>, <mekanism:energycube>.withTag({tier: 0}), <ore:alloyAdvanced>], 
	      [<ore:wireGtDoubleSignalum>, <gregtech:meta_item_1:604>, <ore:alloyElite>, <gregtech:meta_item_1:604>, <ore:wireGtDoubleSignalum>], 
	      [<ore:alloyAdvanced>, <mekanism:energycube>.withTag({tier: 0}), <gregtech:meta_item_1:604>, <mekanism:energycube>.withTag({tier: 0}), <ore:alloyAdvanced>], 
	      [<ore:plateStainlessSteel>, <ore:alloyAdvanced>, <ore:wireGtDoubleSignalum>, <ore:alloyAdvanced>, <ore:plateStainlessSteel>]
        ]);
     //Elite
      mods.extendedcrafting.TableCrafting.addShaped(3, <mekanism:energycube>.withTag({tier: 2}), [
	      [<ore:blockRedstone>, <ore:plateTungstenCarbide>, <ore:alloyElite>, <ore:wireGtQuadrupleSignalum>, <ore:alloyElite>, <ore:plateTungstenCarbide>, <ore:blockRedstone>], 
	      [<ore:plateTungstenCarbide>, <ore:plateTungstenCarbide>, <ore:alloyElite>, <ore:circuitIv>, <ore:alloyElite>, <ore:plateTungstenCarbide>, <ore:plateTungstenCarbide>], 
	      [<ore:alloyElite>, <ore:alloyElite>, <mekanism:energycube>.withTag({tier: 1}), <gregtech:meta_item_1:605>, <mekanism:energycube>.withTag({tier: 1}), <ore:alloyElite>, <ore:alloyElite>], 
	      [<ore:wireGtQuadrupleSignalum>, <ore:circuitIv>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:605>, <ore:circuitIv>, <ore:wireGtQuadrupleSignalum>], 
	      [<ore:alloyElite>, <ore:alloyElite>, <mekanism:energycube>.withTag({tier: 1}), <gregtech:meta_item_1:605>, <mekanism:energycube>.withTag({tier: 1}), <ore:alloyElite>, <ore:alloyElite>], 
	      [<ore:plateTungstenCarbide>, <ore:plateTungstenCarbide>, <ore:alloyElite>, <ore:circuitIv>, <ore:alloyElite>, <ore:plateTungstenCarbide>, <ore:plateTungstenCarbide>], 
	      [<ore:blockRedstone>, <ore:plateTungstenCarbide>, <ore:alloyElite>, <ore:wireGtQuadrupleSignalum>, <ore:alloyElite>, <ore:plateTungstenCarbide>, <ore:blockRedstone>]
        ]);
     //Ultimate
      mods.extendedcrafting.TableCrafting.addShaped(4, <mekanism:energycube>.withTag({tier: 3}), [
	      [<ore:alloyUltimate>, <gregtech:meta_item_1:501>, <ore:circuitUltimate>, <gregtech:meta_item_1:501>, <ore:wireGtHexSignalum>, <gregtech:meta_item_1:501>, <ore:circuitUltimate>, <gregtech:meta_item_1:501>, <ore:alloyUltimate>], 
	      [<gregtech:meta_item_1:501>, <gregtech:meta_item_1:501>, <mekanism:energycube>.withTag({tier: 2}), <mekanism:energycube>.withTag({tier: 2}), <ore:wireGtQuadrupleIndiumTinBariumTitaniumCuprate>, <mekanism:energycube>.withTag({tier: 2}), <mekanism:energycube>.withTag({tier: 2}), <gregtech:meta_item_1:501>, <gregtech:meta_item_1:501>], 
	      [<ore:circuitUltimate>, <mekanism:energycube>.withTag({tier: 2}), <gregtech:meta_item_1:606>, <gregtech:meta_item_1:606>, <ore:wireGtDoubleUraniumRhodiumDinaquadide>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:606>, <mekanism:energycube>.withTag({tier: 2}), <ore:circuitUltimate>], 
	      [<gregtech:meta_item_1:501>, <mekanism:energycube>.withTag({tier: 2}), <gregtech:meta_item_1:606>, <ore:circuitZpm>, <gregtech:meta_item_1:282>, <ore:circuitZpm>, <gregtech:meta_item_1:606>, <mekanism:energycube>.withTag({tier: 2}), <gregtech:meta_item_1:501>], 
	      [<ore:wireGtHexSignalum>, <ore:wireGtQuadrupleIndiumTinBariumTitaniumCuprate>, <ore:wireGtDoubleUraniumRhodiumDinaquadide>, <gregtech:meta_item_1:282>, <ore:frameGtDraconium>, <gregtech:meta_item_1:282>, <ore:wireGtDoubleUraniumRhodiumDinaquadide>, <ore:wireGtQuadrupleIndiumTinBariumTitaniumCuprate>, <ore:wireGtHexSignalum>], 
	      [<gregtech:meta_item_1:501>, <mekanism:energycube>.withTag({tier: 2}), <gregtech:meta_item_1:606>, <ore:circuitZpm>, <gregtech:meta_item_1:282>, <ore:circuitZpm>, <gregtech:meta_item_1:606>, <mekanism:energycube>.withTag({tier: 2}), <gregtech:meta_item_1:501>], 
	      [<ore:circuitUltimate>, <mekanism:energycube>.withTag({tier: 2}), <gregtech:meta_item_1:606>, <gregtech:meta_item_1:606>, <ore:wireGtDoubleUraniumRhodiumDinaquadide>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:606>, <mekanism:energycube>.withTag({tier: 2}), <ore:circuitUltimate>], 
	      [<gregtech:meta_item_1:501>, <gregtech:meta_item_1:501>, <mekanism:energycube>.withTag({tier: 2}), <mekanism:energycube>.withTag({tier: 2}), <ore:wireGtQuadrupleIndiumTinBariumTitaniumCuprate>, <mekanism:energycube>.withTag({tier: 2}), <mekanism:energycube>.withTag({tier: 2}), <gregtech:meta_item_1:501>, <gregtech:meta_item_1:501>], 
	      [<ore:alloyUltimate>, <gregtech:meta_item_1:501>, <ore:circuitUltimate>, <gregtech:meta_item_1:501>, <ore:wireGtHexSignalum>, <gregtech:meta_item_1:501>, <ore:circuitUltimate>, <gregtech:meta_item_1:501>, <ore:alloyUltimate>]
        ]);
   //Gas
    //Tank
     //Basic
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:gastank>.withTag({tier: 0}), [
	      [<ore:plateDoubleBlackSteel>, <ore:ringRubber>, <ore:plateDoubleBlackSteel>], 
	      [<ore:rotorSteel>, <ore:pipeNormalFluidAluminium>, <ore:rotorSteel>], 
	      [<gregtech:meta_item_1:81>, <gregtech:meta_item_1:143>, <gregtech:meta_item_1:81>]
        ]);
     //Advanced
      mods.extendedcrafting.TableCrafting.addShaped(2, <mekanism:gastank>.withTag({tier: 1}), [
	      [<ore:plateDoubleHslaSteel>, <ore:alloyAdvanced>, <ore:pipeLargeFluidStainlessSteel>, <ore:alloyAdvanced>, <ore:plateDoubleHslaSteel>], 
	      [<ore:alloyAdvanced>, <mekanism:gastank>.withTag({tier: 0}), <gregtech:meta_item_1:309>, <mekanism:gastank>.withTag({tier: 0}), <ore:alloyAdvanced>], 
	      [<ore:plateDoubleHslaSteel>, <gregtech:meta_item_1:145>, <ore:pipeLargeFluidStainlessSteel>, <gregtech:meta_item_1:145>, <ore:plateDoubleHslaSteel>], 
	      [<ore:alloyAdvanced>, <mekanism:gastank>.withTag({tier: 0}), <gregtech:meta_item_1:309>, <mekanism:gastank>.withTag({tier: 0}), <ore:alloyAdvanced>], 
	      [<ore:plateDoubleHslaSteel>, <ore:alloyAdvanced>, <ore:pipeLargeFluidStainlessSteel>, <ore:alloyAdvanced>, <ore:plateDoubleHslaSteel>]
        ]);
     //Elite
      mods.extendedcrafting.TableCrafting.addShaped(3, <mekanism:gastank>.withTag({tier: 2}), [
	      [<ore:plateDoubleTungstenCarbide>, <gregtech:meta_item_1:309>, <gregtech:meta_item_1:309>, <ore:rotorTungstenCarbide>, <gregtech:meta_item_1:309>, <gregtech:meta_item_1:309>, <ore:plateDoubleTungstenCarbide>], 
	      [<gregtech:meta_item_1:309>, <ore:plateDoubleDraconium>, <ore:plateDoubleTungstenCarbide>, <ore:pipeNormalFluidTungstenCarbide>, <ore:plateDoubleTungstenCarbide>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:309>], 
	      [<gregtech:meta_item_1:309>, <ore:plateDoubleTungstenCarbide>, <mekanism:gastank>.withTag({tier: 1}), <gregtech:meta_item_1:251>, <mekanism:gastank>.withTag({tier: 1}), <ore:plateDoubleTungstenCarbide>, <gregtech:meta_item_1:309>], 
	      [<ore:rotorTungstenCarbide>, <ore:pipeNormalFluidTungstenCarbide>, <gregtech:meta_item_1:251>, <ore:pipeLargeFluidTungstenCarbide>, <gregtech:meta_item_1:251>, <ore:pipeNormalFluidTungstenCarbide>, <ore:rotorTungstenCarbide>], 
	      [<gregtech:meta_item_1:309>, <ore:plateDoubleTungstenCarbide>, <mekanism:gastank>.withTag({tier: 1}), <gregtech:meta_item_1:251>, <mekanism:gastank>.withTag({tier: 1}), <ore:plateDoubleTungstenCarbide>, <gregtech:meta_item_1:309>], 
	      [<gregtech:meta_item_1:309>, <ore:plateDoubleDraconium>, <ore:plateDoubleTungstenCarbide>, <ore:pipeNormalFluidTungstenCarbide>, <ore:plateDoubleTungstenCarbide>, <ore:plateDoubleDraconium>, <gregtech:meta_item_1:309>], 
	      [<ore:plateDoubleTungstenCarbide>, <gregtech:meta_item_1:309>, <gregtech:meta_item_1:309>, <ore:rotorTungstenCarbide>, <gregtech:meta_item_1:309>, <gregtech:meta_item_1:309>, <ore:plateDoubleTungstenCarbide>]
        ]);
     //Ultimate
      mods.extendedcrafting.TableCrafting.addShaped(4, <mekanism:gastank>.withTag({tier: 3}), [
	      [<ore:plateEuropium>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:pipeQuadrupleFluidNaquadah>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateEuropium>], 
	      [<ore:plateNaquadahAlloy>, <ore:plateDoubleNaquadahEnriched>, <mekanism:gastank>.withTag({tier: 2}), <mekanism:gastank>.withTag({tier: 2}), <ore:pipeQuadrupleFluidNaquadah>, <mekanism:gastank>.withTag({tier: 2}), <mekanism:gastank>.withTag({tier: 2}), <ore:plateDoubleNaquadahEnriched>, <ore:plateNaquadahAlloy>], 
	      [<ore:plateNaquadahAlloy>, <mekanism:gastank>.withTag({tier: 2}), <ore:plateDoubleNaquadahEnriched>, <ore:plateDoubleNaquadah>, <ore:pipeQuadrupleFluidNaquadah>, <ore:plateDoubleNaquadah>, <ore:plateDoubleNaquadahEnriched>, <mekanism:gastank>.withTag({tier: 2}), <ore:plateNaquadahAlloy>], 
	      [<ore:plateNaquadahAlloy>, <mekanism:gastank>.withTag({tier: 2}), <ore:plateDoubleNaquadah>, <gregtech:meta_item_1:147>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:147>, <ore:plateDoubleNaquadah>, <mekanism:gastank>.withTag({tier: 2}), <ore:plateNaquadahAlloy>], 
	      [<ore:pipeQuadrupleFluidNaquadah>, <ore:pipeQuadrupleFluidNaquadah>, <ore:pipeQuadrupleFluidNaquadah>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:206>, <ore:pipeQuadrupleFluidNaquadah>, <ore:pipeQuadrupleFluidNaquadah>, <ore:pipeQuadrupleFluidNaquadah>], 
	      [<ore:plateNaquadahAlloy>, <mekanism:gastank>.withTag({tier: 2}), <ore:plateDoubleNaquadah>, <gregtech:meta_item_1:147>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:147>, <ore:plateDoubleNaquadah>, <mekanism:gastank>.withTag({tier: 2}), <ore:plateNaquadahAlloy>], 
	      [<ore:plateNaquadahAlloy>, <mekanism:gastank>.withTag({tier: 2}), <ore:plateDoubleNaquadahEnriched>, <ore:plateDoubleNaquadah>, <ore:pipeQuadrupleFluidNaquadah>, <ore:plateDoubleNaquadah>, <ore:plateDoubleNaquadahEnriched>, <mekanism:gastank>.withTag({tier: 2}), <ore:plateNaquadahAlloy>], 
	      [<ore:plateNaquadahAlloy>, <ore:plateDoubleNaquadahEnriched>, <mekanism:gastank>.withTag({tier: 2}), <mekanism:gastank>.withTag({tier: 2}), <ore:pipeQuadrupleFluidNaquadah>, <mekanism:gastank>.withTag({tier: 2}), <mekanism:gastank>.withTag({tier: 2}), <ore:plateDoubleNaquadahEnriched>, <ore:plateNaquadahAlloy>], 
	      [<ore:plateEuropium>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:pipeQuadrupleFluidNaquadah>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateEuropium>]
        ]);
  //Machine Tier Installer
   //Basic
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:tierinstaller>, [
	    [<ore:circuitHv>, <solarflux:efficiency_upgrade>, <ore:circuitHv>], 
	    [<solarflux:efficiency_upgrade>, <extrautils2:magicapple>, <solarflux:efficiency_upgrade>], 
	    [<ore:circuitHv>, <solarflux:efficiency_upgrade>, <ore:circuitHv>]
      ]);
   //Advanced
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:tierinstaller:1>, [
	    [<mekanism:tierinstaller>, <ore:alloyAdvanced>, <mekanism:tierinstaller>], 
	    [<ore:circuitAdvanced>, <ore:alloyElite>, <ore:circuitAdvanced>], 
	    [<mekanism:tierinstaller>, <ore:alloyAdvanced>, <mekanism:tierinstaller>]
      ]);
   //Elite
    mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:tierinstaller:2>, [
	    [<mekanism:tierinstaller:1>, <ore:alloyElite>, <mekanism:tierinstaller:1>], 
	    [<ore:circuitElite>, <ore:alloyUltimate>, <ore:circuitElite>], 
	    [<mekanism:tierinstaller:1>, <ore:alloyElite>, <mekanism:tierinstaller:1>]
    ]);
   //Ultimate
    assembler.recipeBuilder()
      .inputs([<mekanism:tierinstaller:2>, <mekanism:atomicalloy> * 4, <extrautils2:ingredients:16> * 4, <mekanism:controlcircuit:3> * 4, <ore:circuitUv> * 2, <gregtech:meta_item_1:581> * 4, <draconicevolution:awakened_core>, <gregtech:meta_item_1:104> * 2, <gregtech:meta_item_1:283>])
      .outputs(<mekanism:tierinstaller:3>)
      .fluidInputs(<liquid:naquadah_enriched> * 576)
      .EUt(49152)
      .duration(280)
      .property("cleanroom", "cleanroom")
      .buildAndRegister();
  //SingleBlockGenerationBlock
    //Solar
      //Nomal
        mods.extendedcrafting.TableCrafting.addShaped(2, <mekanismgenerators:generator:1>, [
	        [<ore:plateDoubleAluminium>, <gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>, <ore:plateDoubleAluminium>], 
	        [<ore:plateDoubleAluminium>, <mekanismgenerators:solarpanel>, <mekanismgenerators:solarpanel>, <mekanismgenerators:solarpanel>, <ore:plateDoubleAluminium>], 
	        [<ore:alloyAdvanced>, <ore:wireGtSingleSignalum>, <ore:wireGtQuadrupleSignalum>, <ore:wireGtSingleSignalum>, <ore:alloyAdvanced>], 
	        [<ore:alloyAdvanced>, <gregtech:meta_item_1:98>, <ore:wireGtDoubleSignalum>, <gregtech:meta_item_1:98>, <ore:alloyAdvanced>], 
	        [<gregtech:meta_item_1:602>, <ore:circuitMv>, <gregtech:meta_item_1:602>, <ore:circuitMv>, <gregtech:meta_item_1:602>]
          ]);
      //Advanced
        mods.extendedcrafting.TableCrafting.addShaped(3, <mekanismgenerators:generator:5>, [
	        [<ore:alloyUltimate>, <mekanismgenerators:generator:1>, <mekanismgenerators:generator:1>, <mekanismgenerators:generator:1>, <mekanismgenerators:generator:1>, <mekanismgenerators:generator:1>, <ore:alloyUltimate>], 
	        [<ore:alloyUltimate>, <ore:wireGtOctalSignalum>, <ore:wireGtOctalSignalum>, <ore:wireGtOctalSignalum>, <ore:wireGtOctalSignalum>, <ore:wireGtOctalSignalum>, <ore:alloyUltimate>], 
	        [<ore:stickLongTungstenCarbide>, <ore:wireFineElectrum>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:101>, <gregtech:meta_item_1:605>, <ore:wireFineElectrum>, <ore:stickLongTungstenCarbide>], 
	        [<ore:circuitUltimate>, <ore:circuitLuv>, <gregtech:meta_item_1:101>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:101>, <ore:circuitLuv>, <ore:circuitUltimate>], 
	        [<ore:stickLongTungstenCarbide>, <ore:wireFineElectrum>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:101>, <gregtech:meta_item_1:605>, <ore:wireFineElectrum>, <ore:stickLongTungstenCarbide>], 
	        [<ore:alloyUltimate>, <ore:wireGtOctalSignalum>, <ore:wireGtOctalSignalum>, <ore:wireGtOctalSignalum>, <ore:wireGtOctalSignalum>, <ore:wireGtOctalSignalum>, <ore:alloyUltimate>], 
	        [<ore:alloyUltimate>, <mekanismgenerators:generator:1>, <mekanismgenerators:generator:1>, <mekanismgenerators:generator:1>, <mekanismgenerators:generator:1>, <mekanismgenerators:generator:1>, <ore:alloyUltimate>]
          ]);
  //MultiBlock Machines
   //Production Equipment
    //Thermal Evaporation Plant
     //Thermal Evaporation Controller
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:99> * 4, <gregtech:machine:988>, <mekanism:controlcircuit:1> * 4, <gregtech:meta_item_1:234>, <ore:circuitEv> * 4, <gregtech:wire_coil> * 2, <gregtech:wire_single:32002> * 8, <mekanism:basicblock2>, <gregtech:cable_single:277> * 8])
        .outputs(<mekanism:basicblock:14>)
        .fluidInputs(<liquid:soldering_alloy> * 1440)
        .EUt(120)
        .duration(4000)
        .buildAndRegister();
     //Thermal Evaporation Block
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:basicblock2>, [
	      [<ore:plateCopper>, <ore:plateDoubleBronze>, <ore:plateCopper>], 
	      [<ore:plateDoubleBronze>, <ore:frameGtThaumium>, <ore:plateDoubleBronze>], 
	      [<ore:plateCopper>, <ore:plateDoubleBronze>, <ore:plateCopper>]
        ]);
     //Thermal Evaporation Valve
      assembler.recipeBuilder()
        .inputs([<mekanism:basicblock2> * 4, <gregtech:meta_item_1:309> * 2, <gregtech:meta_item_1:144> * 2, <ore:circuitHv> * 2])
        .outputs(<mekanism:basicblock:15> * 2)
        .fluidInputs(<liquid:tin_alloy> * 576)
        .EUt(120)
        .duration(1000)
        .buildAndRegister();
    //Boiler
     //Boiler Casings
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:basicblock2:7> * 2, [
	      [<ore:plateDoubleSteel>, <ore:plateDoubleBlackSteel>, <ore:plateDoubleSteel>], 
	      [<ore:stickLongSteel>, <ore:frameGtHslaSteel>, <ore:stickLongSteel>], 
	      [<ore:plateDoubleSteel>, <ore:plateDoubleBlackSteel>, <ore:plateDoubleSteel>]
        ]);
     //Boiler Valve
      assembler.recipeBuilder()
        .inputs([<mekanism:basicblock2:7>, <gregtech:meta_plate_double:2011> * 4, <gregtech:meta_item_1:144> * 2, <ore:circuitHv> * 4, <mekanism:enrichedalloy> * 4])
        .outputs(<mekanism:basicblock2:8>)
        .fluidInputs(<liquid:iron> * 576)
        .EUt(240)
        .duration(400)
        .buildAndRegister();
     //Decompression Block
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:143> * 2, <gregtech:meta_item_1:309> * 8, <gregtech:meta_plate:2011> * 8, <mekanism:basicblock2:7>, <mekanism:enrichedalloy> * 4])
        .outputs(<mekanism:basicblock2:6>)
        .fluidInputs(<liquid:iron> * 576)
        .EUt(240)
        .duration(400)
        .buildAndRegister();
     //Heat Generation Block
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:basicblock2:5> * 2, [
	      [<ore:plateSteel>, <gregtech:meta_item_1:99>, <ore:plateSteel>], 
      	[<ore:alloyAdvanced>, <minecraft:magma>, <ore:alloyAdvanced>], 
      	[<ore:plateSteel>, <gregtech:meta_item_1:99>, <ore:plateSteel>]
        ]);
   //Generation Equipment
    //Fusion Reactor
      //Controller
        assline.recipeBuilder()
          .inputs([<gregtech:machine:1020>, <gregtech:meta_laser:46> * 4, <gregtech:meta_item_1:206> * 4, <mekanism:atomicalloy> * 8, <mekanism:controlcircuit:3> * 2, <gregtech:meta_plate_double:396> * 16, <draconicevolution:wyvern_core> * 2, <gregtech:meta_item_1:102> * 12, <ore:circuitLuv> * 2, <gregtech:meta_lens:1602> * 4, <mekanismgenerators:reactor:1>])
          .outputs([<mekanismgenerators:reactor>])
          .fluidInputs([<liquid:soldering_alloy> * 384000])
          .EUt(131072)
          .duration(1000)
          .buildAndRegister();
      //Casing
        assline.recipeBuilder()
          .inputs([<gregtech:meta_item_1:497> * 8, <gregtech:meta_item_1:102> * 8, <gregtech:meta_item_1:206> * 4, <gregtech:meta_plate_double:396> * 16, <gregtech:meta_stick_long:423> * 8, <gregtech:wire_coil:5> * 4, <mekanism:atomicalloy> * 8, <mekanism:controlcircuit:3> * 4, <gregtech:meta_block_frame_188:12> * 8, <gregtech:meta_block_frame_2000:7> * 4])
          .outputs([<mekanismgenerators:reactor:1> * 4])
          .fluidInputs([<liquid:tin_alloy> * 14400, <liquid:soldering_alloy> * 14400])
          .EUt(49152)
          .duration(800)
          .buildAndRegister();
      //Glass
        mods.extendedcrafting.TableCrafting.addShaped(2, <mekanismgenerators:reactorglass> * 4, [
	        [<gregtech:transparent_casing:2>, <gregtech:transparent_casing:1>, <gregtech:transparent_casing>, <gregtech:transparent_casing:1>, <gregtech:transparent_casing:2>], 
	        [<gregtech:transparent_casing:1>, <ore:alloyUltimate>, <ore:alloyElite>, <ore:alloyUltimate>, <gregtech:transparent_casing:1>], 
	        [<gregtech:transparent_casing>, <ore:alloyElite>, <ore:plateDoubleTungstenCarbide>, <ore:alloyElite>, <gregtech:transparent_casing>], 
	        [<gregtech:transparent_casing:1>, <ore:alloyUltimate>, <ore:alloyElite>, <ore:alloyUltimate>, <gregtech:transparent_casing:1>], 
	        [<gregtech:transparent_casing:2>, <gregtech:transparent_casing:1>, <gregtech:transparent_casing>, <gregtech:transparent_casing:1>, <gregtech:transparent_casing:2>]
          ]);
      //Adapter
        assline.recipeBuilder()
          .inputs([<mekanismgenerators:reactor:1> * 4, <gregtech:meta_item_1:147> * 4, <gregtech:meta_item_1:192> * 4, <gregtech:meta_item_1:206> * 4, <ore:circuitLuv> * 4, <gregtech:meta_item_1:605> * 4, <mekanism:controlcircuit:3> * 4, <mekanism:atomicalloy> * 8, <gregtech:wire_octal:429> * 4])
          .outputs([<mekanismgenerators:reactor:2> * 4])
          .fluidInputs([<liquid:redstone> * 144000, <liquid:blue_alloy> * 5760])
          .EUt(262144)
          .duration(1440)
          .buildAndRegister();
      //Logic Adapter
        assline.recipeBuilder()
          .inputs([<mekanismgenerators:reactor:1>, <ore:circuitZpm> * 2, <gregtech:meta_item_1:598> * 4, <gregtech:meta_item_1:301> * 16, <gregtech:meta_item_1:302> * 16, <gregtech:meta_item_1:303> * 16, <mekanism:atomicalloy> * 2, <mekanism:controlcircuit:3> * 2])
          .outputs([<mekanismgenerators:reactor:3>])
          .fluidInputs([<liquid:redstone> * 144000, <liquid:blue_alloy> * 5760])
          .EUt(262144)
          .duration(1440)
          .buildAndRegister();
      //Laser Focus Matrix
        assline.recipeBuilder()
          .inputs([<mekanismgenerators:reactorglass> * 4, <modulardiversity:blockmeklaseracceptor> * 4, <gregtech:meta_lens:1602> * 8, <gregtech:meta_laser:119> * 4, <gregtech:machine:9008> * 8, <gregtech:meta_item_1:606> * 24, <ore:circuitZpm> * 4, <gregtech:meta_item_1:103> * 8, <gregtech:meta_item_1:207> * 8, <gregtech:meta_item_1:222> * 8, <gregtech:meta_item_1:237> * 8, <mekanism:atomicalloy> * 16, <mekanism:controlcircuit:3> * 8, <draconicevolution:wyvern_core> * 4, <astralsorcery:iteminfusedglass>, <gregtech:meta_gem_exquisite:2000>  * 16])
          .outputs([<mekanismgenerators:reactorglass:1> * 8])
          .EUt(262144)
          .duration(2000)
          .buildAndRegister();
       //Laser
        //Laser
          mmRecipe("Mek_Laser", "Prototype_Assembling_Line", 480) //RecipeName UseMachine RecipeTick
            .addEnergyPerTickInput(32768)//EnergyInput
            .addItemInput(<gregtech:meta_lens:311>)//1
            .addItemInput(<gregtech:meta_laser:397> * 2)//2
            .addItemInput(<mekanism:reinforcedalloy> * 4)//3
            .addItemInput(<gregtech:meta_plate_double:32022>)//4
            .addItemInput(<gregtech:meta_plate_double:32023>)//5
            .addItemInput(<gregtech:meta_item_1:605> * 2)//6
            .addItemInput(<gregtech:meta_item_1:637>)//7
            .addItemInput(<gregtech:meta_item_1:221> * 2)//8
            .addItemInput(<gregtech:meta_item_1:100> * 2)//9
            .addItemInput(<mekanism:controlcircuit:2> * 2)//10
            .addFluidInput(<liquid:gallium_arsenide> * 576)//1
            .addFluidInput(<liquid:indium_gallium_phosphide> * 576)//2
            .addItemOutput(<mekanism:machineblock2:13>)//OutPutItem
            .build();//Build
        //Laser Amplifier
          mmRecipe("Laser_Amp", "Prototype_Assembling_Line", 600) //RecipeName UseMachine RecipeTick
            .addEnergyPerTickInput(32768)//EnergyInput
            .addItemInput(<gregtech:meta_lens:1602> * 4)//1
            .addItemInput(<gregtech:meta_item_1:638> * 4)//2
            .addItemInput(<gregtech:meta_item_1:206> * 4)//3
            .addItemInput(<gregtech:meta_item_1:101> * 4)//4
            .addItemInput(<mekanism:atomicalloy> * 2)//5
            .addItemInput(<mekanism:polyethene:2> * 64)//6
            .addItemInput(<mekanism:polyethene:3> * 64)//7
            .addItemInput(<mekanism:ingot> * 12)//8
            .addItemInput(<mekanism:basicblock:10> * 8)//9
            .addItemInput(<gregtech:meta_plate:3021> * 16)//10
            .addFluidInput(<liquid:borosilicate_glass> * 1440)//1
            .addItemOutput(<mekanism:machineblock2:14> * 2)//OutPutItem
            .build();//BuildRecipe
        //Laser Tractor Beam
          mods.extendedcrafting.TableCrafting.addShaped(2, <mekanism:machineblock2:15>, [
	          [<ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <gregtech:meta_item_1:205>, <ore:ingotCrystalMatrix>], 
	          [<ore:alloyElite>, <ore:alloyElite>, <gregtech:meta_item_1:101>, <ore:alloyElite>, <ore:alloyElite>], 
	          [<mekanism:machineblock2:14>, <threng:material:4>, <gregtech:meta_item_1:206>, <ore:craftingLensWhite>, <buildcraftsilicon:redstone_chipset:4>], 
	          [<ore:alloyElite>, <ore:alloyElite>, <gregtech:meta_item_1:101>, <ore:alloyElite>, <ore:alloyElite>], 
	          [<ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <ore:stickLongSamariumMagnetic>, <gregtech:meta_item_1:205>, <ore:ingotCrystalMatrix>]
            ]);
      //Hohlraum
        chem_reactor.recipeBuilder()
          .inputs([<gregtech:meta_plate_double:301> * 2])
          .fluidInputs([<liquid:coal> * 500])
          .outputs([<mekanismgenerators:hohlraum>])
          .EUt(240)
          .duration(60)
          .buildAndRegister();
    //Steam Turbine
     //Turbine Casing
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanismgenerators:generator:10> * 2, [
	      [<ore:plateSteel>, <ore:alloyAdvanced>, <ore:plateSteel>], 
	      [<ore:plateDoubleHslaSteel>, <ore:frameGtHslaSteel>, <ore:plateDoubleHslaSteel>], 
	      [<ore:plateSteel>, <ore:alloyAdvanced>, <ore:plateSteel>]
        ]);
     //Turbine Valve
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanismgenerators:generator:11>, [
	      [<ore:cableGtSingleAluminium>, <ore:rotorSteel>, <ore:gearBlackSteel>], 
	      [<gregtech:meta_item_1:143>, <mekanismgenerators:generator:10>, <gregtech:meta_item_1:143>], 
	      [<ore:gearBlackSteel>, <ore:rotorSteel>, <ore:cableGtSingleAluminium>]
        ]);
     //Electromagnetic Coil
      mods.extendedcrafting.TableCrafting.addShaped(2, <mekanismgenerators:generator:9>, [
	      [<ore:stickNeodymiumMagnetic>, <ore:alloyElite>, <ore:stickLongCopper>, <ore:alloyElite>, <ore:stickNeodymiumMagnetic>], 
	      [<gregtech:meta_item_1:99>, <ore:stickNeodymiumMagnetic>, <ore:stickLongCopper>, <ore:stickNeodymiumMagnetic>, <gregtech:meta_item_1:99>], 
	      [<gregtech:meta_item_1:99>, <ore:stickNeodymiumMagnetic>, <ore:stickLongCopper>, <ore:stickNeodymiumMagnetic>, <gregtech:meta_item_1:99>], 
	      [<gregtech:meta_item_1:99>, <ore:stickNeodymiumMagnetic>, <ore:stickLongCopper>, <ore:stickNeodymiumMagnetic>, <gregtech:meta_item_1:99>], 
	      [<ore:stickNeodymiumMagnetic>, <ore:alloyElite>, <ore:stickLongCopper>, <ore:alloyElite>, <ore:stickNeodymiumMagnetic>]
        ]);
     //Steam Outlet Hatch
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanismgenerators:generator:12>, [
	      [<ore:rotorStainlessSteel>, <ore:pipeNormalFluidStainlessSteel>, <ore:rotorStainlessSteel>], 
	      [<ore:pipeNormalFluidStainlessSteel>, <gregtech:boiler_casing:1>, <ore:pipeNormalFluidStainlessSteel>], 
	      [<ore:rotorStainlessSteel>, <gregtech:meta_item_1:128>, <ore:rotorStainlessSteel>]
        ]);
     //Saturated Condenser
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanismgenerators:generator:13>, [
	      [<ore:alloyAdvanced>, <ore:plateDoubleCopper>, <ore:alloyAdvanced>], 
	      [<ore:pipeLargeFluidStainlessSteel>, <mekanism:basicblock:8>, <ore:pipeLargeFluidStainlessSteel>], 
	      [<ore:alloyAdvanced>, <ore:plateDoubleCopper>, <ore:alloyAdvanced>]
        ]);
     //Rotation Mechanism
      assembler.recipeBuilder()
        .inputs([<mekanismgenerators:generator:10>, <gregtech:meta_item_1:129> * 2, <gregtech:meta_item_1:99> * 2, <gregtech:machine:1640>, <gregtech:meta_ring:324> * 8, <mekanism:reinforcedalloy> * 2])
        .outputs(<mekanismgenerators:generator:8>)
        .EUt(200)
        .duration(100)
        .buildAndRegister();
       //Turbine Shaft
        lathe.recipeBuilder()
          .inputs([<gregtech:meta_block_compressed_20:4>])
          .outputs([<mekanismgenerators:generator:7> * 2])
          .EUt(200)
          .duration(800)
          .buildAndRegister();
       //Turbine Blades
        mods.extendedcrafting.TableCrafting.addShaped(1, <mekanismgenerators:turbineblade>, [
	        [<ore:plateDoubleSteel>, <ore:turbineBladeIron>, <ore:plateDoubleSteel>], 
	        [<ore:turbineBladeIron>, <ore:stickLongSteel>, <ore:turbineBladeIron>], 
	        [<ore:plateDoubleSteel>, <ore:turbineBladeIron>, <ore:plateDoubleSteel>]
          ]);
  //Transportation
    //Item
      //ItemPipe
        //Basic
          assembler.recipeBuilder()
            .inputs([<ore:blockGlass> * 12, <gregtech:meta_item_1:157> * 3, <gregtech:item_pipe_small:112> * 6, <gregtech:meta_item_1:501> * 4])
            .outputs([<mekanism:transmitter:3>.withTag({tier: 0}) * 6])
            .fluidInputs([<liquid:redstone> * 1728])
            .EUt(120)
            .duration(100)
            .buildAndRegister();
        //Advanced
          mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:transmitter:3>.withTag({tier: 1}) * 6, [
	          [<mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:transmitter:3>.withTag({tier: 0})], 
	          [<ore:alloyAdvanced>, <ore:circuitHv>, <ore:alloyAdvanced>], 
	          [<mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:transmitter:3>.withTag({tier: 0})]
            ]);
        //Elite
          mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:transmitter:3>.withTag({tier: 2}) * 6, [
	          [<mekanism:transmitter:3>.withTag({tier: 1}), <mekanism:transmitter:3>.withTag({tier: 1}), <mekanism:transmitter:3>.withTag({tier: 1})], 
	          [<ore:alloyElite>, <ore:circuitIv>, <ore:alloyElite>], 
	          [<mekanism:transmitter:3>.withTag({tier: 1}), <mekanism:transmitter:3>.withTag({tier: 1}), <mekanism:transmitter:3>.withTag({tier: 1})]
            ]);
        //Ultimate
          mods.extendedcrafting.TableCrafting.addShaped(0, <mekanism:transmitter:3>.withTag({tier: 3}) * 24, [
	          [<mekanism:transmitter:3>.withTag({tier: 2}), <mekanism:transmitter:3>.withTag({tier: 2}), <mekanism:transmitter:3>.withTag({tier: 2}), <mekanism:transmitter:3>.withTag({tier: 2}), <mekanism:transmitter:3>.withTag({tier: 2})], 
	          [<ore:alloyUltimate>, <gregtech:meta_item_1:161>, <ore:circuitZpm>, <gregtech:meta_item_1:161>, <ore:alloyUltimate>], 
	          [<mekanism:transmitter:3>.withTag({tier: 2}), <ore:pipeNormalItemOsmiridium>, <ore:pipeNormalItemOsmiridium>, <ore:pipeNormalItemOsmiridium>, <mekanism:transmitter:3>.withTag({tier: 2})], 
	          [<ore:alloyUltimate>, <gregtech:meta_item_1:161>, <ore:circuitZpm>, <gregtech:meta_item_1:161>, <ore:alloyUltimate>], 
	          [<mekanism:transmitter:3>.withTag({tier: 2}), <mekanism:transmitter:3>.withTag({tier: 2}), <mekanism:transmitter:3>.withTag({tier: 2}), <mekanism:transmitter:3>.withTag({tier: 2}), <mekanism:transmitter:3>.withTag({tier: 2})]
            ]);
    //Energy
      //UniversalCable
        //Basic
          assembler.recipeBuilder()
            .inputs([<gregtech:meta_stick:2517> * 6, <gregtech:wire_quadruple:2517> * 6, <ore:ingotSilver> * 6, <ore:blockGlass> * 12, <gregtech:meta_item_1:501> * 4])
            .outputs([<mekanism:transmitter>.withTag({tier: 0}) * 6])
            .fluidInputs([<liquid:redstone> * 1728])
            .EUt(120)
            .duration(100)
            .buildAndRegister();
        //Advanced
          mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:transmitter>.withTag({tier: 1}) * 6, [
	          [<mekanism:transmitter>.withTag({tier: 0}), <mekanism:transmitter>.withTag({tier: 0}), <mekanism:transmitter>.withTag({tier: 0})], 
	          [<ore:alloyAdvanced>, <ore:circuitHv>, <ore:alloyAdvanced>], 
	          [<mekanism:transmitter>.withTag({tier: 0}), <mekanism:transmitter>.withTag({tier: 0}), <mekanism:transmitter>.withTag({tier: 0})]
            ]);
        //Elite
          mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:transmitter>.withTag({tier: 2}) * 6, [
	          [<mekanism:transmitter>.withTag({tier: 1}), <mekanism:transmitter>.withTag({tier: 1}), <mekanism:transmitter>.withTag({tier: 1})], 
	          [<ore:alloyElite>, <ore:circuitIv>, <ore:alloyElite>], 
	          [<mekanism:transmitter>.withTag({tier: 1}), <mekanism:transmitter>.withTag({tier: 1}), <mekanism:transmitter>.withTag({tier: 1})]
            ]);
        //Ultimate
          mods.extendedcrafting.TableCrafting.addShaped(2, <mekanism:transmitter>.withTag({tier: 3}) * 24, [
	          [<mekanism:transmitter>.withTag({tier: 2}), <mekanism:transmitter>.withTag({tier: 2}), <mekanism:transmitter>.withTag({tier: 2}), <mekanism:transmitter>.withTag({tier: 2}), <mekanism:transmitter>.withTag({tier: 2})], 
	          [<ore:alloyUltimate>, <gregtech:meta_item_1:102>, <ore:circuitZpm>, <gregtech:meta_item_1:102>, <ore:alloyUltimate>], 
	          [<mekanism:transmitter>.withTag({tier: 2}), <ore:wireGtOctalSignalum>, <ore:wireGtOctalSignalum>, <ore:wireGtOctalSignalum>, <mekanism:transmitter>.withTag({tier: 2})], 
	          [<ore:alloyUltimate>, <gregtech:meta_item_1:102>, <ore:circuitZpm>, <gregtech:meta_item_1:102>, <ore:alloyUltimate>], 
	          [<mekanism:transmitter>.withTag({tier: 2}), <mekanism:transmitter>.withTag({tier: 2}), <mekanism:transmitter>.withTag({tier: 2}), <mekanism:transmitter>.withTag({tier: 2}), <mekanism:transmitter>.withTag({tier: 2})]
            ]);
    //Gases
      //Pressurized Tube
        //Basic
          assembler.recipeBuilder()
            .inputs([<mekanism:transmitter:1>.withTag({tier: 0}) * 6, <gregtech:meta_plate:324> * 12, <gregtech:meta_item_1:142> * 3, <ore:blockGlass> * 16, <gregtech:meta_item_1:501> * 6])
            .outputs([<mekanism:transmitter:2>.withTag({tier: 0}) * 6])
            .fluidInputs([<liquid:redstone> * 1728])
            .EUt(120)
            .duration(100)
            .buildAndRegister();
        //Adanced
          mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:transmitter:2>.withTag({tier: 1}) * 6, [
	          [<mekanism:transmitter:2>.withTag({tier: 0}), <mekanism:transmitter:2>.withTag({tier: 0}), <mekanism:transmitter:2>.withTag({tier: 0})], 
	          [<ore:alloyAdvanced>, <ore:circuitHv>, <ore:alloyAdvanced>], 
	          [<mekanism:transmitter:2>.withTag({tier: 0}), <mekanism:transmitter:2>.withTag({tier: 0}), <mekanism:transmitter:2>.withTag({tier: 0})]
            ]);
        //Elite
          mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:transmitter:2>.withTag({tier: 2}) * 6, [
	          [<mekanism:transmitter:2>.withTag({tier: 1}), <mekanism:transmitter:2>.withTag({tier: 1}), <mekanism:transmitter:2>.withTag({tier: 1})], 
	          [<ore:alloyAdvanced>, <ore:circuitIv>, <ore:alloyAdvanced>], 
	          [<mekanism:transmitter:2>.withTag({tier: 1}), <mekanism:transmitter:2>.withTag({tier: 1}), <mekanism:transmitter:2>.withTag({tier: 1})]
            ]);
        //Ultimate
          mods.extendedcrafting.TableCrafting.addShaped(2, <mekanism:transmitter:2>.withTag({tier: 3}) * 24, [
	          [<mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:transmitter:2>.withTag({tier: 2})], 
	          [<ore:alloyUltimate>, <gregtech:meta_item_1:146>, <ore:circuitZpm>, <gregtech:meta_item_1:147>, <ore:alloyUltimate>], 
	          [<mekanism:transmitter:2>.withTag({tier: 2}), <ore:pipeLargeFluidTungstenCarbide>, <ore:pipeLargeFluidTungstenCarbide>, <ore:pipeLargeFluidTungstenCarbide>, <mekanism:transmitter:2>.withTag({tier: 2})], 
	          [<ore:alloyUltimate>, <gregtech:meta_item_1:147>, <ore:circuitZpm>, <gregtech:meta_item_1:146>, <ore:alloyUltimate>], 
	          [<mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:transmitter:2>.withTag({tier: 2})]
            ]);
    //Heat
      //Thermodynamic Conductor
        //Basic
          assembler.recipeBuilder()
            .inputs([<gregtech:meta_stick_long:25> * 3, <gregtech:meta_stick:25> * 6, <gregtech:meta_item_1:501> * 4, <ore:blockGlass> * 12])
            .outputs([<mekanism:transmitter:6>.withTag({tier: 0}) * 6])
            .fluidInputs([<liquid:redstone> * 1728])
            .EUt(120)
            .duration(100)
            .buildAndRegister();
        //Advanced
          mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:transmitter:6>.withTag({tier: 1}) * 6, [
	          [<mekanism:transmitter:6>.withTag({tier: 0}), <mekanism:transmitter:6>.withTag({tier: 0}), <mekanism:transmitter:6>.withTag({tier: 0})], 
	          [<ore:alloyAdvanced>, <ore:circuitHv>, <ore:alloyAdvanced>], 
	          [<mekanism:transmitter:6>.withTag({tier: 0}), <mekanism:transmitter:6>.withTag({tier: 0}), <mekanism:transmitter:6>.withTag({tier: 0})]
            ]);
        //Elite
          mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:transmitter:6>.withTag({tier: 2}) * 6, [
	          [<mekanism:transmitter:6>.withTag({tier: 1}), <mekanism:transmitter:6>.withTag({tier: 1}), <mekanism:transmitter:6>.withTag({tier: 1})], 
	          [<ore:alloyElite>, <ore:circuitIv>, <ore:alloyElite>], 
	          [<mekanism:transmitter:6>.withTag({tier: 1}), <mekanism:transmitter:6>.withTag({tier: 1}), <mekanism:transmitter:6>.withTag({tier: 1})]
            ]);
        //Ultimate
          mods.extendedcrafting.TableCrafting.addShaped(2, <mekanism:transmitter:6>.withTag({tier: 3}) * 24, [
	          [<mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:transmitter:6>.withTag({tier: 2})], 
	          [<ore:alloyUltimate>, <ore:blockCopper>, <ore:circuitZpm>, <ore:blockCopper>, <ore:alloyUltimate>], 
	          [<mekanism:transmitter:6>.withTag({tier: 2}), <ore:stickLongTerrasteel>, <ore:stickLongTerrasteel>, <ore:stickLongTerrasteel>, <mekanism:transmitter:6>.withTag({tier: 2})], 
	          [<ore:alloyUltimate>, <ore:blockCopper>, <ore:circuitZpm>, <ore:blockCopper>, <ore:alloyUltimate>], 
	          [<mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:transmitter:6>.withTag({tier: 2})]
            ]);
    //Fluid
      //MechanicalPipe
        //Basic
          assembler.recipeBuilder()
            .inputs([<gregtech:fluid_pipe_small:328> * 6, <gregtech:meta_rotor:112> * 3, <gregtech:meta_item_1:247> * 3, <ore:blockGlass> * 12, <gregtech:meta_item_1:501> * 4])
            .outputs([<mekanism:transmitter:1>.withTag({tier: 0}) * 6])
            .fluidInputs([<liquid:redstone> * 1728])
            .EUt(120)
            .duration(100)
            .buildAndRegister();
        //Advanced
          mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:transmitter:1>.withTag({tier: 1}) * 6, [
	          [<mekanism:transmitter:1>.withTag({tier: 0}), <mekanism:transmitter:1>.withTag({tier: 0}), <mekanism:transmitter:1>.withTag({tier: 0})], 
	          [<ore:alloyAdvanced>, <ore:circuitHv>, <ore:alloyAdvanced>], 
	          [<mekanism:transmitter:1>.withTag({tier: 0}), <mekanism:transmitter:1>.withTag({tier: 0}), <mekanism:transmitter:1>.withTag({tier: 0})]
            ]);
        //Elite
          mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:transmitter:1>.withTag({tier: 2}) * 6, [
	          [<mekanism:transmitter:1>.withTag({tier: 1}), <mekanism:transmitter:1>.withTag({tier: 1}), <mekanism:transmitter:1>.withTag({tier: 1})], 
	          [<ore:alloyElite>, <ore:circuitIv>, <ore:alloyElite>], 
	          [<mekanism:transmitter:1>.withTag({tier: 1}), <mekanism:transmitter:1>.withTag({tier: 1}), <mekanism:transmitter:1>.withTag({tier: 1})]
            ]);
        //Ultimate
        /*
          assline.recipeBuilder()
            .inputs([])
            .outputs([])
            .fluidInputs([])
            .EUt()
            .duration()
            .buildAndRegister();
            */
    //Item Advanced Transportation Option
      //Limited Item Pipe
        mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:transmitter:4>.withTag({tier: 0}) * 3, [
	        [<gregtech:meta_item_1:301>, <ore:circuitHv>, <gregtech:meta_item_1:309>], 
	        [<mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:transmitter:3>.withTag({tier: 0})], 
	        [<gregtech:meta_item_1:309>, <ore:circuitHv>, <gregtech:meta_item_1:301>]
          ]);
      //Detour Item Pipe
        mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:transmitter:5>.withTag({tier: 0}), [
	        [<gregtech:meta_item_1:302>, <ore:circuitHv>, <gregtech:meta_item_1:302>], 
	        [<mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:transmitter:3>.withTag({tier: 0})], 
	        [<gregtech:meta_item_1:302>, <ore:circuitHv>, <gregtech:meta_item_1:302>]
          ]);
      //LogisticalSorter
        mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:machineblock:15>, [
	        [<gregtech:meta_item_1:293>, <mekanism:transmitter:4>, <gregtech:meta_item_1:293>], 
	        [<ore:circuitElite>, <mekanism:transmitter:3>, <ore:circuitElite>], 
	        [<gregtech:meta_item_1:159>, <mekanism:transmitter:5>, <gregtech:meta_item_1:159>]
          ]);

      //Quantum Link
        assline.recipeBuilder()
          .inputs([<ore:circuitUv> * 8, <gregtech:meta_item_1:207> * 8, <gregtech:meta_item_1:222> * 4, <gregtech:meta_item_1:237> * 2, <gregtech:meta_item_1:103> * 12, <gregtech:meta_laser:119> * 8, <gregtech:meta_item_1:606> * 4, <gregtech:meta_item_1:501> * 48, <avaritia:endest_pearl> * 4, <extendedcrafting:singularity:3> * 2, <mekanism:controlcircuit:3> * 8, <mekanism:atomicalloy> * 16, <mekanism:teleportationcore> * 16, <gregtech:meta_block_frame_2:1> * 4])
          .outputs([<mekanism:machineblock3> * 4])
          .fluidInputs([<liquid:radon> * 200000, <liquid:plasma.nitrogen> * 3750])
          .EUt(262144)
          .duration(60000)
          .property("cleanroom", "sterile_cleanroom")
          .buildAndRegister();
  //TeleportationTechnology
    //Telepoater
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:207> * 2, <gregtech:meta_item_1:282> * 2, <appliedenergistics2:material:43> * 64, <appliedenergistics2:material:44> * 64, <mekanism:teleportationcore> * 16, <ore:circuitZpm> * 9, <draconicevolution:wyvern_core> * 16, <astralsorcery:itemcraftingcomponent:4> * 8, <extendedcrafting:singularity:3>])
        .outputs(<mekanism:machineblock:11>)
        .fluidInputs(<liquid:plasma.helium> * 625)
        .EUt(30720)
        .duration(4000)
        .property("cleanroom", "sterile_cleanroom")
        .buildAndRegister();
    //TerepoaterFrame
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:206> * 6, <gregtech:meta_item_1:236> * 8, <gregtech:meta_item_1:221> * 8, <gregtech:meta_item_1:101> * 6, <ore:circuitIv> * 8, <mekanism:atomicalloy> * 4, <mekanism:ingot> * 8, <gregtech:meta_laser:397> * 4, <gregtech:meta_block_frame_188:12> * 4])
        .outputs(<mekanism:basicblock:7> * 4)
        .fluidInputs(<liquid:osmiridium> * 576)
        .EUt(7960)
        .duration(200)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
  //Others
    //Cards
      //Crafting
        mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:craftingformula>, [
	        [<ore:plateAluminium>, <ore:alloyAdvanced>, <ore:plateAluminium>], 
	        [<ore:circuitMv>, <gregtech:meta_item_1:308>, <ore:circuitMv>], 
	        [<gregtech:meta_item_1:592>, <gregtech:meta_item_1:261>, <gregtech:meta_item_1:592>]
          ]);
      //Configration
        mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:configurationcard>, [
	        [<ore:circuitMv>, <gregtech:meta_item_1:592>, <ore:circuitMv>], 
	        [<ore:alloyAdvanced>, <gregtech:meta_item_1:307>, <ore:alloyAdvanced>], 
	        [<ore:circuitMv>, <gregtech:meta_item_1:592>, <ore:circuitMv>]
          ]);
  //SingleBlcokMachines
    //Punp
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:machineblock:12>, [
	      [<ore:plateStainlessSteel>, <ore:circuitHv>, <ore:plateStainlessSteel>], 
	      [<ore:alloyAdvanced>, <gregtech:meta_item_1:249>, <ore:alloyAdvanced>], 
	      [<ore:plateStainlessSteel>, <ore:pipeHugeFluidSteel>, <ore:plateStainlessSteel>]
        ]);
    //SecurityTurminal
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:261> * 2, <mekanism:controlcircuit:2> * 2, <ore:circuitIv> * 4, <advancedrocketry:misc> * 2, <opencomputers:keyboard>, <logisticspipes:security_station>, <gregtech:meta_block_frame_2001:2>, <gregtech:meta_plate_double:32021> * 4])
        .outputs(<mekanism:basicblock2:9>)
        .EUt(150)
        .duration(160)
        .buildAndRegister();       
    //Fluid Redistribution Deivce
      assembler.recipeBuilder()
        .inputs([<mekanism:machineblock:12>, <gregtech:meta_item_1:144> * 2, <gregtech:meta_item_1:129> * 2, <ore:circuitEv> * 2, <gregtech:meta_plate:323> * 4, <gregtech:fluid_pipe_small:323> * 16, <mekanism:reinforcedalloy> * 2])
        .outputs(<mekanism:machineblock2:12>)
        .EUt(480)
        .duration(160)
        .buildAndRegister();
    //ChargePad
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:526> * 32, <gregtech:meta_item_1:492> * 8, <gregtech:meta_item_1:99> * 8, <gregtech:meta_plate_double:32018> * 4, <gregtech:wire_hex:2517> * 16, <mekanism:reinforcedalloy> * 4, <gregtech:meta_plate:2> * 6])
        .outputs(<mekanism:machineblock:14>)
        .EUt(280)
        .duration(144)
        .buildAndRegister();
    //Solar Neutron Reactor
      assembler.recipeBuilder()
        .inputs([<mekanismgenerators:solarpanel> * 4, <gregtech:meta_item_1:235> * 4, <gregtech:meta_item_1:497> * 2, <gregtech:transparent_casing:2> * 2, <ore:circuitEv> * 2, <mekanism:reinforcedalloy> * 2, <mekanism:polyethene:3> * 4, <gregtech:meta_block_frame_24:12>])
        .outputs(<mekanism:machineblock3:1>)
        .fluidInputs(<liquid:tin_alloy> * 1440)
        .EUt(1440)
        .duration(120)
        .buildAndRegister();
    //Ore Dictionary Coverter
      mods.extendedcrafting.TableCrafting.addShaped(1, <mekanism:machineblock3:3>, [
	      [<ore:alloyAdvanced>, <buildcraftsilicon:redstone_chipset:4>, <ore:alloyAdvanced>], 
	      [<mekanism:dictionary>, <mekanism:basicblock:8>, <mekanism:dictionary>], 
	      [<ore:circuitBasic>, <ore:circuitMv>, <ore:circuitBasic>]
        ]);
  //Chemistry
    //Reinforced Obsidian
      //Dust
        chem_reactor.recipeBuilder()
          .inputs([<ore:dustTungstenCarbide> * 2, <gregtech:meta_dust:297> * 4])
          .fluidInputs([<liquid:diamond> * 2664, <liquid:neon> * 500])
          .outputs([<mekanism:otherdust:5>])
          .EUt(1000)
          .duration(2400)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Ingot
        ebf.recipeBuilder()//必須
          .inputs([<mekanism:otherdust:5>, <ore:blockObsidian> * 2])//任意
          .outputs([<mekanism:ingot>])//任意
          .fluidInputs([<liquid:argon> * 500])//任意
          .property("temperature", 2500)//必須
          .EUt(2400)//必須
          .duration(1200)//必須
          .buildAndRegister();//必須
    //GlowStoneIngot
      chem_reactor.recipeBuilder()
        .inputs([<ore:dustGarnetYellow> * 4, <minecraft:glowstone> * 2])
        .fluidInputs([<liquid:electrum> * 144])
        .outputs([<mekanism:ingot:3>])
        .EUt(240)
        .duration(400)
        .buildAndRegister();
    //HDPE
      //BioFuel
        chem_reactor.recipeBuilder()
          .inputs([<gregtech:meta_item_1:440> * 4])
          .fluidInputs([<liquid:ethanol> * 400, <liquid:distilled_water> * 1000])
          .outputs([<mekanism:biofuel> * 2])
          .EUt(240)
          .duration(120)
          .buildAndRegister();
      //Substrate
        chem_reactor.recipeBuilder()
          .inputs([<mekanism:biofuel>])
          .fluidInputs([<liquid:ethanol> * 500, <liquid:sulfuric_acid> * 500, <liquid:hydrogen> * 1000])
          .outputs([<mekanism:substrate>])
          .fluidOutputs([<liquid:hydrocracked_ethylene> * 500, <liquid:diluted_sulfuric_acid> * 500])
          .EUt(480)
          .duration(540)
          .buildAndRegister();
      //HDPE
        chem_reactor.recipeBuilder()
          .inputs([<mekanism:substrate> * 2])
          .fluidInputs([<liquid:plastic> * 1000, <liquid:hydrogen> * 2000])
          .outputs([<mekanism:polyethene>])
          .fluidOutputs([<liquid:oxygen> * 250])
          .EUt(240)
          .duration(480)
          .buildAndRegister();
    
print("------MEKAMISM_LOADING_END------");
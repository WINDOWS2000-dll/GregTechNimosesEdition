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
//NC Machines
import mods.nuclearcraft.rock_crusher;
import mods.nuclearcraft.pressurizer;
import mods.nuclearcraft.melter;
import mods.nuclearcraft.manufactory;
import mods.nuclearcraft.isotope_separator;
import mods.nuclearcraft.irradiator;
import mods.nuclearcraft.ingot_former;
import mods.nuclearcraft.infuser;
import mods.nuclearcraft.extractor;
import mods.nuclearcraft.dissolver;
import mods.nuclearcraft.crystallizer;
import mods.nuclearcraft.condenser;
import mods.nuclearcraft.chemical_reactor;
import mods.nuclearcraft.centrifuge;
import mods.nuclearcraft.alloy_furnace;

print("------NEUCLEARCRAFT_LOADING_START------");
//Remove Recipe
  //さぎょーだいれしぴども
    var arraync as IItemStack[] = [
      <nuclearcraft:compound:1>,
      <nuclearcraft:compound:2>,
      <nuclearcraft:part>,
      <nuclearcraft:part:1>,
      <nuclearcraft:part:2>,
      <nuclearcraft:part:3>,
      <nuclearcraft:part:4>,
      <nuclearcraft:part:5>,
      <nuclearcraft:part:7>,
      <nuclearcraft:part:8>,
      <nuclearcraft:part:9>,
      <nuclearcraft:part:10>,
      <nuclearcraft:part:11>,
      <nuclearcraft:part:12>,
      <nuclearcraft:part:13>,
      <nuclearcraft:decay_hastener_idle>,
      <nuclearcraft:nuclear_furnace_idle>,
      <nuclearcraft:irradiator_idle>,
      <nuclearcraft:rock_crusher_idle>,
      <nuclearcraft:machine_interface>,
      <nuclearcraft:rtg_uranium>,
      <nuclearcraft:rtg_plutonium>,
      <nuclearcraft:rtg_americium>,
      <nuclearcraft:rtg_californium>,
      <nuclearcraft:solar_panel_basic>,
      <nuclearcraft:solar_panel_advanced>,
      <nuclearcraft:solar_panel_du>,
      <nuclearcraft:solar_panel_elite>,
      <nuclearcraft:decay_generator>,
      <nuclearcraft:voltaic_pile_basic>,
      <nuclearcraft:voltaic_pile_advanced>,
      <nuclearcraft:voltaic_pile_du>,
      <nuclearcraft:voltaic_pile_elite>,
      <nuclearcraft:lithium_ion_battery_basic>,
      <nuclearcraft:lithium_ion_battery_advanced>,
      <nuclearcraft:lithium_ion_battery_du>,
      <nuclearcraft:lithium_ion_battery_elite>,
      <nuclearcraft:buffer>,
      <nuclearcraft:bin>,
      <nuclearcraft:helium_collector>,
      <nuclearcraft:helium_collector_compact>,
      <nuclearcraft:helium_collector_dense>,
      <nuclearcraft:cobblestone_generator>,
      <nuclearcraft:cobblestone_generator_compact>,
      <nuclearcraft:cobblestone_generator_dense>,
      <nuclearcraft:water_source>,
      <nuclearcraft:water_source_compact>,
      <nuclearcraft:water_source_dense>,
      <nuclearcraft:nitrogen_collector>,
      <nuclearcraft:nitrogen_collector_compact>,
      <nuclearcraft:nitrogen_collector_dense>,
      <nuclearcraft:upgrade>,
      <nuclearcraft:upgrade:1>,
      <nuclearcraft:lithium_ion_cell>,
      <nuclearcraft:fission_block>,
      <nuclearcraft:fission_block:1>,
      <nuclearcraft:reactor_casing_transparent>,
      <nuclearcraft:cell_block>,
      <nuclearcraft:cooler>,
      <nuclearcraft:reactor_trapdoor>,
      <nuclearcraft:fission_controller_new_fixed>,
      <nuclearcraft:fission_port>,
      <nuclearcraft:active_cooler>,
      <nuclearcraft:reactor_door_item>,
      <nuclearcraft:salt_fission_controller>,
      <nuclearcraft:salt_fission_wall>,
      <nuclearcraft:salt_fission_glass>,
      <nuclearcraft:salt_fission_frame>,
      <nuclearcraft:salt_fission_beam>,
      <nuclearcraft:salt_fission_vent>,
      <nuclearcraft:salt_fission_vessel>,
      <nuclearcraft:salt_fission_moderator>,
      <nuclearcraft:salt_fission_distributor>,
      <nuclearcraft:salt_fission_distributor>,
      <nuclearcraft:salt_fission_redstone_port>,
      <nuclearcraft:salt_fission_computer_port>,
      <nuclearcraft:heat_exchanger_controller>,
      <nuclearcraft:heat_exchanger_wall>,
      <nuclearcraft:heat_exchanger_glass>,
      <nuclearcraft:heat_exchanger_frame>,
      <nuclearcraft:heat_exchanger_vent>,
      <nuclearcraft:heat_exchanger_computer_port>,
      <nuclearcraft:turbine_controller>,
      <nuclearcraft:turbine_wall>,
      <nuclearcraft:turbine_glass>,
      <nuclearcraft:turbine_frame>,
      <nuclearcraft:turbine_rotor_shaft>,
      <nuclearcraft:turbine_rotor_blade_steel>,
      <nuclearcraft:turbine_rotor_blade_extreme>,
      <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>,
      <nuclearcraft:turbine_rotor_stator>,
      <nuclearcraft:turbine_dynamo_coil>,
      <nuclearcraft:turbine_dynamo_coil:1>,
      <nuclearcraft:turbine_dynamo_coil:2>,
      <nuclearcraft:turbine_dynamo_coil:3>,
      <nuclearcraft:turbine_dynamo_coil:4>,
      <nuclearcraft:turbine_dynamo_coil:5>,
      <nuclearcraft:turbine_inlet>,
      <nuclearcraft:turbine_outlet>,
      <nuclearcraft:turbine_computer_port>,
      <nuclearcraft:accelerator_electromagnet_idle>,
      <nuclearcraft:electromagnet_supercooler_idle>,
      <nuclearcraft:fusion_core>,
      <nuclearcraft:fusion_connector>,
      <nuclearcraft:fusion_electromagnet_idle>,
      <nuclearcraft:fusion_electromagnet_idle>,
      <nuclearcraft:compound:8>
    ];
      for i in arraync {
        recipes.remove(i);
      }
//ADD Recipe
  //Alloy
    //Tough Alloy
      ebf.recipeBuilder()
          .inputs([<nuclearcraft:alloy:6>, <ore:ingotSteel>, <ore:dustLithium> * 2])
          .outputs([<nuclearcraft:alloy:1> * 2])
          .fluidInputs([<liquid:oxygen> * 1000])
          .property("temperature", 3200)
          .EUt(480)
          .duration(400)
          .buildAndRegister();
    //Hard Carbon Alloy
      mmRecipe("Hardcarbonalloy", "High_Pressure_Blast_Furnace", 2400)
        .addEnergyPerTickInput(8000)
        .addItemInput(<minecraft:diamond> * 64)
        .addItemInput(<minecraft:diamond> * 64)
        .addItemInput(<gregtech:meta_ingot:2011> * 64)
        .addItemInput(<nuclearcraft:ingot:8> * 64)
        .addItemInput(<gregtech:meta_item_1:501> * 64)
        .addItemInput(<gregtech:meta_item_1:501> * 64)
        .addItemInput(<gregtech:meta_item_1:501> * 64)
        .addItemInput(<gregtech:meta_item_1:501> * 64)
        .addItemInput(<gregtech:meta_dust:18> * 64)
        .addItemInput(<gregtech:meta_dust:18> * 64)
        .addItemInput(<gregtech:meta_dust:18> * 64)
        .addItemInput(<gregtech:meta_dust:18> * 64)
        .addFluidInput(<liquid:helium> * 1000)
        .addFluidInput(<liquid:oxygen> * 2000)
        .addItemOutput(<nuclearcraft:alloy:2> * 64)
        .addItemOutput(<nuclearcraft:alloy:2> * 64)
        .addItemOutput(<nuclearcraft:alloy:2> * 64)
        .build();
    //Lithium-Manganese Dioxde Alloy
      alloy_smelter.recipeBuilder()
        .inputs([<nuclearcraft:ingot_oxide:3> * 4, <ore:ingotLithium7> * 4])
        .outputs([<nuclearcraft:alloy:4> * 6])
        .EUt(240)
        .duration(120)
        .buildAndRegister();
    //Ferroboron Alloy
      ebf.recipeBuilder()//必須
        .inputs([<gregtech:meta_ingot:2012> * 2, <ore:ingotBoron>])//任意
        .outputs([<nuclearcraft:alloy:6> * 2])//任意
        .property("temperature", 1750)//必須
        .EUt(120)//必須
        .duration(1000)//必須
        .buildAndRegister();//必須
    //Extreme Alloy
      ebf.recipeBuilder()//必須
        .inputs([<nuclearcraft:alloy:2> * 4, <nuclearcraft:alloy:1> * 4, <gregtech:meta_ingot:396> * 16])//任意
        .outputs([<nuclearcraft:alloy:10> * 24])//任意
        .fluidInputs([<liquid:argon> * 1500])//任意
        .property("temperature", 4700)//必須
        .EUt(2800)//必須
        .duration(1200)//必須
        .buildAndRegister();//必須
    //Thermoconducting Alloy
      ebf.recipeBuilder()//必須
        .inputs([<nuclearcraft:gem:5>, <nuclearcraft:alloy:10>])//任意
        .outputs([<nuclearcraft:alloy:11> * 2])//任意
        .fluidInputs([<liquid:oxygen> * 12000])//任意
        .property("temperature", 4700)//必須
        .EUt(2800)//必須
        .duration(1200)//必須
        .buildAndRegister();//必須
    //Zircaloy
      ebf.recipeBuilder()//必須
        .inputs([<nuclearcraft:ingot:10>, <gregtech:meta_ingot:328>, <gregtech:meta_ingot:22>])//任意
        .outputs([<nuclearcraft:alloy:12> * 3])//任意
        .fluidInputs([<liquid:oxygen> * 1000])//任意
        .property("temperature", 2000)//必須
        .EUt(240)//必須
        .duration(1200)//必須
        .buildAndRegister();//必須
    //Silicon Carbide
      alloy_smelter.recipeBuilder()
        .inputs([<gregtech:meta_ingot:99>, <gregtech:meta_dust:18>])
        .outputs([<nuclearcraft:alloy:13>])
        .EUt(120)
        .duration(200)
        .buildAndRegister();
    //SiC-SiC Alloy
      ebf.recipeBuilder()//必須
        .inputs([<nuclearcraft:alloy:13>, <nuclearcraft:part:13>])//任意
        .outputs([<nuclearcraft:alloy:14>])//任意
        .fluidInputs([<liquid:oxygen> * 1000])//任意
        .property("temperature", 2000)//必須
        .EUt(240)//必須
        .duration(1200)//必須
        .buildAndRegister();//必須
  //Material
    //Dust
      //Energetic Blend
        mixer.recipeBuilder()
          .inputs([<minecraft:glowstone_dust>, <minecraft:redstone>, <gregtech:meta_dust:41>])
          .outputs([<nuclearcraft:compound:2> * 3])
          .EUt(30)
          .duration(120)
          .buildAndRegister();
      //Grapite Dust
        compressor.recipeBuilder()
          .inputs([<ore:dustCarbon> * 4])
          .outputs([<gregtech:meta_dust:341>])
          .EUt(120)
          .duration(1000)
          .buildAndRegister();
      //Crystal Binder
        mixer.recipeBuilder()
          .inputs([<ore:dustDiamond> * 4, <gregtech:meta_dust:1647> * 4, <gregtech:meta_item_1:491> * 8, <ore:dustObsidian> * 8, <nuclearcraft:compound> * 4, <ore:dustRedstone> * 8])
          .outputs([<nuclearcraft:compound:1> * 16])
          .fluidInputs([<liquid:distilled_water> * 1200, <liquid:astralsorcery.liquidstarlight> * 100])
          .EUt(2000)
          .duration(120)
          .buildAndRegister();
      //Dimensional Brend
        mixer.recipeBuilder()
          .inputs([
            <ore:dustEndstone> * 4,
            <ore:dustEnderPearl> * 4,
            <enderio:item_material:36> * 4,
            <enderio:item_material:37> * 2
          ])
          .outputs([<nuclearcraft:compound:8> * 4])
          .EUt(480)
          .duration(120)
          .buildAndRegister();
    //Plate
      //Basic
        forming_press.recipeBuilder()
          .inputs([<ore:plateLead> * 4, <ore:plateSteel> * 4, <gregtech:meta_dust:341> * 4])
          .outputs([<nuclearcraft:part> * 2])
          .EUt(120)
          .duration(120)
          .buildAndRegister();
      //Advanced
        forming_press.recipeBuilder()
          .inputs([<nuclearcraft:part>, <nuclearcraft:alloy:1> * 2, <gregtech:meta_plate:2064> * 9])
          .outputs([<nuclearcraft:part:1>])
          .EUt(480)
          .duration(240)
          .buildAndRegister();
      //DU
        forming_press.recipeBuilder()
          .inputs([<nuclearcraft:part:1>, <gregtech:meta_plate:117> * 4, <gregtech:meta_plate:1016> * 4, <ore:dustSulfur> * 32])
          .outputs([<nuclearcraft:part:2>])
          .EUt(1920)
          .duration(480)
          .buildAndRegister();
      //Elite
        forming_press.recipeBuilder()
          .inputs([<nuclearcraft:part:2>, <nuclearcraft:compound:1> * 8, <gregtech:meta_plate:113> * 8, <gregtech:meta_plate:396> * 4, <nuclearcraft:alloy:2> * 4])
          .outputs([<nuclearcraft:part:3>])
          .EUt(7680)
          .duration(960)
          .buildAndRegister();
    //MachineComponent
      //CopperCoil
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:part:4> * 2, [
	        [<ore:wireFineCopper>, <ore:wireGtSingleCopper>, <ore:wireFineCopper>], 
	        [<ore:wireGtSingleCopper>, <ore:stickSteelMagnetic>, <ore:wireGtSingleCopper>], 
	        [<ore:wireFineCopper>, <ore:wireGtSingleCopper>, <ore:wireFineCopper>]
        ]);
      //MagnesiumCoil
        assembler.recipeBuilder()
          .inputs([<gregtech:wire_single:425> * 4, <gregtech:meta_stick:418>, <gregtech:meta_wire_fine:2517> * 16, <gregtech:meta_wire_fine:80> * 8])
          .outputs(<nuclearcraft:part:5> * 2)
          .EUt(240)
          .duration(300)
          .buildAndRegister();
      //ServoMechanism
        assembler.recipeBuilder()
          .inputs([<ore:circuitMv> * 2, <gregtech:meta_item_1:127> * 2, <gregtech:meta_item_1:232>, <gregtech:meta_wire_fine:25> * 4, <gregtech:meta_item_1:402>, <gregtech:meta_plate:2> * 4])
          .outputs(<nuclearcraft:part:7>)
          .fluidInputs(<liquid:soldering_alloy> * 288)
          .EUt(120)
          .duration(200)
          .buildAndRegister();
      //Electric Mortor
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:part:8>, [
	        [<ore:cableGtSingleCopper>, <ore:solenoidCopper>, <ore:stickLongIron>], 
	        [<ore:solenoidCopper>, <gregtech:meta_item_1:127>, <ore:solenoidCopper>], 
	        [<ore:componentDiode>, <ore:solenoidCopper>, <ore:cableGtSingleCopper>]
        ]);
      //Liner Actuator
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:part:9>, [
	        [<ore:cableGtSingleCopper>, <ore:circuitLv>, <ore:stickLongIron>], 
	        [<ore:gearIron>, <ore:stickLongIron>, <ore:cableGtSingleCopper>], 
	        [<ore:motor>, <ore:gearSmallIron>, <ore:solenoidCopper>]
        ]);
    //Machine Casing
      //Nomal
        assembler.recipeBuilder()
          .inputs([<gregtech:machine_casing:3>, <gregtech:meta_block_frame_20:3>, <gregtech:meta_plate:323> * 4, <gregtech:cable_single:25> * 4])
          .outputs(<nuclearcraft:part:10>)
          .EUt(320)
          .duration(120)
          .buildAndRegister();
      //Empty
        assembler.recipeBuilder()
          .inputs([<nuclearcraft:part> * 4, <gregtech:meta_stick:2011> * 4, <gregtech:meta_block_frame_20:4>])
          .outputs(<nuclearcraft:part:11>)
          .EUt(120)
          .duration(160)
          .buildAndRegister();
      //Steel
        assembler.recipeBuilder()
          .inputs([<gregtech:meta_block_frame_188:12>, <gregtech:meta_stick_long:3020> * 8, <gregtech:meta_plate:3020> * 8])
          .outputs(<nuclearcraft:part:12>)
          .EUt(500)
          .duration(800)
          .buildAndRegister();
    //Other
      //Fiber
        autoclave.recipeBuilder()
          .inputs([<nuclearcraft:alloy:13>, <gregtech:meta_item_1:499> * 4])
          .outputs([<nuclearcraft:part:13>])
          .fluidInputs(<liquid:distilled_water> * 1000)
          .EUt(120)
          .duration(900)
          .buildAndRegister();
  //Machines
    //Nomal
      //Decay Haster
        assembler.recipeBuilder()
          .inputs([<nuclearcraft:part:1> * 4, <nuclearcraft:part:10>, <nuclearcraft:part:5> * 4, <gregtech:meta_item_1:234>, <ore:circuitEv> * 4, <gregtech:meta_plate:2064> * 48, <minecraft:glowstone>])
          .outputs(<nuclearcraft:decay_hastener_idle>)
          .EUt(720)
          .duration(200)
          .buildAndRegister();
      //Nuclear Furnace
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:nuclear_furnace_idle>, [
	        [<ore:plateBasic>, <ore:craftingFurnace>, <ore:plateBasic>], 
	        [<ore:solenoidCopper>, <ore:plateDoubleLead>, <ore:solenoidCopper>], 
	        [<ore:plateBasic>, <ore:craftingFurnace>, <ore:plateBasic>]
        ]);
      //Neutron Irradiator
        assembler.recipeBuilder()
          .inputs([<nuclearcraft:part:2> * 4, <gregtech:meta_item_1:99> * 16, <gregtech:meta_item_1:205> * 2, <gregtech:meta_item_1:236> * 4, <ore:circuitIv> * 8, <gregtech:meta_plate:55> * 16, <nuclearcraft:part:12>])
          .outputs(<nuclearcraft:irradiator_idle>)
          .EUt(2000)
          .duration(180)
          .buildAndRegister();
      //Rock Crusher
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:rock_crusher_idle>, [
	        [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
	        [<ore:actuator>, <ore:chassis>, <ore:actuator>], 
	        [<ore:plateAdvanced>, <ore:solenoidCopper>, <ore:plateAdvanced>]
        ]);
      //Machine InterFace
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:machine_interface>, [
	        [<ore:plateBasic>, <ore:motor>, <ore:plateBasic>], 
	        [<ore:actuator>, <ore:chassis>, <ore:actuator>], 
	        [<ore:servo>, <ore:motor>, <ore:servo>]
        ]);
  //Generator
    //RTG
      //Uranium
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:rtg_uranium>, [
	        [<ore:plateBasic>, <ore:plateLead>, <ore:plateBasic>], 
	        [<ore:plateLead>, <ore:blockUranium>, <ore:plateLead>], 
	        [<ore:plateBasic>, <ore:plateLead>, <ore:plateBasic>]
        ]);
      //plutonium
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:rtg_plutonium>, [
	        [<ore:plateAdvanced>, <ore:plateDoubleLead>, <ore:plateAdvanced>], 
	        [<ore:plateDoubleLead>, <ore:blockPlutonium241>, <ore:plateDoubleLead>], 
	        [<ore:plateAdvanced>, <ore:plateDoubleLead>, <ore:plateAdvanced>]
        ]);
      //Americium
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:rtg_americium>, [
	        [<ore:plateDU>, <ore:blockLead>, <ore:plateDU>], 
	        [<ore:blockLead>, <ore:blockAmericium243>, <ore:blockLead>], 
	        [<ore:plateDU>, <ore:blockLead>, <ore:plateDU>]
        ]);
      //californium
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:rtg_californium>, [
	        [<ore:plateElite>, <ore:blockLead>, <ore:plateElite>], 
	        [<ore:blockLead>, <ore:blockCalifornium252>, <ore:blockLead>], 
	        [<ore:plateElite>, <ore:blockLead>, <ore:plateElite>]
        ]);
    //Solar
      //Basic
        mods.extendedcrafting.TableCrafting.addShaped(2, <nuclearcraft:solar_panel_basic>, [
	        [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>], 
	        [<gregtech:meta_item_1:331>, <gregtech:meta_item_1:331>, <gregtech:meta_item_1:603>, <gregtech:meta_item_1:331>, <gregtech:meta_item_1:331>], 
	        [<gregtech:meta_item_1:501>, <ore:dustGraphite>, <ore:wireGtOctalCopper>, <ore:dustGraphite>, <gregtech:meta_item_1:501>], 
	        [<gregtech:meta_item_1:501>, <ore:plateBasic>, <ore:wireGtOctalCopper>, <ore:plateBasic>, <gregtech:meta_item_1:501>], 
	        [<gregtech:meta_item_1:501>, <ore:plateBasic>, <ore:circuitHv>, <ore:plateBasic>, <gregtech:meta_item_1:501>]
        ]);
      //Advanced
        mods.extendedcrafting.TableCrafting.addShaped(2, <nuclearcraft:solar_panel_advanced>, [
	        [<nuclearcraft:solar_panel_basic>, <nuclearcraft:solar_panel_basic>, <ore:wireGtHexGraphene>, <nuclearcraft:solar_panel_basic>, <nuclearcraft:solar_panel_basic>], 
	        [<nuclearcraft:solar_panel_basic>, <ore:plateAdvanced>, <nuclearcraft:solar_panel_basic>, <ore:plateAdvanced>, <nuclearcraft:solar_panel_basic>], 
	        [<gregtech:meta_item_1:604>, <nuclearcraft:solar_panel_basic>, <ore:circuitIv>, <nuclearcraft:solar_panel_basic>, <gregtech:meta_item_1:604>], 
	        [<nuclearcraft:solar_panel_basic>, <ore:plateAdvanced>, <nuclearcraft:solar_panel_basic>, <ore:plateAdvanced>, <nuclearcraft:solar_panel_basic>], 
	        [<nuclearcraft:solar_panel_basic>, <nuclearcraft:solar_panel_basic>, <ore:wireGtHexGraphene>, <nuclearcraft:solar_panel_basic>, <nuclearcraft:solar_panel_basic>]
        ]);
      //DU
        mods.extendedcrafting.TableCrafting.addShaped(2, <nuclearcraft:solar_panel_du>, [
	        [<nuclearcraft:solar_panel_advanced>, <nuclearcraft:solar_panel_advanced>, <ore:wireGtHexElectrum>, <nuclearcraft:solar_panel_advanced>, <nuclearcraft:solar_panel_advanced>], 
	        [<nuclearcraft:solar_panel_advanced>, <ore:plateDU>, <nuclearcraft:solar_panel_advanced>, <ore:plateDU>, <nuclearcraft:solar_panel_advanced>], 
	        [<gregtech:meta_item_1:605>, <nuclearcraft:solar_panel_advanced>, <ore:circuitZpm>, <nuclearcraft:solar_panel_advanced>, <gregtech:meta_item_1:605>], 
	        [<nuclearcraft:solar_panel_advanced>, <ore:plateDU>, <nuclearcraft:solar_panel_advanced>, <ore:plateDU>, <nuclearcraft:solar_panel_advanced>], 
	        [<nuclearcraft:solar_panel_advanced>, <nuclearcraft:solar_panel_advanced>, <ore:wireGtHexElectrum>, <nuclearcraft:solar_panel_advanced>, <nuclearcraft:solar_panel_advanced>]
        ]);
      //Elite
        assline.recipeBuilder()
          .inputs([<nuclearcraft:solar_panel_du> * 64, <nuclearcraft:part:3> * 64, <gregtech:meta_item_1:331> * 64, <gregtech:meta_item_1:331> * 64, <gregtech:meta_item_1:530> * 64, <gregtech:meta_item_1:531> * 64, <gregtech:meta_item_1:532> * 64, <gregtech:meta_item_1:606> * 32, <ore:circuitZpm> * 32, <gregtech:transparent_casing:2> * 64, <gregtech:transparent_casing:2> * 64, <gregtech:meta_item_1:103> * 64, <gregtech:meta_item_1:501> * 64, <gregtech:meta_item_1:501> * 64, <gregtech:wire_octal:431> * 64])
          .outputs([<nuclearcraft:solar_panel_elite>])
          .fluidInputs([<liquid:cryotheum> * 20000])
          .EUt(500000)
          .duration(2000)
          .buildAndRegister();
    //Decay Generator
      //Decay Generator
        //Decay Generatorなんてなかった、いいね？（レシピ考えるのめんどくなった）まぁOPだったっていとけば良いでしょ（）お？覗いてる？いやんえっち////見ないでよ/////
          //こんなくだらないものまだ見てんのか（困惑）これね？実はね？締切日(8/10！野獣の日だね！)の3:22分あたりに書いてるんだよ？バカでしょ？暇人でしょ？そうなんよねぇ、なかなかやる気がわかなくてさ()
            //んで最近暑いわけでしてねぇ、熱中症が心配なわけですよ、PCの排熱で部屋が暑かったりするからねぇ。あ、そうそうこのMODPACKなんだけどさ、難易度どう？きつい？うまい事できてればいいんだけど.....まぁよくできてたらDMにでもとつって誉めてください、モチベが上がります（）
              //誉めてくれたら嬉しくてコンテンツ増やしちゃうかもよ？ってかまだ見てんのか、君も物好きだなぁ、こんなクソコード眺めて()
                //あ、せっかく出し今（2022/8/10 3:26)聞いてる曲でも貼っておくよ、お薦めだからよければ聞いてね
                  //https://www.youtube.com/watch?v=gE2hEebqqw4
                    //はいこれ、結構かっこよくてテンポいい曲だよ！まぁ電子音楽って点で好き嫌い別れるだろうけどさ、そういうの好きな人は一回聞いてみて！俺のセンスがよっぽどあたおかじゃない限り結構いい曲だから！
                      //まぁこんな感じかな、以上！MODPACK制作者からの隠しメッセージでした！
                        //最後に一言
                          //嫁が尊い！（大迫真）
  //Battery
    //Nomal
      //Basic
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:voltaic_pile_basic>, [
	        [<ore:plateBasic>, <ore:circuitEv>, <ore:plateBasic>], 
	        [<ore:alloyElite>, <gregtech:meta_item_1:739>, <ore:alloyElite>], 
	        [<ore:plateBasic>, <ore:circuitEv>, <ore:plateBasic>]
        ]);
      //Advanced
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:voltaic_pile_advanced>, [
	        [<ore:plateAdvanced>, <nuclearcraft:voltaic_pile_basic>, <ore:plateAdvanced>], 
	        [<nuclearcraft:voltaic_pile_basic>, <gregtech:meta_item_1:604>, <nuclearcraft:voltaic_pile_basic>], 
	        [<ore:plateAdvanced>, <nuclearcraft:voltaic_pile_basic>, <ore:plateAdvanced>]
        ]);
      //DU
        mods.extendedcrafting.TableCrafting.addShaped(2, <nuclearcraft:voltaic_pile_du>, [
	        [<gregtech:meta_item_1:492>, <ore:plateDU>, <nuclearcraft:voltaic_pile_advanced>, <ore:plateDU>, <gregtech:meta_item_1:492>], 
	        [<ore:plateDU>, <gregtech:meta_item_1:604>, <ore:circuitIv>, <gregtech:meta_item_1:604>, <ore:plateDU>], 
	        [<nuclearcraft:voltaic_pile_advanced>, <ore:circuitIv>, <gregtech:meta_item_1:605>, <ore:circuitIv>, <nuclearcraft:voltaic_pile_advanced>], 
	        [<ore:plateDU>, <gregtech:meta_item_1:604>, <ore:circuitIv>, <gregtech:meta_item_1:604>, <ore:plateDU>], 
	        [<gregtech:meta_item_1:492>, <ore:plateDU>, <nuclearcraft:voltaic_pile_advanced>, <ore:plateDU>, <gregtech:meta_item_1:492>]
        ]);
      //Elite
        mods.extendedcrafting.TableCrafting.addShaped(2, <nuclearcraft:voltaic_pile_elite>, [
	        [<gregtech:meta_item_1:492>, <ore:plateElite>, <ore:circuitLuv>, <ore:plateElite>, <gregtech:meta_item_1:492>], 
	        [<ore:plateElite>, <gregtech:meta_item_1:605>, <nuclearcraft:voltaic_pile_du>, <gregtech:meta_item_1:605>, <ore:plateElite>], 
	        [<ore:circuitLuv>, <nuclearcraft:voltaic_pile_du>, <gregtech:meta_item_1:606>, <nuclearcraft:voltaic_pile_du>, <ore:circuitLuv>], 
	        [<ore:plateElite>, <gregtech:meta_item_1:605>, <nuclearcraft:voltaic_pile_du>, <gregtech:meta_item_1:605>, <ore:plateElite>], 
	        [<gregtech:meta_item_1:492>, <ore:plateElite>, <ore:circuitLuv>, <ore:plateElite>, <gregtech:meta_item_1:492>]
        ]);
    //LithiumIon
      //LithiumIonCell
        assembler.recipeBuilder()
          .inputs([<gregtech:meta_stick:32025> * 16, <gregtech:meta_stick:32024> * 16, <gregtech:meta_plate:1012> * 24, <mekanism:polyethene:2> * 16, <gregtech:wire_double:428> * 8, <gregtech:meta_foil:2> * 12])
          .outputs(<nuclearcraft:lithium_ion_cell>)
          .fluidInputs([<liquid:lithiumhexafluorophosphate> * 1000])
          .EUt(4000)
          .duration(200)
          .buildAndRegister();
      //Basic
        mods.extendedcrafting.TableCrafting.addShaped(3, <nuclearcraft:lithium_ion_battery_basic>, [
	        [<ore:plateDU>, <gregtech:meta_item_1:604>, <ore:circuitIv>, <gregtech:meta_item_1:492>, <ore:circuitIv>, <gregtech:meta_item_1:604>, <ore:plateDU>], 
	        [<gregtech:meta_item_1:604>, <gregtech:meta_item_1:501>, <ore:plateAdvanced>, <ore:circuitLuv>, <ore:plateAdvanced>, <gregtech:meta_item_1:501>, <gregtech:meta_item_1:604>], 
	        [<ore:circuitIv>, <ore:plateAdvanced>, <gregtech:meta_item_1:605>, <nuclearcraft:lithium_ion_cell>, <gregtech:meta_item_1:605>, <ore:plateAdvanced>, <ore:circuitIv>], 
	        [<gregtech:meta_item_1:492>, <ore:circuitLuv>, <nuclearcraft:lithium_ion_cell>, <gregtech:machine:990>, <nuclearcraft:lithium_ion_cell>, <ore:circuitLuv>, <gregtech:meta_item_1:492>], 
	        [<ore:circuitIv>, <ore:plateAdvanced>, <gregtech:meta_item_1:605>, <nuclearcraft:lithium_ion_cell>, <gregtech:meta_item_1:605>, <ore:plateAdvanced>, <ore:circuitIv>], 
	        [<gregtech:meta_item_1:604>, <gregtech:meta_item_1:501>, <ore:plateAdvanced>, <ore:circuitLuv>, <ore:plateAdvanced>, <gregtech:meta_item_1:501>, <gregtech:meta_item_1:604>], 
	        [<ore:plateDU>, <gregtech:meta_item_1:604>, <ore:circuitIv>, <gregtech:meta_item_1:492>, <ore:circuitIv>, <gregtech:meta_item_1:604>, <ore:plateDU>]
        ]);
      //Advanced
        mmRecipe("recipename", "Prototype_Assembling_Line", 4000) //RecipeName UseMachine RecipeTick
          .addEnergyPerTickInput(60000)//EnergyInput
          .addItemInput(<nuclearcraft:lithium_ion_battery_basic> * 4)//1
          .addItemInput(<gregtech:meta_item_1:638> * 8)//2
          .addItemInput(<gregtech:meta_item_1:639> * 4)//3
          .addItemInput(<gregtech:meta_item_1:605> * 8)//4
          .addItemInput(<gregtech:meta_item_1:606> * 4)//5
          .addItemInput(<nuclearcraft:part> * 16)//6
          .addItemInput(<nuclearcraft:part:1> * 8)//7
          .addItemInput(<nuclearcraft:part:2> * 4)//8
          .addItemInput(<gregtech:meta_item_1:492> * 32)//9
          .addItemInput(<gregtech:machine:991>)//10
          .addFluidInput(<liquid:redstone> * 640000)//1
          .addFluidInput(<liquid:cryotheum> * 32000)//2
          .addItemOutput(<nuclearcraft:lithium_ion_battery_advanced>)//OutPutItem
          .build();//BuildRecipe
      //DU
        assline.recipeBuilder()
          .inputs([
            <nuclearcraft:lithium_ion_battery_advanced> * 4,
            <ore:circuitZpm> * 8,
            <ore:circuitUv> * 4,
            <gregtech:meta_item_1:605> * 16,
            <gregtech:meta_item_1:606> * 8,
            <nuclearcraft:part> * 24,
            <nuclearcraft:part:1> * 12,
            <nuclearcraft:part:2> * 6,
            <nuclearcraft:part:3> * 4,
            <gregtech:meta_item_1:492> * 48,
            <gregtech:meta_item_1:531> * 64,
            <gregtech:meta_item_1:530> * 64,
            <gregtech:meta_item_1:501> * 64,
            <gregtech:wire_double:32007> * 48,
            <gregtech:machine:992>
          ])
          .outputs([<nuclearcraft:lithium_ion_battery_du>])
          .fluidInputs([
            <liquid:redstone> * 2048000,
            <liquid:cryotheum> * 144000,
            <liquid:krypton> * 40000
            ])
          .EUt(750000)
          .duration(1860)
          .buildAndRegister();
      //Elite
        mmRecipe("Elitebattery", "Large_Assembly_Line", 480) //RecipeName UseMachine RecipeTick
          .addEnergyPerTickInput(2400000)//EnergyInput
          .addItemInput(<nuclearcraft:lithium_ion_battery_du> * 4)//1
          .addItemInput(<gregtech:meta_item_1:104> * 8)//2
          .addItemInput(<gregtech:meta_item_1:646> * 16)//3
          .addItemInput(<gregtech:meta_item_1:647> * 8)//4
          .addItemInput(<gregtech:meta_item_1:530> * 64)//5
          .addItemInput(<gregtech:meta_item_1:531> * 64)//6
          .addItemInput(<gregtech:meta_item_1:606> * 32)//7
          .addItemInput(<gregtech:meta_item_1:599> * 16)//8
          .addItemInput(<nuclearcraft:part:3> * 32)//9
          .addItemInput(<gregtech:meta_item_1:208> * 8)//10
          .addItemInput(<gregtech:meta_item_1:492> * 48)//11
          .addItemInput(<gregtech:wire_octal:32007> * 64)//12
          .addItemInput(<gregtech:wire_octal:32008> * 16)//13
          .addItemInput(<mekanism:atomicalloy> * 32)//14
          .addItemInput(<draconicevolution:wyvern_core> * 48)//15
          .addItemInput(<gregtech:meta_item_1:501> * 64)//16
          .addItemInput(<gregtech:machine:993>)//17
          .addFluidInput(<liquid:krypton> * 78600)//1
          .addFluidInput(<liquid:naquadria> * 14400)//2
          .addFluidInput(<liquid:soldering_alloy> * 128000)//3
          .addFluidInput(<liquid:draconiumawakened> * 28800)//4
          .addFluidInput(<liquid:draconium> * 57600)//5
          .addFluidInput(<liquid:plasma.nickel> * 25000)//6
          .addFluidInput(<liquid:lithiumhexafluorophosphate> * 80000)//7
          .addFluidInput(<liquid:redstone> * 128000)//8
          .addItemOutput(<nuclearcraft:lithium_ion_battery_elite>)//OutPutItem
          .build();//BuildRecipe
  //Production
    //Bins
      //Buffer
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:buffer>, [
	        [<ore:plateBasic>, <ore:chest>, <ore:plateBasic>], 
	        [<gregtech:meta_item_1:78>, <ore:gearSteel>, <gregtech:meta_item_1:78>], 
	        [<ore:plateBasic>, <ore:blockHopper>, <ore:plateBasic>]
        ]);
      //Universal Bin
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:bin>, [
        [<appliedenergistics2:material:44>, <ore:plateAdvanced>, <appliedenergistics2:material:44>], 
        [<extrautils2:trashcan>, <ore:chest>, <extrautils2:trashcanfluid>], 
        [<ore:plateAdvanced>, <extrautils2:trashcanenergy>, <ore:plateAdvanced>]
      ]);
    //Collecter
      //Helium
        //Nomal
          mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:helium_collector>, [
            [<ore:plateAdvanced>, <ore:ingotZircaloy>, <ore:plateAdvanced>], 
            [<ore:ingotZircaloy>, <ore:blockThorium230>, <ore:ingotZircaloy>], 
            [<ore:plateAdvanced>, <ore:ingotZircaloy>, <ore:plateAdvanced>]
          ]);
        //Compact
          mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:helium_collector_compact>, [
            [<nuclearcraft:helium_collector>, <nuclearcraft:helium_collector>, <nuclearcraft:helium_collector>], 
            [<nuclearcraft:helium_collector>, <ore:plateDU>, <nuclearcraft:helium_collector>], 
            [<nuclearcraft:helium_collector>, <nuclearcraft:helium_collector>, <nuclearcraft:helium_collector>]
          ]);
        //Dense
          mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:helium_collector_dense>, [
            [<nuclearcraft:helium_collector_compact>, <nuclearcraft:helium_collector_compact>, <nuclearcraft:helium_collector_compact>], 
            [<nuclearcraft:helium_collector_compact>, <ore:plateElite>, <nuclearcraft:helium_collector_compact>], 
            [<nuclearcraft:helium_collector_compact>, <nuclearcraft:helium_collector_compact>, <nuclearcraft:helium_collector_compact>]
          ]);
      //CobbleStone
        //Nomal
          //ああ、Greg機械のレシピがあったからそっちを使ってくれ、改変が面倒くさかったんだ
            //ボカロ曲のリンクでも貼っとくよ
              //https://www.youtube.com/watch?v=jPXAgWkqbo4
                //チョイスは気にするな
        //Compact
          mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:cobblestone_generator_compact>, [
            [<nuclearcraft:cobblestone_generator>, <nuclearcraft:cobblestone_generator>, <nuclearcraft:cobblestone_generator>], 
            [<nuclearcraft:cobblestone_generator>, <ore:plateAdvanced>, <nuclearcraft:cobblestone_generator>], 
            [<nuclearcraft:cobblestone_generator>, <nuclearcraft:cobblestone_generator>, <nuclearcraft:cobblestone_generator>]
          ]);
        //Dense
          mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:cobblestone_generator_dense>, [
            [<nuclearcraft:cobblestone_generator_compact>, <nuclearcraft:cobblestone_generator_compact>, <nuclearcraft:cobblestone_generator_compact>], 
            [<nuclearcraft:cobblestone_generator_compact>, <ore:plateDU>, <nuclearcraft:cobblestone_generator_compact>], 
            [<nuclearcraft:cobblestone_generator_compact>, <nuclearcraft:cobblestone_generator_compact>, <nuclearcraft:cobblestone_generator_compact>]
          ]);
      //Water
        //Nomal
          //上の理由に同じく
            //ここでも貼っておくか、何にしようか
              //https://www.youtube.com/watch?v=srH34Tjjo9U
                //俺のお薦めです
        //Advanced
          mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:water_source_compact>, [
            [<nuclearcraft:water_source>, <nuclearcraft:water_source>, <nuclearcraft:water_source>], 
            [<nuclearcraft:water_source>, <ore:plateBasic>, <nuclearcraft:water_source>], 
            [<nuclearcraft:water_source>, <nuclearcraft:water_source>, <nuclearcraft:water_source>]
          ]);
        //Dense
          mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:water_source_dense>, [
            [<nuclearcraft:water_source_compact>, <nuclearcraft:water_source_compact>, <nuclearcraft:water_source_compact>], 
            [<nuclearcraft:water_source_compact>, <ore:plateAdvanced>, <nuclearcraft:water_source_compact>], 
            [<nuclearcraft:water_source_compact>, <nuclearcraft:water_source_compact>, <nuclearcraft:water_source_compact>]
          ]);
      //Nitrogen
        //Nomal
          mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:nitrogen_collector>, [
            [<ore:plateDoubleBeryllium>, <ore:plateAdvanced>, <ore:plateDoubleBeryllium>], 
            [<ore:plateDU>, <ore:blockBeryllium>, <ore:plateDU>], 
            [<ore:plateDoubleBeryllium>, <ore:plateAdvanced>, <ore:plateDoubleBeryllium>]
          ]);
        //Advanced
          mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:nitrogen_collector_compact>, [
            [<nuclearcraft:nitrogen_collector>, <nuclearcraft:nitrogen_collector>, <nuclearcraft:nitrogen_collector>], 
            [<nuclearcraft:nitrogen_collector>, <ore:plateAdvanced>, <nuclearcraft:nitrogen_collector>], 
            [<nuclearcraft:nitrogen_collector>, <nuclearcraft:nitrogen_collector>, <nuclearcraft:nitrogen_collector>]
          ]);
        //Dense
          mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:nitrogen_collector_dense>, [
            [<nuclearcraft:nitrogen_collector_compact>, <nuclearcraft:nitrogen_collector_compact>, <nuclearcraft:nitrogen_collector_compact>], 
            [<nuclearcraft:nitrogen_collector_compact>, <ore:plateDU>, <nuclearcraft:nitrogen_collector_compact>], 
            [<nuclearcraft:nitrogen_collector_compact>, <nuclearcraft:nitrogen_collector_compact>, <nuclearcraft:nitrogen_collector_compact>]
          ]);
  //Upgrades
    //Speed
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:upgrade>, [
        [<ore:plateBasic>, <ore:plateRedstone>, <ore:plateBasic>], 
        [<ore:plateAdvanced>, <minecraft:heavy_weighted_pressure_plate>, <ore:plateAdvanced>], 
        [<ore:plateBasic>, <ore:plateRedstone>, <ore:plateBasic>]
      ]);
    //Energy
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:upgrade:1>, [
        [<ore:plateRedstone>, <ore:plateAdvanced>, <ore:plateRedstone>], 
        [<ore:solenoidCopper>, <ore:solenoidCopper>, <ore:solenoidCopper>], 
        [<ore:plateRedstone>, <ore:plateAdvanced>, <ore:plateRedstone>]
      ]);
  //Fission
    //Fission Controller
      mmRecipe("Fission_Controller", "Prototype_Assembling_Line", 2000) //RecipeName UseMachine RecipeTick
        .addEnergyPerTickInput(10000)//EnergyInput
        .addItemInput(<nuclearcraft:part:10>)//1
        .addItemInput(<nuclearcraft:fission_block> * 2)//2
        .addItemInput(<nuclearcraft:nuclear_furnace_idle> * 4)//3
        .addItemInput(<gregtech:meta_block_frame_2001:5>)//4
        .addItemInput(<nuclearcraft:part:1> * 8)//5
        .addItemInput(<gregtech:meta_plate_double:55> * 16)//6
        .addItemInput(<gregtech:meta_item_1:631> * 12)//7
        .addItemInput(<gregtech:meta_item_1:630> * 24)//8
        .addItemInput(<gregtech:meta_item_1:234> * 8)//9
        .addItemInput(<gregtech:meta_item_1:189> * 4)//10
        .addFluidInput(<liquid:tin_alloy> * 5760)//1
        .addItemOutput(<nuclearcraft:fission_controller_new_fixed>)//OutPutItem
        .build();//BuildRecipe
    //Fission Reactor Casing
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_plate_double:55> * 12, <gregtech:meta_plate:2011> * 16, <gregtech:meta_plate:2> * 24, <immersiveengineering:stone_decoration:5> * 4, <gregtech:meta_block_frame_2000:2> * 4])
        .outputs(<nuclearcraft:fission_block> * 4)
        .EUt(480)
        .duration(200)
        .buildAndRegister();
    //BlastBlock
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:fission_block:1>, [
        [<ore:plateDoubleIron>, <ore:plateDoubleIron>, <ore:plateDoubleIron>], 
        [<ore:plateDoubleIron>, <nuclearcraft:fission_block>, <ore:plateDoubleIron>], 
        [<ore:plateDoubleIron>, <ore:plateDoubleIron>, <ore:plateDoubleIron>]
      ]);
    //Fission Reactor Glass
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:reactor_casing_transparent> * 4, [
        [null, <nuclearcraft:fission_block>, null], 
        [<nuclearcraft:fission_block>, <gregtech:transparent_casing>, <nuclearcraft:fission_block>], 
        [null, <nuclearcraft:fission_block>, null]
      ]);
    //Reactor Cell
      assembler.recipeBuilder()
        .inputs([
          <nuclearcraft:alloy:12> * 6,
          <gregtech:meta_stick_long:3020> * 8,
          <gregtech:meta_spring:3020> * 4,
          <gregtech:meta_stick:100> * 8,
          <gregtech:meta_dust:19> * 16,
          <gregtech:fluid_pipe_small:323> * 8,
          <gregtech:meta_item_1:129> * 4,
          <gregtech:meta_screw:323> * 32,
          <gregtech:meta_block_frame_188:12>
        ])
        .outputs(<nuclearcraft:cell_block>)
        .EUt(480)
        .duration(160)
        .buildAndRegister();
    //ReactorCoolingCell
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_block_frame_188:12>,
          <gregtech:fluid_pipe_large:323>,
          <gregtech:fluid_pipe_tiny:323> * 16,
          <gregtech:meta_item_1:249> * 4,
          <gregtech:meta_ring:1004> * 24,
          <gregtech:meta_rotor:323> * 8,
          <immersiveengineering:metal_decoration0:7>,
          <gregtech:meta_item_1:80> * 8
        ])
        .outputs(<nuclearcraft:cooler>)
        .EUt(480)
        .duration(640)
        .buildAndRegister();
    //Reactor trapDoor
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:reactor_trapdoor>, [
        [<ore:plateDoubleLead>, <ore:stickHslaSteel>, <ore:plateLead>], 
        [<ore:screwStainlessSteel>, <nuclearcraft:fission_block>, <ore:screwStainlessSteel>], 
        [<ore:stickHslaSteel>, <ore:stickHslaSteel>, <ore:plateDoubleLead>]
      ]);
    //Fission Reactor Port
      assembler.recipeBuilder()
        .inputs([
          <nuclearcraft:fission_block>,
          <gregtech:meta_item_1:189> * 2,
          <gregtech:meta_item_1:159> * 4,
          <ore:circuitEv> * 2,
          <gregtech:fluid_pipe_large:323> * 4
        ])
        .outputs(<nuclearcraft:fission_port>)
        .EUt(480)
        .duration(180)
        .buildAndRegister();
    //Active Fluid Cooler
      assembler.recipeBuilder()
        .inputs([
          <nuclearcraft:cooler>,
          <gregtech:meta_item_1:250> * 4,
          <gregtech:meta_item_1:304>,
          <gregtech:fluid_pipe_normal:2013> * 4
        ])
        .outputs(<nuclearcraft:active_cooler>)
        .EUt(2000)
        .duration(500)
        .buildAndRegister();
    //Reactor Door
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:reactor_door_item>, [
        [<ore:plateDoubleLead>, <nuclearcraft:fission_block>, <ore:ringTitanium>], 
        [<ore:plateDoubleLead>, <gregtech:transparent_casing:2>, <ore:plateDoubleLead>], 
        [<ore:plateDoubleLead>, <nuclearcraft:fission_block>, <ore:springHslaSteel>]
      ]);
  //Salt Fission Reactor
    //Molten Salt Fission Reactor Controller
      assline.recipeBuilder()
        .inputs([
          <nuclearcraft:fission_controller_new_fixed>,
          <nuclearcraft:part:12>,
          <nuclearcraft:salt_fission_wall>,
          <nuclearcraft:part:2> * 6,
          <nuclearcraft:part:1> * 24,
          <ore:circuitLuv> * 12,
          <ore:circuitIv> * 24,
          <gregtech:meta_item_1:235> * 12,
          <gregtech:meta_item_1:190> * 4,
          <nuclearcraft:block_depleted_plutonium>
        ])
        .outputs([<nuclearcraft:salt_fission_controller>])
        .fluidInputs([
          <liquid:tin_alloy> * 6000,
          <liquid:soldering_alloy> * 14400
        ])
        .EUt(12000)
        .duration(800)
        .buildAndRegister();
    //Molten Salt Fission Reactor Wall
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:salt_fission_wall>, [
        [<ore:ingotZircaloy>, <ore:plateDU>, <ore:ingotZircaloy>], 
        [<ore:plateDU>, <nuclearcraft:fission_block>, <ore:plateDU>], 
        [<ore:ingotZircaloy>, <ore:plateDU>, <ore:ingotZircaloy>]
      ]);
    //Molten Salt Fission Reactor Glass
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:salt_fission_glass> * 4, [
        [<gregtech:transparent_casing:2>, <nuclearcraft:salt_fission_wall>, <gregtech:transparent_casing:2>], 
        [<nuclearcraft:salt_fission_wall>, <ore:plateDU>, <nuclearcraft:salt_fission_wall>], 
        [<gregtech:transparent_casing:2>, <nuclearcraft:salt_fission_wall>, <gregtech:transparent_casing:2>]
      ]);
    //Molten Salt Fission Reactor Frame
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:salt_fission_frame> * 4, [
        [<ore:stickHslaSteel>, <nuclearcraft:salt_fission_wall>, <ore:stickHslaSteel>], 
        [<nuclearcraft:salt_fission_wall>, <ore:frameGtHslaSteel>, <nuclearcraft:salt_fission_wall>], 
        [<ore:stickHslaSteel>, <nuclearcraft:salt_fission_wall>, <ore:stickHslaSteel>]
      ]);
    //Molten Salt Fission Reactor Beam
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:salt_fission_beam> * 2, [
        [<ore:stickHslaSteel>, <nuclearcraft:salt_fission_wall>, <ore:stickHslaSteel>], 
        [<ore:stickLongStainlessSteel>, <ore:frameGtHslaSteel>, <ore:stickLongStainlessSteel>], 
        [<ore:stickHslaSteel>, <nuclearcraft:salt_fission_wall>, <ore:stickHslaSteel>]
      ]);
    //Molten Salt Fission Reactor Vent
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:salt_fission_vent>, [
        [<ore:plateDU>, <gregtech:meta_item_1:250>, <ore:circuitIv>], 
        [<ore:pipeNormalFluidTungstenCarbide>, <nuclearcraft:salt_fission_wall>, <ore:pipeNormalFluidTungstenCarbide>], 
        [<ore:plateDU>, <gregtech:meta_item_1:250>, <ore:circuitIv>]
      ]);
    //Molten Salt Fission Reactor Vessel
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:salt_fission_vessel>, [
        [<ore:ingotZircaloy>, <nuclearcraft:cell_block>, <ore:ingotZircaloy>], 
        [<ore:plateDU>, <ore:steelFrame>, <ore:plateDU>], 
        [<ore:ingotZircaloy>, <nuclearcraft:cell_block>, <ore:ingotZircaloy>]
      ]);
    //Molten Salt Fission Reactor Moderator Housing
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:salt_fission_moderator>, [
        [<ore:blockGraphite>, <ore:plateDU>, <ore:blockGraphite>], 
        [<ore:ingotZircaloy>, <ore:steelFrame>, <ore:ingotZircaloy>], 
        [<ore:blockGraphite>, <ore:plateDU>, <ore:blockGraphite>]
      ]);
    //Molten Salt Fission Reactor Fuel Distributor
      mods.extendedcrafting.TableCrafting.addShaped(2, <nuclearcraft:salt_fission_distributor>, [
        [<ore:plateDU>, <ore:plateAdvanced>, <gregtech:meta_item_1:250>, <ore:plateAdvanced>, <ore:plateDU>], 
        [<ore:plateAdvanced>, <ore:circuitIv>, <ore:pipeQuadrupleFluidTungstenCarbide>, <ore:circuitIv>, <ore:plateAdvanced>], 
        [<gregtech:meta_item_1:145>, <ore:pipeQuadrupleFluidTungstenCarbide>, <nuclearcraft:salt_fission_frame>, <ore:pipeQuadrupleFluidTungstenCarbide>, <gregtech:meta_item_1:145>], 
        [<ore:plateAdvanced>, <ore:circuitIv>, <ore:pipeQuadrupleFluidTungstenCarbide>, <ore:circuitIv>, <ore:plateAdvanced>], 
        [<ore:plateDU>, <ore:plateAdvanced>, <gregtech:meta_item_1:250>, <ore:plateAdvanced>, <ore:plateDU>]
      ]);
    //Molten Salt Fission Reactor Depleted Fuel Retriever
      mods.extendedcrafting.TableCrafting.addShaped(2, <nuclearcraft:salt_fission_retriever>, [
        [<nuclearcraft:salt_fission_wall>, <ore:plateAdvanced>, <ore:plateDU>, <ore:plateAdvanced>, <nuclearcraft:salt_fission_wall>], 
        [<ore:rotorTitanium>, <gregtech:meta_item_1:250>, <ore:pipeLargeFluidTungstenCarbide>, <gregtech:meta_item_1:145>, <ore:rotorTitanium>], 
        [<ore:plateAdvanced>, <ore:circuitIv>, <ore:plateDU>, <ore:circuitIv>, <ore:plateAdvanced>], 
        [<ore:rotorTitanium>, <gregtech:meta_item_1:250>, <ore:pipeLargeFluidTungstenCarbide>, <gregtech:meta_item_1:145>, <ore:rotorTitanium>], 
        [<nuclearcraft:salt_fission_wall>, <ore:plateAdvanced>, <ore:plateDU>, <ore:plateAdvanced>, <nuclearcraft:salt_fission_wall>]
      ]);
    //Molten Salt Fission Reactor RedStone Port
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:salt_fission_redstone_port>, [
        [<gregtech:meta_item_1:306>, <ore:plateAdvanced>, <ore:circuitHv>], 
        [<gregtech:meta_item_1:301>, <nuclearcraft:salt_fission_wall>, <gregtech:meta_item_1:303>], 
        [<ore:circuitHv>, <ore:plateAdvanced>, <gregtech:meta_item_1:304>]
      ]);
    //Molten Salt Fission Reactor Computer Port
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:salt_fission_computer_port>, [
        [<ore:plateAdvanced>, <ore:oc:cable>, <ore:plateAdvanced>], 
        [<ore:oc:circuitChip3>, <nuclearcraft:salt_fission_wall>, <ore:oc:circuitChip3>], 
        [<ore:plateAdvanced>, <ore:oc:adapter>, <ore:plateAdvanced>]
      ]);
  //Heat Exchanger
    //Heat Exchanger Controller
      mmRecipe("Heat_Exchanger_Controller", "Prototype_Assembling_Line", 400) //RecipeName UseMachine RecipeTick
        .addEnergyPerTickInput(4000)//EnergyInput
        .addItemInput(<nuclearcraft:part:12>)//2
        .addItemInput(<gregtech:meta_block_frame_0:2> * 2)//3
        .addItemInput(<gregtech:meta_item_1:98> * 4)//4
        .addItemInput(<gregtech:meta_plate_double:2> * 32)//5
        .addItemInput(<gregtech:meta_item_1:633> * 12)//6
        .addItemInput(<gregtech:meta_item_1:632> * 24)//7
        .addItemInput(<nuclearcraft:part:4> * 16)//8
        .addItemInput(<nuclearcraft:part:1> * 10)//9
        .addItemInput(<gregtech:meta_stick:276> * 16)//10
        .addItemOutput(<nuclearcraft:heat_exchanger_controller>)//OutPutItem
        .build();//BuildRecipe
    //Heat Exchanger Shell
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:heat_exchanger_wall>, [
        [<ore:plateAluminium>, <ore:stickDiamond>, <ore:plateAluminium>], 
        [<ore:plateDoubleAluminium>, <ore:frameGtAluminium>, <ore:plateDoubleAluminium>], 
        [<ore:plateAluminium>, <ore:stickDiamond>, <ore:plateAluminium>]
      ]);
    //Heat Exchanger Glass
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:heat_exchanger_glass> * 4, [
        [<gregtech:transparent_casing>, <nuclearcraft:heat_exchanger_wall>, <gregtech:transparent_casing>], 
        [<nuclearcraft:heat_exchanger_wall>, <ore:plateDoubleAluminium>, <nuclearcraft:heat_exchanger_wall>], 
        [<gregtech:transparent_casing>, <nuclearcraft:heat_exchanger_wall>, <gregtech:transparent_casing>]
      ]);
    //Heat Exchanger Frame
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:heat_exchanger_frame> * 4, [
        [<ore:stickLongAluminium>, <nuclearcraft:heat_exchanger_wall>, <ore:stickLongAluminium>], 
        [<ore:plateAdvanced>, <ore:frameGtAluminium>, <ore:plateAdvanced>], 
        [<ore:stickLongAluminium>, <nuclearcraft:heat_exchanger_wall>, <ore:stickLongAluminium>]
      ]);
    //Heat Exchanger Vent
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:heat_exchanger_vent>, [
        [<ore:plateAdvanced>, <gregtech:meta_item_1:144>, <ore:circuitHv>], 
        [<ore:pipeNormalFluidAluminium>, <nuclearcraft:heat_exchanger_wall>, <ore:pipeNormalFluidAluminium>], 
        [<ore:plateAdvanced>, <gregtech:meta_item_1:249>, <ore:circuitHv>]
      ]);
    //Heat Exchanger Computer Port
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:heat_exchanger_computer_port>, [
        [<ore:plateAdvanced>, <ore:oc:cable>, <ore:plateAdvanced>], 
        [<ore:circuitHv>, <nuclearcraft:heat_exchanger_wall>, <ore:circuitHv>], 
        [<ore:plateAdvanced>, <ore:oc:adapter>, <ore:plateAdvanced>]
      ]);
  //Turbine
    //Turbine Controller
      mmRecipe("TurbineController", "Prototype_Assembling_Line", 400) //RecipeName UseMachine RecipeTick
        .addEnergyPerTickInput(4000)//EnergyInput
        .addItemInput(<nuclearcraft:part:12>)//1
        .addItemInput(<gregtech:machine:1014>)//2
        .addItemInput(<nuclearcraft:part:4> * 48)//3
        .addItemInput(<nuclearcraft:part:5> * 32)//4
        .addItemInput(<gregtech:meta_item_1:99> * 16)//5
        .addItemInput(<gregtech:meta_item_1:634> * 6)//6
        .addItemInput(<gregtech:meta_item_1:633>* 12)//7
        .addItemInput(<gregtech:meta_item_1:501> * 16)//8
        .addItemInput(<gregtech:meta_item_1:234> * 8)//9
        .addItemInput(<nuclearcraft:part:1> * 16)//10
        .addFluidInput(<liquid:tin_alloy> * 1440)//1
        .addItemOutput(<nuclearcraft:turbine_controller>)//OutPutItem
        .build();//BuildRecipe
    //Turbine Wall
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_wall> * 2, [
        [<ore:stickBlackSteel>, <ore:plateAdvanced>, <ore:stickBlackSteel>], 
        [<ore:frameGtSteel>, <gregtech:turbine_casing:5>, <ore:frameGtSteel>], 
        [<ore:stickBlackSteel>, <ore:plateAdvanced>, <ore:stickBlackSteel>]
      ]);
    //Turbine Glass
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_glass> * 4, [
        [<gregtech:transparent_casing:2>, <nuclearcraft:turbine_wall>, <gregtech:transparent_casing:2>], 
        [<nuclearcraft:turbine_wall>, <ore:plateAdvanced>, <nuclearcraft:turbine_wall>], 
        [<gregtech:transparent_casing:2>, <nuclearcraft:turbine_wall>, <gregtech:transparent_casing:2>]
      ]);
    //Turbine Frame
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_frame> * 4, [
        [<ore:stickBlackSteel>, <nuclearcraft:turbine_wall>, <ore:stickBlackSteel>], 
        [<nuclearcraft:turbine_wall>, <ore:frameGtStainlessSteel>, <nuclearcraft:turbine_wall>], 
        [<ore:stickBlackSteel>, <nuclearcraft:turbine_wall>, <ore:stickBlackSteel>]
      ]);
    //Turbine Rotor Shaft
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_rotor_shaft> * 2, [
        [<mekanismgenerators:generator:7>, <nuclearcraft:turbine_wall>, <mekanismgenerators:generator:7>], 
        [<mekanismgenerators:generator:7>, <ore:stickLongSteel>, <mekanismgenerators:generator:7>], 
        [<mekanismgenerators:generator:7>, <nuclearcraft:turbine_wall>, <mekanismgenerators:generator:7>]
      ]);
    //Turbine Rotor Blades
      //Steel
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_rotor_blade_steel> * 2, [
          [<ore:plateDoubleSteel>, <ore:plateAdvanced>, <ore:turbineBladeSteel>], 
          [<ore:stickLongSteel>, <ore:stickLongSteel>, <ore:stickLongSteel>], 
          [<ore:plateDoubleSteel>, <ore:plateAdvanced>, <ore:turbineBladeSteel>]
        ]);
      //Extreme Alloy
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_rotor_blade_extreme> * 2, [
          [<ore:ingotExtreme>, <ore:plateDU>, <ore:turbineBladeTungstenCarbide>], 
          [<ore:stickLongTungstenCarbide>, <ore:stickLongTungstenCarbide>, <ore:stickLongTungstenCarbide>], 
          [<ore:ingotExtreme>, <ore:plateDU>, <ore:turbineBladeTungstenCarbide>]
        ]);
      //SiC-SiC CMC 
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>, [
          [<ore:ingotSiCSiCCMC>, <ore:plateAdvanced>, <nuclearcraft:turbine_rotor_blade_extreme>], 
          [<ore:stickLongTungsten>, <ore:stickLongUltimet>, <ore:stickLongTungsten>], 
          [<ore:ingotSiCSiCCMC>, <ore:plateAdvanced>, <nuclearcraft:turbine_rotor_blade_extreme>]
        ]);
    //Stator
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_rotor_stator>, [
        [<ore:plateAdvanced>, <ore:stickLongSteel>, <ore:plateAdvanced>], 
        [<ore:stickLongSteel>, <ore:stickLongSteel>, <ore:stickLongSteel>], 
        [<ore:plateAdvanced>, <ore:stickLongSteel>, <ore:plateAdvanced>]
      ]);
    //Dynamo Coils
      //Copper
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_dynamo_coil:4>, [
          [<ore:plateAdvanced>, <ore:solenoidCopper>, <ore:plateAdvanced>], 
          [<ore:solenoidCopper>, <ore:springCopper>, <ore:solenoidCopper>], 
          [<ore:plateAdvanced>, <ore:solenoidCopper>, <ore:plateAdvanced>]
        ]);
      //Silver
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_dynamo_coil:5>, [
          [<ore:plateDoubleSilver>, <ore:springTinsilver>, <ore:plateDoubleSilver>], 
          [<ore:plateAdvanced>, <ore:wireGtOctalSilver>, <ore:plateAdvanced>], 
          [<ore:plateDoubleSilver>, <ore:springTinsilver>, <ore:plateDoubleSilver>]
        ]);
      //Gold
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_dynamo_coil:3>, [
          [<ore:plateDoubleGold>, <ore:springGold>, <ore:plateDoubleGold>], 
          [<ore:plateAdvanced>, <ore:wireGtOctalGold>, <ore:plateAdvanced>], 
          [<ore:plateDoubleGold>, <ore:springGold>, <ore:plateDoubleGold>]
        ]);
      //Aluminium
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_dynamo_coil:2>, [
          [<gregtech:meta_item_1:98>, <ore:springAluminium>, <gregtech:meta_item_1:98>], 
          [<ore:plateAdvanced>, <ore:wireGtQuadrupleAluminium>, <ore:plateAdvanced>], 
          [<gregtech:meta_item_1:98>, <ore:springAluminium>, <gregtech:meta_item_1:98>]
        ]);
      //Beryllium
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_dynamo_coil:1>, [
          [<gregtech:meta_item_1:99>, <ore:plateDoubleBeryllium>, <gregtech:meta_item_1:99>], 
          [<ore:plateDoubleBeryllium>, <ore:plateAdvanced>, <ore:plateDoubleBeryllium>], 
          [<gregtech:meta_item_1:99>, <ore:plateDoubleBeryllium>, <gregtech:meta_item_1:99>]
        ]);
      //Magnesium
        mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_dynamo_coil>, [
          [<ore:plateAdvanced>, <ore:solenoidMagnesiumDiboride>, <ore:plateAdvanced>], 
          [<ore:solenoidMagnesiumDiboride>, <ore:wireGtQuadrupleMagnesiumDiboride>, <ore:solenoidMagnesiumDiboride>], 
          [<ore:plateAdvanced>, <ore:solenoidMagnesiumDiboride>, <ore:plateAdvanced>]
        ]);
    //Turbine Fluid Inlet
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_inlet>, [
        [<ore:rotorTitanium>, <ore:plateAdvanced>, <ore:pipeNormalFluidTitanium>], 
        [<gregtech:meta_item_1:249>, <ore:circuitEv>, <gregtech:meta_item_1:144>], 
        [<ore:rotorTitanium>, <ore:plateAdvanced>, <ore:pipeNormalFluidTitanium>]
      ]);
    //Turbine Fluid Outlet
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_outlet>, [
        [<ore:pipeNormalFluidTitanium>, <ore:plateAdvanced>, <ore:rotorTitanium>], 
        [<gregtech:meta_item_1:144>, <ore:circuitEv>, <gregtech:meta_item_1:249>], 
        [<ore:pipeNormalFluidTitanium>, <ore:plateAdvanced>, <ore:rotorTitanium>]
      ]);
    //Turbine Computer Port
      mods.extendedcrafting.TableCrafting.addShaped(1, <nuclearcraft:turbine_computer_port>, [
        [<ore:plateAdvanced>, <ore:oc:cable>, <ore:plateAdvanced>], 
        [<ore:circuitEv>, <nuclearcraft:turbine_wall>, <ore:circuitEv>], 
        [<ore:plateAdvanced>, <ore:oc:adapter>, <ore:plateAdvanced>]
      ]);
  //SuperConducter
    //Electormagnet
      assembler.recipeBuilder()
        .inputs([
          <nuclearcraft:fusion_electromagnet_idle>,
          <nuclearcraft:part:3> * 8,
          <ore:circuitLuv> * 4,
          <gregtech:meta_item_1:102> * 4,
          <gregtech:meta_item_1:206>,
          <gregtech:fluid_pipe_normal:50> * 4,
          <gregtech:wire_quadruple:429> * 8,
          <gregtech:meta_item_1:147>,
          <gregtech:meta_item_1:237>
        ])
        .outputs(<nuclearcraft:accelerator_electromagnet_idle>)
        .fluidInputs(<liquid:cryotheum> * 6000)
        .EUt(120000)
        .duration(800)
        .buildAndRegister();
    //SuperCooler
      assembler.recipeBuilder()
        .inputs([
          <nuclearcraft:active_cooler> * 4,
          <ore:circuitLuv> * 6,
          <gregtech:meta_item_1:147> * 2,
          <gregtech:meta_item_1:206>,
          <gregtech:fluid_pipe_tiny:50> * 32,
          <gregtech:meta_plate:50> * 16,
          <gregtech:meta_block_frame_24:12> * 2
        ])
        .outputs(<nuclearcraft:electromagnet_supercooler_idle>)
        .fluidInputs(<liquid:cryotheum> * 10000)
        .EUt(120000)
        .duration(800)
        .buildAndRegister();
  //Fusion Reactor
    //Fusion Reactor Controller
      mmRecipe("FusionController", "Large_Assembly_Line", 600) //RecipeName UseMachine RecipeTick
        .addEnergyPerTickInput(640000)//EnergyInput
        .addItemInput(<gregtech:machine:1020> * 2)//1
        .addItemInput(<gregtech:machine:1021> * 1)//2
        .addItemInput(<gregtech:meta_item_1:646> * 12)//3
        .addItemInput(<gregtech:meta_item_1:645> * 24)//4
        .addItemInput(<gregtech:meta_item_1:635> * 48)//5
        .addItemInput(<gregtech:meta_item_1:606> * 32)//6
        .addItemInput(<gregtech:meta_item_1:497> * 32)//7
        .addItemInput(<draconicevolution:awakened_core> * 4)//8
        .addItemInput(<draconicevolution:wyvern_core> * 16)//9
        .addItemInput(<gregtech:meta_item_1:282> * 16)//10
        .addItemInput(<gregtech:meta_item_1:238> * 8)//11
        .addItemInput(<gregtech:meta_item_1:223> * 8)//12
        .addItemInput(<gregtech:meta_item_1:207> * 8)//13
        .addItemInput(<gregtech:meta_item_1:103> * 8)//14
        .addItemInput(<gregtech:wire_quadruple:430> * 8)//15
        .addItemInput(<gregtech:fusion_casing:1> * 2)//16
        .addItemInput(<gregtech:fusion_casing:3> * 4)//17
        .addFluidInput(<liquid:redstone> * 128000)//1
        .addFluidInput(<liquid:plasma.helium> * 2500)//2
        .addFluidInput(<liquid:plasma.nitrogen> * 2500)//3
        .addFluidInput(<liquid:cryotheum> * 84000)//4
        .addFluidInput(<liquid:liquid_oxygen> * 128000)//5
        .addFluidInput(<liquid:crystal_water> * 15000)//6
        .addFluidInput(<liquid:polybenzimidazole> * 64000)//7
        .addFluidInput(<liquid:stellar_alloy> * 5760)//8
        .addItemOutput(<nuclearcraft:fusion_core>)//OutPutItem
        .build();//BuildRecipe
    //Fusion Reactor Connecter
      mods.extendedcrafting.TableCrafting.addShaped(2, <nuclearcraft:fusion_connector>, [
        [<ore:plateElite>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:237>, <gregtech:meta_item_1:102>, <ore:plateElite>], 
        [<gregtech:meta_item_1:102>, <ore:pipeNormalFluidNaquadah>, <ore:circuitLuv>, <ore:pipeNormalFluidNaquadah>, <gregtech:meta_item_1:102>], 
        [<gregtech:meta_item_1:206>, <ore:pipeNormalFluidEuropium>, <gregtech:meta_item_1:207>, <ore:pipeNormalFluidEuropium>, <gregtech:meta_item_1:206>], 
        [<gregtech:meta_item_1:102>, <ore:pipeNormalFluidNaquadah>, <ore:circuitLuv>, <ore:pipeNormalFluidNaquadah>, <gregtech:meta_item_1:102>], 
        [<ore:plateElite>, <gregtech:meta_item_1:102>, <gregtech:meta_item_1:222>, <gregtech:meta_item_1:102>, <ore:plateElite>]
      ]);
    //Fusion Reactor Electromagnet
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_item_1:207> * 2,
          <gregtech:meta_item_1:102> * 8,
          <ore:circuitZpm> * 2,
          <gregtech:fusion_casing> * 4,
          <gregtech:fusion_casing:1> * 2,
          <nuclearcraft:part:3> * 4
        ])
        .outputs(<nuclearcraft:fusion_electromagnet_idle> * 2)
        .fluidInputs(<liquid:cryotheum> * 4000)
        .EUt(32000)
        .duration(1400)
        .buildAndRegister();
    //Fusion Reactor Electromagnet Glass
      mods.extendedcrafting.TableCrafting.addShaped(2, <nuclearcraft:fusion_electromagnet_transparent_idle> * 4, [
        [<gregtech:transparent_casing:2>, <ore:plateElite>, <gregtech:meta_item_1:497>, <ore:plateElite>, <gregtech:transparent_casing:2>], 
        [<ore:plateElite>, <ore:circuitIv>, <nuclearcraft:fusion_electromagnet_idle>, <ore:circuitIv>, <ore:plateElite>], 
        [<gregtech:meta_item_1:497>, <nuclearcraft:fusion_electromagnet_idle>, <gregtech:transparent_casing:1>, <nuclearcraft:fusion_electromagnet_idle>, <gregtech:meta_item_1:497>], 
        [<ore:plateElite>, <ore:circuitIv>, <nuclearcraft:fusion_electromagnet_idle>, <ore:circuitIv>, <ore:plateElite>], 
        [<gregtech:transparent_casing:2>, <ore:plateElite>, <gregtech:meta_item_1:497>, <ore:plateElite>, <gregtech:transparent_casing:2>]
      ]);
  //Chemistry
    //Arsenic Trifluoride
      chem_reactor.recipeBuilder()
        .inputs([<gregtech:meta_dust:373>])
        .fluidInputs([<liquid:hydrofluoric_acid> * 6000])
        .fluidOutputs([<liquid:arsenictrifluoride> * 2000, <liquid:water> * 3000])
        .EUt(480)
        .duration(80)
        .buildAndRegister();
    //Phosphorus Trichloride
      chem_reactor.recipeBuilder()
        .inputs([<gregtech:meta_dust:78> * 4])
        .fluidInputs([<liquid:chlorine> * 12000])
        .fluidOutputs([<liquid:phosphorustrichloride> * 4000])
        .EUt(480)
        .duration(480)
        .buildAndRegister();
    //Phosphorus Pentachloride
      chem_reactor.recipeBuilder()
        .fluidInputs([<liquid:phosphorustrichloride> * 1000, <liquid:chlorine> * 2000])
        .fluidOutputs([<liquid:phosphoruspentachloride> * 1000])
        .EUt(480)
        .duration(540)
        .buildAndRegister();
    //Phosphorus Pentafluoride
      chem_reactor.recipeBuilder()
        .fluidInputs([<liquid:phosphoruspentachloride> * 3000, <liquid:arsenictrifluoride> * 5000])
        .fluidOutputs([<liquid:phosphoruspentafluoride> * 3000, <liquid:arsenictrichloride> * 5000])
        .EUt(1200)
        .duration(600)
        .buildAndRegister();
    //Lithium-Hexafluorophosphate
      chem_reactor.recipeBuilder()
        .fluidInputs([<liquid:phosphoruspentafluoride> * 1000, <liquid:lif> * 1000, <liquid:hydrofluoric_acid> * 5000])
        .fluidOutputs([<liquid:lithiumhexafluorophosphate> * 1000])
        .EUt(3840)
        .duration(280)
        .buildAndRegister();

//Remove Gt Recipe
  /*
    //GT Recipes(Not Working)
    //Tough Alloy
      // Tough Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(24, [<nuclearcraft:alloy:6>, <metaitem:dustLithium>], null).remove();
      // Tough Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(24, [<nuclearcraft:alloy:6>, <nuclearcraft:ingot:6>], null).remove();
      // Molten Tough Alloy * 144
        <recipemap:mixer>.findRecipe(8, null, [<liquid:ferroboron> * 72, <liquid:lithium> * 72]).remove();
    //Hard Carbon Alloy
      // Hard Carbon Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(32, [<metaitem:dustGraphite> * 2, <metaitem:dustDiamond>], null).remove();
      // Hard Carbon Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(32, [<nuclearcraft:ingot:8> * 2, <minecraft:diamond:0>], null).remove();
      // Hard Carbon Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(32, [<metaitem:dustGraphite> * 2, <minecraft:diamond:0>], null).remove();
      // Hard Carbon Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(32, [<nuclearcraft:ingot:8> * 2, <metaitem:dustDiamond>], null).remove();
    //Magnesium Dibroide Alloy
      // Magnesium Diboride Alloy * 3
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustMagnesium>, <metaitem:dustBoron> * 2], null).remove();
      // Magnesium Diboride Alloy * 3
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustMagnesium>, <nuclearcraft:ingot:5> * 2], null).remove();
      // Magnesium Diboride Alloy * 3
        <recipemap:alloy_smelter>.findRecipe(16, [<nuclearcraft:ingot:7>, <nuclearcraft:ingot:5> * 2], null).remove();
      // Magnesium Diboride Alloy * 3
        <recipemap:alloy_smelter>.findRecipe(16, [<nuclearcraft:ingot:7>, <metaitem:dustBoron> * 2], null).remove();
    //Lithium Manganese Dioxide Alloy
      // Lithium Manganese Dioxide Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustLithium>, <nuclearcraft:dust_oxide:3>], null).remove();
      // Lithium Manganese Dioxide Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(16, [<nuclearcraft:ingot:6>, <nuclearcraft:ingot_oxide:3>], null).remove();
      // Lithium Manganese Dioxide Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(16, [<nuclearcraft:ingot:6>, <nuclearcraft:dust_oxide:3>], null).remove();
      // Lithium Manganese Dioxide Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustLithium>, <nuclearcraft:ingot_oxide:3>], null).remove();
    //Ferroboron Alloy
      // Ferroboron Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(24, [<metaitem:dustSteel>, <nuclearcraft:ingot:5>], null).remove();
      // Ferroboron Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(24, [<metaitem:ingotSteel>, <nuclearcraft:ingot:5>], null).remove();
      // Ferroboron Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(24, [<metaitem:dustSteel>, <metaitem:dustBoron>], null).remove();
      // Ferroboron Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(24, [<metaitem:ingotSteel>, <metaitem:dustBoron>], null).remove();
      // Molten Ferroboron * 144
        <recipemap:mixer>.findRecipe(8, null, [<liquid:steel> * 72, <liquid:boron> * 72]).remove();
    //Extreme Alloy
      // Extreme Alloy * 1
        <recipemap:alloy_smelter>.findRecipe(32, [<nuclearcraft:alloy:1>, <nuclearcraft:alloy:2>], null).remove();
    //Thermoconducting Alloy
      // Thermoconducting Alloy * 2
        <recipemap:alloy_smelter>.findRecipe(24, [<nuclearcraft:alloy:10>, <nuclearcraft:gem:5>], null).remove();
    //Zircaloy
      // Zircaloy * 8
        <recipemap:alloy_smelter>.findRecipe(16, [<nuclearcraft:ingot:10> * 7, <metaitem:dustTin>], null).remove();
      // Zircaloy * 8
        <recipemap:alloy_smelter>.findRecipe(16, [<nuclearcraft:dust:10> * 7, <metaitem:ingotTin>], null).remove();
      // Zircaloy * 8
        <recipemap:alloy_smelter>.findRecipe(16, [<nuclearcraft:dust:10> * 7, <metaitem:dustTin>], null).remove();
      // Zircaloy * 8
        <recipemap:alloy_smelter>.findRecipe(16, [<nuclearcraft:ingot:10> * 7, <metaitem:ingotTin>], null).remove();
    //Silicon Carbide Ingot
      // Silicon Carbide Ingot * 2
        <recipemap:alloy_smelter>.findRecipe(32, [<nuclearcraft:gem:6>, <nuclearcraft:ingot:8>], null).remove();
      // Silicon Carbide Ingot * 2
        <recipemap:alloy_smelter>.findRecipe(32, [<nuclearcraft:gem:6>, <metaitem:dustGraphite>], null).remove();
    //HSLA Steel
      // HSLA Steel Ingot * 16
        <recipemap:alloy_smelter>.findRecipe(32, [<metaitem:dustIron> * 15, <nuclearcraft:compound:9>], null).remove();
      // HSLA Steel Ingot * 16
        <recipemap:alloy_smelter>.findRecipe(32, [<minecraft:iron_ingot:0> * 15, <nuclearcraft:compound:9>], null).remove();
*/
print("------NEUCLEARCRAFT_LOADING_END------");

print("------NUCLEARCRAFT_MACHINE_RECIPES_LOADING_START------");

//Remove Recipes
  //Rock Crusher
    var ncrockcrusher as IItemStack[] = [
      <minecraft:stone:1>,
      <minecraft:stone:3>,
      <minecraft:stone:5>
    ];

    for i in ncrockcrusher {
      mods.nuclearcraft.rock_crusher.removeRecipeWithInput([i]);
    }

//ADD Recipe
  //Rock Crusher
    //Andsite
      mods.nuclearcraft.rock_crusher.addRecipe([<minecraft:stone:5>, itemOutput1, itemOutput2, itemOutput3]);

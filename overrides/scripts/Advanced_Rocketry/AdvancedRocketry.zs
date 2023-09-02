
#priority 101

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

//REMOOOOOOOOOOOOOOOOOOOOOVE RECIPES!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  //Crafting Table Recipe
    var advancedrocketry as IItemStack[] = [
      <advancedrocketry:fuelingstation>,
      <libvulpes:productdust:7>,
      <advancedrocketry:rocketmotor>,
      <advancedrocketry:structuretower>,
      <advancedrocketry:fueltank>,
      <advancedrocketry:rocketbuilder>,
      <advancedrocketry:launchpad>,
      <advancedrocketry:guidancecomputer>,
      <libvulpes:linker>,
      <advancedrocketry:planetidchip>,
      <advancedrocketry:loader:1>,
      <advancedrocketry:advrocketmotor>,
      <advancedrocketry:misc>,
      <advancedrocketry:precisionassemblingmachine>,
      <advancedrocketry:spacestationchip>,
      <advancedrocketry:monitoringstation>,
      <advancedrocketry:oxygenscrubber>,
      <advancedrocketry:oxygencharger>,
      <advancedrocketry:gravitycontroller>,
      <advancedrocketry:spaceelevatorcontroller>,
      <advancedrocketry:forcefieldprojector>,
      <advancedrocketry:suitworkstation>,
      <advancedrocketry:oxygenvent>,
      <advancedrocketry:intake>,
      <advancedrocketry:stationmarker>,
      <advancedrocketry:circlelight>,
      <advancedrocketry:beacon>,
      <advancedrocketry:warpcore>,
      <advancedrocketry:warpmonitor>,
      <advancedrocketry:spacelaser>,
      <advancedrocketry:loader:4>,
      <advancedrocketry:loader:5>,
      <advancedrocketry:loader:2>,
      <advancedrocketry:loader:3>,
      <advancedrocketry:deployablerocketbuilder>,
      <advancedrocketry:planetselector>,
      <advancedrocketry:planetholoselector>,
      <advancedrocketry:ic:3>,
      <advancedrocketry:ic:4>,
      <advancedrocketry:ic:5>,
      <advancedrocketry:satelliteidchip>,
      <advancedrocketry:asteroidchip>,
      <advancedrocketry:spacehelmet>,
      <advancedrocketry:spacechestplate>,
      <advancedrocketry:spaceleggings>,
      <advancedrocketry:spaceboots>,
      <advancedrocketry:satelliteprimaryfunction:2>,
      <advancedrocketry:satelliteprimaryfunction:1>,
      <advancedrocketry:satelliteprimaryfunction>,
      <advancedrocketry:smallairlockdoor>,
      <advancedrocketry:sawbladeiron>,
      <libvulpes:productfan:6>,
      <advancedrocketry:satellite>,
      <advancedrocketry:satellitepowersource>,
      <advancedrocketry:satellitepowersource:1>,
      <advancedrocketry:landingpad>,
      <advancedrocketry:drill>,
      <advancedrocketry:carbonscrubbercartridge>,
      <advancedrocketry:lens>,
      <advancedrocketry:satellitecontrolcenter>,
      <advancedrocketry:satellitebuilder>,
      <advancedrocketry:seat>,
      <advancedrocketry:loader>,
      <advancedrocketry:pipesealer>,
      <advancedrocketry:orientationcontroller>,
      <advancedrocketry:altitudecontroller>,
      <advancedrocketry:wirelesstransciever>,
      <advancedrocketry:planetanalyser>,
      <advancedrocketry:microwavereciever>,
      <advancedrocketry:observatory>,
      <advancedrocketry:solararraypanel>,
      <advancedrocketry:solarpanel>,
      <advancedrocketry:solargenerator>,
      <advancedrocketry:satelliteprimaryfunction:3>,
      <advancedrocketry:solararray>,
      <libvulpes:hatch>,
      <libvulpes:hatch:1>,
      <libvulpes:hatch:2>,
      <libvulpes:hatch:3>,
      <libvulpes:structuremachine>,
      <libvulpes:advstructuremachine>,
      <libvulpes:forgepowerinput>,
      <libvulpes:forgepoweroutput>,
      <libvulpes:battery>,
      <libvulpes:battery:1>,
      <libvulpes:motor>,
      <libvulpes:advancedmotor>,
      <libvulpes:enhancedmotor>,
      <libvulpes:elitemotor>,
      <libvulpes:holoprojector>,
      <advancedrocketry:stationbuilder>,
      <advancedrocketry:platepress>,
      <advancedrocketry:arcfurnace>
    ];

    for i in advancedrocketry {
      recipes.remove(i);
    }

  //Precision Assembler
    var precisionassembler as IItemStack[] = [
      <advancedrocketry:ic:1>,
      <advancedrocketry:ic:3>,
      <advancedrocketry:ic:4>,
      <advancedrocketry:ic:5>,
      <advancedrocketry:itemcircuitplate>,
      <advancedrocketry:itemcircuitplate:1>,
      <advancedrocketry:elevatorchip>,
      <advancedrocketry:dataunit>
    ];

      for i in precisionassembler {
        mods.advancedrocketry.PrecisionAssembler.removeRecipe(i);
      }

  //Cutting Machine
      var number = [0,2] as int[];

        for e in number {
              val circuit = <advancedrocketry:ic>;
              mods.advancedrocketry.CuttingMachine.removeRecipe(circuit.withDamage(e)*4);
        }

      val wafer = <advancedrocketry:wafer>;
      mods.advancedrocketry.CuttingMachine.removeRecipe(wafer.withDamage(0)*4);

  //Rolling Machine
    var number2 = [0,1,2,3] as int[];

      for e in number2 {
            val oxytank = <advancedrocketry:pressuretank>;
            mods.advancedrocketry.RollingMachine.removeRecipe(oxytank.withDamage(e)*1);
      }
#=========================#
#     Delete Machines     #
#=========================#
  var advrocketrydeletemachines as IItemStack[] = [
    <advancedrocketry:precisionlaseretcher>,
    <advancedrocketry:cuttingmachine>,
    <advancedrocketry:chemicalreactor>,
    <advancedrocketry:crystallizer>,
    <advancedrocketry:electrolyser>,
    <advancedrocketry:rollingmachine>,
    <advancedrocketry:lathe>
  ];

  for i in advrocketrydeletemachines {
    recipes.remove(i);
    mods.jei.JEI.removeAndHide(i);
  }
  var jeicatremove as string[] = [ 
        "zmaster587.AR.rollingMachine",
        "zmaster587.AR.lathe",
        "zmaster587.AR.sawMill",
        "zmaster587.AR.chemicalReactor",
        "zmaster587.AR.crystallizer",
        "zmaster587.AR.electrolyzer",
        "zmaster587.AR.arcFurnace",
        "zmaster587.AR.platePresser",
        "zmaster587.AR.centrifuge",
        "zmaster587.AR.precisionlaseretcher"
  ];

  for i in jeicatremove {
      mods.jei.JEI.hideCategory(i);
  }

//ADD Recipe
  //Rockets
    //Fuel Loader
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_block_frame_20:3> * 2,
          <advancedrocketry:loader:5>,
          <advancedrocketry:loader:4>,
          <gregtech:meta_item_1:234> * 4,
          <gregtech:meta_item_1:249> * 4,
          <gregtech:fluid_pipe_large:323> * 3,
          <ore:circuitIv> * 2,
          <advancedrocketry:ic:3> * 4,
          <advancedrocketry:ic:5> * 4
        ])
        .outputs(<advancedrocketry:fuelingstation>)
        .EUt(480)
        .duration(1600)
        .buildAndRegister();
      //Linker
        mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:linker>, [
          [<ore:plateAluminium>, <ore:plateAluminium>, <gregtech:meta_item_1:503>], 
          [<ore:circuitHv>, <gregtech:meta_item_1:405>, <ore:circuitHv>], 
          [<advancedrocketry:ic:3>, <advancedrocketry:ic>, <advancedrocketry:ic:3>]
        ]);
    //Rocket Engine
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_block_frame_20:3> * 4,
          <gregtech:meta_plate_double:3008> * 6,
          <ore:circuitIv>,
          <ore:circuitHv> * 4,
          <gregtech:fluid_pipe_large:323> * 2,
          <gregtech:meta_item_1:249> * 8,
          <gregtech:fluid_pipe_small:2> * 8,
          <gregtech:meta_item_1:776> * 16,
          <gregtech:meta_ring:1004> * 8
        ])
        .fluidInputs(<liquid:cryotheum> * 2000)
        .outputs(<advancedrocketry:rocketmotor>)
        .EUt(480)
        .duration(2400)
        .buildAndRegister();
    //Fuel Tank
      assembler.recipeBuilder()
        .inputs([
          <advancedrocketry:pressuretank:2>,
          <advancedrocketry:pressuretank:2>,
          <enderio:block_tank:1> * 8,
          <gregtech:meta_item_1:249> * 8,
          <ore:circuitEv> * 4,
          <advancedrocketry:ic:5> * 4,
          <gregtech:meta_plate_double:323> * 12
        ])
        .outputs(<advancedrocketry:fueltank> * 2)
        .EUt(480)
        .duration(1600)
        .buildAndRegister();
    //Structure Tower
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_block_frame_20:3> * 4,
          <gregtech:meta_item_1:129> * 4,
          <gregtech:meta_item_1:189> * 2,
          <gregtech:meta_stick_long:2> * 2,
          <gregtech:wire_single:51> * 8
        ])
        .fluidInputs(<liquid:steel> * 576)
        .outputs(<advancedrocketry:structuretower> * 2)
        .EUt(360)
        .duration(800)
        .buildAndRegister();
    //Rocket Assembling Machine
      mods.extendedcrafting.TableCrafting.addShaped(2, <advancedrocketry:rocketbuilder>, [
        [<ore:frameGtStainlessSteel>, <gregtech:meta_item_1:189>, <ore:circuitIv>, <gregtech:meta_item_1:189>, <ore:frameGtStainlessSteel>], 
        [<gregtech:meta_item_1:189>, <ore:circuitIv>, <advancedrocketry:ic:3>, <ore:circuitIv>, <gregtech:meta_item_1:189>], 
        [<ore:circuitIv>, <advancedrocketry:ic:3>, <libvulpes:structuremachine>, <advancedrocketry:ic:3>, <ore:circuitIv>], 
        [<gregtech:meta_item_1:189>, <ore:circuitIv>, <advancedrocketry:ic:3>, <ore:circuitIv>, <gregtech:meta_item_1:189>], 
        [<ore:frameGtStainlessSteel>, <gregtech:meta_item_1:189>, <ore:circuitIv>, <gregtech:meta_item_1:189>, <ore:frameGtStainlessSteel>]
      ]);
    //Unmanned Rocket Assembler
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:structuremachine> * 4,
          <advancedrocketry:rocketbuilder>,
          <ore:circuitIv> * 4,
          <advancedrocketry:structuretower> * 8,
          <advancedrocketry:ic:3> * 8
        ])
        .outputs(<advancedrocketry:deployablerocketbuilder>)
        .EUt(480)
        .duration(1200)
        .buildAndRegister();
    //Launch Pad
      assembler.recipeBuilder()
        .inputs([
          <contenttweaker:fiber_reinforced_concrete> * 2,
          <gregtech:cleanroom_casing> * 2,
          <contenttweaker:reinforced_concrete> * 2,
          <gregtech:meta_item_1:436> * 32,
          <gregtech:meta_item_1:425> * 32
        ])
        .fluidInputs(<liquid:concrete> * 1000)
        .outputs(<advancedrocketry:launchpad> * 2)
        .EUt(360)
        .duration(1000)
        .buildAndRegister();
    //Guidance Computer
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_block_frame_20:3> * 4,
          <ore:circuitIv> * 16,
          <ore:circuitEv> * 32,
          <ore:circuitHv> * 64,
          <gregtech:meta_item_1:603> * 16,
          <advancedrocketry:ic:3> * 16,
          <advancedrocketry:ic:2> * 12,
          <gregtech:meta_wire_fine:277> * 64,
          <advancedrocketry:ic:1> * 8
        ])
        .fluidInputs(<liquid:soldering_alloy> * 1152)
        .outputs(<advancedrocketry:guidancecomputer>)
        .EUt(480)
        .duration(8000)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
    //Satellite Bay
      mods.extendedcrafting.TableCrafting.addShaped(2, <advancedrocketry:loader:1>, [
        [<advancedrocketry:ic:3>, <ore:circuitIv>, <ore:frameGtStainlessSteel>, <ore:circuitIv>, <advancedrocketry:ic:3>], 
        [<ore:circuitIv>, <gregtech:meta_item_1:204>, <gregtech:meta_item_1:174>, <gregtech:meta_item_1:204>, <ore:circuitIv>], 
        [<ore:frameGtStainlessSteel>, <gregtech:meta_item_1:234>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:219>, <ore:frameGtStainlessSteel>], 
        [<ore:circuitIv>, <gregtech:meta_item_1:204>, <gregtech:meta_item_1:174>, <gregtech:meta_item_1:204>, <ore:circuitIv>], 
        [<advancedrocketry:ic:3>, <ore:circuitIv>, <ore:frameGtStainlessSteel>, <ore:circuitIv>, <advancedrocketry:ic:3>]
      ]);
    //Advanced Rocket Engine
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_plate_double:3003> * 32,
          <advancedrocketry:rocketmotor> * 8,
          <gregtech:meta_turbine_blade:32007> * 16,
          <ore:circuitLuv> * 8,
          <gregtech:meta_item_1:175> * 16,
          <gregtech:meta_item_1:250> * 16,
          <gregtech:fluid_pipe_small:323> * 64,
          <gregtech:meta_item_1:777> * 48,
          <gregtech:meta_block_frame_2000:7> * 8
        ])
        .fluidInputs(<liquid:cryotheum> * 8000)
        .outputs(<advancedrocketry:advrocketmotor> * 2)
        .EUt(2000)
        .duration(12000)
        .buildAndRegister();
    //Rocket Monitoring Station
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:structuremachine>,
          <ore:circuitIv> * 4,
          <advancedrocketry:satelliteprimaryfunction> * 2,
          <advancedrocketry:satelliteprimaryfunction:1>,
          <gregtech:meta_item_1:234> * 2,
          <gregtech:meta_item_1:219> * 2,
          <advancedrocketry:ic:3> * 2
        ])
        .outputs(<advancedrocketry:monitoringstation>)
        .EUt(480)
        .duration(640)
        .buildAndRegister();
    //Rocket Fluid Loader
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:structuremachine> * 2,
          <gregtech:machine:1184>,
          <gregtech:machine:1403>,
          <ore:circuitEv> * 4,
          <gregtech:meta_item_1:144> * 2,
          <advancedrocketry:ic:5> * 4,
          <advancedrocketry:ic:3> * 4
        ])
        .outputs(<advancedrocketry:loader:5>)
        .EUt(480)
        .duration(360)
        .buildAndRegister();
    //Rocket Fluid Unloader
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:structuremachine> * 2,
          <gregtech:machine:1199>,
          <gregtech:machine:1403>,
          <ore:circuitEv> * 4,
          <gregtech:meta_item_1:144> * 2,
          <advancedrocketry:ic:5> * 4,
          <advancedrocketry:ic:3> * 4
        ])
        .outputs(<advancedrocketry:loader:4>)
        .EUt(480)
        .duration(360)
        .buildAndRegister();
    //Rocket Item Loader
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:structuremachine> * 2,
          <gregtech:machine:1154>,
          <gregtech:machine:1402>,
          <ore:circuitEv> * 4,
          <gregtech:meta_item_1:159> * 2,
          <advancedrocketry:ic:4> * 4,
          <advancedrocketry:ic:3> * 4
        ])
        .outputs(<advancedrocketry:loader:3>)
        .EUt(480)
        .duration(360)
        .buildAndRegister();
    //Rocket Item Unloader
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:structuremachine> * 2,
          <gregtech:machine:1169>,
          <gregtech:machine:1402>,
          <ore:circuitEv> * 4,
          <gregtech:meta_item_1:159> * 2,
          <advancedrocketry:ic:4> * 4,
          <advancedrocketry:ic:3> * 4
        ])
        .outputs(<advancedrocketry:loader:2>)
        .EUt(480)
        .duration(360)
        .buildAndRegister();
    //Drill
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:structuremachine> * 4,
          <gregtech:meta_tool_head_drill:324> * 8,
          <gregtech:meta_item_1:130> * 4,
          <gregtech:meta_gear:324> * 4,
          <gregtech:meta_gear_small:324> * 8,
          <gregtech:meta_stick:324> * 8,
          <ore:circuitHv> * 4
        ])
        .fluidInputs(<liquid:lubricant> * 1000)
        .outputs(<advancedrocketry:drill>)
        .EUt(1200)
        .duration(640)
        .buildAndRegister();
    //Gas Intake
      mods.extendedcrafting.TableCrafting.addShaped(1, <advancedrocketry:intake>, [
        [<gregtech:meta_item_1:129>, <ore:rotorStainlessSteel>, <gregtech:meta_item_1:129>], 
        [<ore:rotorStainlessSteel>, <libvulpes:structuremachine>, <ore:rotorStainlessSteel>], 
        [<gregtech:meta_item_1:129>, <ore:rotorStainlessSteel>, <gregtech:meta_item_1:129>]
      ]);
    //Seat
      assembler.recipeBuilder()
        .inputs([
          <ore:woolBlock> * 32,
          <minecraft:carpet> * 32,
          <harvestcraft:hardenedleatheritem> * 16,
          <contenttweaker:kevlarfabric> * 8,
          <contenttweaker:kevlarfiber> * 8,
          <gregtech:meta_spring_small:51> * 32
        ])
        .outputs(<advancedrocketry:seat>)
        .EUt(240)
        .duration(360)
        .buildAndRegister();
  //Space Stations
    //Space Station Assembler
      mods.extendedcrafting.TableCrafting.addShaped(2, <advancedrocketry:stationbuilder>, [
        [<ore:frameGtStainlessSteel>, <gregtech:meta_item_1:189>, <advancedrocketry:spacestationchip>, <gregtech:meta_item_1:189>, <ore:frameGtStainlessSteel>], 
        [<gregtech:meta_item_1:189>, <ore:circuitIv>, <advancedrocketry:ic:3>, <ore:circuitIv>, <gregtech:meta_item_1:189>], 
        [<advancedrocketry:spacestationchip>, <advancedrocketry:ic:3>, <libvulpes:structuremachine>, <advancedrocketry:ic:3>, <advancedrocketry:spacestationchip>], 
        [<gregtech:meta_item_1:189>, <ore:circuitIv>, <advancedrocketry:ic:3>, <ore:circuitIv>, <gregtech:meta_item_1:189>], 
        [<ore:frameGtStainlessSteel>, <gregtech:meta_item_1:189>, <advancedrocketry:spacestationchip>, <gregtech:meta_item_1:189>, <ore:frameGtStainlessSteel>]
      ]);
    //CO2 Scrubber
      //CO2 Scrubber
        assembler.recipeBuilder()
          .inputs([
            <libvulpes:structuremachine>,
            <gregtech:cleanroom_casing:1> * 4,
            <advancedrocketry:carbonscrubbercartridge> * 8,
            <gregtech:meta_rotor:323> * 4,
            <gregtech:meta_gear_small:323> * 8,
            <gregtech:meta_ring:1004> * 4,
            <gregtech:meta_item_1:129> * 4,
            <advancedrocketry:ic:3> * 4
          ])
          .outputs(<advancedrocketry:oxygenscrubber>)
          .EUt(480)
          .duration(800)
          .buildAndRegister();
      //Carbon Collection Cartridge
        assembler.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:78>,
            <minecraft:iron_bars> * 4,
            <gregtech:meta_item_1:291> * 4,
            <gregtech:meta_dust:2033> * 4
          ])
          .fluidInputs(<liquid:soldering_alloy> * 288)
          .outputs(<advancedrocketry:carbonscrubbercartridge>)
          .EUt(240)
          .duration(600)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
    //Space Station Controllers
      //Staion Gravity Controller
        mmRecipe("Staion_Gravity_Controller", "Prototype_Assembling_Line", 2000) //RecipeName UseMachine RecipeTick
          .addEnergyPerTickInput(10000)//EnergyInput
          .addItemInput(<libvulpes:advstructuremachine>)//1
          .addItemInput(<gregtech:meta_item_1:205> * 6)//2
          .addItemInput(<gregtech:meta_item_1:235> * 16)//3
          .addItemInput(<gregtech:meta_item_1:235> * 16)//4
          .addItemInput(<gregtech:meta_item_1:282> * 8)//5
          .addItemInput(<gregtech:meta_item_1:604> * 32)//6
          .addItemInput(<gregtech:meta_item_1:635> * 8)//7
          .addItemInput(<gregtech:meta_item_1:634> * 16)//8
          .addItemInput(<advancedrocketry:misc> * 4)//9
          .addItemInput(<draconicevolution:draconic_core> * 4)//10
          .addFluidInput(<liquid:plutonium_241> * 4000)//1
          .addFluidInput(<liquid:uranium_235> * 8000)//2
          .addFluidInput(<liquid:americium_243> * 4000)//3
          .addFluidInput(<liquid:crystal_matrix> * 144)//4
          .addItemOutput(<advancedrocketry:gravitycontroller>)//OutPutItem
          .build();//BuildRecipe
      //Force Field Controller
        mmRecipe("Force_Field_Controller", "Prototype_Assembling_Line", 2000) //RecipeName UseMachine RecipeTick
          .addEnergyPerTickInput(32768)//EnergyInput
          .addItemInput(<libvulpes:advstructuremachine> * 2)//1
          .addItemInput(<gregtech:meta_item_1:102> * 4)//2
          .addItemInput(<gregtech:meta_item_1:206> * 4)//3
          .addItemInput(<gregtech:meta_item_1:236> * 8)//4
          .addItemInput(<gregtech:meta_item_1:221> * 8)//5
          .addItemInput(<advancedrocketry:misc> * 4)//6
          .addItemInput(<gregtech:meta_item_1:282> * 12)//7
          .addItemInput(<gregtech:meta_item_1:605> * 32)//8
          .addItemInput(<gregtech:meta_item_1:492> * 64)//9
          .addItemInput(<draconicevolution:wyvern_core> * 4)//10
          .addFluidInput(<liquid:naquadah> * 576)//1
          .addItemOutput(<advancedrocketry:forcefieldprojector>)//OutPutItem
          .build();//BuildRecipe
      //Orientation Controller
        mmRecipe("Orientation_Controller", "Prototype_Assembling_Line", 2000) //RecipeName UseMachine RecipeTick
          .addEnergyPerTickInput(32768)//EnergyInput
          .addItemInput(<libvulpes:advstructuremachine> * 2)//1
          .addItemInput(<gregtech:meta_item_1:634> * 16)//2
          .addItemInput(<gregtech:meta_item_1:633> * 32)//3
          .addItemInput(<gregtech:meta_item_1:235> * 8)//4
          .addItemInput(<advancedrocketry:satelliteprimaryfunction:1> * 4)//5
          .addItemInput(<advancedrocketry:satelliteprimaryfunction> * 4)//6
          .addItemInput(<advancedrocketry:ic:3> * 16)//7
          .addItemInput(<advancedrocketry:ic:1> * 4)//8
          .addItemInput(<advancedrocketry:misc> * 4)//9
          .addItemOutput(<advancedrocketry:orientationcontroller>)//OutPutItem
          .build();//BuildRecipe
      //Altitude Controller
        mmRecipe("Altitude_Controller", "Prototype_Assembling_Line", 2000) //RecipeName UseMachine RecipeTick
          .addEnergyPerTickInput(32768)//EnergyInput
          .addItemInput(<libvulpes:advstructuremachine> * 2)//1
          .addItemInput(<gregtech:meta_item_1:634> * 16)//2
          .addItemInput(<gregtech:meta_item_1:633> * 48)//3
          .addItemInput(<gregtech:meta_item_1:235> * 16)//4
          .addItemInput(<advancedrocketry:misc> * 8)//5
          .addItemInput(<advancedrocketry:satelliteprimaryfunction> * 16)//6
          .addItemInput(<advancedrocketry:satelliteprimaryfunction:1> * 16)//7
          .addItemInput(<advancedrocketry:ic:1> * 4)//8
          .addItemInput(<advancedrocketry:rocketmotor> * 4)//9
          .addItemInput(<advancedrocketry:ic:3> * 16)//10
          .addItemOutput(<advancedrocketry:altitudecontroller>)//OutPutItem
          .build();//BuildRecipe
    //Oxygen Vent
      mods.extendedcrafting.TableCrafting.addShaped(2, <advancedrocketry:oxygenvent>, [
        [<ore:plateAluminium>, <ore:plateAluminium>, <ore:ringStyreneButadieneRubber>, <ore:plateAluminium>, <ore:plateAluminium>], 
        [<ore:plateAluminium>, <ore:rotorStainlessSteel>, <ore:circuitHv>, <ore:rotorStainlessSteel>, <ore:plateAluminium>], 
        [<ore:ringStyreneButadieneRubber>, <advancedrocketry:intake>, <gregtech:meta_item_1:144>, <advancedrocketry:intake>, <ore:ringStyreneButadieneRubber>], 
        [<ore:plateAluminium>, <ore:rotorStainlessSteel>, <ore:circuitHv>, <ore:rotorStainlessSteel>, <ore:plateAluminium>], 
        [<ore:plateAluminium>, <ore:plateAluminium>, <ore:ringStyreneButadieneRubber>, <ore:plateAluminium>, <ore:plateAluminium>]
      ]);
    //Staion Docking
      //Station Docking Port
        mods.extendedcrafting.TableCrafting.addShaped(2, <advancedrocketry:stationmarker> * 2, [
          [<gregtech:meta_item_1:219>, <advancedrocketry:launchpad>, <advancedrocketry:launchpad>, <advancedrocketry:launchpad>, <gregtech:meta_item_1:234>], 
          [<advancedrocketry:launchpad>, <gregtech:meta_item_1:174>, <ore:plateDoubleTantalumCarbide>, <gregtech:meta_item_1:174>, <advancedrocketry:launchpad>], 
          [<advancedrocketry:launchpad>, <ore:circuitIv>, <ore:plateDoubleTantalumCarbide>, <ore:circuitIv>, <advancedrocketry:launchpad>], 
          [<advancedrocketry:launchpad>, <gregtech:meta_item_1:174>, <ore:plateDoubleTantalumCarbide>, <gregtech:meta_item_1:174>, <advancedrocketry:launchpad>], 
          [<gregtech:meta_item_1:234>, <advancedrocketry:launchpad>, <advancedrocketry:launchpad>, <advancedrocketry:launchpad>, <gregtech:meta_item_1:219>]
        ]);
      //Station Docking Pad
          assembler.recipeBuilder()
            .inputs([
              <advancedrocketry:launchpad> * 4,
              <gregtech:meta_item_1:174> * 4,
              <advancedrocketry:ic:1>
            ])
            .fluidInputs(<liquid:concrete> * 500)
            .outputs(<advancedrocketry:landingpad>)
            .EUt(480)
            .duration(1600)
            .buildAndRegister();
    //Station Light
        assembler.recipeBuilder()
          .inputs([
            <libvulpes:structuremachine> * 4,
            <projectred-illumination:lamp> * 8,
            <ore:circuitLv>
          ])
          .fluidInputs(<liquid:glass> * 576)
          .outputs(<advancedrocketry:circlelight> * 4)
          .EUt(320)
          .duration(480)
          .buildAndRegister();
    //Station Warp
      //Warp Controller
        assembler.recipeBuilder()
          .inputs([
            <libvulpes:advstructuremachine>,
            <ore:circuitLuv> * 16,
            <ore:circuitIv> * 64,
            <advancedrocketry:satelliteprimaryfunction> * 32,
            <advancedrocketry:satelliteprimaryfunction:1> * 32,
            <advancedrocketry:satelliteprimaryfunction:2> * 32,
            <gregtech:meta_item_1:262> * 32,
            <gregtech:meta_item_1:595> * 48,
            <advancedrocketry:ic:3> * 64
          ])
          .fluidInputs(<liquid:soldering_alloy> * 32768)
          .outputs(<advancedrocketry:warpmonitor>)
          .EUt(2000)
          .duration(48000)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Warp Core
      //mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe);
        mods.thaumcraft.Infusion.registerRecipe(
          "Warp_Controller",
          "INFUSION",
          <advancedrocketry:warpcore>,
          2000,
          [
            <aspect:perditio> * 240,
            <aspect:auram> * 160,
            <aspect:praecantatio> * 160,
            <aspect:potentia> * 240,
            <aspect:fluctus> * 200,
            <aspect:alienis> * 160,
            <aspect:caeles> * 5,
            <aspect:draco> * 30
          ],
          <libvulpes:advstructuremachine>,
          [
            <astralsorcery:itemcraftingcomponent:4>,
            <gregtech:meta_item_1:205>,
            <threng:material:13>,
            <draconicevolution:draconic_core>,
            <thaumcraft:celestial_notes:5>,
            <gregtech:meta_item_1:205>,
            <mekanism:reinforcedalloy>,
            <extendedcrafting:material:40>,
            <avaritia:resource:1>,
            <gregtech:meta_item_1:205>,
            <gregtech:meta_item_1:282>,
            <draconicevolution:draconic_core>,
            <thaumadditions:mithrillium_resonator>,
            <gregtech:meta_item_1:205>,
            <botania:rune:2>,
            <astralsorcery:blockcelestialcollectorcrystal>.withTag({astralsorcery: {collectorType: 1}})
          ]
        );
      //Planet Serector
        assembler.recipeBuilder()
          .inputs([
            <libvulpes:structuremachine> * 2,
            <advancedrocketry:planetidchip> * 4,
            <ore:circuitIv> * 4,
            <ore:circuitEv> * 8,
            <advancedrocketry:ic:3> * 8,
            <advancedrocketry:satelliteprimaryfunction> * 4,
            <advancedrocketry:satelliteprimaryfunction:1> * 4,
            <advancedrocketry:satelliteprimaryfunction:2> * 4
          ])
          .outputs(<advancedrocketry:planetselector>)
          .EUt(480)
          .duration(1600)
          .buildAndRegister();
      //Holo Planet Serector
        mods.extendedcrafting.TableCrafting.addShaped(2, <advancedrocketry:planetholoselector>, [
          [<ore:itemLens>, <ore:circuitEv>, <advancedrocketry:ic:3>, <ore:circuitEv>, <ore:itemLens>], 
          [<ore:circuitEv>, <openscreens:holoscreen2>, <libvulpes:holoprojector>, <openscreens:holoscreen2>, <ore:circuitEv>], 
          [<advancedrocketry:ic:3>, <libvulpes:holoprojector>, <advancedrocketry:planetselector>, <libvulpes:holoprojector>, <advancedrocketry:ic:3>], 
          [<ore:circuitEv>, <openscreens:holoscreen2>, <libvulpes:holoprojector>, <openscreens:holoscreen2>, <ore:circuitEv>], 
          [<ore:itemLens>, <ore:circuitEv>, <advancedrocketry:ic:3>, <ore:circuitEv>, <ore:itemLens>]
        ]);
    //Small Airlock Door
      assembler.recipeBuilder()
        .inputs([
          <enderio:block_dark_steel_door>,
          <gregtech:meta_plate_double:324> * 16,
          <gregtech:transparent_casing:2> * 4,
          <gregtech:meta_item_1:309> * 8
        ])
        .fluidInputs(<liquid:steel> * 2880)
        .outputs(<advancedrocketry:smallairlockdoor>)
        .EUt(480)
        .duration(1000)
        .buildAndRegister();
    //Pipe Seal
      assembler.recipeBuilder()
        .inputs([
          <gregtech:boiler_casing:2>,
          <gregtech:meta_item_1:204> * 4,
          <ore:circuitEv> * 2,
          <gregtech:meta_item_1:309> * 16,
          <gregtech:meta_rotor:113> * 6,
          <gregtech:fluid_pipe_normal:113> * 2,
          <gregtech:meta_gear:324> * 6,
          <gregtech:meta_plate_double:3020> * 4,
          <gregtech:meta_bolt:331> * 8
        ])
        .outputs(<advancedrocketry:pipesealer> * 4)
        .EUt(1920)
        .duration(2400)
        .buildAndRegister();
  //Space Suit
    //Space Suits
      //Space Suit helmet
        mods.extendedcrafting.TableCrafting.addShaped(2, <advancedrocketry:spacehelmet>, [
          [<gregtech:meta_item_1:503>, <contenttweaker:spacesuitfabric>, <contenttweaker:spacesuitfabric>, <contenttweaker:spacesuitfabric>, <projectred-illumination:inverted_fixture_light:8>], 
          [<contenttweaker:spacesuitfabric>, <gregtech:transparent_casing:3>, <contenttweaker:kevlararmor_head>, <gregtech:transparent_casing:3>, <contenttweaker:spacesuitfabric>], 
          [<contenttweaker:spacesuitfabric>, <contenttweaker:kevlarfabric>, <mechtech:meta_item:3>, <contenttweaker:kevlarfabric>, <contenttweaker:spacesuitfabric>], 
          [<contenttweaker:spacesuitfabric>, <contenttweaker:carbonreinforcedfabric>, <gregtech:transparent_casing:3>, <contenttweaker:carbonreinforcedfabric>, <contenttweaker:spacesuitfabric>], 
          [null, <contenttweaker:spacesuitfabric>, <ore:pipeTinyFluidPlastic>, <contenttweaker:spacesuitfabric>, null]
        ]);
      //Space Suit ChestPlate
        mods.extendedcrafting.TableCrafting.addShaped(2, <advancedrocketry:spacechestplate>, [
          [<contenttweaker:spacesuitfabric>, <contenttweaker:carbonreinforcedfabric>, null, <contenttweaker:carbonreinforcedfabric>, <contenttweaker:spacesuitfabric>], 
          [<contenttweaker:spacesuitfabric>, <ore:pipeTinyFluidPlastic>, <ore:rotorStainlessSteel>, <ore:pipeTinyFluidPlastic>, <contenttweaker:spacesuitfabric>], 
          [<contenttweaker:spacesuitfabric>, <gregtech:meta_item_1:307>, <contenttweaker:kevlararmor_chest>, <ore:circuitEv>, <contenttweaker:spacesuitfabric>], 
          [<contenttweaker:spacesuitfabric>, <ore:cableGtSingleElectrum>, <contenttweaker:life_support_system>, <ore:cableGtSingleElectrum>, <contenttweaker:spacesuitfabric>], 
          [null, <contenttweaker:spacesuitfabric>, <contenttweaker:spacesuitfabric>, <contenttweaker:spacesuitfabric>, null]
        ]);
      //Space Suit Leggings
        mods.extendedcrafting.TableCrafting.addShaped(2, <advancedrocketry:spaceleggings>, [
          [<contenttweaker:spacesuitfabric>, <ore:pipeTinyFluidPlastic>, <contenttweaker:spacesuitfabric>, <ore:pipeTinyFluidPlastic>, <contenttweaker:spacesuitfabric>], 
          [<contenttweaker:spacesuitfabric>, <ore:ringAluminium>, <contenttweaker:kevlararmor_legs>, <ore:ringAluminium>, <contenttweaker:spacesuitfabric>], 
          [<contenttweaker:spacesuitfabric>, <ore:cableGtSingleElectrum>, <contenttweaker:carbonreinforcedfabric>, <ore:cableGtSingleElectrum>, <contenttweaker:spacesuitfabric>], 
          [<contenttweaker:spacesuitfabric>, <contenttweaker:kevlarfabric>, null, <contenttweaker:kevlarfabric>, <contenttweaker:spacesuitfabric>], 
          [<contenttweaker:spacesuitfabric>, <contenttweaker:carbonreinforcedfabric>, null, <contenttweaker:carbonreinforcedfabric>, <contenttweaker:spacesuitfabric>]
        ]);
      //Space Suit Boots
        mods.extendedcrafting.TableCrafting.addShaped(2, <advancedrocketry:spaceboots>, [
          [<contenttweaker:kevlarfabric>, <ore:ringSiliconeRubber>, <contenttweaker:kevlarfabric>, <ore:ringSiliconeRubber>, <contenttweaker:kevlarfabric>], 
          [<contenttweaker:spacesuitfabric>, <ore:pipeTinyFluidPlastic>, <contenttweaker:spacesuitfabric>, <ore:pipeTinyFluidPlastic>, <contenttweaker:spacesuitfabric>], 
          [<contenttweaker:spacesuitfabric>, <contenttweaker:kevlarfiber>, <contenttweaker:kevlararmor_feet>, <contenttweaker:kevlarfiber>, <contenttweaker:spacesuitfabric>], 
          [<contenttweaker:spacesuitfabric>, <contenttweaker:carbonreinforcedfabric>, <contenttweaker:spacesuitfabric>, <contenttweaker:carbonreinforcedfabric>, <contenttweaker:spacesuitfabric>], 
          [<contenttweaker:carbonreinforcedfabric>, <mechtech:meta_item:1>, <contenttweaker:spacesuitfabric>, <mechtech:meta_item:1>, <contenttweaker:carbonreinforcedfabric>]
        ]);
    //Oxygen Tank
      //Low
        assembler.recipeBuilder()
          .inputs([
            <gregtech:meta_plate_double:324> * 6,
            <gregtech:meta_ring:1068> * 4,
            <gregtech:fluid_pipe_tiny:2> * 4,
            <gregtech:meta_plate:2> * 4,
            <gregtech:meta_rotor:323> * 2,
            <gregtech:meta_item_1:309> * 2
          ])
          .outputs(<advancedrocketry:pressuretank>)
          .EUt(128)
          .duration(1440)
          .buildAndRegister();
      //Nomal
        assembler.recipeBuilder()
          .inputs([
            <advancedrocketry:pressuretank>,
            <gregtech:meta_plate_double:2011> * 6,
            <gregtech:meta_ring:1000> * 4,
            <gregtech:fluid_pipe_tiny:2> * 4,
            <gregtech:meta_rotor:323> * 2,
            <gregtech:meta_item_1:309> * 2
          ])
          .outputs(<advancedrocketry:pressuretank:1>)
          .EUt(256)
          .duration(1440)
          .buildAndRegister();
      //High
        assembler.recipeBuilder()
          .inputs([
            <advancedrocketry:pressuretank:1>,
            <gregtech:meta_plate_double:331> * 6,
            <gregtech:meta_ring:1000> * 4,
            <gregtech:fluid_pipe_tiny:323> * 8,
            <gregtech:meta_rotor:323> * 4,
            <gregtech:meta_item_1:309> * 6
          ])
          .fluidInputs(<liquid:steel> * 1440)
          .outputs(<advancedrocketry:pressuretank:2>)
          .EUt(480)
          .duration(1440)
          .buildAndRegister();
      //Super廃
        assembler.recipeBuilder()
          .inputs([
            <advancedrocketry:pressuretank:2>,
            <gregtech:meta_plate_dense:113> * 6,
            <gregtech:meta_ring:1000> * 16,
            <gregtech:fluid_pipe_tiny:113> * 6,
            <gregtech:meta_rotor:113> * 4,
            <gregtech:meta_item_1:309> * 12
          ])
          .fluidInputs(<liquid:steel> * 2880)
          .outputs(<advancedrocketry:pressuretank:3>)
          .EUt(1024)
          .duration(1440)
          .buildAndRegister();
    //Suit WorkStation
      mods.extendedcrafting.TableCrafting.addShaped(2, <advancedrocketry:suitworkstation>, [
        [<ore:plateAluminium>, <ore:plateAluminium>, <libvulpes:structuremachine>, <ore:plateAluminium>, <ore:plateAluminium>], 
        [<ore:plateAluminium>, <ore:circuitHv>, <gregtech:meta_item_1:189>, <ore:circuitHv>, <ore:plateAluminium>], 
        [<libvulpes:structuremachine>, <gregtech:meta_item_1:234>, <extendedcrafting:table_basic>, <gregtech:meta_item_1:159>, <libvulpes:structuremachine>], 
        [<ore:plateAluminium>, <ore:circuitHv>, <gregtech:meta_item_1:144>, <ore:circuitHv>, <ore:plateAluminium>], 
        [<ore:plateAluminium>, <ore:plateAluminium>, <libvulpes:structuremachine>, <ore:plateAluminium>, <ore:plateAluminium>]
      ]);
    //Gas Charge Pad
      assembler.recipeBuilder()
        .inputs([
          <enderio:block_tank>,
          <gregtech:meta_rotor:323> * 2,
          <gregtech:meta_item_1:129> * 2,
          <advancedrocketry:pressuretank:2>,
          <advancedrocketry:misc>,
          <gregtech:meta_plate:2> * 4
        ])
        .outputs(<advancedrocketry:oxygencharger>)
        .EUt(480)
        .duration(1600)
        .buildAndRegister();
    //Life Support System
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_block_frame_0:2>,
          <contenttweaker:spacesuitfabric> * 6,
          <advancedrocketry:pressuretank:2>,
          <gregtech:meta_item_1:144> * 2,
          <advancedrocketry:carbonscrubbercartridge> * 8,
          <ore:circuitEv> * 16,
          <gregtech:meta_item_1:503> * 8,
          <gregtech:meta_item_1:741> * 4,
          <advancedrocketry:misc> * 2
        ])
        .fluidInputs(<liquid:distilled_water> * 25600)
        .outputs(<contenttweaker:life_support_system>)
        .EUt(480)
        .duration(32000)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
    //Laser Gun
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_item_1:492> * 32,
          <ore:circuitLuv> * 4,
          <gregtech:meta_item_1:501> * 48,
          <gregtech:meta_item_1:282> * 4,
          <gregtech:meta_item_1:605> * 8,
          <gregtech:meta_laser:52>,
          <gregtech:meta_lens:1602> * 4
        ])
        .outputs(<advancedrocketry:basiclasergun>)
        .EUt(8000)
        .duration(1600)
        .buildAndRegister();
  //Satellites
    //Satellite Chassis
        mmRecipe("Satellite_Chassis", "Prototype_Assembling_Line", 2000) //RecipeName UseMachine RecipeTick
          .addEnergyPerTickInput(8192)//EnergyInput
          .addItemInput(<gregtech:meta_block_frame_7:1> * 4)//1
          .addItemInput(<advancedrocketry:ic:3> * 4)//2
          .addItemInput(<gregtech:meta_item_1:634> * 4)//3
          .addItemInput(<gregtech:meta_item_1:777> * 8)//4
          .addItemInput(<gregtech:meta_stick:113> * 24)//5
          .addItemInput(<gregtech:meta_item_1:235>)//6
          .addItemInput(<gregtech:meta_item_1:130> * 4)//7
          .addItemInput(<gregtech:meta_item_1:604> * 2)//8
          .addItemInput(<gregtech:meta_item_1:501> * 32)//9
          .addFluidInput(<liquid:soldering_alloy> * 5760)//1
          .addFluidInput(<liquid:electrum> * 2880)//2
          .addItemOutput(<advancedrocketry:satellite>)//OutPutItem
          .build();//BuildRecipe
    //Statellite Solar Panel
      //Basic
        mmRecipe("Statellite_Solar_Panel_Basic", "Prototype_Assembling_Line", 2000) //RecipeName UseMachine RecipeTick
          .addEnergyPerTickInput(8192)//EnergyInput
          .addItemInput(<gregtech:meta_stick:113> * 8)//1
          .addItemInput(<gregtech:meta_screw:113> * 12)//2
          .addItemInput(<gregtech:meta_item_1:501> * 16)//3
          .addItemInput(<gregtech:meta_item_1:603> * 2)//4
          .addItemInput(<gregtech:meta_item_1:331> * 16)//5
          .addItemInput(<advancedrocketry:ic:3> * 2)//6
          .addItemInput(<gregtech:meta_item_1:629> * 2)//7
          .addItemInput(<gregtech:wire_double:25> * 6)//8
          .addFluidInput(<liquid:soldering_alloy> * 1440)//1
          .addItemOutput(<advancedrocketry:satellitepowersource> * 2)//OutPutItem
          .build();//BuildRecipe
      //Advanced
        mmRecipe("Statellite_Solar_Panel_Advanced", "Prototype_Assembling_Line", 2000) //RecipeName UseMachine RecipeTick
          .addEnergyPerTickInput(8192)//EnergyInput
          .addItemInput(<gregtech:meta_stick_long:113> * 8)//1
          .addItemInput(<gregtech:meta_screw:113> * 16)//2
          .addItemInput(<advancedrocketry:satellitepowersource> * 6)//3
          .addItemInput(<gregtech:meta_item_1:332> * 8)//4
          .addItemInput(<gregtech:meta_item_1:604> * 2)//5
          .addItemInput(<gregtech:meta_item_1:501> * 16)//6
          .addItemInput(<advancedrocketry:ic:3> * 2)//7
          .addItemInput(<advancedrocketry:ic:3> * 2)//8
          .addItemInput(<gregtech:wire_double:32018> * 6)//9
          .addFluidInput(<liquid:soldering_alloy> * 5760)//1
          .addItemOutput(<advancedrocketry:satellitepowersource:1>)//OutPutItem
          .build();//BuildRecipe
    //Sensor and Others
      //Mass
        assembler.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:234> * 4,
            <ore:circuitEv> * 4,
            <advancedrocketry:ic:3> * 2,
            <advancedrocketry:ic:4> * 4,
            <advancedrocketry:ic:5> * 4
          ])
          .fluidInputs(<liquid:soldering_alloy> * 576)
          .outputs(<advancedrocketry:satelliteprimaryfunction:2>)
          .EUt(480)
          .duration(1000)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Composition
        assembler.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:234> * 4,
            <gregtech:meta_item_1:219> * 4,
            <ore:circuitHv> * 4,
            <advancedrocketry:ic:4> * 2,
            <advancedrocketry:ic:5> * 2
          ])
          .fluidInputs(<liquid:soldering_alloy> * 576)
          .outputs(<advancedrocketry:satelliteprimaryfunction:1>)
          .EUt(480)
          .duration(1000)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Optical
        assembler.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:234> * 4,
            <advancedrocketry:lens>,
            <gregtech:meta_item_1:403> * 4,
            <ore:circuitHv> * 4,
            <advancedrocketry:ic:3>
          ])
          .fluidInputs(<liquid:soldering_alloy> * 576)
          .outputs(<advancedrocketry:satelliteprimaryfunction>)
          .EUt(480)
          .duration(1000)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //Micro Wave Transmitter
        assembler.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:220> * 8,
            <gregtech:meta_item_1:219> * 32,
            <gregtech:meta_item_1:218> * 64,
            <gregtech:meta_item_1:604> * 64,
            <gregtech:meta_item_1:604> * 64,
            <ore:circuitIv> * 16,
            <gregtech:meta_item_1:492> * 32,
            <gregtech:meta_item_1:205> * 8,
            <advancedrocketry:ic:3> * 48
          ])
          .outputs(<advancedrocketry:satelliteprimaryfunction:3>)
          .EUt(2048)
          .duration(20000)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
    //Satellite Terminal
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:advstructuremachine>,
          <advancedrocketry:satelliteprimaryfunction> * 4,
          <advancedrocketry:misc> * 2,
          <gregtech:meta_item_1:235> * 4,
          <gregtech:meta_item_1:220> * 4,
          <gregtech:meta_item_1:503> * 16,
          <ore:circuitIv> * 12,
          <advancedrocketry:ic:3> * 4
        ])
        .outputs(<advancedrocketry:satellitecontrolcenter>)
        .EUt(1024)
        .duration(800)
        .buildAndRegister();
    //Satellite Builder
      assembler.recipeBuilder()
        .inputs([
          <gregtech:machine:113>,
          <gregtech:meta_item_1:190> * 2,
          <gregtech:meta_item_1:219> * 4,
          <gregtech:meta_item_1:235> * 2,
          <advancedrocketry:sawblade> * 4,
          <minecraft:anvil> * 4,
          <ore:circuitIv> * 16,
          <advancedrocketry:ic:3> * 8
        ])
        .outputs(<advancedrocketry:satellitebuilder>)
        .EUt(2000)
        .duration(1200)
        .buildAndRegister();
  //Circuits And Chips
    //Circuit
      //Circuit Boad
        //Controll
          cir_ass.recipeBuilder()
            .inputs([
              <advancedrocketry:ic:2>,
              <gregtech:meta_item_1:591> * 4,
              <gregtech:meta_item_1:597> * 4,
              <gregtech:meta_item_1:523> * 8,
              <gregtech:meta_item_1:526> * 4,
              <gregtech:meta_wire_fine:277> * 8
            ])
            .fluidInputs(<liquid:soldering_alloy> * 576)
            .outputs(<advancedrocketry:ic:3>)
            .EUt(256)
            .duration(600)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
        //Item
          cir_ass.recipeBuilder()
            .inputs([
              <advancedrocketry:ic>,
              <gregtech:meta_item_1:591> * 4,
              <gregtech:meta_item_1:593> * 4,
              <gregtech:meta_item_1:523> * 8,
              <gregtech:meta_item_1:526> * 4,
              <gregtech:meta_wire_fine:277> * 8
            ])
            .fluidInputs(<liquid:soldering_alloy> * 576)
            .outputs(<advancedrocketry:ic:4>)
            .EUt(256)
            .duration(400)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
        //Fluid
          cir_ass.recipeBuilder()
            .inputs([
              <advancedrocketry:ic>,
              <gregtech:meta_item_1:591> * 4,
              <gregtech:meta_item_1:592> * 8,
              <gregtech:meta_item_1:523> * 8,
              <gregtech:meta_item_1:526> * 4,
              <gregtech:meta_wire_fine:277> * 8
            ])
            .fluidInputs(<liquid:soldering_alloy> * 576)
            .outputs(<advancedrocketry:ic:5>)
            .EUt(256)
            .duration(400)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
      //Circuits
        //Basic
          cir_ass.recipeBuilder()
            .inputs([
              <gregtech:meta_item_1:403>,
              <advancedrocketry:itemcircuitplate> * 2,
              <gregtech:meta_item_1:523> * 16,
              <gregtech:meta_item_1:524> * 16,
              <gregtech:meta_item_1:526> * 16,
              <gregtech:meta_wire_fine:277> * 4
            ])
            .fluidInputs(<liquid:soldering_alloy> * 576)
            .outputs(<advancedrocketry:ic>)
            .EUt(360)
            .duration(800)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
        //Advanced
          cir_ass.recipeBuilder()
            .inputs([
              <gregtech:meta_item_1:404>,
              <advancedrocketry:ic> * 2,
              <gregtech:meta_item_1:597>,
              <advancedrocketry:itemcircuitplate:1> * 2,
              <gregtech:meta_item_1:523> * 24,
              <gregtech:meta_wire_fine:277> * 8
            ])
            .fluidInputs(<liquid:soldering_alloy> * 576)
            .outputs(<advancedrocketry:ic:2>)
            .EUt(480)
            .duration(720)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
      //Wafer
        //Silicon Wafer
          forming_press.recipeBuilder()
            .inputs([
              <gregtech:meta_item_1:371>,
              <gregtech:meta_foil:25> * 8,
              <gregtech:meta_wire_fine:277> * 4
            ])
            .outputs(<advancedrocketry:wafer>)
            .EUt(120)
            .duration(240)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
        //Basic Circuit Plate
          forming_press.recipeBuilder()
            .inputs([
              <advancedrocketry:wafer>,
              <ore:circuitLv> * 2,
              <gregtech:meta_foil:252> * 4,
              <gregtech:meta_wire_fine:277> * 6
            ])
            .outputs(<advancedrocketry:itemcircuitplate>)
            .EUt(240)
            .duration(400)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
        //Advanced Circuit Plate
          forming_press.recipeBuilder()
            .inputs([
              <advancedrocketry:wafer>,
              <ore:circuitMv> * 2,
              <gregtech:meta_foil:277> * 4,
              <gregtech:meta_wire_fine:277> * 8
            ])
            .outputs(<advancedrocketry:itemcircuitplate:1>)
            .EUt(480)
            .duration(600)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
    //Chips
      //Satellite ID Chip
          cir_ass.recipeBuilder()
            .inputs([
              <gregtech:meta_item_1:404>,
              <advancedrocketry:ic:3> * 3,
              <gregtech:meta_item_1:261> * 2,
              <ore:circuitHv> * 2,
              <advancedrocketry:dataunit>,
              <gregtech:meta_wire_fine:277> * 8
            ])
            .fluidInputs(<liquid:soldering_alloy> * 576)
            .outputs(<advancedrocketry:satelliteidchip>)
            .EUt(480)
            .duration(1600)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
      //Tracking Circuit
          cir_ass.recipeBuilder()
            .inputs([
              <gregtech:meta_item_1:404> * 2,
              <gregtech:meta_item_1:219>,
              <gregtech:meta_item_1:234>,
              <ore:circuitEv> * 2,
              <advancedrocketry:ic:3> * 4,
              <gregtech:meta_wire_fine:277> * 16
            ])
            .fluidInputs(<liquid:soldering_alloy> * 576)
            .outputs(<advancedrocketry:ic:1>)
            .EUt(480)
            .duration(1600)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
      //Asteroid Chip
          cir_ass.recipeBuilder()
            .inputs([
              <gregtech:meta_item_1:404>,
              <advancedrocketry:ic:3>,
              <gregtech:meta_item_1:261> * 2,
              <advancedrocketry:ic:1>,
              <advancedrocketry:dataunit>,
              <gregtech:meta_wire_fine:277> * 8
            ])
            .fluidInputs(<liquid:soldering_alloy> * 576)
            .outputs(<advancedrocketry:asteroidchip>)
            .EUt(480)
            .duration(1600)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
      //Space Elevator Chip
          cir_ass.recipeBuilder()
            .inputs([
              <gregtech:meta_item_1:404>,
              <advancedrocketry:ic:3>,
              <gregtech:meta_item_1:591>,
              <advancedrocketry:ic:1>,
              <advancedrocketry:spacestationchip>,
              <gregtech:meta_wire_fine:277> * 8
            ])
            .fluidInputs(<liquid:soldering_alloy> * 576)
            .outputs(<advancedrocketry:elevatorchip>)
            .EUt(480)
            .duration(1600)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
      //Planet ID Chip
          cir_ass.recipeBuilder()
            .inputs([
              <advancedrocketry:ic:2>,
              <advancedrocketry:ic:3> * 4,
              <gregtech:meta_item_1:261> * 4,
              <ore:circuitHv> * 4,
              <ore:circuitEv> * 2
            ])
            .fluidInputs(<liquid:soldering_alloy> * 576)
            .outputs(<advancedrocketry:planetidchip>)
            .EUt(480)
            .duration(3200)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
      //Space Station ID Chip
          cir_ass.recipeBuilder()
            .inputs([
              <gregtech:meta_item_1:405> * 2,
              <gregtech:meta_item_1:261> * 8,
              <ore:circuitEv> * 4,
              <advancedrocketry:dataunit>,
              <advancedrocketry:dataunit>,
              <advancedrocketry:dataunit>
            ])
            .fluidInputs(<liquid:soldering_alloy> * 576)
            .outputs(<advancedrocketry:spacestationchip>)
            .EUt(480)
            .duration(3200)
            .property("cleanroom", "cleanroom")
            .buildAndRegister();
    //Data Storage Unit
      cir_ass.recipeBuilder()
        .inputs([
          <gregtech:meta_item_1:403>,
          <gregtech:meta_item_1:261> * 6,
          <gregtech:meta_item_1:523> * 4,
          <gregtech:meta_item_1:525> * 4,
          <advancedrocketry:ic>,
          <gregtech:meta_wire_fine:277> * 4
        ])
        .fluidInputs(<liquid:soldering_alloy> * 576)
        .outputs(<advancedrocketry:dataunit>)
        .EUt(320)
        .duration(1200)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
  
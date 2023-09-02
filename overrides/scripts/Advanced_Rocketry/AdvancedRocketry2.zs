
#priority 100

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
//ADD Recipe
  //Machines
    //Beacon
      mods.extendedcrafting.TableCrafting.addShaped(2, <advancedrocketry:beacon>, [
        [<ore:circuitIv>, <gregtech:meta_item_1:219>, <gregtech:meta_item_1:234>, <gregtech:meta_item_1:219>, <ore:circuitIv>], 
        [<gregtech:meta_item_1:219>, <libvulpes:structuremachine>, <minecraft:beacon>, <libvulpes:structuremachine>, <gregtech:meta_item_1:219>], 
        [<gregtech:meta_item_1:234>, <minecraft:beacon>, <gregtech:meta_item_1:282>, <minecraft:beacon>, <gregtech:meta_item_1:234>], 
        [<gregtech:meta_item_1:219>, <libvulpes:structuremachine>, <minecraft:beacon>, <libvulpes:structuremachine>, <gregtech:meta_item_1:219>], 
        [<ore:circuitIv>, <gregtech:meta_item_1:219>, <gregtech:meta_item_1:234>, <gregtech:meta_item_1:219>, <ore:circuitIv>]
      ]);
    //Precision Assembler
      assembler.recipeBuilder()
        .inputs([
          <gregtech:machine:112> * 2,
          <gregtech:machine:637> * 2,
          <gregtech:meta_item_1:219> * 2,
          <gregtech:meta_item_1:234> * 2,
          <gregtech:meta_item_1:159> * 2,
          <gregtech:meta_item_1:189> * 2,
          <gregtech:transparent_casing:3> * 8,
          <gregtech:cleanroom_casing> * 8,
          <gregtech:cleanroom_casing:1> * 8
        ])
        .outputs(<advancedrocketry:precisionassemblingmachine>)
        .EUt(480)
        .duration(800)
        .buildAndRegister();
    //Space Elevator
      assembler.recipeBuilder()
        .inputs([
          <advancedrocketry:launchpad> * 32,
          <libvulpes:structuremachine> * 32,
          <gregtech:meta_item_1:129> * 32,
          <gregtech:meta_item_1:501> * 64,
          <gregtech:wire_quadruple:324> * 64,
          <gregtech:wire_quadruple:324> * 64,
          <ore:circuitIv> * 10,
          <gregtech:meta_item_1:234> * 8,
          <gregtech:meta_item_1:219> * 8
        ])
        .outputs(<advancedrocketry:spaceelevatorcontroller>)
        .EUt(480)
        .duration(960)
        .buildAndRegister();
    //Obital Laser Drill
        assembler.recipeBuilder()
        .inputs([
          <libvulpes:structuremachine> * 4,
          <cyclicmagic:laser> * 16,
          <ore:circuitIv> * 4,
          <gregtech:meta_item_1:220> * 4,
          <gregtech:meta_item_1:99> * 8,
          <gregtech:meta_item_1:492> * 4,
          <advancedrocketry:satelliteprimaryfunction> * 4,
          <gregtech:meta_lens:1602> * 8
        ])
        .outputs(<advancedrocketry:spacelaser>)
        .EUt(1280)
        .duration(1600)
        .buildAndRegister();
  //Components
    //Iron Saw Blade
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_tool_head_buzz_saw:324> * 2,
          <gregtech:meta_screw:324> * 4,
          <gregtech:meta_plate:324> * 4,
          <gregtech:meta_ring:324> * 2,
          <gregtech:meta_gear_small:324> * 6,
          <gregtech:meta_wire_fine:324> * 4
        ])
        .fluidInputs(<liquid:steel> * 576)
        .outputs(<advancedrocketry:sawbladeiron>)
        .EUt(120)
        .duration(720)
        .buildAndRegister();
    //Steel Fan
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_ring:324> * 2,
          <gregtech:meta_rotor:324>,
          <gregtech:meta_turbine_blade:324> * 4,
          <gregtech:meta_plate:324> * 4
        ])
        .fluidInputs(<liquid:steel> * 288)
        .outputs(<libvulpes:productfan:6>)
        .EUt(120)
        .duration(180)
        .buildAndRegister();
    //Fiber-Reinforced Concrete
      chem_bath.recipeBuilder()
        .inputs(<gregtech:meta_item_1:499>)
        .outputs(<contenttweaker:fiber_reinforced_concrete> * 4)
        .fluidInputs(<liquid:concrete> * 1000)
        .EUt(160)
        .duration(120)
        .buildAndRegister();
    //Reinforced Concrete
      chem_reactor.recipeBuilder()
          .inputs([
            <contenttweaker:fiber_reinforced_concrete>,
            <gregtech:meta_stick:324> * 2
          ])
          .fluidInputs([
            <liquid:concrete>
          ])
          .outputs([
            <contenttweaker:reinforced_concrete>
          ])
          .EUt(240)
          .duration(200)
          .buildAndRegister();
    //Lens
      laser_engraver.recipeBuilder()
        .inputs([<gregtech:meta_gem_exquisite:2000>])
        .notConsumable(<gregtech:meta_lens:1602>)
        .outputs(<advancedrocketry:lens>)
        .EUt(480)
        .duration(160)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
    //Saw Assembly
      assembler.recipeBuilder()
        .inputs([
          <advancedrocketry:sawbladeiron> * 2,
          <gregtech:meta_item_1:129> * 2,
          <gregtech:meta_plate:324> * 4,
          <gregtech:meta_ring:324> * 4,
          <gregtech:meta_screw:324> * 4,
          <gregtech:meta_stick:324>
        ])
        .outputs(<advancedrocketry:sawblade>)
        .EUt(320)
        .duration(160)
        .buildAndRegister();
    //GUI
      assembler.recipeBuilder()
        .inputs([
          <minecraft:glass_pane> * 2,
          <gregtech:meta_item_1:307> * 4,
          <opencomputers:keyboard>,
          <ore:circuitHv> * 2,
          <gregtech:meta_item_1:592> * 8,
          <gregtech:meta_wire_fine:277> * 4
        ])
        .outputs(<advancedrocketry:misc> * 2)
        .EUt(80)
        .duration(160)
        .buildAndRegister();
  //Solar Generators
    //Solar Panel
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:structuremachine>,
          <gregtech:meta_item_1:331> * 2,
          <gregtech:meta_item_1:233>,
          <gregtech:meta_item_1:98> * 2,
          <gregtech:meta_item_1:501> * 4,
          <gregtech:meta_item_1:602> * 2
        ])
        .outputs(<advancedrocketry:solarpanel>)
        .EUt(120)
        .duration(160)
        .buildAndRegister();
    //Solar Generator
      assembler.recipeBuilder()
        .inputs([
          <advancedrocketry:solarpanel>,
          <gregtech:meta_item_1:527> * 4,
          <ore:circuitMv> * 2,
          <minecraft:glass_pane>
        ])
        .outputs(<advancedrocketry:solargenerator>)
        .EUt(120)
        .duration(160)
        .buildAndRegister();
    //Solar Array Panel
      forming_press.recipeBuilder()
        .inputs([
          <gregtech:meta_item_1:404> * 2,
          <gregtech:meta_item_1:603> * 4,
          <enderio:item_material:3> * 4,
          <gregtech:meta_item_1:527> * 4,
          <gregtech:meta_wire_fine:277> * 8,
          <gregtech:meta_plate:2> * 8
        ])
        .outputs(<advancedrocketry:solararraypanel>)
        .EUt(320)
        .duration(600)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
    //Solar Array Controller
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:structuremachine> * 2,
          <advancedrocketry:solararraypanel> * 4,
          <gregtech:meta_item_1:99> * 12,
          <gregtech:meta_item_1:527> * 32,
          <ore:circuitEv> * 2,
          <gregtech:meta_item_1:604> * 8,
          <gregtech:cable_octal:252> * 8
        ])
        .outputs(<advancedrocketry:solararray>)
        .EUt(1920)
        .duration(840)
        .buildAndRegister();
    //Micro Wave Receiver
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:advstructuremachine> * 4,
          <advancedrocketry:solarpanel> * 64,
          <gregtech:meta_item_1:235> * 64,
          <gregtech:meta_item_1:605> * 48,
          <gregtech:meta_item_1:492> * 64,
          <gregtech:meta_item_1:101> * 16,
          <ore:circuitLuv> * 16,
          <gregtech:meta_item_1:748> * 4,
          <gregtech:meta_item_1:532> * 16
        ])
        .outputs(<advancedrocketry:microwavereciever>)
        .EUt(8000)
        .duration(6000)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
  //観測機器
    //Astrobody Data Processor
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:advstructuremachine>,
          <ore:circuitLuv> * 4,
          <ore:circuitIv> * 16,
          <ore:circuitEv> * 32,
          <ore:circuitHv> * 64,
          <gregtech:meta_item_1:262> * 4,
          <gregtech:meta_item_1:261> * 16,
          <advancedrocketry:misc> * 16,
          <advancedrocketry:ic:3> * 16
        ])
        .outputs(<advancedrocketry:planetanalyser>)
        .EUt(1920)
        .duration(480)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
    //Observatory
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:advstructuremachine> * 8,
          <astralsorcery:blockobservatory>,
          <astralsorcery:itemcraftingcomponent:4> * 8,
          <advancedrocketry:blocklens> * 8,
          <advancedrocketry:satelliteprimaryfunction:1> * 2,
          <advancedrocketry:satelliteprimaryfunction> * 4,
          <ore:circuitIv> * 4,
          <gregtech:meta_lens:1602> * 4,
          <advancedrocketry:ic:3> * 8
        ])
        .fluidInputs(<liquid:borosilicate_glass> * 1152)
        .outputs(<advancedrocketry:observatory>)
        .EUt(1920)
        .duration(1080)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
    //Data Bus
      mods.extendedcrafting.TableCrafting.addShaped(1, <advancedrocketry:loader>, [
        [<enderio:item_data_conduit>, <gregtech:meta_item_1:261>, <enderio:item_data_conduit>], 
        [<gregtech:meta_item_1:261>, <libvulpes:structuremachine>, <gregtech:meta_item_1:261>], 
        [<enderio:item_data_conduit>, <gregtech:meta_item_1:261>, <enderio:item_data_conduit>]
      ]);
    //Wireless Data Transmitter
      mods.extendedcrafting.TableCrafting.addShaped(1, <advancedrocketry:wirelesstransciever> * 2, [
        [<gregtech:meta_item_1:503>, <gregtech:meta_item_1:219>, <gregtech:meta_item_1:503>], 
        [<gregtech:meta_item_1:219>, <libvulpes:structuremachine>, <gregtech:meta_item_1:219>], 
        [<gregtech:meta_item_1:503>, <gregtech:meta_item_1:219>, <gregtech:meta_item_1:503>]
      ]);
  //Multi Block Machine Part
    //Input Hatch
      mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:hatch>, [
        [null, <gregtech:meta_item_1:158>, null], 
        [<advancedrocketry:ic:4>, <libvulpes:structuremachine>, <ore:circuitHv>], 
        [null, <gregtech:meta_item_1:158>, null]
      ]);
    //Output Hatch 
      mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:hatch:1>, [
        [null, <ore:circuitHv>, null], 
        [<gregtech:meta_item_1:158>, <libvulpes:structuremachine>, <gregtech:meta_item_1:158>], 
        [null, <advancedrocketry:ic:4>, null]
      ]);
    //Fluid Inputs Hatch
      mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:hatch:2>, [
        [null, <gregtech:meta_item_1:143>, null], 
        [<advancedrocketry:ic:5>, <libvulpes:structuremachine>, <ore:circuitHv>], 
        [null, <gregtech:meta_item_1:143>, null]
      ]);
    //Fluid Output Hatch
      mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:hatch:3>, [
        [null, <ore:circuitHv>, null], 
        [<gregtech:meta_item_1:143>, <libvulpes:structuremachine>, <gregtech:meta_item_1:143>], 
        [null, <advancedrocketry:ic:5>, null]
      ]);
    //Power Inputs Hatch 
      mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:forgepowerinput>, [
        [<gregtech:meta_item_1:603>, <ore:circuitHv>, <gregtech:meta_item_1:603>], 
        [<advancedrocketry:ic:3>, <libvulpes:structuremachine>, <advancedrocketry:ic:3>], 
        [<gregtech:meta_item_1:603>, <gregtech:meta_item_1:740>, <gregtech:meta_item_1:603>]
      ]);
    //Power Outputs Hatch
      mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:forgepoweroutput>, [
        [<gregtech:meta_item_1:603>, <advancedrocketry:ic:3>, <gregtech:meta_item_1:603>], 
        [<gregtech:meta_item_1:740>, <libvulpes:structuremachine>, <ore:circuitHv>], 
        [<gregtech:meta_item_1:603>, <advancedrocketry:ic:3>, <gregtech:meta_item_1:603>]
      ]);
    //Machine Casing
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_block_frame_20:3>,
          <gregtech:meta_stick:323> * 4,
          <gregtech:meta_stick:2> * 4,
          <gregtech:meta_plate:323> * 4,
          <gregtech:meta_plate:2> * 8,
          <gregtech:meta_wire_fine:277> * 8,
          <gregtech:meta_item_1:403> * 4,
          <ore:circuitLv> * 2,
          <ore:circuitUlv> * 8
        ])
        .fluidInputs(<liquid:soldering_alloy> * 576)
        .outputs(<libvulpes:structuremachine>)
        .EUt(480)
        .duration(1200)
        .buildAndRegister();
    //Advanced Machine Casing
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:structuremachine>,
          <gregtech:meta_stick:113> * 8,
          <gregtech:meta_plate:113> * 12,
          <gregtech:meta_screw:113> * 16,
          <gregtech:meta_wire_fine:80> * 8,
          <advancedrocketry:ic:3> * 4,
          <gregtech:meta_item_1:405> * 4,
          <ore:circuitEv> * 4,
          <ore:circuitHv> * 8
        ])
        .fluidInputs(<liquid:soldering_alloy> * 2880)
        .outputs(<libvulpes:advstructuremachine>)
        .EUt(720)
        .duration(1440)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
    //Battery Nomal
      mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:battery>, [
        [<gregtech:meta_item_1:735>, <ore:plateCopper>, <gregtech:meta_item_1:735>], 
        [<ore:wireGtDoubleCopper>, <gregtech:meta_item_1:602>, <ore:wireGtDoubleCopper>], 
        [<gregtech:meta_item_1:735>, <ore:plateCopper>, <gregtech:meta_item_1:735>]
      ]);
    //Battery Advanced
      assembler.recipeBuilder()
        .inputs([
          <libvulpes:battery> * 4,
          <gregtech:wire_quadruple:252> * 4,
          <gregtech:meta_plate:252> * 8
        ])
        .fluidInputs(<liquid:soldering_alloy> * 288)
        .outputs(<libvulpes:battery:1>)
        .EUt(120)
        .duration(160)
        .buildAndRegister();
    //Motor basic
      mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:motor>, [
        [<ore:plateDoubleSteel>, <gregtech:meta_item_1:97>, <ore:stickBlackSteel>], 
        [<gregtech:meta_item_1:97>, <ore:stickBlackSteel>, <gregtech:meta_item_1:97>], 
        [<gregtech:meta_item_1:127>, <gregtech:meta_item_1:97>, <ore:plateDoubleSteel>]
      ]);
    //Motrr Advanced 
      mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:advancedmotor>, [
        [<ore:plateDoubleAluminium>, <gregtech:meta_item_1:98>, <ore:stickAluminium>], 
        [<gregtech:meta_item_1:98>, <ore:stickAluminium>, <gregtech:meta_item_1:98>], 
        [<gregtech:meta_item_1:128>, <gregtech:meta_item_1:98>, <ore:plateDoubleAluminium>]
      ]);
    //Motor Enhanced
      mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:enhancedmotor>, [
        [<ore:plateDoubleStainlessSteel>, <gregtech:meta_item_1:99>, <ore:stickStainlessSteel>], 
        [<gregtech:meta_item_1:99>, <ore:stickStainlessSteel>, <gregtech:meta_item_1:99>], 
        [<gregtech:meta_item_1:129>, <gregtech:meta_item_1:99>, <ore:plateDoubleStainlessSteel>]
      ]);
    //Motor Elite
      mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:elitemotor>, [
        [<ore:plateDoubleTitanium>, <gregtech:meta_item_1:100>, <ore:stickTitanium>], 
        [<gregtech:meta_item_1:100>, <ore:stickTitanium>, <gregtech:meta_item_1:100>], 
        [<gregtech:meta_item_1:130>, <gregtech:meta_item_1:100>, <ore:plateDoubleTitanium>]
      ]);
    //Horogram Projector
      mods.extendedcrafting.TableCrafting.addShaped(1, <libvulpes:holoprojector>, [
        [<ore:plateAluminium>, <ore:itemLens>, <ore:plateAluminium>], 
        [<ore:circuitHv>, <ore:craftingLensLightBlue>, <ore:circuitHv>], 
        [<ore:plateAluminium>, <gregtech:meta_item_1:219>, <ore:plateAluminium>]
      ]);
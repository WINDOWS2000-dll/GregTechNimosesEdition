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

print("------APPLIED_ENERGESTICS_LOADING_START------");

//recipes remove
  var array1 = [<appliedenergistics2:material:58>,<appliedenergistics2:part:222>,<appliedenergistics2:part:521>,<appliedenergistics2:part:341>,<appliedenergistics2:nether_quartz_wrench>,<appliedenergistics2:certus_quartz_wrench>,<appliedenergistics2:wireless_access_point>,<appliedenergistics2:charger>,<appliedenergistics2:quantum_link>,<appliedenergistics2:security_station>,<appliedenergistics2:quantum_ring>,<appliedenergistics2:spatial_pylon>,<appliedenergistics2:spatial_io_port>,<appliedenergistics2:controller>,<appliedenergistics2:drive>,<appliedenergistics2:chest>,<appliedenergistics2:vibration_chamber>,<appliedenergistics2:quartz_growth_accelerator>,<appliedenergistics2:interface>,<appliedenergistics2:cell_workbench>,<appliedenergistics2:energy_cell>,<appliedenergistics2:dense_energy_cell>,<appliedenergistics2:crafting_unit>,<appliedenergistics2:crafting_unit>,<appliedenergistics2:condenser>,<appliedenergistics2:energy_acceptor>,<appliedenergistics2:io_port>,<appliedenergistics2:fluid_interface>,<appliedenergistics2:crafting_storage_1k>,<appliedenergistics2:crafting_storage_4k>,<appliedenergistics2:crafting_storage_16k>,<appliedenergistics2:crafting_storage_64k>,<appliedenergistics2:crafting_accelerator>,<appliedenergistics2:crafting_monitor>,<appliedenergistics2:molecular_assembler>,<appliedenergistics2:entropy_manipulator>,<appliedenergistics2:wireless_terminal>,<appliedenergistics2:charged_staff>,<appliedenergistics2:matter_cannon>,<appliedenergistics2:portable_cell>,<appliedenergistics2:color_applicator>,<appliedenergistics2:biometric_card>,<appliedenergistics2:memory_card>,<appliedenergistics2:network_tool>,<appliedenergistics2:storage_cell_1k>,<appliedenergistics2:storage_cell_4k>,<appliedenergistics2:storage_cell_16k>,<appliedenergistics2:storage_cell_64k>,<appliedenergistics2:fluid_storage_cell_1k>,<appliedenergistics2:fluid_storage_cell_4k>,<appliedenergistics2:fluid_storage_cell_16k>,<appliedenergistics2:fluid_storage_cell_64k>,<appliedenergistics2:spatial_storage_cell_2_cubed>,<appliedenergistics2:spatial_storage_cell_16_cubed>,<appliedenergistics2:spatial_storage_cell_128_cubed>,<appliedenergistics2:material:28>,<appliedenergistics2:material:44>,<appliedenergistics2:material:25>,<appliedenergistics2:material:26>,<appliedenergistics2:material:52>,<appliedenergistics2:material:27>,<appliedenergistics2:material:53>,<appliedenergistics2:material:34>,<appliedenergistics2:material:37>,<appliedenergistics2:material:33>,<appliedenergistics2:material:35>,<appliedenergistics2:material:32>,<appliedenergistics2:material:36>,<appliedenergistics2:material:38>,<appliedenergistics2:material:1>,<appliedenergistics2:material:39>,<appliedenergistics2:material:56>,<appliedenergistics2:material:54>,<appliedenergistics2:material:57>,<appliedenergistics2:material:7>,<appliedenergistics2:material:43>,<appliedenergistics2:material:10>,<appliedenergistics2:material:12>,<appliedenergistics2:material:11>,<appliedenergistics2:material:41>,<appliedenergistics2:material:42>,<appliedenergistics2:part:36>,<appliedenergistics2:part:516>,<appliedenergistics2:part:56>,<appliedenergistics2:material:55>,<appliedenergistics2:part:76>,<appliedenergistics2:part:16>,<appliedenergistics2:part:420>,<appliedenergistics2:part:360>,<appliedenergistics2:part:260>,<appliedenergistics2:part:261>,<appliedenergistics2:part:241>,<appliedenergistics2:part:441>,<appliedenergistics2:part:221>,<appliedenergistics2:part:240>,<appliedenergistics2:part:440>,<appliedenergistics2:part:480>,<appliedenergistics2:part:100>,<appliedenergistics2:part:280>,<appliedenergistics2:part:460>,<appliedenergistics2:part:340>,<appliedenergistics2:part:140>,<appliedenergistics2:part:180>,<appliedenergistics2:part:220>,<appliedenergistics2:part:400>,<appliedenergistics2:part:380>,<appliedenergistics2:part:80>,<appliedenergistics2:part:120>] as IItemStack[];

  for i in array1 {
      recipes.remove(i);
  }

//ADD Recipes
  //ME Storage Main
    //ME Controller
    mmRecipe("MEController", "Prototype_Assembling_Line", 600)
      .addEnergyPerTickInput(24576)
      .addItemInput(<gregtech:machine:989> * 4)
      .addItemInput(<threng:material:4> * 16)
      .addItemInput(<draconicevolution:draconic_core> * 2)
      .addItemInput(<extendedcrafting:material:10> * 1)
      .addItemInput(<gregtech:meta_item_1:205> * 1)
      .addItemInput(<gregtech:meta_item_1:235> * 2)
      .addItemInput(<gregtech:meta_item_1:220> * 2)
      .addItemInput(<gregtech:meta_item_1:634> * 4)
      .addItemInput(<threng:material:14> * 1)
      .addItemInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]}) * 16)
      .addFluidInput(<liquid:soldering_alloy> * 10000)
      .addFluidInput(<liquid:polytetrafluoroethylene> * 6000)
      .addFluidInput(<liquid:crystal_matrix> * 576)
      .addFluidInput(<liquid:radon> * 2000)
      .addItemOutput(<appliedenergistics2:controller> * 4)
      .build();
  //ルートチェストは消しました
    //金型's
      //ダイヤ回路金型
        laser_engraver.recipeBuilder()
        .inputs(<gregtech:meta_block_compressed_0:2> * 12)
        .notConsumable(<gregtech:meta_lens:276>)
        .outputs(<appliedenergistics2:material:14>)
        .EUt(480)
        .duration(200)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
      //結晶回路金型
        laser_engraver.recipeBuilder()
          .inputs(<gregtech:meta_block_compressed_0:2> * 12)
          .notConsumable(<gregtech:meta_lens:278>)
          .outputs(<appliedenergistics2:material:13>)
          .EUt(480)
          .duration(200)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //シリコン回路金型
        laser_engraver.recipeBuilder()
          .inputs(<gregtech:meta_block_compressed_0:2> * 12)
          .notConsumable(<gregtech:meta_lens:311>)
          .outputs(<appliedenergistics2:material:19>)
          .EUt(480)
          .duration(200)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //金回路金型
        laser_engraver.recipeBuilder()
          .inputs(<gregtech:meta_block_compressed_0:2> * 12)
          .notConsumable(<gregtech:meta_lens:314>)
          .outputs(<appliedenergistics2:material:15>)
          .EUt(480)
          .duration(200)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //ネットワーク制御回路金型
        laser_engraver.recipeBuilder()
          .inputs(<gregtech:meta_block_compressed_0:2> * 12)
          .notConsumable(<contenttweaker:lens_uvarovite>)
          .outputs(<contenttweaker:material_network_processor_press>)
          .EUt(480)
          .duration(200)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //流体演算回路金型
        laser_engraver.recipeBuilder()
          .inputs(<gregtech:meta_block_compressed_0:2> * 12)
          .notConsumable(<contenttweaker:lens_lazurite>)
          .outputs(<contenttweaker:material_fluid_processor_press>)
          .EUt(480)
          .duration(200)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
    //回路's
      //ダイヤ回路
        forming_press.recipeBuilder()
          .notConsumable(<appliedenergistics2:material:14>)
          .inputs([<gregtech:meta_plate:276> * 4, <gregtech:meta_wire_fine:2517> * 8, <gregtech:meta_item_1:403> * 2])
          .outputs(<appliedenergistics2:material:17> * 4)
          .EUt(420)
          .duration(360)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //結晶回路
        forming_press.recipeBuilder()
          .notConsumable(<appliedenergistics2:material:13>)
          .inputs([<appliedenergistics2:material:10> * 4, <gregtech:meta_wire_fine:2517> * 8, <gregtech:meta_item_1:403> * 2])
          .outputs(<appliedenergistics2:material:16> * 4)
          .EUt(420)
          .duration(360)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //シリコン回路
        forming_press.recipeBuilder()
          .notConsumable(<appliedenergistics2:material:19>)
          .inputs([<gregtech:meta_plate:99> * 4, <gregtech:meta_wire_fine:2517> * 8, <gregtech:meta_item_1:593> * 4, <gregtech:meta_item_1:403> * 2])
          .outputs(<appliedenergistics2:material:20> * 4)
          .EUt(420)
          .duration(360)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //金回路
        forming_press.recipeBuilder()
          .notConsumable(<appliedenergistics2:material:15>)
          .inputs([<gregtech:meta_plate:301> * 4, <gregtech:meta_wire_fine:2517> * 8, <gregtech:meta_item_1:403> * 2])
          .outputs(<appliedenergistics2:material:18> * 4)
          .EUt(420)
          .duration(360)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //ロジック回路
        forming_press.recipeBuilder()
          .inputs([<appliedenergistics2:material:18> * 4, <ore:circuitEv> * 4, <gregtech:meta_item_1:592> * 8, <appliedenergistics2:material:20> * 4, <gregtech:meta_item_1:403> * 1, <gregtech:meta_wire_fine:41> * 12])
          .outputs(<appliedenergistics2:material:22> * 2)
          .EUt(500)
          .duration(400)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //演算回路
        forming_press.recipeBuilder()
          .inputs([<appliedenergistics2:material:16> * 4, <ore:circuitEv> * 4, <gregtech:meta_item_1:601> * 8, <appliedenergistics2:material:20> * 4, <gregtech:meta_item_1:403> * 1, <gregtech:meta_wire_fine:41> * 12])
          .outputs(<appliedenergistics2:material:23> * 2)
          .EUt(500)
          .duration(400)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //エンジニアリング回路
        forming_press.recipeBuilder()
          .inputs([<appliedenergistics2:material:17> * 4, <ore:circuitEv> * 4, <gregtech:meta_item_1:600> * 8, <appliedenergistics2:material:20> * 4, <gregtech:meta_item_1:403> * 1, <gregtech:meta_wire_fine:41> * 12])
          .outputs(<appliedenergistics2:material:24> * 2)
          .EUt(500)
          .duration(400)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //ネットワーク回路基盤
        forming_press.recipeBuilder()
          .notConsumable(<contenttweaker:material_network_processor_press>)
          .inputs([
            <gregtech:meta_plate:2004> * 4,
            <gregtech:meta_wire_fine:2517> * 8,
            <gregtech:meta_item_1:403> * 2
          ])
          .outputs(<contenttweaker:material_network_processor_print> * 4)
          .EUt(420)
          .duration(360)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //流体演算回路基盤
        forming_press.recipeBuilder()
          .notConsumable(<contenttweaker:material_fluid_processor_press>)
          .inputs([
            <gregtech:meta_plate:289> * 4,
            <gregtech:meta_wire_fine:2517> * 8,
            <gregtech:meta_item_1:403> * 2
          ])
          .outputs(<contenttweaker:material_fluid_processor_print> * 4)
          .EUt(420)
          .duration(360)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //ネットワーク回路
        forming_press.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:404> * 2,
            <contenttweaker:material_network_processor_print> * 4,
            <ore:circuitEv> * 4,
            <gregtech:meta_item_1:594> * 2,
            <appliedenergistics2:material:20> * 4,
            <gregtech:meta_wire_fine:80> * 12
          ])
          .outputs(<contenttweaker:material_network_processor> * 2)
          .EUt(500)
          .duration(400)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //流体演算回路
        forming_press.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:404> * 2,
            <contenttweaker:material_fluid_processor_print> * 4,
            <ore:circuitEv> * 4,
            <gregtech:meta_item_1:597> * 2,
            <appliedenergistics2:material:20> * 4,
            <gregtech:meta_wire_fine:80> * 12
          ])
          .outputs(<contenttweaker:material_fluid_processor> * 2)
          .EUt(500)
          .duration(400)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
    //上級回路
      //データ処理回路
        cir_ass.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:405> * 2,
            <appliedenergistics2:material:24> * 8,
            <ore:circuitIv> * 4,
            <threng:material:4> * 4,
            <gregtech:meta_item_1:262> * 2,
            <gregtech:meta_wire_fine:90> * 8
          ])
          .fluidInputs(<liquid:soldering_alloy> * 1440)
          .outputs(<contenttweaker:material_me_data_processing_unit>)
          .EUt(1920)
          .duration(1440)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //自動クラフト制御回路
        cir_ass.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:405> * 2,
            <appliedenergistics2:material:23> * 8,
            <ore:circuitIv> * 4,
            <gregtech:meta_item_1:595> * 4,
            <appliedenergistics2:crafting_storage_16k> * 2,
            <gregtech:meta_wire_fine:90> * 8
          ])
          .fluidInputs(<liquid:soldering_alloy> * 1440)
          .outputs(<contenttweaker:material_crafting_control_processor>)
          .EUt(1920)
          .duration(1440)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //物流制御回路
        cir_ass.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:405> * 2,
            <appliedenergistics2:material:22> * 8,
            <ore:circuitIv> * 4,
            <gregtech:meta_item_1:595> * 4,
            <opencomputers:component:2> * 16,
            <gregtech:meta_wire_fine:90> * 8
          ])
          .fluidInputs([<liquid:soldering_alloy> * 1440])
          .outputs([<contenttweaker:material_logistics_control_processor>])
          .EUt(1920)
          .duration(1440)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //流体クラフト制御プロセッサー
        cir_ass.recipeBuilder()
          .inputs([
            <gregtech:meta_item_1:405> * 2,
            <contenttweaker:material_fluid_processor> * 8,
            <ore:circuitIv> * 4,
            <gregtech:meta_item_1:595> * 4,
            <appliedenergistics2:material:56> * 2,
            <gregtech:meta_wire_fine:90> * 8
          ])
          .fluidInputs([<liquid:soldering_alloy> * 1440])
          .outputs([<contenttweaker:material_fluid_crafting_processor>])
          .EUt(1920)
          .duration(1440)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //MEコントロールプロセッサ
        mmRecipe("ME_CONTROL_PROCESSOR", "Prototype_Assembling_Line", 3600) //RecipeName UseMachine RecipeTick
          .addEnergyPerTickInput(7680)//EnergyInput
          .addItemInput(<gregtech:meta_item_1:406> * 8)//1
          .addItemInput(<contenttweaker:material_me_data_processing_unit> * 4)//2
          .addItemInput(<contenttweaker:material_crafting_control_processor> * 4)//3
          .addItemInput(<contenttweaker:material_logistics_control_processor> * 4)//4
          .addItemInput(<contenttweaker:material_fluid_crafting_processor> * 4)//5
          .addItemInput(<contenttweaker:material_network_control_processor> * 4)//6
          .addItemInput(<threng:material:14> * 2)//7
          .addItemInput(<gregtech:meta_item_1:262> * 16)//8
          .addItemInput(<gregtech:meta_item_1:635> * 4)//9
          .addItemInput(<gregtech:meta_wire_fine:90> * 32)//10
          .addFluidInput(<liquid:soldering_alloy> * 5760)//1
          .addFluidInput(<liquid:liquid_helium> * 16000)//2
          .addFluidInput(<liquid:vivid_alloy> * 576)//3
          .addFluidInput(<liquid:borosilicate_glass> * 1440)//4
          .addItemOutput(<contenttweaker:material_me_control_processor>)//OutPutItem
          .build();//BuildRecipe
  //StorageCells
    //Item
      //1kStorage
        mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:material:35>, [
	      [<ore:circuitMv>, <gregtech:meta_item_1:600>, <ore:circuitMv>], 
	      [<ore:plateAluminium>, <gregtech:meta_item_1:567>, <ore:wireFineElectrum>], 
	      [<ore:circuitMv>, <gregtech:meta_item_1:601>, <ore:circuitMv>]
        ]);
      //4kStorage
        mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:material:36>, [
	      [<appliedenergistics2:material:35>, <ore:circuitHv>, <appliedenergistics2:material:35>], 
	      [<ore:circuitHv>, <gregtech:meta_item_1:261>, <ore:circuitHv>], 
	      [<appliedenergistics2:material:35>, <ore:circuitHv>, <appliedenergistics2:material:35>]
        ]);
      //16kstorage
        mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:material:37>, [
	      [<appliedenergistics2:material:36>, <gregtech:meta_item_1:261>, <appliedenergistics2:material:36>], 
	      [<ore:circuitEv>, <gregtech:meta_item_1:262>, <ore:circuitEv>], 
	      [<appliedenergistics2:material:36>, <gregtech:meta_item_1:261>, <appliedenergistics2:material:36>]
        ]);
      //64kstorage
        mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:material:38>, [
	      [<appliedenergistics2:material:37>, <ore:circuitIv>, <appliedenergistics2:material:37>], 
	      [<ore:circuitIv>, <gregtech:meta_item_1:262>, <ore:circuitIv>], 
	      [<appliedenergistics2:material:37>, <ore:circuitIv>, <appliedenergistics2:material:37>]
        ]);
    //Fluid
      //1kStorage
        mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:material:54>, [
	      [<ore:circuitMv>, <ore:plateLapis>, <ore:circuitMv>], 
	      [<ore:plateAluminium>, <gregtech:meta_item_1:567>, <ore:wireFineElectrum>], 
	      [<ore:circuitMv>, <ore:plateLapis>, <ore:circuitMv>]
        ]);
      //4kstorage
        mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:material:55>, [
	      [<appliedenergistics2:material:54>, <ore:circuitHv>, <appliedenergistics2:material:54>], 
	      [<ore:circuitHv>, <ore:blockLapis>, <ore:circuitHv>], 
	      [<appliedenergistics2:material:54>, <ore:circuitHv>, <appliedenergistics2:material:54>]
        ]);
      //16kstorage
        mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:material:56>, [
	      [<appliedenergistics2:material:55>, <ore:circuitEv>, <appliedenergistics2:material:55>], 
	      [<ore:circuitEv>, <ore:gemExquisiteLapis>, <ore:circuitEv>], 
	      [<appliedenergistics2:material:55>, <ore:circuitEv>, <appliedenergistics2:material:55>]
        ]);
      //64kstorage
        mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:material:57>, [
	      [<appliedenergistics2:material:56>, <ore:circuitIv>, <appliedenergistics2:material:56>], 
	      [<ore:circuitIv>, <ore:gemLapotron>, <ore:circuitIv>], 
	      [<appliedenergistics2:material:56>, <ore:circuitIv>, <appliedenergistics2:material:56>]
        ]);
  //中間素材's
    //Storage Cell
      assembler.recipeBuilder()
        .inputs([<ore:circuitUlv> * 4, <ore:circuitLv> * 4, <gregtech:meta_item_1:403>, <gregtech:meta_wire_fine:277> * 4, <gregtech:meta_plate:2>])
        .outputs(<appliedenergistics2:material:39>)
        .EUt(96)
        .duration(180)
        .buildAndRegister();
    //CardBases
      //Nomal
        assembler.recipeBuilder()
          .inputs([<gregtech:meta_plate:2> * 2, <gregtech:meta_plate:41> * 2, <gregtech:meta_item_1:403>, <gregtech:meta_wire_fine:277> * 4, <ore:circuitLv> * 4, <gregtech:meta_item_1:626> * 2])
          .outputs(<appliedenergistics2:material:25> * 2)
          .EUt(120)
          .duration(120)
          .buildAndRegister();
      //Advanced
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:material:25> * 2, <ore:circuitMv> * 2, <ore:circuitLv> * 2, <gregtech:meta_plate:276> * 4, <gregtech:meta_plate:41> * 2, <gregtech:meta_wire_fine:80> * 4, <gregtech:meta_item_1:403> * 2])
          .outputs(<appliedenergistics2:material:28> * 2)
          .EUt(240)
          .duration(120)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
    //Core i-114514 810893931KF
      //AssCore
        assembler.recipeBuilder()
          .inputs([<gregtech:meta_item_1:219> * 4, <ore:circuitHv> * 2, <appliedenergistics2:material:24>, <appliedenergistics2:material:23>, <gregtech:meta_plate:80> * 2, <gregtech:meta_wire_fine:80> * 2])
          .outputs(<appliedenergistics2:material:44> * 2)
          .fluidInputs(<liquid:redstone> * 288)
          .EUt(320)
          .duration(180)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //DisAssCore
        assembler.recipeBuilder()
          .inputs([<gregtech:meta_item_1:234> * 4, <ore:circuitHv> * 2, <appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <gregtech:meta_plate:80> * 2, <gregtech:meta_wire_fine:80> * 2])
          .outputs(<appliedenergistics2:material:43> * 2)
          .fluidInputs(<liquid:redstone> * 288)
          .EUt(320)
          .duration(180)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //光板
        assembler.recipeBuilder()
          .inputs([<gregtech:meta_plate:1601> * 6, <gregtech:wire_single:277> * 4, <gregtech:meta_plate:2000> * 2, <projectred-transmission:wire> * 4, <projectred-illumination:lamp:16> * 4])
          .outputs(<appliedenergistics2:part:180>)
          .EUt(120)
          .duration(80)
          .buildAndRegister();
  //Wireless Sys
    //レシーバー
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:219>, <gregtech:meta_item_1:234>, <ore:circuitHv> * 2, <ore:circuitEv>, <gregtech:meta_item_1:403> * 2, <gregtech:meta_wire_fine:80> * 6, <appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <appliedenergistics2:material:24>])
        .outputs(<appliedenergistics2:material:41>)
        .EUt(480)
        .duration(460)
        .buildAndRegister();
    //Boost card
      mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:material:42>, [
	    [<gregtech:meta_item_1:403>, <gregtech:meta_item_1:100>, <gregtech:meta_item_1:220>], 
	    [<ore:circuitEv>, <gregtech:meta_item_1:313>, <ore:componentInductor>], 
	    [<gregtech:meta_item_1:235>, <gregtech:meta_item_1:261>, <ore:circuitEv>]
      ]);
    //NHKだけ絶対に受信しないME倉庫受信機
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:41> * 4, <gregtech:meta_item_1:235> * 2, <gregtech:meta_item_1:220> * 2, <gregtech:meta_item_1:261> * 2, <gregtech:meta_item_1:503> * 2, <ore:circuitEv> * 4, <gregtech:meta_item_1:404>, <gregtech:meta_plate_double:80> * 2, <gregtech:meta_wire_fine:80> * 8])
        .outputs(<appliedenergistics2:wireless_access_point> * 2)
        .fluidInputs(<liquid:soldering_alloy> * 576)
        .EUt(1200)
        .duration(160)
        .buildAndRegister();
    //生体認証装置←これ正直いらん
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:biometric_card>, <gregtech:meta_item_1:262> * 16, <gregtech:meta_item_1:261> * 32, <ore:circuitEv> * 4, <gregtech:meta_wire_fine:2038> * 32, <gregtech:wire_single:277> * 16, <threng:material:4> * 2, <appliedenergistics2:part:16> * 2, <gregtech:machine:989>])
        .outputs(<appliedenergistics2:security_station>)
        .fluidInputs(<liquid:radon> * 500)
        .EUt(1200)
        .duration(180)
        .buildAndRegister();
    //ターミナル
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:41> * 2, <appliedenergistics2:part:380>, <appliedenergistics2:material:22> * 2, <appliedenergistics2:material:23> * 2, <appliedenergistics2:material:24> * 2, <appliedenergistics2:energy_cell>])
        .outputs(<appliedenergistics2:wireless_terminal>)
        .EUt(1280)
        .duration(200)
        .buildAndRegister();
    //生体認証カード
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:261> * 4, <gregtech:meta_item_1:592> * 64, <gregtech:meta_item_1:592> * 64, <ore:circuitHv> * 2, <threng:material:4> * 2, <deepmoblearning:glitch_heart> * 2, <gregtech:meta_plate:2> * 2, <gregtech:meta_wire_fine:277> * 28, <gregtech:meta_item_1:403>])
        .outputs(<appliedenergistics2:biometric_card>)
        .EUt(1280)
        .duration(385)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
  //cables
    //Glass Cable
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_wire_fine:2038> * 16, <gregtech:meta_lens:2000> * 4, <gregtech:wire_single:41> * 4, <gregtech:wire_single:252> * 4, <gregtech:meta_item_1:218>, <gregtech:meta_item_1:233>, <appliedenergistics2:part:140>])
        .outputs(<appliedenergistics2:part:16> * 16)
        .EUt(200)
        .duration(120)
        .buildAndRegister();
    //Covered Cable
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:part:16> * 8, <gregtech:meta_plate:1068> * 6])
        .outputs(<appliedenergistics2:part:36> * 8)
        .EUt(200)
        .duration(200)
        .buildAndRegister();
    //Smart Cable
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:part:36> * 8,  <gregtech:meta_wire_fine:2038> * 16, <projectred-transmission:wire> * 16])
        .outputs(<appliedenergistics2:part:56> * 8)
        .fluidInputs(<liquid:redstone> * 288)
        .EUt(240)
        .duration(180)
        .buildAndRegister();
    //Dense cable
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:part:56> * 4, <gregtech:meta_plate:1000> * 4, <gregtech:meta_wire_fine:2038> * 4, <projectred-transmission:wire> * 16, <gregtech:meta_wire_fine:25> * 4, <gregtech:meta_wire_fine:252> * 4])
        .outputs(<appliedenergistics2:part:76>)
        .fluidInputs(<liquid:redstone> * 576)
        .EUt(320)
        .duration(300)
        .buildAndRegister();
    //Covered Dense cable
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:part:76>, <gregtech:meta_plate:1000> * 2])
        .outputs(<appliedenergistics2:part:516>)
        .EUt(240)
        .duration(320)
        .buildAndRegister();
    //Cable bits
      //x16
        cutter.recipeBuilder()
          .inputs([<gregtech:meta_stick:2>])
          .outputs(<appliedenergistics2:part:120> * 16)
          .fluidInputs(<liquid:lubricant> * 16)
          .EUt(24)
          .duration(100)
          .buildAndRegister();
      //x32
        cutter.recipeBuilder()
          .inputs([<gregtech:meta_stick:323>])
          .outputs(<appliedenergistics2:part:120> * 32)
          .fluidInputs(<liquid:lubricant> * 16)
          .EUt(48)
          .duration(200)
          .buildAndRegister();
      //x64
        cutter.recipeBuilder()
          .inputs([<gregtech:meta_stick:113>])
          .outputs(<appliedenergistics2:part:120> * 64)
          .fluidInputs(<liquid:lubricant> * 16)
          .EUt(96)
          .duration(400)
          .buildAndRegister();
      //x128
        cutter.recipeBuilder()
          .inputs([<gregtech:meta_stick:115>])
          .outputs(<appliedenergistics2:part:120> * 64)
          .outputs(<appliedenergistics2:part:120> * 64)
          .fluidInputs(<liquid:lubricant> * 16)
          .EUt(192)
          .duration(800)
          .buildAndRegister();
  //Quantum Ring
    //ME Quantum Ring
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:207>, <ore:circuitLuv> * 4, <gregtech:meta_item_1:282> * 4, <gregtech:meta_laser:119> * 4, <appliedenergistics2:quartz_glass> * 32, <gregtech:meta_item_1:237> * 4, <appliedenergistics2:part:16> * 4, <threng:material:14> * 4])
        .outputs(<appliedenergistics2:quantum_ring> * 2)
        .fluidInputs(<liquid:cryotheum> * 2000)
        .EUt(16384)
        .duration(320)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
    //ME Quantum chamber
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:207> * 4, <gregtech:meta_item_1:222> * 4, <gregtech:meta_item_1:237> * 4, <gregtech:meta_item_1:282> * 8, <gregtech:meta_item_1:262> * 16, <ore:circuitZpm> * 4, <gregtech:wire_single:429> * 32, <extendedcrafting:singularity:3>, <gregtech:transparent_casing:1> * 4])
        .outputs(<appliedenergistics2:quantum_link> * 2)
        .fluidInputs(<liquid:liquidhelium> * 8000)
        .EUt(32000)
        .duration(1000)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
  //空間収納テクノロジー
    //Pylon
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:205> * 2, <gregtech:meta_item_1:220>, <gregtech:meta_item_1:235>, <gregtech:meta_item_1:101> * 2, <gregtech:meta_stick_long:3020> * 4, <appliedenergistics2:part:16> * 2, <ore:circuitEv> * 4, <gregtech:meta_block_frame_188:12>])
        .outputs(<appliedenergistics2:spatial_pylon> * 2)
        .EUt(2000)
        .duration(180)
        .property("cleanroom", "cleanroom")
        .buildAndRegister();
    //I-O port
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:207>, <gregtech:meta_item_1:237>, <gregtech:meta_item_1:222>, <gregtech:meta_item_1:102> * 8, <ore:circuitZpm> * 4, <gregtech:meta_item_1:704> * 16, <threng:material:14> * 2, <appliedenergistics2:part:16> * 32, <gregtech:meta_block_frame_188:12> * 2])
        .outputs(<appliedenergistics2:spatial_io_port>)
        .EUt(26214)
        .duration(500)
        .property("cleanroom", "sterile_cleanroom")
        .buildAndRegister();
    //空間格納ストレージセル
      //中身
        //2^3
          mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:material:32>, [
	        [<gregtech:meta_item_1:221>, <appliedenergistics2:material:38>, <threng:material:14>], 
	        [<draconicevolution:draconic_core>, <gregtech:meta_item_1:281>, <draconicevolution:draconic_core>], 
	        [<threng:material:14>, <appliedenergistics2:material:38>, <gregtech:meta_item_1:236>]
          ]);
        //16^3
          mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:material:33>, [
	        [<gregtech:meta_item_1:222>, <extracells:storage.component>, <threng:material:14>], 
	        [<draconicevolution:wyvern_core>, <gregtech:meta_item_1:282>, <draconicevolution:wyvern_core>], 
	        [<threng:material:14>, <extracells:storage.component>, <gregtech:meta_item_1:237>]
          ]);
        //128^3
          assembler.recipeBuilder()
          .inputs([<draconicevolution:awakened_core> * 2, <gregtech:meta_item_1:238> * 2, <gregtech:meta_item_1:223> * 2, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:262> * 16, <extracells:storage.component:1> * 4, <gregtech:meta_laser:119> * 8, <threng:material:14> * 32, <gregtech:meta_item_1:207> * 4])
          .outputs(<appliedenergistics2:material:34>)
          .fluidInputs(<liquid:radon> * 16000)
          .EUt(131000)
          .duration(1200)
          .property("cleanroom", "sterile_cleanroom")
          .buildAndRegister();
  //MainMESystem
    //Drive
      assembler.recipeBuilder()
        .inputs([<gregtech:machine:988>, <appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <gregtech:meta_item_1:591>, <ore:circuitMv>, <appliedenergistics2:part:16> * 2, <gregtech:meta_plate:51> * 8])
        .outputs(<appliedenergistics2:drive>)
        .EUt(96)
        .duration(120)
        .buildAndRegister();
    //Chest
      assembler.recipeBuilder()
        .inputs([<gregtech:machine:988>, <appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <gregtech:meta_item_1:593>, <ore:circuitMv>, <appliedenergistics2:part:16> * 2, <gregtech:meta_plate:51> * 4])
        .outputs(<appliedenergistics2:chest>)
        .EUt(96)
        .duration(120)
        .buildAndRegister();
    //InterFace
      assembler.recipeBuilder()
        .inputs([<gregtech:machine:988>, <threng:material:4>, <appliedenergistics2:part:16> * 2, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <gregtech:meta_item_1:188> * 2])
        .outputs(<appliedenergistics2:interface>)
        .EUt(118)
        .duration(100)
        .buildAndRegister();
    //FluidInerfase
      assembler.recipeBuilder()
        .inputs([<gregtech:machine:988>, <threng:material:4>, <appliedenergistics2:part:16> * 2, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <gregtech:meta_item_1:248> * 2])
        .outputs(<appliedenergistics2:fluid_interface>)
        .EUt(118)
        .duration(100)
        .buildAndRegister();
    //cell workbench
      mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:cell_workbench>, [
	    [<ore:paneGlassColorless>, <extendedcrafting:table_basic>, <ore:paneGlassColorless>], 
	    [<appliedenergistics2:material:44>, <gregtech:machine:988>, <appliedenergistics2:material:43>], 
	    [<appliedenergistics2:part:16>, <gregtech:meta_item_1:591>, <appliedenergistics2:part:16>]
      ]);
    //ME I-O Port
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:drive> * 2, <appliedenergistics2:material:44>,<appliedenergistics2:material:43>, <appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <appliedenergistics2:material:24>, <appliedenergistics2:part:16> * 2])
        .outputs(<appliedenergistics2:io_port>)
        .EUt(240)
        .duration(175)
        .buildAndRegister();
    //Matter Condenser
      assembler.recipeBuilder()
        .inputs([<extrautils2:trashcan>, <extrautils2:trashcanfluid>, <extrautils2:trashcanenergy>, <appliedenergistics2:part:16> * 2, <appliedenergistics2:material:44> * 6, <appliedenergistics2:material:43> * 2, <gregtech:machine:988>])
        .outputs(<appliedenergistics2:condenser>)
        .EUt(180)
        .duration(60)
        .buildAndRegister();
    //EnergyConverter
      assembler.recipeBuilder()
        .inputs([<gregtech:machine:1685>, <gregtech:meta_item_1:99> * 2, <gregtech:meta_stick:2035> * 4, <gregtech:meta_item_1:604> * 4, <gregtech:meta_wire_fine:25> * 32, <gregtech:meta_item_1:492> * 4])
        .outputs(<appliedenergistics2:energy_acceptor>)
        .EUt(360)
        .duration(120)
        .buildAndRegister();
    //Terminals
      //Blank Terminal
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:part:180>, <threng:material:4>, <appliedenergistics2:material:43> * 2, <appliedenergistics2:material:44> * 2, <advancedrocketry:misc>])
          .outputs(<appliedenergistics2:part:380>)
          .EUt(120)
          .duration(200)
          .buildAndRegister();
      //Crafting Terminal
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:part:380>, <appliedenergistics2:material:22> * 2, <appliedenergistics2:material:23> * 2, <appliedenergistics2:material:24> * 2, <extendedcrafting:table_basic>, <appliedenergistics2:material:43> * 2, <appliedenergistics2:material:44> * 2, <advancedrocketry:misc>, <appliedenergistics2:part:56> * 2,])
          .outputs(<appliedenergistics2:part:360>)
          .EUt(480)
          .duration(480)
          .buildAndRegister();
      //Fluid Terminal
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:part:380>, <gregtech:meta_plate:2007> * 8, <threng:material:4> * 4, <appliedenergistics2:material:43> * 4, <appliedenergistics2:material:44> * 4, <gregtech:meta_item_1:307> * 2, <ore:ingotManasteel> * 2, <gregtech:meta_item_1:492> * 4, <appliedenergistics2:part:56> * 4])
          .outputs(<appliedenergistics2:part:520>)
          .EUt(511)
          .duration(3000)
          .buildAndRegister();
      //InterFace Terminal
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:part:180>, <appliedenergistics2:interface> * 6, <gregtech:meta_item_1:307> * 4, <threng:material:4> * 4, <opencomputers:card:12> * 2, <appliedenergistics2:part:56> * 4])
          .outputs(<appliedenergistics2:part:480>)
          .EUt(480)
          .duration(800)
          .buildAndRegister();
      //Pattane Terminal
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:part:360>, <appliedenergistics2:material:52>, <ore:circuitEv> * 2, <advancedrocketry:misc> * 2, <gregtech:meta_item_1:308> * 2, <gregtech:meta_item_1:262>, <appliedenergistics2:part:56> * 2])
          .outputs(<appliedenergistics2:part:340>)
          .EUt(480)
          .duration(750)
          .buildAndRegister();
      //Configration InterFace Terminal
      //Extend Pattane Terminal
        mods.extendedcrafting.TableCrafting.addShaped(2, <appliedenergistics2:part:341>, [
          [<appliedenergistics2:material:52>, <appliedenergistics2:material:53>, <appliedenergistics2:material:35>, <appliedenergistics2:material:53>, <appliedenergistics2:material:52>], 
          [<appliedenergistics2:material:53>, <appliedenergistics2:part:340>, <appliedenergistics2:material:22>, <appliedenergistics2:part:340>, <appliedenergistics2:material:53>], 
          [<appliedenergistics2:material:35>, <threng:material:6>, <threng:material:14>, <appliedenergistics2:material:24>, <appliedenergistics2:material:35>], 
          [<appliedenergistics2:material:53>, <appliedenergistics2:part:340>, <appliedenergistics2:material:23>, <appliedenergistics2:part:340>, <appliedenergistics2:material:53>], 
          [<appliedenergistics2:material:52>, <appliedenergistics2:material:53>, <appliedenergistics2:material:35>, <appliedenergistics2:material:53>, <appliedenergistics2:material:52>]
        ]);
  //Crafting System
    assembler.recipeBuilder()
      .inputs([
        <appliedenergistics2:part:480>,
        <appliedenergistics2:material:23> * 16,
        <ore:circuitIv> * 4,
        <gregtech:meta_item_1:261> * 8,
        <enderio:item_material:16>,
        <gregtech:meta_item_1:235> * 2
      ])
      .outputs(<appliedenergistics2:part:521>)
      .EUt(3200)
      .duration(80)
      .buildAndRegister();
    //Crafting Unit
      assembler.recipeBuilder()
        .inputs([<gregtech:machine:988> * 2, <appliedenergistics2:material:23> * 4, <appliedenergistics2:material:43> * 2, <appliedenergistics2:material:44> * 2, <appliedenergistics2:part:16> * 2, <threng:material:4>])
        .outputs(<appliedenergistics2:crafting_unit>)
        .EUt(180)
        .duration(200)
        .buildAndRegister();
    //Co-CPU
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:crafting_unit> * 6, <appliedenergistics2:material:23> * 6, <threng:material:4> * 3, <extendedcrafting:table_basic> * 2, <extendedcrafting:table_advanced>, <appliedenergistics2:part:16> * 8])
        .outputs(<appliedenergistics2:crafting_accelerator> * 6)
        .EUt(200)
        .duration(220)
        .buildAndRegister();
    //Crafting Storage
      //1k
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:44>, <appliedenergistics2:material:43>, <appliedenergistics2:material:35>, <appliedenergistics2:material:23>])
          .outputs(<appliedenergistics2:crafting_storage_1k>)
          .EUt(480)
          .duration(360)
          .buildAndRegister();
      //4k
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:44>, <appliedenergistics2:material:43>, <appliedenergistics2:material:36>, <appliedenergistics2:material:23>])
          .outputs(<appliedenergistics2:crafting_storage_4k>)
          .EUt(480)
          .duration(360)
          .buildAndRegister();
      //16k
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:44>, <appliedenergistics2:material:43>, <appliedenergistics2:material:37>, <appliedenergistics2:material:23>])
          .outputs(<appliedenergistics2:crafting_storage_16k>)
          .EUt(480)
          .duration(360)
          .buildAndRegister();
      //64k
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:44>, <appliedenergistics2:material:43>, <appliedenergistics2:material:38>, <appliedenergistics2:material:23>])
          .outputs(<appliedenergistics2:crafting_storage_64k>)
          .EUt(480)
          .duration(360)
          .buildAndRegister();
    //CraftingMonitor
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:crafting_unit>, <gregtech:meta_item_1:492> * 2, <appliedenergistics2:material:23> * 2, <appliedenergistics2:material:22> * 2, 
        <opencomputers:screen2>])
        .outputs(<appliedenergistics2:crafting_monitor>)
        .EUt(480)
        .duration(240)
        .buildAndRegister();
    //MolecularAssembler
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:44> * 4, <appliedenergistics2:material:43> * 4, <threng:material:4> * 2, <gregtech:meta_item_1:188> * 2, <gregtech:meta_item_1:158> * 2, <extendedcrafting:frame> * 2])
        .outputs(<appliedenergistics2:molecular_assembler>)
        .EUt(500)
        .duration(300)
        .buildAndRegister();
  //Battery Unit
    //Nomal
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:24> * 2, <appliedenergistics2:material:23> * 2, <gregtech:meta_item_1:604> * 2, <gregtech:meta_item_1:732> * 2])
        .outputs(<appliedenergistics2:energy_cell>)
        .EUt(48)
        .duration(120)
        .buildAndRegister();
    //Dense
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:energy_cell> * 8, <gregtech:meta_item_1:605>  * 4, <ore:circuitEv>, <gregtech:wire_octal:25>  * 4])
        .outputs(<appliedenergistics2:dense_energy_cell>)
        .fluidInputs(<liquid:redstone> * 5760)
        .EUt(1000)
        .duration(180)
        .buildAndRegister();
  //SystemCards
    //Capasity Card
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:25>, <gregtech:meta_item_1:592> * 9, <appliedenergistics2:material:23>  * 2, <ore:circuitHv>, <gregtech:meta_wire_fine:277> * 4, <gregtech:meta_item_1:403>])
        .outputs(<appliedenergistics2:material:27>)
        .EUt(120)
        .duration(160)
        .buildAndRegister();
    //CraftingCard
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:25>, <extendedcrafting:table_basic> * 2, <appliedenergistics2:material:23> * 2, <appliedenergistics2:material:24> * 2, <gregtech:meta_item_1:188> * 2, <gregtech:meta_item_1:403>])
        .outputs(<appliedenergistics2:material:53>)
        .EUt(120)
        .duration(160)
        .buildAndRegister();
    //FuzzyCard
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:28>, <gregtech:meta_block_compressed_62:15>, <gregtech:meta_block_compressed_63:8>, <appliedenergistics2:material:22> * 2, <appliedenergistics2:material:23> * 2, <gregtech:meta_item_1:403>])
        .outputs(<appliedenergistics2:material:29>)
        .EUt(120)
        .duration(160)
        .buildAndRegister();
    //InverterCard
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:28>, <appliedenergistics2:material:23> * 3, <appliedenergistics2:material:22> * 2, <projectred-integration:gate:2>, <projectred-integration:gate:1>, <projectred-integration:gate:4>, <projectred-integration:gate:6>, <gregtech:meta_item_1:403>])
        .outputs(<appliedenergistics2:material:31>)
        .EUt(120)
        .duration(160)
        .buildAndRegister();
    //RedstoneCard
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:25>, <projectred-integration:gate>, <projectred-integration:gate:3>, <projectred-integration:gate:5>, <projectred-integration:gate:25>, <projectred-integration:gate:8>, <projectred-integration:gate:31>, <appliedenergistics2:material:23> * 4, <gregtech:meta_item_1:403>])
        .outputs(<appliedenergistics2:material:26>)
        .EUt(120)
        .duration(160)
        .buildAndRegister();
    //AccelerationCard
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:material:28>, <gregtech:meta_item_1:159> * 4, <appliedenergistics2:material:24> * 2, <appliedenergistics2:material:23> * 2, <gregtech:meta_item_1:129> * 2, <gregtech:meta_wire_fine:277> * 4, <gregtech:meta_item_1:403>])
        .outputs(<appliedenergistics2:material:30>)
        .EUt(120)
        .duration(160)
        .buildAndRegister();
    //Pattern Extend Card
      mods.extendedcrafting.TableCrafting.addShaped(2, <appliedenergistics2:material:58>, [
        [<appliedenergistics2:material:35>, <gregtech:meta_item_1:592>, <appliedenergistics2:material:24>, <gregtech:meta_item_1:592>, <appliedenergistics2:material:35>], 
        [<gregtech:meta_item_1:592>, <appliedenergistics2:material:27>, <appliedenergistics2:material:52>, <appliedenergistics2:material:27>, <gregtech:meta_item_1:592>], 
        [<appliedenergistics2:material:24>, <appliedenergistics2:material:52>, <appliedenergistics2:material:28>, <appliedenergistics2:material:52>, <appliedenergistics2:material:24>], 
        [<gregtech:meta_item_1:592>, <appliedenergistics2:material:27>, <appliedenergistics2:material:52>, <appliedenergistics2:material:27>, <gregtech:meta_item_1:592>], 
        [<appliedenergistics2:material:35>, <gregtech:meta_item_1:592>, <appliedenergistics2:material:24>, <gregtech:meta_item_1:592>, <appliedenergistics2:material:35>]
      ]);
  //Tools
    //PortableCell
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:233> * 2, <gregtech:meta_item_1:218>, <ore:circuitHv>, <appliedenergistics2:material:39>, <gregtech:meta_wire_fine:277> * 4, <gregtech:meta_plate:2> * 2, <appliedenergistics2:dense_energy_cell>, <gregtech:meta_item_1:403>])
        .outputs(<appliedenergistics2:portable_cell>)
        .EUt(480)
        .duration(600)
        .buildAndRegister();
    //Cable Painter
      assembler.recipeBuilder()
        .inputs([<buildcraftcore:paintbrush>, <appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <appliedenergistics2:material:24>, <gregtech:meta_item_1:732>])
        .outputs(<appliedenergistics2:color_applicator>)
        .EUt(120)
        .duration(280)
        .buildAndRegister();
    //Memory Card
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:628> * 2, <gregtech:meta_item_1:592> * 32, <gregtech:meta_item_1:523> * 8, <gregtech:meta_item_1:526> * 2, <gregtech:meta_item_1:525> * 2, <gregtech:meta_wire_fine:277> * 28, <threng:material:4>, <gregtech:meta_plate:2> * 2, <gregtech:meta_item_1:403>])
        .outputs(<appliedenergistics2:memory_card>)
        .EUt(500)
        .duration(200)
        .buildAndRegister();
    //NetworkTool
      assembler.recipeBuilder()
        .inputs([<appliedenergistics2:certus_quartz_wrench>, <threng:material:4>, <appliedenergistics2:material:23> * 2, <gregtech:meta_item_1:403>, <gregtech:meta_item_1:469>, <gregtech:meta_wire_fine:277> * 8, <gregtech:meta_item_1:307>])
        .outputs(<appliedenergistics2:network_tool>)
        .EUt(360)
        .duration(120)
        .buildAndRegister();
  //Cells Canning Recipe
    //Item
      //1k
        canner.recipeBuilder()
          .inputs([<appliedenergistics2:material:35>, <appliedenergistics2:material:39>])
          .outputs(<appliedenergistics2:storage_cell_1k>)
          .EUt(48)
          .duration(40)
          .buildAndRegister();
      //4k
        canner.recipeBuilder()
          .inputs([<appliedenergistics2:material:36>, <appliedenergistics2:material:39>])
          .outputs(<appliedenergistics2:storage_cell_4k>)
          .EUt(48)
          .duration(40)
          .buildAndRegister();
      //16k
        canner.recipeBuilder()
          .inputs([<appliedenergistics2:material:37>, <appliedenergistics2:material:39>])
          .outputs(<appliedenergistics2:storage_cell_16k>)
          .EUt(48)
          .duration(40)
          .buildAndRegister();
      //64k
        canner.recipeBuilder()
          .inputs([<appliedenergistics2:material:38>, <appliedenergistics2:material:39>])
          .outputs(<appliedenergistics2:storage_cell_64k>)
          .EUt(48)
          .duration(40)
          .buildAndRegister();
    //Fluid
      //1k
        canner.recipeBuilder()
          .inputs([<appliedenergistics2:material:54>, <appliedenergistics2:material:39>])
          .outputs(<appliedenergistics2:fluid_storage_cell_1k>)
          .EUt(48)
          .duration(40)
          .buildAndRegister();
      //4k
        canner.recipeBuilder()
          .inputs([<appliedenergistics2:material:55>, <appliedenergistics2:material:39>])
          .outputs(<appliedenergistics2:fluid_storage_cell_4k>)
          .EUt(48)
          .duration(40)
          .buildAndRegister();
      //16k
        canner.recipeBuilder()
          .inputs([<appliedenergistics2:material:56>, <appliedenergistics2:material:39>])
          .outputs(<appliedenergistics2:fluid_storage_cell_16k>)
          .EUt(48)
          .duration(40)
          .buildAndRegister();
      //64k
        canner.recipeBuilder()
          .inputs([<appliedenergistics2:material:57>, <appliedenergistics2:material:39>])
          .outputs(<appliedenergistics2:fluid_storage_cell_64k>)
          .EUt(48)
          .duration(40)
          .buildAndRegister();
    //空間
      //2^3
        canner.recipeBuilder()
          .inputs([<appliedenergistics2:material:32>, <extracells:storage.casing>])
          .fluidInputs(<liquid:krypton> * 500)
          .outputs(<appliedenergistics2:spatial_storage_cell_2_cubed>)
          .EUt(1280)
          .duration(400)
          .buildAndRegister();
      //16^3
        canner.recipeBuilder()
          .inputs([<appliedenergistics2:material:33>, <extracells:storage.casing>])
          .fluidInputs(<liquid:xenon> * 500)
          .outputs(<appliedenergistics2:spatial_storage_cell_16_cubed>)
          .EUt(1280)
          .duration(400)
          .buildAndRegister();
      //128^3
        canner.recipeBuilder()
          .inputs([<appliedenergistics2:material:34>, <extracells:storage.casing>])
          .fluidInputs(<liquid:radon> * 750)
          .outputs(<appliedenergistics2:spatial_storage_cell_128_cubed>)
          .EUt(1280)
          .duration(400)
          .buildAndRegister();
  //Cable Controll
    //Emitter
      //Fluid
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:material:23> * 2, <gregtech:meta_item_1:304>, <appliedenergistics2:part:16> * 2, <projectred-integration:gate>, <projectred-integration:gate:4>, <projectred-integration:gate:1>])
          .outputs(<appliedenergistics2:part:281>)
          .EUt(180)
          .duration(200)
          .buildAndRegister();
      //Item
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:material:23> * 2, <gregtech:meta_item_1:305>, <appliedenergistics2:part:16> * 2, <projectred-integration:gate>, <projectred-integration:gate:4>, <projectred-integration:gate:1>])
          .outputs(<appliedenergistics2:part:280>)
          .EUt(180)
          .duration(200)
          .buildAndRegister();
    //Toggle bus
      //Nomal
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:part:16> * 2, <projectred-integration:gate>, <projectred-integration:gate:3>, <projectred-integration:gate:5>, <projectred-integration:gate:13>])
          .outputs(<appliedenergistics2:part:80> * 2)
          .EUt(40)
          .duration(800)
          .buildAndRegister();
      //Invite
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:part:16> * 2, <projectred-integration:gate:1>, <projectred-integration:gate:12>, <projectred-integration:gate:4>, <projectred-integration:gate:13>])
          .outputs(<appliedenergistics2:part:100> * 2)
          .EUt(40)
          .duration(800)
          .buildAndRegister();
  //Bus
    //Item
      //Export
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:material:23>, <appliedenergistics2:material:24>, <appliedenergistics2:material:44>, <appliedenergistics2:material:43>, <gregtech:meta_item_1:159>, <gregtech:meta_plate:2> * 2, <appliedenergistics2:part:16>])
          .outputs(<appliedenergistics2:part:260>)
          .EUt(240)
          .duration(180)
          .buildAndRegister();
      //Import
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:material:23>, <appliedenergistics2:material:22>, <appliedenergistics2:material:44>, <appliedenergistics2:material:43>, <gregtech:meta_item_1:159>, <gregtech:meta_plate:2> * 2, <appliedenergistics2:part:16>])
          .outputs(<appliedenergistics2:part:240>)
          .EUt(240)
          .duration(180)
          .buildAndRegister();
      //InterFacePanel
        cutter.recipeBuilder()
          .inputs([<appliedenergistics2:interface>])
          .outputs(<appliedenergistics2:part:440>)
          .fluidInputs(<liquid:lubricant> * 16)
          .EUt(180)
          .duration(100)
          .buildAndRegister();
      //Storage Bus (Item)
        assembler.recipeBuilder()
          .inputs([<gregtech:meta_item_1:597> * 2, <appliedenergistics2:part:440>, <appliedenergistics2:material:43> * 2, <appliedenergistics2:material:44> * 2, <gregtech:meta_item_1:234> * 2, <gregtech:meta_item_1:159> * 2, <appliedenergistics2:part:16> * 2, <gregtech:meta_item_1:403> * 2, <gregtech:meta_plate:2> * 3])
          .outputs(<appliedenergistics2:part:220>)
          .fluidInputs(<liquid:soldering_alloy> * 480)
          .EUt(1000)
          .duration(240)
          .buildAndRegister();
      //OreDict Storage Bus
        assembler.recipeBuilder()
          .inputs([
            <appliedenergistics2:part:220>,
            <appliedenergistics2:material:22> * 2,
            <appliedenergistics2:material:23> * 2,
            <mekanism:machineblock3:3>
          ])
          .notConsumable([<gregtech:meta_item_1:461>.withTag({Configuration: 16})])
          .outputs(<appliedenergistics2:part:222>)
          .EUt(480)
          .duration(160)
          .buildAndRegister();
    //Fluid
      //Export
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:material:23>, <appliedenergistics2:material:24>, <appliedenergistics2:material:44>, <appliedenergistics2:material:43>, <gregtech:meta_item_1:144>, <gregtech:meta_plate:2007> * 2, <appliedenergistics2:part:16>])
          .outputs(<appliedenergistics2:part:261>)
          .EUt(240)
          .duration(180)
          .buildAndRegister();
      //Import
        assembler.recipeBuilder()
          .inputs([<appliedenergistics2:material:23>, <appliedenergistics2:material:22>, <appliedenergistics2:material:44>, <appliedenergistics2:material:43>, <gregtech:meta_item_1:144>, <gregtech:meta_plate:2007> * 2, <appliedenergistics2:part:16>])
          .outputs(<appliedenergistics2:part:241>)
          .EUt(240)
          .duration(180)
          .buildAndRegister();
      //InterFacePanel
        cutter.recipeBuilder()
          .inputs([<appliedenergistics2:fluid_interface>])
          .outputs(<appliedenergistics2:part:441>)
          .fluidInputs(<liquid:lubricant> * 16)
          .EUt(180)
          .duration(200)
          .buildAndRegister();
      //Storage Bus(Item)
        assembler.recipeBuilder()
          .inputs([<gregtech:meta_item_1:597> * 2, <appliedenergistics2:part:441>, <appliedenergistics2:material:43> * 2, <appliedenergistics2:material:44> * 2, <gregtech:meta_item_1:234> * 2, <gregtech:meta_item_1:249> * 2, <appliedenergistics2:part:16> * 2, <gregtech:meta_item_1:403> * 2, <gregtech:meta_plate:2> * 3])
          .outputs(<appliedenergistics2:part:220>)
          .fluidInputs(<liquid:soldering_alloy> * 480)
          .EUt(1000)
          .duration(240)
          .buildAndRegister();
  //P2P Tunnel
    //ME
      mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:part:460>, [
        [<appliedenergistics2:part:56>, <ore:plateChrome>, <appliedenergistics2:part:56>], 
        [<ore:plateChrome>, <appliedenergistics2:material:24>, <ore:plateChrome>], 
        [<appliedenergistics2:part:56>, <ore:plateChrome>, <appliedenergistics2:part:56>]
      ]);
    //Light
      assembler.recipeBuilder()
        .inputs([
          <appliedenergistics2:part:460>,
          <appliedenergistics2:part:180> * 2,
          <appliedenergistics2:part:140> * 8,
          <threng:material:4>
        ])
        .notConsumable([<gregtech:meta_item_1:461>.withTag({Configuration: 1})])
        .outputs(<appliedenergistics2:part:467>)
        .EUt(1920)
        .duration(200)
        .buildAndRegister();
    //Item
      assembler.recipeBuilder()
        .inputs([
          <appliedenergistics2:part:460> * 2,
          <appliedenergistics2:material:44> * 2,
          <appliedenergistics2:material:43> * 2,
          <gregtech:item_pipe_normal:1007> * 4,
          <threng:material:4> * 2
        ])
        .notConsumable([<gregtech:meta_item_1:461>.withTag({Configuration: 2})])
        .outputs(<appliedenergistics2:part:462> * 2)
        .EUt(1920)
        .duration(200)
        .buildAndRegister();
    //GTEU
      assembler.recipeBuilder()
        .inputs([
          <appliedenergistics2:part:460> * 16,
          <appliedenergistics2:part:469> * 16,
          <gregtech:meta_item_1:100> * 4,
          <gregtech:meta_item_1:604> * 32,
          <gregtech:wire_hex:294> * 64,
          <threng:material:4> * 4,
          <appliedenergistics2:part:140> * 32
        ])
        .notConsumable([<gregtech:meta_item_1:461>.withTag({Configuration: 3})])
        .outputs(<appliedenergistics2:part:470> * 16)
        .EUt(1920)
        .duration(200)
        .buildAndRegister();
    //Fluid
      assembler.recipeBuilder()
        .inputs([
          <appliedenergistics2:part:460> * 2,
          <gregtech:fluid_pipe_large:323> * 4,
          <gregtech:meta_item_1:144> * 4,
          <appliedenergistics2:material:44> * 2,
          <appliedenergistics2:material:43> * 2,
          <threng:material:4> * 2
        ])
        .notConsumable([<gregtech:meta_item_1:461>.withTag({Configuration: 4})])
        .outputs(<appliedenergistics2:part:463> * 2)
        .EUt(1920)
        .duration(200)
        .buildAndRegister();
    //FE(RF)
      assembler.recipeBuilder()
        .inputs([
          <appliedenergistics2:part:460> * 2,
          <threng:material:6> * 2,
          <enderio:item_power_conduit:2> * 16,
          <threng:material:4> * 2
        ])
        .notConsumable([<gregtech:meta_item_1:461>.withTag({Configuration: 5})])
        .outputs(<appliedenergistics2:part:469> * 2)
        .EUt(1920)
        .duration(200)
        .buildAndRegister();
    //RedStone
      assembler.recipeBuilder()
        .inputs([
          <appliedenergistics2:part:460> * 2,
          <projectred-transmission:wire> * 32,
          <ore:circuitHv> * 2,
          <enderio:item_alloy_ingot:3> * 2,
          <threng:material:4> * 2
        ])
        .notConsumable([<gregtech:meta_item_1:461>.withTag({Configuration: 6})])
        .outputs(<appliedenergistics2:part:461>)
        .EUt(1920)
        .duration(200)
        .buildAndRegister();
//そのた
  wiremill.recipeBuilder()
    .inputs([<appliedenergistics2:part:16>])
    .outputs(<appliedenergistics2:part:140> * 8)
    .EUt(8)
    .duration(40)
    .buildAndRegister();

  mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:certus_quartz_wrench>, [
	[<ore:plateDoubleOsmium>, <ore:gemExquisiteCertusQuartz>, <ore:plateDoubleOsmium>], 
	[<ore:gemExquisiteNetherQuartz>, <contenttweaker:crystaloscillator>, <ore:gemExquisiteNetherQuartz>], 
	[<ore:gemExquisiteQuartzite>, <ore:plateDoubleIridium>, <ore:gemExquisiteQuartzite>]
  ]);

  mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_me_conduit> * 4, [
	[<ore:itemConduitBinder>, <appliedenergistics2:part:56>, <ore:itemConduitBinder>], 
	[<appliedenergistics2:part:56>, <appliedenergistics2:material:23>, <appliedenergistics2:part:56>], 
	[<ore:itemConduitBinder>, <appliedenergistics2:part:56>, <ore:itemConduitBinder>]
  ]);

  mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_me_conduit:1> * 4, [
	[<ore:itemConduitBinder>, <appliedenergistics2:part:76>, <ore:itemConduitBinder>], 
	[<appliedenergistics2:part:76>, <appliedenergistics2:material:23>, <appliedenergistics2:part:76>], 
	[<ore:itemConduitBinder>, <appliedenergistics2:part:76>, <ore:itemConduitBinder>]
  ]);

  //ぶらんくぱたーん（わすれてた）
  mods.extendedcrafting.TableCrafting.addShaped(1, <appliedenergistics2:material:52>, [
	[<ore:plateCertusQuartz>, <ore:alloyElite>, <ore:plateCertusQuartz>], 
	[<gregtech:meta_item_1:592>, <ore:circuitMv>, <gregtech:meta_item_1:592>], 
	[<ore:plateCertusQuartz>, <ore:alloyElite>, <ore:plateCertusQuartz>]
  ]);

print("------APPLIED_ENERGESTICS_LOADING_END------");
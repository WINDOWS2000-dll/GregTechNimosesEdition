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

//Remove Recipe
  //Crafting Table Recipe
    var mmmachines as IItemStack[] = [
      <modularmachinery:blockcasing:4>,
      <modularmachinery:blockcasing>,
      <modularmachinery:blockcontroller>,
      <modularmachinery:blockcasing:2>,
      <modularmachinery:itemmodularium>
    ];

//ADD Recipe
  //Hatchs
    //Mana Hatch
      //Mana Input
        mods.extendedcrafting.TableCrafting.addShaped(1, <modulardiversity:blockmanainputhatch>, [
          [<ore:runeSpringB>, <modularmachinery:itemmodularium>, <ore:runeSummerB>], 
          [<ore:ingotManasteel>, <botania:pool>, <ore:ingotManasteel>], 
          [<ore:runeWinterB>, <modularmachinery:itemmodularium>, <ore:runeAutumnB>]
        ]);
      //Mana OutPut
        mods.extendedcrafting.TableCrafting.addShaped(1, <modulardiversity:blockmanaoutputhatch>, [
          [<ore:runeWinterB>, <modularmachinery:itemmodularium>, <ore:runeSpringB>], 
          [<ore:ingotManasteel>, <botania:pool>, <ore:ingotManasteel>], 
          [<ore:runeAutumnB>, <modularmachinery:itemmodularium>, <ore:runeSummerB>]
        ]);
    //Laser hatch
      mods.extendedcrafting.TableCrafting.addShaped(1, <modulardiversity:blockmeklaseracceptor>, [
        [<gregtech:meta_item_1:605>, <modularmachinery:blockcasing:4>, <gregtech:meta_item_1:605>], 
        [<ore:circuitLuv>, <mekanism:machineblock2:14>, <ore:circuitLuv>], 
        [<gregtech:meta_item_1:605>, <modularmachinery:blockcasing:4>, <gregtech:meta_item_1:605>]
      ]);
    //Biome
      mods.extendedcrafting.TableCrafting.addShaped(1, <modulardiversity:blockbiomedetector>, [
        [<ore:circuitHv>, <gregtech:meta_item_1:233>, <ore:circuitHv>], 
        [<randomthings:ingredient:4>, <modularmachinery:blockcasing>, <randomthings:ingredient:4>], 
        [<ore:circuitHv>, <gregtech:meta_item_1:233>, <ore:circuitHv>]
      ]);
    //Time
      mods.extendedcrafting.TableCrafting.addShaped(1, <modulardiversity:blockdaylightdetector>, [
        [<ore:circuitHv>, <gregtech:meta_item_1:233>, <ore:circuitHv>], 
        [<immersivetech:connectors>, <modularmachinery:blockcasing>, <immersivetech:connectors>], 
        [<ore:circuitHv>, <gregtech:meta_item_1:233>, <ore:circuitHv>]
      ]);
    //Item
      //Inputs
        //Nomal
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockinputbus:2>, [
            [null, <gregtech:meta_item_1:127>, <ore:chest>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:1>, <modularmachinery:itemmodularium>], 
            [<ore:chest>, <gregtech:meta_item_1:157>, null]
          ]);
        //Reinforced
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockinputbus:3>, [
            [<gregtech:meta_item_1:127>, <ore:chest>, <gregtech:meta_item_1:127>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:2>, <modularmachinery:itemmodularium>], 
            [<gregtech:meta_item_1:157>, <ore:chest>, <gregtech:meta_item_1:157>]
          ]);
        //Big
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockinputbus:4>, [
            [null, <gregtech:meta_item_1:128>, <ore:chest>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:3>, <modularmachinery:itemmodularium>], 
            [<ore:chest>, <gregtech:meta_item_1:158>, null]
          ]);
        //Huge
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockinputbus:5>, [
            [<gregtech:meta_item_1:128>, <ore:chest>, <gregtech:meta_item_1:128>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:3>, <modularmachinery:itemmodularium>], 
            [<gregtech:meta_item_1:158>, <ore:chest>, <gregtech:meta_item_1:158>]
          ]);
        //Ludicrous
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockinputbus:6>, [
            [<gregtech:meta_item_1:129>, <gregtech:meta_item_1:159>, <modularmachinery:itemmodularium>], 
            [<ore:chest>, <modularmachinery:blockinputbus:5>, <ore:chest>], 
            [<modularmachinery:itemmodularium>, <gregtech:meta_item_1:159>, <gregtech:meta_item_1:129>]
          ]);
      //Outputs
        //Nomal
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockoutputbus:2>, [
            [null, <gregtech:meta_item_1:127>, <ore:chest>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:1>, <modularmachinery:itemmodularium>], 
            [<ore:chest>, <gregtech:meta_item_1:157>, null]
          ]);
        //Reinforced
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockoutputbus:3>, [
            [<gregtech:meta_item_1:127>, <ore:chest>, <gregtech:meta_item_1:127>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:2>, <modularmachinery:itemmodularium>], 
            [<gregtech:meta_item_1:157>, <ore:chest>, <gregtech:meta_item_1:157>]
          ]);
        //Big
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockoutputbus:4>, [
            [null, <gregtech:meta_item_1:128>, <ore:chest>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:3>, <modularmachinery:itemmodularium>], 
            [<ore:chest>, <gregtech:meta_item_1:158>, null]
          ]);
        //Huge
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockoutputbus:5>, [
            [<gregtech:meta_item_1:128>, <ore:chest>, <gregtech:meta_item_1:128>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:4>, <modularmachinery:itemmodularium>], 
            [<gregtech:meta_item_1:158>, <ore:chest>, <gregtech:meta_item_1:158>]
          ]);
        //Ludicrous
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockoutputbus:6>, [
            [<gregtech:meta_item_1:129>, <gregtech:meta_item_1:159>, <modularmachinery:itemmodularium>], 
            [<ore:chest>, <modularmachinery:blockoutputbus:5>, <ore:chest>], 
            [<modularmachinery:itemmodularium>, <gregtech:meta_item_1:159>, <gregtech:meta_item_1:129>]
          ]);
    //Fluid
      //Inputs
        //Nomal
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockfluidinputhatch:2>, [
            [null, <gregtech:meta_item_1:127>, <enderio:block_tank>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:1>, <modularmachinery:itemmodularium>], 
            [<enderio:block_tank>, <gregtech:meta_item_1:142>, null]
          ]);
        //Reinforced
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockfluidinputhatch:3>, [
            [<gregtech:meta_item_1:127>, <enderio:block_tank>, <gregtech:meta_item_1:127>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:2>, <modularmachinery:itemmodularium>], 
            [<gregtech:meta_item_1:142>, <enderio:block_tank>, <gregtech:meta_item_1:142>]
          ]);
        //Big
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockfluidinputhatch:4>, [
            [null, <gregtech:meta_item_1:128>, <enderio:block_tank>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:3>, <modularmachinery:itemmodularium>], 
            [<enderio:block_tank>, <gregtech:meta_item_1:143>, null]
          ]);
        //Huge
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockfluidinputhatch:5>, [
            [<gregtech:meta_item_1:128>, <enderio:block_tank>, <gregtech:meta_item_1:128>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:4>, <modularmachinery:itemmodularium>], 
            [<gregtech:meta_item_1:143>, <enderio:block_tank>, <gregtech:meta_item_1:143>]
          ]);
        //Ludicrous
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockfluidinputhatch:6>, [
            [<gregtech:meta_item_1:129>, <gregtech:meta_item_1:144>, <modularmachinery:itemmodularium>], 
            [<enderio:block_tank>, <modularmachinery:blockfluidinputhatch:5>, <enderio:block_tank>], 
            [<modularmachinery:itemmodularium>, <gregtech:meta_item_1:144>, <gregtech:meta_item_1:129>]
          ]);
        //Vaccum
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockfluidinputhatch:7>, [
            [<modularmachinery:itemmodularium>, <enderio:block_tank>, <gregtech:meta_item_1:130>], 
            [<enderio:block_tank>, <modularmachinery:blockfluidinputhatch:6>, <enderio:block_tank>], 
            [<gregtech:meta_item_1:145>, <enderio:block_tank>, <modularmachinery:itemmodularium>]
          ]);
      //Outputs
        //Nomal
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockfluidoutputhatch:2>, [
            [null, <gregtech:meta_item_1:127>, <enderio:block_tank>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:1>, <modularmachinery:itemmodularium>], 
            [<enderio:block_tank>, <gregtech:meta_item_1:142>, null]
          ]);
        //Reinforced
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockfluidoutputhatch:3>, [
            [<gregtech:meta_item_1:127>, <enderio:block_tank>, <gregtech:meta_item_1:127>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:2>, <modularmachinery:itemmodularium>], 
            [<gregtech:meta_item_1:142>, <enderio:block_tank>, <gregtech:meta_item_1:142>]
          ]);
        //Big
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockfluidoutputhatch:4>, [
            [null, <gregtech:meta_item_1:128>, <enderio:block_tank>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:3>, <modularmachinery:itemmodularium>], 
            [<enderio:block_tank>, <gregtech:meta_item_1:143>, null]
          ]);
        //Huge
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockfluidoutputhatch:5>, [
            [<gregtech:meta_item_1:128>, <enderio:block_tank>, <gregtech:meta_item_1:128>], 
            [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:4>, <modularmachinery:itemmodularium>], 
            [<gregtech:meta_item_1:143>, <enderio:block_tank>, <gregtech:meta_item_1:143>]
          ]);
        //Ludicrous
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockfluidoutputhatch:6>, [
            [<gregtech:meta_item_1:129>, <gregtech:meta_item_1:144>, <modularmachinery:itemmodularium>], 
            [<enderio:block_tank>, <modularmachinery:blockfluidoutputhatch:5>, <enderio:block_tank>], 
            [<modularmachinery:itemmodularium>, <gregtech:meta_item_1:144>, <gregtech:meta_item_1:129>]
          ]);
        //Vaccum
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockfluidoutputhatch:7>, [
            [<modularmachinery:itemmodularium>, <enderio:block_tank>, <gregtech:meta_item_1:130>], 
            [<enderio:block_tank>, <modularmachinery:blockfluidoutputhatch:6>, <enderio:block_tank>], 
            [<gregtech:meta_item_1:145>, <enderio:block_tank>, <modularmachinery:itemmodularium>]
          ]);
    //Energy
      //Inputs
        //Nomal
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockenergyinputhatch:2>, [
            [<gregtech:meta_item_1:602>, <ore:blockRedstone>, <gregtech:meta_item_1:602>], 
            [<gregtech:meta_item_1:98>, <modularmachinery:blockenergyinputhatch:1>, <gregtech:meta_item_1:98>], 
            [<gregtech:meta_item_1:602>, <ore:blockRedstone>, <gregtech:meta_item_1:602>]
          ]);
        //Reinforced
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockenergyinputhatch:3>, [
            [<gregtech:meta_item_1:603>, <ore:batteryHv>, <gregtech:meta_item_1:603>], 
            [<gregtech:meta_item_1:99>, <modularmachinery:blockenergyinputhatch:2>, <gregtech:meta_item_1:99>], 
            [<gregtech:meta_item_1:603>, <ore:batteryHv>, <gregtech:meta_item_1:603>]
          ]);
        //Big
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockenergyinputhatch:4>, [
            [<gregtech:meta_item_1:604>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:604>], 
            [<gregtech:meta_item_1:100>, <modularmachinery:blockenergyinputhatch:3>, <gregtech:meta_item_1:100>], 
            [<gregtech:meta_item_1:604>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:604>]
          ]);
        //Huge
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockenergyinputhatch:5>, [
            [<gregtech:meta_item_1:605>, <ore:batteryIv>, <gregtech:meta_item_1:604>], 
            [<gregtech:meta_item_1:101>, <modularmachinery:blockenergyinputhatch:4>, <gregtech:meta_item_1:101>], 
            [<gregtech:meta_item_1:604>, <ore:batteryIv>, <gregtech:meta_item_1:605>]
          ]);
        //Ludicrous
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockenergyinputhatch:6>, [
            [<gregtech:meta_item_1:606>, <ore:batteryZpm>, <gregtech:meta_item_1:605>], 
            [<gregtech:meta_item_1:103>, <modularmachinery:blockenergyinputhatch:5>, <gregtech:meta_item_1:103>], 
            [<gregtech:meta_item_1:605>, <ore:batteryZpm>, <gregtech:meta_item_1:606>]
          ]);
        //Ultimate
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockenergyinputhatch:7>, [
            [<gregtech:meta_item_1:104>, <ore:batteryUv>, <gregtech:meta_item_1:104>], 
            [<gregtech:meta_item_1:606>, <modularmachinery:blockenergyinputhatch:6>, <gregtech:meta_item_1:606>], 
            [<gregtech:meta_item_1:104>, <ore:batteryUv>, <gregtech:meta_item_1:104>]
          ]);
      //Outputs
        //Nomal
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockenergyoutputhatch:2>, [
            [<gregtech:meta_item_1:602>, <ore:blockRedstone>, <gregtech:meta_item_1:602>], 
            [<gregtech:meta_item_1:98>, <modularmachinery:blockenergyoutputhatch:1>, <gregtech:meta_item_1:98>], 
            [<gregtech:meta_item_1:602>, <ore:blockRedstone>, <gregtech:meta_item_1:602>]
          ]);
        //Reinforced
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockenergyoutputhatch:3>, [
            [<gregtech:meta_item_1:603>, <ore:batteryHv>, <gregtech:meta_item_1:603>], 
            [<gregtech:meta_item_1:99>, <modularmachinery:blockenergyoutputhatch:2>, <gregtech:meta_item_1:99>], 
            [<gregtech:meta_item_1:603>, <ore:batteryHv>, <gregtech:meta_item_1:603>]
          ]);
        //Big
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockenergyoutputhatch:4>, [
            [<gregtech:meta_item_1:604>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:604>], 
            [<gregtech:meta_item_1:100>, <modularmachinery:blockenergyoutputhatch:3>, <gregtech:meta_item_1:100>], 
            [<gregtech:meta_item_1:604>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:604>]
          ]);
        //Huge
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockenergyoutputhatch:5>, [
            [<gregtech:meta_item_1:605>, <ore:batteryIv>, <gregtech:meta_item_1:604>], 
            [<gregtech:meta_item_1:101>, <modularmachinery:blockenergyoutputhatch:4>, <gregtech:meta_item_1:101>], 
            [<gregtech:meta_item_1:604>, <ore:batteryIv>, <gregtech:meta_item_1:605>]
          ]);
        //Ludicrous
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockenergyoutputhatch:6>, [
            [<gregtech:meta_item_1:606>, <ore:batteryZpm>, <gregtech:meta_item_1:605>], 
            [<gregtech:meta_item_1:103>, <modularmachinery:blockenergyoutputhatch:5>, <gregtech:meta_item_1:103>], 
            [<gregtech:meta_item_1:605>, <ore:batteryZpm>, <gregtech:meta_item_1:606>]
          ]);
        //Ultimate
          mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockenergyoutputhatch:7>, [
            [<gregtech:meta_item_1:104>, <ore:batteryUv>, <gregtech:meta_item_1:104>], 
            [<gregtech:meta_item_1:606>, <modularmachinery:blockenergyoutputhatch:6>, <gregtech:meta_item_1:606>], 
            [<gregtech:meta_item_1:104>, <ore:batteryUv>, <gregtech:meta_item_1:104>]
          ]);
  //Casing
    //Machine Casing
      mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockcasing> * 2, [
        [<modularmachinery:itemmodularium>, <ore:frameGtManasteel>, <modularmachinery:itemmodularium>], 
        [<modularmachinery:itemmodularium>, <ore:plateSteel>, <modularmachinery:itemmodularium>], 
        [<modularmachinery:itemmodularium>, <ore:frameGtManasteel>, <modularmachinery:itemmodularium>]
      ]);
    //Machine Vent
      mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockcasing:1> * 2, [
        [<modularmachinery:itemmodularium>, <gregtech:multiblock_casing:2>, <modularmachinery:itemmodularium>], 
        [<modularmachinery:itemmodularium>, <ore:barsIron>, <modularmachinery:itemmodularium>], 
        [<modularmachinery:itemmodularium>, <gregtech:multiblock_casing:2>, <modularmachinery:itemmodularium>]
      ]);
    //FireBox Casing
      mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockcasing:2>, [
        [<modularmachinery:itemmodularium>, <gregtech:boiler_firebox_casing:1>, <modularmachinery:itemmodularium>], 
        [<modularmachinery:itemmodularium>, <gregtech:machine_casing:2>, <modularmachinery:itemmodularium>], 
        [<modularmachinery:itemmodularium>, <gregtech:boiler_firebox_casing:1>, <modularmachinery:itemmodularium>]
      ]);
    //Machine GearBox
      mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockcasing:3>, [
        [<ore:gearSmallSteel>, <ore:gearSteel>, <ore:gearSmallSteel>], 
        [<ore:gearSteel>, <modularmachinery:blockcasing>, <ore:gearSteel>], 
        [<ore:gearSmallSteel>, <ore:gearSteel>, <ore:gearSmallSteel>]
      ]);
    //Reinforced Machine Casing
      mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockcasing:4>, [
        [<ore:stoneObsidian>, <ore:frameGtSteel>, <ore:stoneObsidian>], 
        [<modularmachinery:itemmodularium>, <enderio:block_reinforced_obsidian>, <modularmachinery:itemmodularium>], 
        [<ore:stoneObsidian>, <ore:frameGtSteel>, <ore:stoneObsidian>]
      ]);
    //Machine Circuitry
      mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockcasing:5>, [
        [<ore:circuitEv>, <ore:circuitHv>, <ore:circuitEv>], 
        [<ore:circuitHv>, <modularmachinery:blockcasing>, <ore:circuitHv>], 
        [<ore:circuitEv>, <ore:circuitHv>, <ore:circuitEv>]
      ]);
  //Modularium
    alloy_smelter.recipeBuilder()
    .inputs([
      <gregtech:meta_ingot:2>,
      <gregtech:meta_ingot:23>
    ])
    .outputs([<modularmachinery:itemmodularium> * 2])
    .EUt(96)
    .duration(100)
    .buildAndRegister();
  //Machine Controller
    mods.extendedcrafting.TableCrafting.addShaped(1, <modularmachinery:blockcontroller>, [
      [<ore:componentTransistor>, <gregtech:meta_item_1:307>, <ore:componentTransistor>], 
      [<ore:circuitMv>, <modularmachinery:blockcasing>, <ore:circuitMv>], 
      [<gregtech:meta_item_1:97>, <gregtech:meta_item_1:217>, <gregtech:meta_item_1:97>]
    ]);

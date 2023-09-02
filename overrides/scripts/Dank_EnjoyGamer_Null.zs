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

//Remove Recipe
  var danknull as IItemStack[] = [
    <danknull:dank_null_panel_0>,
    <danknull:dank_null_panel_1>,
    <danknull:dank_null_panel_2>,
    <danknull:dank_null_panel_3>,
    <danknull:dank_null_panel_4>,
    <danknull:dank_null_panel_5>,
    <danknull:dank_null_0>,
    <danknull:dank_null_1>,
    <danknull:dank_null_2>,
    <danknull:dank_null_3>,
    <danknull:dank_null_4>,
    <danknull:dank_null_5>
  ];

  for i in danknull {
    recipes.remove(i);
  }

//ADD Recipes
  //panel
    //Mk.1
      mods.extendedcrafting.TableCrafting.addShaped(1, <danknull:dank_null_panel_0>, [
        [<ore:blockRedstone>, <quark:framed_glass_pane>, <ore:blockRedstone>], 
        [<quark:framed_glass_pane>, <ore:obsidian>, <quark:framed_glass_pane>], 
        [<ore:blockRedstone>, <quark:framed_glass_pane>, <ore:blockRedstone>]
      ]);
    //Mk.2
      mods.extendedcrafting.TableCrafting.addShaped(1, <danknull:dank_null_panel_1>, [
        [<danknull:dank_null_panel_0>, <randomthings:lapisglass>, <danknull:dank_null_panel_0>], 
        [<randomthings:lapisglass>, <ore:circuitLv>, <randomthings:lapisglass>], 
        [<danknull:dank_null_panel_0>, <randomthings:lapisglass>, <danknull:dank_null_panel_0>]
      ]);
    //Mk.3
      assembler.recipeBuilder()
        .inputs([
          <danknull:dank_null_panel_1> * 4,
          <gregtech:meta_plate:2011> * 4,
          <gregtech:transparent_casing> * 4,
          <ore:circuitHv>
        ])
        .fluidInputs(<liquid:polyvinyl_chloride> * 1440)
        .outputs(<danknull:dank_null_panel_2>)
        .EUt(120)
        .duration(400)
        .buildAndRegister();
    //Mk.4
      assembler.recipeBuilder()
        .inputs([
          <danknull:dank_null_panel_2> * 4,
          <gregtech:meta_plate_double:301> * 4,
          <gregtech:transparent_casing:3> * 4,
          <ore:circuitEv>
        ])
        .fluidInputs(<liquid:reinforced_epoxy_resin> * 1440)
        .outputs(<danknull:dank_null_panel_3>)
        .EUt(2000)
        .duration(800)
        .buildAndRegister();
    //Mk.5
      assembler.recipeBuilder()
        .inputs([
          <danknull:dank_null_panel_3> * 4,
          <gregtech:meta_plate:276>  *4,
          <gregtech:meta_gem_exquisite:276>  * 2,
          <gregtech:transparent_casing:2> * 4,
          <ore:circuitIv>
        ])
        .fluidInputs(<liquid:xenon> * 1000)
        .outputs(<danknull:dank_null_panel_4>)
        .EUt(8000)
        .duration(1600)
        .buildAndRegister();
    //Mk.6
      assembler.recipeBuilder()
        .inputs([
          <danknull:dank_null_panel_4> * 64,
          <gregtech:meta_gem_exquisite:278> * 16,
          <gregtech:transparent_casing:1> * 16,
          <gregtech:meta_plate:1602> * 32,
          <gregtech:meta_stick_long:127> * 16,
          <gregtech:meta_item_1:208> * 8,
          <gregtech:meta_plate:32008>  * 16,
          <ore:circuitZpm> * 4
        ])
        .fluidInputs(<liquid:plasma.argon> * 1250)
        .outputs(<danknull:dank_null_panel_5> * 2)
        .EUt(500000)
        .duration(3200)
        .buildAndRegister();
  //Dank_NullPointerException https://youtu.be/rkaNKAvksDE←お薦めの曲
    //Mk.1
      mods.extendedcrafting.TableCrafting.addShaped(0, <danknull:dank_null_0>, [
	[<danknull:dank_null_panel_0>, <danknull:dank_null_panel_0>, <danknull:dank_null_panel_0>], 
	[<danknull:dank_null_panel_0>, <ore:chest>, <danknull:dank_null_panel_0>], 
	[<danknull:dank_null_panel_0>, <danknull:dank_null_panel_0>, <danknull:dank_null_panel_0>]
]);
    //Mk.2
      mods.extendedcrafting.TableCrafting.addShaped(0, <danknull:dank_null_1>, [
	[<danknull:dank_null_panel_1>, <danknull:dank_null_panel_1>, <danknull:dank_null_panel_1>], 
	[<danknull:dank_null_panel_1>, <danknull:dank_null_0>, <danknull:dank_null_panel_1>], 
	[<danknull:dank_null_panel_1>, <danknull:dank_null_panel_1>, <danknull:dank_null_panel_1>]
]);
    //Mk.3
      assembler.recipeBuilder()
    .inputs([
      <danknull:dank_null_panel_2> * 8,
      <ore:circuitHv> * 4,
      <ironchest:iron_chest:1>
    ])
    .fluidInputs(<liquid:polyvinyl_chloride> * 2880)
    .outputs(<danknull:dank_null_2>)
    .EUt(120)
    .duration(1200)
    .buildAndRegister();
    //Mk.4
      assembler.recipeBuilder()
    .inputs([
      <danknull:dank_null_panel_3> * 8,
      <ironchest:iron_chest:5>,
      <ore:circuitEv> * 4
    ])
    .fluidInputs(<liquid:reinforced_epoxy_resin> * 2880)
    .outputs(<danknull:dank_null_3>)
    .EUt(2000)
    .duration(2400)
    .buildAndRegister();
    //Mk.5
      assembler.recipeBuilder()
    .inputs([
      <danknull:dank_null_panel_4> * 8,
      <multipagechest:multipagechest>,
      <gregtech:meta_item_1:205> * 4,
      <ore:circuitIv> * 4
    ])
    .fluidInputs(<liquid:xenon> * 3000)
    .outputs(<danknull:dank_null_4>)
    .EUt(8000)
    .duration(4800)
    .buildAndRegister();
    //Mk.6
      assline.recipeBuilder()
        .inputs([
          <danknull:dank_null_0>,
          <danknull:dank_null_1>,
          <danknull:dank_null_2>,
          <danknull:dank_null_3>,
          <danknull:dank_null_4>,
          <danknull:dank_null_panel_5> * 8,
          <gregtech:meta_item_1:209> * 2,
          <gregtech:meta_item_1:104> * 16,
          <gregtech:meta_item_1:283> * 2,
          <ore:circuitUhv> * 4,
          <gregtech:meta_item_1:709> * 64,
          <gregtech:meta_item_1:262> * 64,
          <draconicevolution:draconium_chest> * 8,
          <mekanism:teleportationcore> * 4,
          <extracells:storage.component:2> * 8
        ])
        .outputs([<danknull:dank_null_5>])
        .fluidInputs([
          <liquid:plasma.argon> * 2500,
          <liquid:plasma.iron> * 480,
          <liquid:plasma.nickel> * 480,
          <liquid:plasma.nitrogen> * 2500
        ])
        .EUt(1000000)
        .duration(9600)
        .buildAndRegister();
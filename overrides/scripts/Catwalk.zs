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

//Remove Recipes
  var catwalk as IItemStack[] = [
    <catwalks:blowtorch>,
    <catwalks:cable>,
    <catwalks:catwalk>.withTag({material: "classic"}),
    <catwalks:catwalk>.withTag({material: "magneticraft_steel"}),
    <catwalks:catwalk>.withTag({material: "glass"}),
    <catwalks:catwalk>.withTag({material: "custom_0"}),
    <catwalks:catwalk>.withTag({material: "treated_wood"}),
    <catwalks:ladder>
  ];

  for i in catwalk {
    recipes.remove(i);
  }

//ADD Recipes
  //Tool
    //BlowTorch
      mods.extendedcrafting.TableCrafting.addShaped(1, <catwalks:blowtorch>, [
        [null, <ore:stickSteel>, <minecraft:flint_and_steel>], 
        [<ore:stickIronMagnetic>, <ore:stickSteel>, <ore:stickSteel>], 
        [<ore:stickSteel>, <ore:stickIronMagnetic>, null]
      ]);
  //Cable
    mods.extendedcrafting.TableCrafting.addShaped(1, <catwalks:cable> * 6, [
      [null, <ore:stickLongSteel>, craftingToolSaw], 
      [null, <ore:stickLongSteel>, null], 
      [craftingToolFile, <ore:stickLongSteel>, craftingToolHardHammer]
    ]);
  //Catwalls
    //Classic
      mods.extendedcrafting.TableCrafting.addShaped(1, <catwalks:catwalk>.withTag({material: "classic"}) * 4, [
        [craftingToolScrewdriver, null, craftingToolHardHammer], 
        [<ore:barsIron>, <ore:plateIron>, <ore:barsIron>], 
        [<ore:screwIron>, <ore:barsIron>, <ore:screwIron>]
      ]);
    //Steel
      mods.extendedcrafting.TableCrafting.addShaped(1, <catwalks:catwalk>.withTag({material: "magneticraft_steel"}) * 4, [
        [craftingToolScrewdriver, <ore:screwSteel>, craftingToolHardHammer], 
        [<ore:barsIron>, <ore:ingotSteel>, <ore:barsIron>], 
        [<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickSteel>]
      ]);
    //Glass
      mods.extendedcrafting.TableCrafting.addShaped(1, <catwalks:catwalk>.withTag({material: "glass"}) * 4, [
        [craftingToolScrewdriver, null, craftingToolFile], 
        [<ore:barsIron>, <ore:screwSteel>, <ore:barsIron>], 
        [<gregtech:transparent_casing>, <ore:stickSteel>, <gregtech:transparent_casing>]
      ]);
    //Wood
      mods.extendedcrafting.TableCrafting.addShaped(1, <catwalks:catwalk>.withTag({material: "custom_0"}) * 4, [
        [<ore:stickWood>, <ore:screwIron>, <ore:stickWood>], 
        [<ore:stickWood>, <ore:barsIron>, <ore:stickWood>], 
        [craftingToolScrewdriver, null, craftingToolSoftHammer]
      ]);
    //Treated Wood
      mods.extendedcrafting.TableCrafting.addShaped(1, <catwalks:catwalk>.withTag({material: "treated_wood"}) * 4, [
        [craftingToolScrewdriver, craftingToolFile, craftingToolSoftHammer], 
        [<ore:stickTreatedWood>, <ore:screwSteel>, <ore:stickTreatedWood>], 
        [<ore:barsIron>, <ore:stickTreatedWood>, <ore:barsIron>]
      ]);
    //NyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyanNyan
      mods.extendedcrafting.TableCrafting.addShaped(1, <catwalks:catwalk>.withTag({material: "nyanwalk"}) * 6, [
        [null, null, null], 
        [<minecraft:cake>, null, <minecraft:cake>], 
        [<minecraft:cake>, <minecraft:cake>, <minecraft:cake>]
      ]);
    //Ladder
      mods.extendedcrafting.TableCrafting.addShaped(1, <catwalks:ladder>, [
        [<ore:barsIron>, <minecraft:ladder>, <ore:barsIron>], 
        [<ore:screwIron>, craftingToolScrewdriver, <ore:screwIron>], 
        [null, <ore:stickSteel>, null]
      ]);
  //CatWalk GT:Assembler Recipes
    //Cable
      wiremill.recipeBuilder()
        .inputs([<gregtech:meta_stick_long:324>])
        .outputs(<catwalks:cable> * 2)
        .EUt(16)
        .duration(80)
        .buildAndRegister();
    //Nomal
      assembler.recipeBuilder()
        .inputs([
          <minecraft:iron_bars> * 3,
          <gregtech:meta_plate:51>
        ])
        .fluidInputs(<liquid:soldering_alloy> * 36)
        .outputs(<catwalks:catwalk>.withTag({material: "classic"}) * 4)
        .EUt(20)
        .duration(120)
        .buildAndRegister();
    //Steel
      assembler.recipeBuilder()
        .inputs([
          <minecraft:iron_bars> * 3,
          <gregtech:meta_stick:324> * 4,
          <gregtech:meta_plate:324>
        ])
        .fluidInputs(<liquid:tin_alloy> * 144)
        .outputs(<catwalks:catwalk>.withTag({material: "magneticraft_steel"}) * 4)
        .EUt(36)
        .duration(100)
        .buildAndRegister();
    //Glass
      assembler.recipeBuilder()
        .inputs([
          <gregtech:transparent_casing> * 2,
          <minecraft:iron_bars> * 2,
          <gregtech:meta_stick:324> * 2
        ])
        .fluidInputs(<liquid:steel> * 72)
        .outputs(<catwalks:catwalk>.withTag({material: "glass"}) * 4)
        .EUt(100)
        .duration(120)
        .buildAndRegister();
    //Wood
      assembler.recipeBuilder()
        .inputs([
          <minecraft:stick> * 4,
          <minecraft:iron_bars>
        ])
        .fluidInputs(<liquid:glue> * 25)
        .outputs(<catwalks:catwalk>.withTag({material: "custom_0"}))
        .EUt(10)
        .duration(40)
        .buildAndRegister();
      //Wood Another
        assembler.recipeBuilder()
          .inputs([
            <gregtech:meta_stick_long:1617> * 8,
            <minecraft:iron_bars> * 2
          ])
          .fluidInputs(<liquid:glue> * 100)
          .outputs(<catwalks:catwalk>.withTag({material: "custom_0"}) * 4)
          .EUt(30)
          .duration(120)
          .buildAndRegister();
    //Treated Wood
      assembler.recipeBuilder()
        .inputs([
          <gregtech:meta_stick:1648> * 3,
          <minecraft:iron_bars> * 2
        ])
        .fluidInputs(<liquid:glue> * 50)
        .outputs(<catwalks:catwalk>.withTag({material: "treated_wood"}))
        .EUt(40)
        .duration(100)
        .buildAndRegister();
      //Treated Wood Another
        assembler.recipeBuilder()
          .inputs([
            <gregtech:meta_stick:1648> * 12,
            <minecraft:iron_bars> * 6
          ])
          .fluidInputs(<liquid:plastic> * 144)
          .outputs(<catwalks:catwalk>.withTag({material: "treated_wood"}) * 4)
          .EUt(120)
          .duration(240)
          .buildAndRegister();
    //Ladder
      assembler.recipeBuilder()
        .inputs([
          <minecraft:iron_bars> * 2,
          <minecraft:ladder>,
          <gregtech:meta_stick:51> * 2
        ])
        .fluidInputs(<liquid:soldering_alloy> * 72)
        .outputs(<catwalks:ladder>)
        .EUt(24)
        .duration(100)
        .buildAndRegister();
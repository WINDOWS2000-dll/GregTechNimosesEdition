#=================================================
# MODPACKNAME: GregTechNimosesEdition
# Writer: Sanjinoyatu1692
# DiscordName: Windows.EXE2000#2700
# Issue: Please send to my DirectMessage
#=================================================

#priority 810

import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialRegistry;
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
import mods.gregtech.material.Elements;

//Remove Recipes

var naquadahores as IItemStack[] = [
    <gregtech:ore_naquadah_0:0>,
    <gregtech:ore_naquadah_0:1>,
    <gregtech:ore_naquadah_0:2>,
    <gregtech:ore_naquadah_0:3>,
    <gregtech:ore_naquadah_0:4>,
    <gregtech:ore_naquadah_0:5>,
    <gregtech:ore_naquadah_0:6>,
    <gregtech:ore_naquadah_0:7>,
    <gregtech:ore_naquadah_0:8>,
    <gregtech:ore_naquadah_0:9>,
    <gregtech:ore_naquadah_0:10>,
    <gregtech:ore_naquadah_0:11>
];

for naquadah in naquadahores {
    <recipemap:macerator>.findRecipe(2, [naquadah], null).remove();
    <recipemap:forge_hammer>.findRecipe(16, [naquadah], null).remove();

}


//ADD Recipe
  //Naquadah Line
    //Step1 とかす
      chem_bath.recipeBuilder()
        .inputs(<gregtech:ore_naquadah_0>)
        .chancedOutput(<gregtech:meta_dust_tiny:32100>, 500, 100)
        .chancedOutput(<gregtech:meta_dust_tiny:32101>, 50, 10)
        .fluidInputs(<liquid:aqua_regia> * 1000)
        .fluidOutputs(<liquid:acidicnaquadahsolution> * 2000)
        .duration(600)
        .EUt(1920)
        .buildAndRegister();
    //Step2 ぶんりゅー
      distillation_tower.recipeBuilder()
        .fluidInputs(<liquid:acidicnaquadahsolution> * 2000)
        .fluidOutputs([
          <liquid:heavymetaldrainage> * 1500
        ])
        .outputs(<gregtech:meta_dust:32100> * 2)
        .duration(1200)
        .EUt(3200)
        .buildAndRegister();
    //Step2-1 はいえきしょり
      distillation_tower.recipeBuilder()
        .fluidInputs(<liquid:heavymetaldrainage> * 3000)
        .fluidOutputs([
          <liquid:hydrochloric_acid> * 500,
          <liquid:nitric_acid> * 250
        ])
        .outputs(<gregtech:meta_dust_small:364> * 2)
        .duration(2000)
        .EUt(6400)
        .buildAndRegister();
    //Step3 もっかいとかす
      chem_reactor.recipeBuilder()
        .inputs([<gregtech:meta_dust:32100>])
        .fluidInputs([<liquid:fluoroantimonic_acid> * 2000])
        .outputs([
          <gregtech:meta_dust_small:82>,
          <gregtech:meta_dust_small:117>
        ])
        .fluidOutputs([<liquid:naquadahresiduesolution> * 2000])
        .EUt(4800)
        .duration(1680)
        .buildAndRegister();
    //Step4　のーしゅく
      centrifuge.recipeBuilder()
        .fluidInputs([<liquid:naquadahresiduesolution> * 4000])
        .fluidOutputs([
          <liquid:concentratednaquadahmixture> * 3000,
          <liquid:naquadahsolutionresidue> * 1000
        ])
        .EUt(2400)
        .duration(4200)
        .buildAndRegister();
    //Step5 せいせー
      electrolyzer.recipeBuilder()
        .notConsumable([
          <gregtech:meta_plate:75>,
          <gregtech:meta_plate:77>
        ])
        .fluidInputs(<liquid:concentratednaquadahmixture> * 3000)
        .fluidOutputs([
          <liquid:refinednaquadahsolution> * 2000,
          <liquid:naquadahsolutionresidue> * 1000
        ])
        .EUt(6000)
        .duration(720)
        .buildAndRegister();
    //Step6 きせのんか
      cracker.recipeBuilder()
        .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 32}))
        .fluidInputs([
          <liquid:refinednaquadahsolution> * 40000,
          <liquid:xenon> * 120000
        ])
        .fluidOutputs([<liquid:xenonizationnaquadahsolution> * 40000])
        .EUt(10000)
        .duration(6000)
        .buildAndRegister();
    //Step7 あんてーか
      vacuum_freezer.recipeBuilder()
        .fluidInputs([
          <liquid:xenonizationnaquadahsolution> * 40000
        ])
        .fluidOutputs([<liquid:stabilizationnaquadahsolution> * 40000])
        .EUt(16000)
        .duration(4200)
        .buildAndRegister();
    //Step8　かんせー
      electrolyzer.recipeBuilder()
        .fluidInputs([<liquid:stabilizationnaquadahsolution> * 40000])
        .outputs([
          <gregtech:meta_dust:124> * 48,
          <gregtech:meta_dust:4> * 2
        ])
        .fluidOutputs([
          <liquid:hydrofluoric_acid> * 8000,
          <liquid:fluorine> * 6000
        ])
        .EUt(6400)
        .duration(6000)
        .buildAndRegister();
    //Step8-1 廃液処理
      electrolyzer.recipeBuilder()
        .fluidInputs([<liquid:naquadahsolutionresidue> * 20000])
        .outputs([
          <gregtech:meta_dust:56> * 4,
          <gregtech:meta_dust:103> * 4,
          <gregtech:meta_dust:109> * 2,
          <gregtech:meta_dust:64> * 2,
          <gregtech:meta_dust:66> * 2,
          <gregtech:meta_dust:39> * 2
        ])
        .fluidOutputs([<liquid:distilled_water> * 4000])
        .EUt(1920)
        .duration(4800)
        .buildAndRegister();



        





//Remove Recipes
  //Naquadah Ore Prosessing
    //Naquadah Ore
      // Purified Naquadah Ore * 1
<recipemap:ore_washer>.findRecipe(4, [<metaitem:crushedNaquadah>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:water> * 100]).remove();
      // Purified Naquadah Ore * 1
<recipemap:ore_washer>.findRecipe(16, [<metaitem:crushedNaquadah>], [<liquid:distilled_water> * 100]).remove();
      // Purified Naquadah Ore * 1
<recipemap:ore_washer>.findRecipe(16, [<metaitem:crushedNaquadah>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:water> * 1000]).remove();
      // Impure Pile of Naquadah Dust * 1
<recipemap:macerator>.findRecipe(2, [<metaitem:crushedNaquadah>], null).remove();
      // Impure Pile of Naquadah Dust * 1
<recipemap:forge_hammer>.findRecipe(16, [<metaitem:crushedNaquadah>], null).remove();
      // Centrifuged Naquadah Ore * 1
<recipemap:thermal_centrifuge>.findRecipe(30, [<metaitem:crushedNaquadah>], null).remove();
      // Centrifuged Naquadah Ore * 1
<recipemap:thermal_centrifuge>.findRecipe(30, [<metaitem:crushedPurifiedNaquadah>], null).remove();
      // Purified Pile of Naquadah Dust * 1
<recipemap:macerator>.findRecipe(2, [<metaitem:crushedPurifiedNaquadah>], null).remove();
      // Purified Pile of Naquadah Dust * 1
<recipemap:forge_hammer>.findRecipe(16, [<metaitem:crushedPurifiedNaquadah>], null).remove();
      // Naquadah Dust * 1
<recipemap:electromagnetic_separator>.findRecipe(24, [<metaitem:dustPureNaquadah>], null).remove();
      // Naquadah Dust * 1
<recipemap:centrifuge>.findRecipe(5, [<metaitem:dustPureNaquadah>], null).remove();
      // Naquadah Dust * 1
<recipemap:ore_washer>.findRecipe(4, [<metaitem:dustPureNaquadah>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:water> * 100]).remove();
      // Naquadah Dust * 1
<recipemap:macerator>.findRecipe(2, [<metaitem:crushedCentrifugedNaquadah>], null).remove();
      // Naquadah Dust * 1
<recipemap:forge_hammer>.findRecipe(16, [<metaitem:crushedCentrifugedNaquadah>], null).remove();
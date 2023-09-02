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

//"DELETE" Recipe
  //Suepr Chest
    //1
      recipes.remove(<gregtech:machine:1560>);
    //2
      recipes.remove(<gregtech:machine:1561>);

//鉄バニラ化レシピ
chem_reactor.recipeBuilder()
    .inputs([<gregtech:ore_iron_0>])
    .fluidInputs([<liquid:fluidedmana> * 5])
    .outputs([<minecraft:iron_ore>])
    .EUt(40)
    .duration(20)
    .buildAndRegister();
//液体黒曜石とは一体
extractor.recipeBuilder()
  .inputs([<minecraft:obsidian>])
  .notConsumable([<gregtech:meta_item_1:461>.withTag({Configuration: 32})])
  .fluidOutputs(<liquid:obsidian> * 288)
  .EUt(120)
  .duration(80)
  .buildAndRegister();
//面倒ごとは嫌いだよ
// 液体超高密度ニュートロン * 16
<recipemap:extractor>.findRecipe(30, [<metaitem:nuggetNeutronium>], null).remove();
// 液体超高密度ニュートロン * 16
<recipemap:extractor>.findRecipe(30, [<metaitem:screwNeutronium>], null).remove();
// 液体超高密度ニュートロン * 18
<recipemap:extractor>.findRecipe(30, [<metaitem:boltNeutronium>], null).remove();
// 液体超高密度ニュートロン * 72
<recipemap:extractor>.findRecipe(30, [<metaitem:pipeTinyFluidNeutronium>], null).remove();
// 液体超高密度ニュートロン * 72
<recipemap:extractor>.findRecipe(30, [<metaitem:stickNeutronium>], null).remove();
// 液体超高密度ニュートロン * 144
<recipemap:extractor>.findRecipe(30, [<metaitem:ingotNeutronium>], null).remove();
// 液体超高密度ニュートロン * 144
<recipemap:extractor>.findRecipe(30, [<metaitem:dustNeutronium>], null).remove();
// 液体超高密度ニュートロン * 144
<recipemap:extractor>.findRecipe(30, [<metaitem:stickLongNeutronium>], null).remove();
// 液体超高密度ニュートロン * 144
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadScrewdriverNeutronium>], null).remove();
// 液体超高密度ニュートロン * 144
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadShovelNeutronium>], null).remove();
// 液体超高密度ニュートロン * 144
<recipemap:extractor>.findRecipe(30, [<metaitem:pipeSmallFluidNeutronium>], null).remove();
// 液体超高密度ニュートロン * 144
<recipemap:extractor>.findRecipe(30, [<metaitem:plateNeutronium>], null).remove();
// 液体超高密度ニュートロン * 144
<recipemap:extractor>.findRecipe(30, [<metaitem:springNeutronium>], null).remove();
// 液体超高密度ニュートロン * 288
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadHoeNeutronium>], null).remove();
// 液体超高密度ニュートロン * 288
<recipemap:extractor>.findRecipe(30, [<metaitem:frameNeutronium>], null).remove();
// 液体超高密度ニュートロン * 288
<recipemap:extractor>.findRecipe(30, [<metaitem:plateDoubleNeutronium>], null).remove();
// 液体超高密度ニュートロン * 288
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadFileNeutronium>], null).remove();
// 液体超高密度ニュートロン * 288
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadSwordNeutronium>], null).remove();
// 液体超高密度ニュートロン * 288
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadSawNeutronium>], null).remove();
// スチールインゴット * 4
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadChainsawNeutronium>], null).remove();
// 液体超高密度ニュートロン * 432
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadSenseNeutronium>], null).remove();
// 液体超高密度ニュートロン * 432
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadPickaxeNeutronium>], null).remove();
// 液体超高密度ニュートロン * 432
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadAxeNeutronium>], null).remove();
// 液体超高密度ニュートロン * 432
<recipemap:extractor>.findRecipe(30, [<metaitem:pipeNormalFluidNeutronium>], null).remove();
// 液体超高密度ニュートロン * 576
<recipemap:extractor>.findRecipe(30, [<metaitem:pipeQuadrupleFluidNeutronium>], null).remove();
// 液体超高密度ニュートロン * 576
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadBuzzSawNeutronium>], null).remove();
// 液体超高密度ニュートロン * 576
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadWrenchNeutronium>], null).remove();
// スチールインゴット * 4
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadDrillNeutronium>], null).remove();
// 液体超高密度ニュートロン * 864
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadHammerNeutronium>], null).remove();
// 液体超高密度ニュートロン * 864
<recipemap:extractor>.findRecipe(30, [<metaitem:pipeLargeFluidNeutronium>], null).remove();
// 液体超高密度ニュートロン * 1296
<recipemap:extractor>.findRecipe(30, [<metaitem:blockNeutronium>], null).remove();
// 液体超高密度ニュートロン * 1296
<recipemap:extractor>.findRecipe(30, [<metaitem:pipeNonupleFluidNeutronium>], null).remove();
// 液体超高密度ニュートロン * 1296
<recipemap:extractor>.findRecipe(30, [<metaitem:plateDenseNeutronium>], null).remove();
// 液体超高密度ニュートロン * 1440
<recipemap:extractor>.findRecipe(30, [<metaitem:turbineBladeNeutronium>], null).remove();
// 液体超高密度ニュートロン * 1728
<recipemap:extractor>.findRecipe(30, [<metaitem:pipeHugeFluidNeutronium>], null).remove();
// ニュートロニウムインゴット * 1
<recipemap:fluid_solidifier>.findRecipe(7, [<metaitem:shape.mold.ingot>], [<liquid:neutronium> * 144]).remove();
// ニュートロニウムプレート * 1
<recipemap:fluid_solidifier>.findRecipe(7, [<metaitem:shape.mold.plate>], [<liquid:neutronium> * 144]).remove();
// ニュートロニウムナゲット * 9
<recipemap:fluid_solidifier>.findRecipe(7, [<metaitem:shape.mold.nugget>], [<liquid:neutronium> * 144]).remove();
// ニュートロニウムブロック * 1
<recipemap:fluid_solidifier>.findRecipe(7, [<metaitem:shape.mold.block>], [<liquid:neutronium> * 1296]).remove();
// 液体超高密度ニュートロン * 32
<recipemap:fusion_reactor>.findRecipe(98304, null, [<liquid:americium> * 128, <liquid:naquadria> * 128]).remove();
//UltraHighDensityNeutronium
fusion_reactor.recipeBuilder()
    .fluidInputs([<liquid:naquadria> * 128, <liquid:americium> * 128])
    .fluidOutputs(<liquid:ultrahighdensityneutronium> * 32)
    .property("eu_to_start", 600000000)
    .EUt(98304)
    .duration(200)
    .buildAndRegister();
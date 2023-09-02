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

//Remove Recipe
  var eioconduit as IItemStack[] = [
    <enderio:item_item_conduit>,
    <enderio:item_liquid_conduit>,
    <enderio:item_liquid_conduit:1>,
    <enderio:item_liquid_conduit:2>,
    <enderio:item_power_conduit>,
    <enderio:item_power_conduit:1>,
    <enderio:item_power_conduit:2>,
    <enderio:item_endergy_conduit:1>,
    <enderio:item_endergy_conduit:2>,
    <enderio:item_endergy_conduit:3>,
    <enderio:item_endergy_conduit:4>,
    <enderio:item_endergy_conduit:5>,
    <enderio:item_endergy_conduit:6>,
    <enderio:item_endergy_conduit:7>,
    <enderio:item_endergy_conduit:8>,
    <enderio:item_endergy_conduit:9>,
    <enderio:item_endergy_conduit:10>,
    <enderio:item_endergy_conduit:11>,
    <enderio:item_me_conduit>,
    <enderio:item_me_conduit:1>
  ];

  for i in eioconduit {
    recipes.remove(i);
  }

//ADD recipe
  //ItemConduit
    mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_item_conduit> * 16, [
      [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
      [<ore:pipeNormalItemCobalt>, <ore:ingotPulsatingIron>, <ore:pipeNormalItemCobalt>], 
      [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
    ]);
  //Fluid Conduit 
    //T1
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_liquid_conduit>, [
        [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
        [<extrautils2:decorativeglass>, <extrautils2:decorativeglass>, <extrautils2:decorativeglass>], 
        [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
      ]);
    //T2
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_liquid_conduit:1>, [
        [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
        [<gregtech:meta_item_1:142>, <enderio:item_liquid_conduit>, <gregtech:meta_item_1:142>], 
        [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
      ]);
    //T3
      assembler.recipeBuilder()
        .inputs([
          <enderio:item_liquid_conduit:1> * 4,
          <enderio:item_material:4> * 16,
          <enderio:item_alloy_ingot:2> * 4,
          <enderio:item_material:41>
        ])
        .outputs(<enderio:item_liquid_conduit:2> * 2)
        .EUt(600)
        .duration(180)
        .buildAndRegister();
  //Energy Conduit
    //Iron
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_endergy_conduit:1>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtSingleIron>, <ore:wireGtSingleIron>, <ore:wireGtSingleIron>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
    //Aluminium
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_endergy_conduit:2>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtDoubleAluminium>, <ore:wireGtDoubleAluminium>, <ore:wireGtDoubleAluminium>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
    //Gold
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_endergy_conduit:3>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtDoubleGold>, <ore:wireGtDoubleGold>, <ore:wireGtDoubleGold>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
    //Copper
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_endergy_conduit:4>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtDoubleCopper>, <ore:wireGtDoubleCopper>, <ore:wireGtDoubleCopper>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
    //Silver
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_endergy_conduit:5>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtDoubleSilver>, <ore:wireGtDoubleSilver>, <ore:wireGtDoubleSilver>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
    //Electrum
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_endergy_conduit:6>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:wireGtDoubleElectrum>, <ore:wireGtDoubleElectrum>, <ore:wireGtDoubleElectrum>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
    //Energetic Silver
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_endergy_conduit:7>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:ingotEnergeticSilver>, <enderio:item_power_conduit:1>, <ore:ingotEnergeticSilver>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
    //Crystalline
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_endergy_conduit:8>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<enderio:item_power_conduit:2>, <ore:ingotCrystallineAlloy>, <enderio:item_power_conduit:2>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
    //Crystalline Pink Slime
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_endergy_conduit:9>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<enderio:item_endergy_conduit:8>, <ore:ingotCrystallinePinkSlime>, <enderio:item_endergy_conduit:8>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
    //Melodic
      mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:item_endergy_conduit:10>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<ore:itemConduitBinder>, <enderio:item_endergy_conduit:9>, <ore:ingotEndSteel>, <enderio:item_endergy_conduit:9>, <ore:itemConduitBinder>], 
	[<ore:ingotMelodicAlloy>, <ore:ingotMelodicAlloy>, <ore:itemVibrantCrystal>, <ore:ingotMelodicAlloy>, <ore:ingotMelodicAlloy>], 
	[<ore:itemConduitBinder>, <enderio:item_endergy_conduit:9>, <ore:ingotEndSteel>, <enderio:item_endergy_conduit:9>, <ore:itemConduitBinder>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
    //Stellar
      mods.extendedcrafting.TableCrafting.addShaped(3, <enderio:item_endergy_conduit:11>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>, <enderio:item_endergy_conduit:10>, <ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<gregtech:meta_item_1:606>, <gregtech:meta_item_1:103>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:606>], 
	[<ore:skullSentientEnder>, <ore:itemEnderCrystal>, <ore:itemEnderCrystal>, <ore:wireGtDoubleTritanium>, <ore:itemEnderCrystal>, <ore:itemEnderCrystal>, <ore:skullSentientEnder>], 
	[<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:wireGtDoubleTritanium>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>], 
	[<ore:skullSentientEnder>, <ore:itemEnderCrystal>, <ore:itemEnderCrystal>, <ore:wireGtDoubleTritanium>, <ore:itemEnderCrystal>, <ore:itemEnderCrystal>, <ore:skullSentientEnder>], 
	[<gregtech:meta_item_1:606>, <gregtech:meta_item_1:103>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <gregtech:meta_item_1:103>, <gregtech:meta_item_1:606>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>, <enderio:item_endergy_conduit:10>, <ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
    //Nomal....?
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_power_conduit>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<enderio:item_endergy_conduit:3>, <ore:ingotConductiveIron>, <enderio:item_endergy_conduit:3>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
    //Enhanced
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_power_conduit:1>, [
	[<enderio:item_endergy_conduit:5>, <ore:itemConduitBinder>, <enderio:item_endergy_conduit:5>], 
	[<ore:ingotEnergeticAlloy>, <ore:itemConduitBinder>, <ore:ingotEnergeticAlloy>], 
	[<enderio:item_endergy_conduit:5>, <ore:itemConduitBinder>, <enderio:item_endergy_conduit:5>]
]);
    //Ender
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_power_conduit:2>, [
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
	[<enderio:item_endergy_conduit:7>, <ore:ingotVibrantAlloy>, <enderio:item_endergy_conduit:7>], 
	[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);
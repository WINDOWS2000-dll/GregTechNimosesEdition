
#priority 820

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
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipeBuilder.newBuilder as mmRecipe;

//ナフサ処理改善
  //レシピ削除
    // Hydrogen Sulfide * 1000
      <recipemap:chemical_reactor>.findRecipe(30, null, [<liquid:sulfuric_naphtha> * 12000, <liquid:hydrogen> * 2000]).remove();
    // Hydrogen Sulfide * 1000
      <recipemap:large_chemical_reactor>.findRecipe(30, null, [<liquid:sulfuric_naphtha> * 12000, <liquid:hydrogen> * 2000]).remove();
//レシピ追加
  //脱硫及び軽質、重質分離
    LCR.recipeBuilder()
      .fluidInputs([
        <liquid:sulfuric_naphtha> * 24000,
        <liquid:hydrogen> * 4000
      ])
      .fluidOutputs([
        <liquid:naphtha> * 12000,
        <liquid:heavynaphtha> * 12000,
        <liquid:hydrogen_sulfide> * 2000
      ])
      .EUt(480)
      .duration(600)
      .buildAndRegister();
  //重質ナフサ接触改質  
    cracker.recipeBuilder()
      .fluidInputs([
        <liquid:heavynaphtha> * 6000,
        <liquid:hydrogen> * 12000,
      ])
      .fluidOutputs([
        <liquid:btx> * 5000,
        <liquid:light_fuel> * 1000
      ])
      .notConsumable([<gregtech:meta_item_1:461>.withTag({Configuration: 15})])
      .EUt(480)
      .duration(600)
      .buildAndRegister();
  //芳香族分離(BTX)
    distillation_tower.recipeBuilder()
      .fluidInputs([<liquid:btx> * 5000])
      .fluidOutputs([
        <liquid:benzene> * 2400,
        <liquid:toluene> * 1600,
        <liquid:pxylene> * 1000,
      ])
      .EUt(480)
      .duration(640)
      .buildAndRegister();
  //1,4-Bis(trichloromethyl)benzene
    chem_reactor.recipeBuilder()
    .fluidInputs([
      <liquid:pxylene> * 1000,
      <liquid:chlorine> * 1000
    ])
    .outputs(<gregtech:meta_dust:32032>)
    .EUt(480)
    .duration(400)
    .buildAndRegister();
  //臭素
    LCR.recipeBuilder()
      .fluidInputs([
        <liquid:salt_water> * 1000,
        <liquid:chlorine> * 1000
      ])
      .fluidOutputs([
        <liquid:bromine> * 500,
        <liquid:chlorine> * 1000,
        <liquid:salt_water> * 1000
      ])
      .EUt(300)
      .duration(300)
      .buildAndRegister();
  //テレフタル酸  
    ebf.recipeBuilder()//必須
      .outputs([<gregtech:meta_dust:32034>])//任意
      .fluidInputs([<liquid:pxylene> * 1000])//任意
      .property("temperature", 523)//必須
      .notConsumable([
        <gregtech:meta_dust:23>,
        <gregtech:meta_dust:61>,
        <gregtech:meta_dust:32033>
      ])//任意
      .EUt(480)//必須
      .duration(800)//必須
      .buildAndRegister();//必須
  //Terephthaloyl chloride
    chem_reactor.recipeBuilder()
      .inputs([
        <gregtech:meta_dust:32034>,
        <gregtech:meta_dust:32032>
      ])
      .outputs([<gregtech:meta_dust:32035> * 2])
      .fluidOutputs([
        <liquid:hydrochloric_acid> * 2000
      ])
      .EUt(480)
      .duration(500)
      .buildAndRegister();
  //4-Nitrochlorobenzene
    chem_reactor.recipeBuilder()
      .fluidInputs([
        <liquid:chlorobenzene> * 1000,
        <liquid:nitric_acid> * 1000
      ])
      .fluidOutputs([
        <liquid:water> * 1000
      ])
      .outputs([<gregtech:meta_dust:32037>])
      .EUt(480)
      .duration(200)
      .buildAndRegister();
  //4-Nitroaniline
    chem_reactor.recipeBuilder()
      .fluidInputs([
        <liquid:ammonia> * 2000
      ])
      .inputs([<gregtech:meta_dust:32037>])
      .outputs([
        <gregtech:meta_dust:32038>,
        <gregtech:meta_dust:2060>
      ])
      .EUt(480)
      .duration(200)
      .buildAndRegister();
  //p-Phenylenediamine
    chem_reactor.recipeBuilder()
      .fluidInputs([
        <liquid:hydrogen> * 3000
      ])
      .inputs([<gregtech:meta_dust:32038>])
      .outputs([
        <gregtech:meta_dust:32036>
      ])
      .fluidOutputs([
        <liquid:water> * 2000
      ])
      .EUt(480)
      .duration(200)
      .buildAndRegister();
  //Kevlar
    chem_reactor.recipeBuilder()
      .inputs([
        <gregtech:meta_dust:32036>,
        <gregtech:meta_dust:32035>
      ])
      .fluidOutputs([
        <liquid:kevlar> * 2304
      ])
      .EUt(480)
      .duration(1000)
      .buildAndRegister();
  //Kevlar Ingot
    fluid_solidifier.recipeBuilder()
      .notConsumable(<gregtech:meta_item_1:16>)
      .fluidInputs(<liquid:kevlar> * 144)
      .outputs(<gregtech:meta_ingot:32040>)
      .EUt(7)
      .duration(20)
      .buildAndRegister();
  //Kevlar Rod
    extruder.recipeBuilder()
      .notConsumable(<gregtech:meta_item_1:32>)
      .inputs(<gregtech:meta_ingot:32040>)
      .outputs(<gregtech:meta_stick:32040>)
      .EUt(42)
      .duration(32)
      .buildAndRegister();
  //Kevlar Fiber
    wiremill.recipeBuilder()
      .inputs(<gregtech:meta_stick:32040>)
      .outputs(<contenttweaker:kevlarfiber> * 4)
      .EUt(100)
      .duration(40)
      .buildAndRegister();
  //Kevlar Fabric
    assembler.recipeBuilder()
      .inputs([<contenttweaker:kevlarfiber> * 8])
      .outputs(<contenttweaker:kevlarfabric>)
      .fluidInputs(<liquid:plastic> * 288)
      .EUt(480)
      .duration(160)
      .buildAndRegister();
//EX
  //Carbon Reinforced Fabric
    assembler.recipeBuilder()
      .inputs([
        <contenttweaker:kevlarfabric>,
        <contenttweaker:kevlarfiber> * 8,
        <gregtech:meta_item_1:501> * 2,
        <gregtech:meta_item_1:500> * 8,
        <gregtech:meta_wire_fine:324>
      ])
      .outputs(<contenttweaker:carbonreinforcedfabric>)
      .fluidInputs(<liquid:reinforced_epoxy_resin> * 288)
      .EUt(480)
      .duration(600)
      .buildAndRegister();
  //ケブラー服 
    //あたま
      mods.extendedcrafting.TableCrafting.addShaped(1, <contenttweaker:kevlararmor_head>, [
        [<contenttweaker:kevlarfabric>, <contenttweaker:kevlarfabric>, <contenttweaker:kevlarfabric>], 
        [<contenttweaker:kevlarfabric>, null, <contenttweaker:kevlarfabric>], 
        [null, null, null]
      ]);
    //ふく
      mods.extendedcrafting.TableCrafting.addShaped(1, <contenttweaker:kevlararmor_chest>, [
        [<contenttweaker:kevlarfabric>, null, <contenttweaker:kevlarfabric>], 
        [<contenttweaker:kevlarfabric>, <contenttweaker:kevlarfabric>, <contenttweaker:kevlarfabric>], 
        [<contenttweaker:kevlarfabric>, <contenttweaker:kevlarfabric>, <contenttweaker:kevlarfabric>]
      ]);
    //れぎんす
      mods.extendedcrafting.TableCrafting.addShaped(1, <contenttweaker:kevlararmor_legs>, [
        [<contenttweaker:kevlarfabric>, <contenttweaker:kevlarfabric>, <contenttweaker:kevlarfabric>], 
        [<contenttweaker:kevlarfabric>, null, <contenttweaker:kevlarfabric>], 
        [<contenttweaker:kevlarfabric>, null, <contenttweaker:kevlarfabric>]
      ]);
    //ぶーつ 
      mods.extendedcrafting.TableCrafting.addShaped(1, <contenttweaker:kevlararmor_feet>, [
        [null, null, null], 
        [<contenttweaker:kevlarfabric>, null, <contenttweaker:kevlarfabric>], 
        [<contenttweaker:kevlarfabric>, null, <contenttweaker:kevlarfabric>]
      ]);
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
import mods.thermalexpansion.CompressionDynamo;
import mods.thermalexpansion.EnervationDynamo;
import mods.thermalexpansion.MagmaticDynamo;
import mods.thermalexpansion.NumisticDynamo;
import mods.thermalexpansion.ReactantDynamo;
import mods.thermalexpansion.SteamDynamo;

//Remove Recipes
  //Crafting Table Recipes Remove
    var Eiomaterial as IItemStack[] = [
      <enderio:item_material:2>,
      <enderio:item_material>,
      <enderio:item_material:11>,
      <enderio:item_material:12>,
      <enderio:item_material:13>,
      <enderio:item_material:14>,
      <enderio:item_material:15>,
      <enderio:item_material:18>,
      <enderio:item_material:22>,
      <enderio:item_material:55>,
      <enderio:item_material:60>,
      <enderio:item_material:64>,
      <enderio:item_material:66>,
      <enderio:item_material:67>,
      <enderio:item_material:68>,
      <enderio:item_material:52>,
      <enderio:item_capacitor_grainy>,
      <enderio:item_basic_capacitor>,
      <enderio:item_capacitor_silver>,
      <enderio:item_basic_capacitor:1>,
      <enderio:item_capacitor_energetic_silver>,
      <enderio:item_basic_capacitor:2>,
      <enderio:item_capacitor_vivid>,
      <enderio:item_capacitor_crystalline>,
      <enderio:item_capacitor_melodic>,
      <enderio:item_capacitor_stellar>,
      <enderio:item_material:51>,
      <enderio:item_material:69>,
      <enderio:item_material:65>,
      <enderio:item_material:38>
    ];
  for i in Eiomaterial {
    recipes.remove(i);
  }
//ADD Recipes
  //Alloys
    //Electrical Steel
      alloy_smelter.recipeBuilder()
        .inputs([<ore:ingotSteel>, <gregtech:meta_ingot:99> * 2])
        .outputs([<enderio:item_alloy_ingot>])
        .EUt(120)
        .duration(160)
        .buildAndRegister();
    //Iron Alloy
      alloy_smelter.recipeBuilder()
        .inputs([<enderio:item_alloy_ingot>, <gregtech:meta_ingot:2011>])
        .outputs([<enderio:item_alloy_ingot:9>])
        .EUt(120)
        .duration(100)
    .buildAndRegister();
    //RedStoneAlloy
      alloy_smelter.recipeBuilder()
        .inputs([<enderio:item_alloy_ingot>, <gregtech:meta_ingot:2517>])
        .outputs([<enderio:item_alloy_ingot:3>])
        .EUt(120)
        .duration(160)
        .buildAndRegister();
    //Pulsating Alloy
      alloy_smelter.recipeBuilder()
        .inputs([<enderio:item_alloy_ingot>, <gregtech:meta_dust:416>])
        .outputs([<enderio:item_alloy_ingot:5>])
        .EUt(120)
        .duration(100)
        .buildAndRegister();
    //Conductive Iron
      ebf.recipeBuilder()//必須
        .inputs([<enderio:item_alloy_ingot>, <enderio:item_alloy_ingot:3>])//任意
        .outputs([<enderio:item_alloy_ingot:4>])//任意
        .fluidInputs([<liquid:redstone> * 288])//任意
        .property("temperature", 1000)//必須
        .EUt(256)//必須
        .duration(200)//必須
        .buildAndRegister();//必須
    //Energetic Alloy
      ebf.recipeBuilder()//必須
        .inputs([<enderio:item_alloy_ingot:4>, <gregtech:meta_ingot:301>, <nuclearcraft:compound:2> * 2])//任意
        .outputs([<enderio:item_alloy_ingot:1>])//任意
        .property("temperature", 1200)//必須
        .EUt(384)//必須
        .duration(240)//必須
        .buildAndRegister();//必須
    //Energetic Silver
      ebf.recipeBuilder()//必須
        .inputs([<enderio:item_alloy_ingot:1>, <gregtech:meta_ingot:300>])//任意
        .outputs([<enderio:item_alloy_endergy_ingot:5>])//任意
        .property("temperature", 1350)//必須
        .EUt(400)//必須
        .duration(260)//必須
        .buildAndRegister();//必須
    //Vibrant Alloy
      ebf.recipeBuilder()//必須
        .inputs([<enderio:item_alloy_ingot:1>, <enderio:item_material:36>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alkimia"}]})])//任意
        .outputs([<enderio:item_alloy_ingot:2>])//任意
        .fluidInputs([<liquid:ender> * 500])//任意
        .property("temperature", 2400)//必須
        .EUt(1024)//必須
        .duration(280)//必須
        .buildAndRegister();//必須
    //Crystalline Alloy
        mmRecipe("Crystalline_Alloy", "High_Pressure_Blast_Furnace", 600)
          .addEnergyPerTickInput(32768)//MAX2,000,000,000
          .addItemInput(<enderio:item_alloy_endergy_ingot:5>)//MAX32
          .addItemInput(<extendedcrafting:material:24>)//MAX32
          .addItemInput(<enderio:item_alloy_endergy_ingot:6>)//MAX32
          .addFluidInput(<liquid:xenon> * 1000)//MAX3
          .addItemOutput(<enderio:item_alloy_endergy_ingot:1>)//MAX32
          .build();
    //Crystalline Pink Slime Alloy
        mmRecipe("Crystalline_Pink_Slime_Alloy", "High_Pressure_Blast_Furnace", 1200)
          .addEnergyPerTickInput(40000)//MAX2,000,000,000
          .addItemInput(<enderio:item_alloy_endergy_ingot:1>)//MAX32
          .addItemInput(<tconstruct:ingots:3>)//MAX32
          .addItemInput(<tconevo:material:1>)//MAX32
          .addFluidInput(<liquid:diamond> * 5994)//MAX3
          .addItemOutput(<enderio:item_alloy_endergy_ingot:4>)//MAX32
          .build();
    //Melodic Alloy
      ebf.recipeBuilder()//必須
        .inputs([
          <enderio:item_alloy_ingot:8>,
          <enderio:item_alloy_endergy_ingot:4>,
          <botania:manaresource:7>,
        ])//任意
        .outputs([<enderio:item_alloy_endergy_ingot:2>])//任意
        .fluidInputs([<liquid:naquadah> * 144])//任意
        .property("temperature", 7144)//必須
        .EUt(32768)//必須
        .duration(1200)//必須
        .buildAndRegister();//必須
    //Stellar Alloy
      ebf.recipeBuilder()//必須
        .inputs([
          <enderio:item_alloy_endergy_ingot:2> * 4,
          <mekanism:ingot> * 4,
          <gregtech:meta_block_compressed_100:2> * 4
        ])//任意
        .outputs([<enderio:item_alloy_endergy_ingot:3>])//任意
        .fluidInputs([<liquid:astralsorcery.liquidstarlight> * 3000])//任意
        .property("temperature", 9000)//必須
        .EUt(40000)//必須
        .duration(4800)//必須
        .buildAndRegister();//必須
    // VividAlloy
      ebf.recipeBuilder()//必須
        .inputs([<enderio:item_alloy_ingot:2>, <enderio:item_material:14>, <enderio:item_alloy_endergy_ingot:5>])//任意
        .outputs([<enderio:item_alloy_endergy_ingot:6>])//任意
        .property("temperature", 2700)//必須
        .EUt(1920)//必須
        .duration(320)//必須
        .buildAndRegister();//必須
    //DarkSteel
      ebf.recipeBuilder()//必須
        .inputs([<enderio:item_alloy_ingot>, <gregtech:meta_ingot:2011>, <ore:blockObsidian> * 2])//任意
        .outputs([<enderio:item_alloy_ingot:6>])//任意
        .property("temperature", 2000)//必須
        .EUt(800)//必須
        .duration(192)//必須
        .buildAndRegister();//必須
    //soularium
      ebf.recipeBuilder()//必須
        .inputs([<enderio:item_alloy_ingot:6>, <gregtech:meta_ingot:301>, <enderio:item_material:52>])//任意
        .outputs([<enderio:item_alloy_ingot:7>])//任意
        .property("temperature", 2666)//必須
        .EUt(666)//必須
        .duration(666)//必須
        .buildAndRegister();//必須
      //Soul Attuned Dust
        mixer.recipeBuilder()
          .inputs([
            <enderio:item_material:51> * 4,
            <gregtech:meta_dust:1604> * 4,
            <minecraft:soul_sand> * 4,
            <gregtech:meta_dust:116> * 4
          ])
          .outputs([<enderio:item_material:52> * 4])
          .fluidInputs([<liquid:liquid_death>  * 50])
          .EUt(480)
          .duration(666)
          .buildAndRegister();
    //EndSteel
      ebf.recipeBuilder()//必須
        .inputs([<enderio:item_alloy_ingot:7>, <nuclearcraft:compound:8>])//任意
        .outputs([<enderio:item_alloy_ingot:8>])//任意
        .property("temperature", 3900)//必須
        .EUt(12000)//必須
        .duration(180)//必須
        .buildAndRegister();//必須
    //Nether Cotta
      ebf.recipeBuilder()//必須
        .inputs([<minecraft:netherbrick> * 4, <minecraft:red_nether_brick> * 4, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}) * 4])//任意
        .outputs([<enderio:item_material:72>])//任意
        .property("temperature", 1200)//必須
        .EUt(256)//必須
        .duration(200)//必須
        .buildAndRegister();//必須
  //Machine Chassises
    //Simple
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_material>, [
        [<ore:stickSteel>, <ore:ingotElectricalSteel>, <ore:stickSteel>], 
        [<ore:ingotElectricalSteel>, <gregtech:machine_casing:1>, <ore:ingotElectricalSteel>], 
        [<ore:stickSteel>, <ore:ingotElectricalSteel>, <ore:stickSteel>]
      ]);
    //Industrial
      ebf.recipeBuilder()//必須
        .inputs([<enderio:item_material>, <enderio:item_material:51> * 4])//任意
        .outputs([<enderio:item_material:1>])//任意
        .property("temperature", 1500)//必須
        .EUt(256)//必須
        .duration(180)//必須
        .buildAndRegister();//必須
      //工業用顔料
        mixer.recipeBuilder()
          .inputs([
            <gregtech:meta_dust:2007> * 4,
            <gregtech:meta_dust:340> * 4,
            <gregtech:meta_dust:1068> * 4
          ])
          .outputs([
            <enderio:item_material:51> * 2
          ])
          .fluidInputs([
            <liquid:dye_black> * 1000
          ])
          .EUt(30)
          .duration(120)
          .buildAndRegister();
    //Soul
      ebf.recipeBuilder()//必須
        .inputs([<enderio:item_material:1>, <enderio:item_alloy_ingot:7>])//任意
        .outputs([<enderio:item_material:53>])//任意
        .property("temperature", 2650)//必須
        .EUt(1000)//必須
        .duration(180)//必須
        .buildAndRegister();//必須
    //Soulless
      ebf.recipeBuilder()//必須
        .inputs([<enderio:block_industrial_insulation> * 6, <enderio:item_material:53>, <enderio:item_material:56> * 2])//任意
        .outputs([<enderio:item_material:55>])//任意
        .property("temperature", 3200)//必須
        .EUt(1000)//必須
        .duration(180)//必須
        .buildAndRegister();//必須
      //Insulation
        LCR.recipeBuilder()
          .inputs([
            <gregtech:meta_dust:2007>,
            <gregtech:meta_dust:112>,
            <thermalfoundation:rockwool:15>
          ])
          .fluidInputs([
            <liquid:ender> * 500
          ])
          .outputs([<enderio:block_industrial_insulation>])
          .EUt(400)
          .duration(480)
          .buildAndRegister();
    //End
      ebf.recipeBuilder()//必須
        .inputs([<enderio:item_material:55>, <enderio:item_alloy_ingot:8>])//任意
        .outputs([<enderio:item_material:66>])//任意
        .property("temperature", 4200)//必須
        .EUt(4000)//必須
        .duration(180)//必須
        .buildAndRegister();//必須
    //Enhanced
      ebf.recipeBuilder()//必須
        .inputs([<enderio:item_material:66>, <enderio:item_material:67> * 28])//任意
        .outputs([<enderio:item_material:54>])//任意
        .property("temperature", 7000)//必須
        .EUt(50000)//必須
        .duration(180)//必須
        .buildAndRegister();//必須
      //Enhanced Dust
        mixer.recipeBuilder()
          .inputs([
            <nuclearcraft:compound:8> * 4,
            <enderio:item_material:35> * 4,
            <enderio:item_material:36> * 4,
            <enderio:item_material:37> * 8,
            <gregtech:meta_dust:125> * 4,
            <gregtech:meta_dust:416> * 32
          ])
          .outputs([<enderio:item_material:67> * 56])
          .fluidInputs([<liquid:plasma.helium> * 1250])
          .EUt(30000)
          .duration(1000)
          .buildAndRegister();
    //Parts
      //Simple
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_material:69>, [
          [<ore:stickWroughtIron>, <ore:screwWroughtIron>, <ore:stickWroughtIron>], 
          [<ore:boltWroughtIron>, <ore:itemSimpleMachineChassi>, <ore:boltWroughtIron>], 
          [<ore:stickWroughtIron>, <ore:screwWroughtIron>, <ore:stickWroughtIron>]
        ]);
      //Nomal
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_material:2>, [
          [<ore:stickStainlessSteel>, <ore:screwManasteel>, <ore:stickStainlessSteel>], 
          [<ore:boltAluminium>, <ore:itemMachineChassi>, <ore:boltAluminium>], 
          [<ore:stickStainlessSteel>, <ore:screwManasteel>, <ore:stickStainlessSteel>]
        ]);
      //Enhanced
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_material:68>, [
          [<ore:stickDraconium>, <ore:screwTerrasteel>, <ore:stickDraconium>], 
          [<ore:boltRhodium>, <ore:itemEnhancedMachineChassi>, <ore:boltRhodium>], 
          [<ore:stickDraconium>, <ore:screwTerrasteel>, <ore:stickDraconium>]
        ]);
  //Gears
    //Infinity Bimetal
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_material:11>, [
        [<ore:boltManasteel>, <ore:ingotBlackSteel>, <ore:boltManasteel>], 
        [<ore:ingotBlackSteel>, <ore:dustBedrock>, <ore:ingotBlackSteel>], 
        [<ore:boltManasteel>, <ore:ingotBlackSteel>, <ore:boltManasteel>]
      ]);
    //Energized Bimetal
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_material:12>, [
        [<ore:ingotSignalum>, <ore:ingotEnergeticAlloy>, <ore:ingotSignalum>], 
        [<ore:ingotEnergeticAlloy>, <ore:gearIronInfinity>, <ore:ingotEnergeticAlloy>], 
        [<ore:ingotSignalum>, <ore:ingotEnergeticAlloy>, <ore:ingotSignalum>]
      ]);
    //Vibrant Bimetal
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_material:13>, [
        [<ore:ingotUranium235>, <ore:ingotVibrantAlloy>, <ore:ingotUranium235>], 
        [<ore:ingotVibrantAlloy>, <ore:gearIronInfinity>, <ore:ingotVibrantAlloy>], 
        [<ore:ingotUranium235>, <ore:ingotVibrantAlloy>, <ore:ingotUranium235>]
      ]);
  //Solars
    //PhotoVoltaic Plate
      mixer.recipeBuilder()
        .inputs([
          <gregtech:meta_plate:99>,
          <enderio:item_material:38> * 4
        ])
        .outputs([<enderio:item_material:3>])
        .EUt(120)
        .duration(60)
        .buildAndRegister();
    //PhotoVoltaic Composite(Copper silicon gallium selenide)
      mixer.recipeBuilder()
        .inputs([
          <gregtech:meta_dust:252>,
          <gregtech:meta_dust:99>,
          <gregtech:meta_dust:39>,
          <gregtech:meta_dust:32027> * 2
        ])
        .outputs([<enderio:item_material:38> * 5])
        .EUt(120)
        .duration(100)
        .buildAndRegister();
  //Conduits
    //Powder
      mixer.recipeBuilder()
        .inputs([
          <gregtech:meta_dust:2063> * 4,
          <minecraft:sand> * 4,
          <minecraft:gravel> * 4
        ])
        .outputs([<enderio:item_material:22> * 16])
        .EUt(20)
        .duration(360)
        .buildAndRegister();
    //Conduit Binder
      chem_reactor.recipeBuilder()
        .inputs([<enderio:item_material:22>])
        .fluidInputs([
          <liquid:water> * 500,
          <liquid:glue> * 250
        ])
        .outputs([<enderio:item_material:4> * 4])
        .EUt(120)
        .duration(80)
        .buildAndRegister();
  //Crystals
    //Plusating
      autoclave.recipeBuilder()
        .inputs([
          <enderio:item_material:36>,
          <gregtech:meta_dust:2005>
        ])
        .fluidInputs([<liquid:ender> * 500])
        .outputs([<enderio:item_material:14>])
        .EUt(480)
        .duration(2400)
        .buildAndRegister();
      //Dust
        chem_reactor.recipeBuilder()
          .inputs([<gregtech:meta_dust:276>, <gregtech:meta_dust:416>])
          .fluidInputs([<liquid:pulsating_iron> * 144])
          .outputs([<enderio:item_material:36>])
          .EUt(320)
          .duration(800)
          .buildAndRegister();
    //Vibrant
      autoclave.recipeBuilder()
        .inputs([
          <enderio:item_material:35>,
          <gregtech:meta_dust:2006>
        ])
        .fluidInputs([<liquid:ender> * 500])
        .outputs([<enderio:item_material:15>])
        .EUt(480)
        .duration(2400)
        .buildAndRegister();
      //Dust
        chem_reactor.recipeBuilder()
          .inputs([<gregtech:meta_dust:278>, <gregtech:meta_dust:416>])
          .fluidInputs([<liquid:vibrant_alloy> * 144])
          .outputs([<enderio:item_material:35>])
          .EUt(320)
          .duration(800)
          .buildAndRegister();
    //Wather
      LCR.recipeBuilder()
        .inputs([
          <enderio:item_material:16> * 4,
          <enderio:item_material:14> * 4,
          <enderio:item_material:15> * 4
        ])
        .fluidInputs([
          <liquid:ender> * 10000,
          <liquid:liquid_sunshine> * 10000,
          <liquid:cloud_seed> * 10000,
          <liquid:cloud_seed_concentrated> * 10000,
          <liquid:steam> * 1024000
        ])
        .outputs([<enderio:item_material:18>])
        .EUt(262144)
        .duration(1200)
        .buildAndRegister();
  //Grain of infinity
    //Infinity Dust(中国産)
      mixer.recipeBuilder()
        .inputs([
          <gregtech:meta_dust:32002> * 4,
          <gregtech:meta_dust:314> * 4,
          <gregtech:meta_dust:316> * 8,
          <gregtech:meta_dust:18> * 8,
          <minecraft:redstone> * 16,
          <gregtech:meta_dust:268> * 16
        ])
        .outputs([<enderio:item_material:20> * 56])
        .fluidInputs([<liquid:ender> * 50])
        .EUt(120)
        .duration(480)
        .buildAndRegister();
    //ゐんふぃにてぃーしやく
      mixer.recipeBuilder()
        .inputs([
          <ore:dustBedrock>,
          <gregtech:meta_dust:32002>,
          <gregtech:meta_dust:32003>
        ])
        .outputs([<enderio:item_material:75>])
        .EUt(480)
        .duration(160)
        .buildAndRegister();
  //きゃぱしたー
    //T1
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_capacitor_grainy>, [
        [null, <ore:dustBedrock>, null], 
        [null, <ore:batteryUlv>, null], 
        [null, null, null]
      ]);
    //T2
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_basic_capacitor>, [
        [<gregtech:meta_item_1:96>, <ore:nuggetGold>, <gregtech:meta_item_1:96>], 
        [<ore:dustSodium>, <enderio:item_capacitor_grainy>, <ore:dustSodium>], 
        [<gregtech:meta_item_1:96>, <ore:nuggetGold>, <gregtech:meta_item_1:96>]
      ]);
    //T3
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_capacitor_silver>, [
        [<gregtech:meta_item_1:96>, <ore:boltSilver>, <gregtech:meta_item_1:96>], 
        [<ore:dustSodium>, <enderio:item_capacitor_grainy>, <ore:dustSodium>], 
        [<gregtech:meta_item_1:96>, <ore:boltSilver>, <gregtech:meta_item_1:96>]
      ]);
    //T4
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_basic_capacitor:1>, [
        [<ore:ingotEnergeticAlloy>, <enderio:item_basic_capacitor>, <ore:ingotEnergeticAlloy>], 
        [<gregtech:meta_item_1:98>, <ore:dustLithium>, <gregtech:meta_item_1:98>], 
        [<ore:ingotEnergeticAlloy>, <enderio:item_basic_capacitor>, <ore:ingotEnergeticAlloy>]
      ]);
    //T5
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_capacitor_energetic_silver>, [
        [<ore:ingotEnergeticSilver>, <enderio:item_capacitor_silver>, <ore:ingotEnergeticSilver>], 
        [<gregtech:meta_item_1:98>, <ore:dustLithium>, <gregtech:meta_item_1:98>], 
        [<ore:ingotEnergeticSilver>, <enderio:item_capacitor_silver>, <ore:ingotEnergeticSilver>]
      ]);
    //T6
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_basic_capacitor:2>, [
        [<ore:ingotVibrantAlloy>, <enderio:item_basic_capacitor:1>, <ore:ingotVibrantAlloy>], 
        [<gregtech:meta_item_1:99>, <gregtech:meta_item_1:491>, <gregtech:meta_item_1:99>], 
        [<ore:ingotVibrantAlloy>, <enderio:item_basic_capacitor:1>, <ore:ingotVibrantAlloy>]
      ]);
    //T7
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_capacitor_vivid>, [
        [<ore:ingotVividAlloy>, <enderio:item_capacitor_energetic_silver>, <ore:ingotVividAlloy>], 
        [<gregtech:meta_item_1:99>, <gregtech:meta_item_1:491>, <gregtech:meta_item_1:99>], 
        [<ore:ingotVividAlloy>, <enderio:item_capacitor_energetic_silver>, <ore:ingotVividAlloy>]
      ]);
    //T8
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_capacitor_crystalline>, [
        [<ore:ingotCrystallineAlloy>, <enderio:item_capacitor_vivid>, <ore:ingotCrystallineAlloy>], 
        [<gregtech:meta_item_1:100>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:100>], 
        [<ore:ingotCrystallineAlloy>, <enderio:item_capacitor_vivid>, <ore:ingotCrystallineAlloy>]
      ]);
    //T9
      //2022/10/20！ついにベータテストです！
        //ようやく漕ぎつけた感満載です
          //T9のレシピはめんどいし世界観がいいので変えません
    //T10
      assembler.recipeBuilder()
        .inputs([
          <enderio:item_capacitor_crystalline> * 2,
          <gregtech:meta_item_1:101> * 2,
          <gregtech:meta_item_1:492> * 4,
          <enderio:item_alloy_endergy_ingot:2> * 4,
          <enderio:item_alloy_ingot:8> * 4
        ])
        .outputs(<enderio:item_capacitor_melodic>)
        .EUt(8000)
        .duration(400)
        .buildAndRegister();
    //T11
      assembler.recipeBuilder()
        .inputs([
          <enderio:item_capacitor_melodic> * 2,
          <gregtech:meta_item_1:102> * 2,
          <gregtech:meta_item_1:492> * 8,
          <enderio:item_alloy_endergy_ingot:3> * 4,
          <enderio:item_alloy_endergy_ingot:2> * 4
        ])
        .outputs(<enderio:item_capacitor_stellar>)
        .EUt(32000)
        .duration(800)
        .buildAndRegister();
  //Wireless part
    //Dish Assembly
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_material:65>, [
        [<ore:itemChassiParts>, <gregtech:meta_item_1:503>, <gregtech:meta_item_1:234>], 
        [<gregtech:meta_item_1:603>, <gregtech:meta_item_1:219>, <gregtech:meta_item_1:603>], 
        [<gregtech:meta_item_1:234>, <gregtech:meta_item_1:503>, <ore:itemChassiParts>]
      ]);
  //Filter Base(RS)
    mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_material:60>, [
      [<ore:ingotRedstoneAlloy>, <itemfilters:filter>, <ore:ingotRedstoneAlloy>], 
      [<itemfilters:filter>, <ore:ingotSteel>, <itemfilters:filter>], 
      [<ore:ingotRedstoneAlloy>, <itemfilters:filter>, <ore:ingotRedstoneAlloy>]
    ]);
  //そうこのあれ
    assembler.recipeBuilder()
    .inputs([
      <gregtech:meta_dust:416> * 4,
      <gregtech:meta_dust:99> * 9,
      <enderio:item_material:4> * 12,
      <ore:circuitLv> * 6,
      <enderio:item_alloy_nugget:5> * 6
    ])
    .outputs(<enderio:item_material:64> * 3)
    .EUt(120)
    .duration(800)
    .buildAndRegister();

//RecipesRemove
  //GT Recipes
    /*
    // Electrical Steel Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(24, [<metaitem:ingotSteel>, <nuclearcraft:gem:6>], null).remove();
    // Electrical Steel Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(24, [<metaitem:dustSteel>, <nuclearcraft:gem:6>], null).remove();
    // Energetic Alloy Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(24, [<metaitem:dustGold>, <nuclearcraft:compound:2> * 2], null).remove();
    // Energetic Alloy Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(24, [<minecraft:gold_ingot:0>, <nuclearcraft:compound:2> * 2], null).remove();
    // Vibrant Alloy Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(32, [<enderio:item_alloy_ingot:1>, <metaitem:dustEnderPearl>], null).remove();
    // Vibrant Alloy Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(32, [<enderio:item_alloy_ingot:1>, <minecraft:ender_pearl:0>], null).remove();
    // Redstone Alloy Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(16, [<nuclearcraft:gem:6>, <minecraft:redstone:0>], null).remove();
    // Conductive Iron Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(16, [<minecraft:iron_ingot:0>, <minecraft:redstone:0>], null).remove();
    // Conductive Iron Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustIron>, <minecraft:redstone:0>], null).remove();
    // Pulsating Iron Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustIron>, <minecraft:ender_pearl:0>], null).remove();
    // Pulsating Iron Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(16, [<minecraft:iron_ingot:0>, <minecraft:ender_pearl:0>], null).remove();
    // Pulsating Iron Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustIron>, <metaitem:dustEnderPearl>], null).remove();
    // Pulsating Iron Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(16, [<minecraft:iron_ingot:0>, <metaitem:dustEnderPearl>], null).remove();
    // Dark Steel Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(32, [<metaitem:dustSteel>, <minecraft:obsidian:0>], null).remove();
    // Dark Steel Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(32, [<metaitem:ingotSteel>, <minecraft:obsidian:0>], null).remove();
    // Soularium Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(8, [<minecraft:gold_ingot:0>, <minecraft:soul_sand:0>], null).remove();
    // Soularium Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(8, [<metaitem:dustGold>, <minecraft:soul_sand:0>], null).remove();
      //Soularium Vanilla Furnace Recipe
    // End Steel Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(32, [<enderio:item_alloy_ingot:6>, <nuclearcraft:compound:8> * 2], null).remove();
    // Iron Alloy Ingot * 3
      <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustLead> * 2, <metaitem:dustIron>], null).remove();
    // Iron Alloy Ingot * 3
      <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:dustLead> * 2, <minecraft:iron_ingot:0>], null).remove();
    // Iron Alloy Ingot * 3
      <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:ingotLead> * 2, <minecraft:iron_ingot:0>], null).remove();
    // Iron Alloy Ingot * 3
      <recipemap:alloy_smelter>.findRecipe(16, [<metaitem:ingotLead> * 2, <metaitem:dustIron>], null).remove();
    // Energetic Silver Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(24, [<metaitem:ingotSilver>, <nuclearcraft:compound:2> * 2], null).remove();
    // Energetic Silver Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(24, [<metaitem:dustSilver>, <nuclearcraft:compound:2> * 2], null).remove();
    // Crystalline Alloy Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(16, [<minecraft:gold_ingot:0>, <enderio:item_material:36>], null).remove();
    // Melodic Alloy Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(24, [<enderio:item_alloy_ingot:8>, <minecraft:chorus_fruit_popped:0>], null).remove();
    // Stellar Alloy Ingot * 2
      <recipemap:alloy_smelter>.findRecipe(32, [<enderio:item_alloy_endergy_ingot:2>, <minecraft:nether_star:0>], null).remove();
    // Vivid Alloy Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(32, [<enderio:item_alloy_endergy_ingot:5>, <metaitem:dustEnderPearl>], null).remove();
    // Vivid Alloy Ingot * 1
      <recipemap:alloy_smelter>.findRecipe(32, [<enderio:item_alloy_endergy_ingot:5>, <minecraft:ender_pearl:0>], null).remove();
    // Pulsating Crystal * 1
      <recipemap:alloy_smelter>.findRecipe(24, [<metaitem:dustDiamond>, <enderio:item_alloy_nugget:5> * 8], null).remove();
    // Pulsating Crystal * 1
      <recipemap:alloy_smelter>.findRecipe(24, [<minecraft:diamond:0>, <enderio:item_alloy_nugget:5> * 8], null).remove();
    // Vibrant Crystal * 1
      <recipemap:alloy_smelter>.findRecipe(24, [<minecraft:emerald:0>, <enderio:item_alloy_nugget:2> * 8], null).remove();
    // Vibrant Crystal * 1
      <recipemap:alloy_smelter>.findRecipe(24, [<metaitem:dustEmerald>, <enderio:item_alloy_nugget:2> * 8], null).remove();
*/
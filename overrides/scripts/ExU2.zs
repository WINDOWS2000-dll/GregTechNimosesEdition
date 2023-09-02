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
  //Crafting Table Recipe
    var exuremove as IItemStack[] = [
      <extrautils2:analogcrafter>,
      <extrautils2:angelblock>,
      <extrautils2:spike_wood>,
      <extrautils2:spike_stone>,
      <extrautils2:spike_iron>,
      <extrautils2:spike_gold>,
      <extrautils2:spike_diamond>,
      <extrautils2:klein>,
      <extrautils2:crafter>,
      <extrautils2:crafter>,
      <extrautils2:user>,
      <extrautils2:opinium>,
      <extrautils2:opinium:1>,
      <extrautils2:opinium:2>,
      <extrautils2:opinium:3>,
      <extrautils2:opinium:4>,
      <extrautils2:opinium:5>,
      <extrautils2:opinium:6>,
      <extrautils2:opinium:7>,
      <extrautils2:opinium:8>,
      <extrautils2:redstoneclock>,
      <extrautils2:redstonelantern>,
      <extrautils2:resonator>,
      <extrautils2:scanner>,
      <extrautils2:screen>,
      <extrautils2:largishchest>,
      <extrautils2:passivegenerator:8>,
      <extrautils2:passivegenerator:5>,
      <extrautils2:passivegenerator:2>,
      <extrautils2:passivegenerator:1>,
      <extrautils2:passivegenerator:7>,
      <extrautils2:passivegenerator>,
      <extrautils2:passivegenerator:3>,
      <extrautils2:passivegenerator:4>,
      <extrautils2:terraformer>,
      <extrautils2:terraformer:1>,
      <extrautils2:terraformer:2>,
      <extrautils2:terraformer:3>,
      <extrautils2:terraformer:4>,
      <extrautils2:terraformer:5>,
      <extrautils2:terraformer:6>,
      <extrautils2:terraformer:7>,
      <extrautils2:terraformer:8>,
      <extrautils2:terraformer:9>,
      <extrautils2:indexer>,
      <extrautils2:drum>,
      <extrautils2:drum:1>,
      <extrautils2:drum:2>,
      <extrautils2:drum:3>,
      <extrautils2:soundmuffler>,
      <extrautils2:pipe>,
      <extrautils2:trashcanfluid>,
      <extrautils2:trashcanenergy>,
      <extrautils2:trashcan>,
      <extrautils2:trashchest>,
      <extrautils2:powerbattery>,
      <extrautils2:powertransmitter>,
      <extrautils2:angelring>,
      <extrautils2:angelring:1>,
      <extrautils2:angelring:2>,
      <extrautils2:angelring:3>,
      <extrautils2:angelring:4>,
      <extrautils2:angelring:5>,
      <extrautils2:filter>,
      <extrautils2:filterfluids>,
      <extrautils2:bagofholding>,
      <extrautils2:goldenlasso:1>,
      <extrautils2:goldenlasso>,
      <extrautils2:indexerremote>,
      <extrautils2:ingredients:17>,
      <extrautils2:ingredients:12>,
      <extrautils2:ingredients:8>,
      <extrautils2:ingredients:6>,
      <extrautils2:ingredients:15>,
      <extrautils2:ingredients:16>,
      <extrautils2:ingredients:7>,
      <extrautils2:suncrystal:250>,
      <extrautils2:grocket>,
      <extrautils2:grocket:1>,
      <extrautils2:grocket:2>,
      <extrautils2:grocket:3>,
      <extrautils2:grocket:4>,
      <extrautils2:grocket:5>,
      <extrautils2:grocket:6>
    ];

    for i in exuremove {
      recipes.remove(i);
    }

//ADD Recipe
  //Analog Crafter
    mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:analogcrafter>, [
      [<ore:plateSteel>, <gregtech:meta_item_1:291>, <ore:plateSteel>], 
      [<ore:circuitLv>, <gregtech:machine:1647>, <ore:circuitLv>], 
      [<ore:chest>, <gregtech:meta_item_1:187>, <ore:chest>]
    ]);
  //Angel Block
    //mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe);
    mods.thaumcraft.Infusion.registerRecipe(
      "ANGEL_BLOCK",
      "INFUSION",
      <extrautils2:angelblock>,
      100,
      [
        <aspect:aer> * 20,
        <aspect:praecantatio> * 25,
        <aspect:volatus> * 20,
        <aspect:ventus> * 20
      ],
      <minecraft:obsidian>,
      [
        <gregtech:meta_ingot:301>,
        <minecraft:obsidian>,
        <gregtech:meta_ingot:301>,
        <minecraft:feather>,
        <gregtech:meta_ingot:301>,
        <minecraft:obsidian>,
        <gregtech:meta_ingot:301>,
        <minecraft:feather>
      ]
    );
  //Spikes
    //Wooden
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:spike_wood>, [
        [<ore:stickLongWood>, <minecraft:wooden_sword>, <ore:stickLongWood>], 
        [<minecraft:wooden_sword>, <ore:plankWood>, <minecraft:wooden_sword>], 
        [<ore:plankWood>, <ore:logWood>, <ore:plankWood>]
      ]);
    //Stone
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:spike_stone>, [
        [<ore:stickStoneingot>, <minecraft:stone_sword>, <ore:stickStoneingot>], 
        [<minecraft:stone_sword>, <extrautils2:spike_wood>, <minecraft:stone_sword>], 
        [<ore:plateStoneingot>, <ore:compressed1xCobblestone>, <ore:plateStoneingot>]
      ]);
    //Iron
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:spike_iron>, [
        [<ore:stickIron>, <minecraft:iron_sword>, <ore:stickIron>], 
        [<minecraft:iron_sword>, <extrautils2:spike_stone>, <minecraft:iron_sword>], 
        [<ore:plateIron>, <ore:blockIron>, <ore:plateIron>]
      ]);
    //Gold
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:spike_gold>, [
        [<ore:stickRoseGold>, <ore:toolHeadSwordRoseGold>, <extrautils2:spike_iron>, <ore:toolHeadSwordRoseGold>, <ore:stickRoseGold>], 
        [<minecraft:golden_sword>, <ore:toolHeadDrillRoseGold>, <ore:blockGold>, <ore:toolHeadDrillRoseGold>, <minecraft:golden_sword>], 
        [<extrautils2:spike_iron>, <ore:toolHeadSwordRoseGold>, <ore:ingotGold>, <ore:toolHeadSwordRoseGold>, <extrautils2:spike_iron>], 
        [<ore:plateGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:plateGold>], 
        [<ore:ingotGold>, <ore:plateGold>, <ore:plateGold>, <ore:plateGold>, <ore:ingotGold>]
      ]);
    //Diamond
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:spike_diamond>, [
        [<ore:stickDiamondinfusedingot>, <ore:toolHeadSwordDiamond>, <extrautils2:spike_gold>, <ore:toolHeadSwordDiamond>, <ore:stickDiamondinfusedingot>], 
        [<minecraft:diamond_sword>, <ore:toolHeadDrillDiamond>, <ore:blockDiamond>, <ore:toolHeadDrillDiamond>, <minecraft:diamond_sword>], 
        [<extrautils2:spike_gold>, <ore:toolHeadSwordDiamond>, <ore:ingotDiamondinfusedingot>, <ore:toolHeadSwordDiamond>, <extrautils2:spike_gold>], 
        [<ore:plateDiamond>, <ore:ingotDiamondinfusedingot>, <ore:ingotDiamondinfusedingot>, <ore:ingotDiamondinfusedingot>, <ore:plateDiamond>], 
        [<ore:ingotDiamondinfusedingot>, <ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>, <ore:ingotDiamondinfusedingot>]
      ]);
  //Klein Bottle
    canner.recipeBuilder()
      .inputs([
        <minecraft:ender_pearl> * 4,
        <minecraft:dragon_breath>
      ])
      .outputs(<extrautils2:klein>)
      .fluidInputs(<liquid:ender> * 1000)
    	.EUt(24)
    	.duration(180)
  		.buildAndRegister();
  //Mechanical Crafter
    mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:crafter>, [
      [null, <ore:circuitUlv>, null], 
      [<gregtech:meta_item_1:157>, <extrautils2:analogcrafter>, <gregtech:meta_item_1:187>], 
      [null, <ore:circuitUlv>, null]
    ]);
  //Mechanical Miner
    mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:miner>, [
      [<ore:toolHeadDrillIron>, <gregtech:meta_item_1:187>, <ore:toolHeadDrillIron>], 
      [<minecraft:iron_pickaxe>, <extrautils2:machine>, <minecraft:iron_pickaxe>], 
      [<projectred-transmission:wire>, <ore:gemRedstone>, <projectred-transmission:wire>]
    ]);
  //Mechanical User
    mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:user>, [
      [<minecraft:lever>, <gregtech:meta_item_1:591>, <ore:buttonWood>], 
      [<gregtech:meta_item_1:187>, <extrautils2:machine>, <gregtech:meta_item_1:187>], 
      [<minecraft:stone_pressure_plate>, <gregtech:meta_item_1:592>, <minecraft:observer>]
    ]);
  //Cores
    //Pathetic
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:opinium>, [
        [<ore:coalPowered>, <ore:dustRedstone>, <ore:coalPowered>], 
        [<ore:dustRedstone>, <ore:blockIron>, <ore:dustRedstone>], 
        [<ore:coalPowered>, <ore:dustRedstone>, <ore:coalPowered>]
      ]);
    //Mediocre
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:opinium:1>, [
        [<ore:nuggetTinAlloy>, <ore:blockIron>, <ore:nuggetTinAlloy>], 
        [<extrautils2:opinium>, <ore:blockGold>, <extrautils2:opinium>], 
        [<ore:nuggetTinAlloy>, <ore:blockIron>, <ore:nuggetTinAlloy>]
      ]);
    //Passable
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:opinium:2>, [
        [<ore:circuitHv>, <ore:blockRoseGold>, <ore:circuitHv>], 
        [<extrautils2:opinium:1>, <ore:blockDiamond>, <extrautils2:opinium:1>], 
        [<ore:circuitHv>, <ore:blockRoseGold>, <ore:circuitHv>]
      ]);
    //Decent  
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:opinium:3>, [
        [<ore:blockDiamond>, <ore:circuitEv>, <ore:blockEmerald>, <ore:alloyElite>, <ore:blockDiamond>], 
        [<ore:alloyElite>, <ore:ingotThaumium>, <extrautils2:opinium:2>, <ore:ingotThaumium>, <ore:circuitEv>], 
        [<ore:blockEmerald>, <ore:manaDiamond>, <ore:gemAquamarine>, <ore:manaDiamond>, <ore:blockEmerald>], 
        [<ore:circuitEv>, <ore:ingotThaumium>, <extrautils2:opinium:2>, <ore:ingotThaumium>, <ore:alloyElite>], 
        [<ore:blockDiamond>, <ore:alloyElite>, <ore:blockEmerald>, <ore:circuitEv>, <ore:blockDiamond>]
      ]);
    //Good
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:opinium:4>, [
        [<ore:circuitIv>, <ore:blockEmerald>, <ore:ingotPlutonium242Base>, <ore:blockEmerald>, <ore:circuitIv>], 
        [<ore:blockEmerald>, <astralsorcery:itemcraftingcomponent:4>, <extrautils2:opinium:3>, <astralsorcery:itemcraftingcomponent:4>, <ore:blockEmerald>], 
        [<ore:ingotSoularium>, <ore:blockManasteel>, <minecraft:chorus_flower>, <ore:blockManasteel>, <ore:ingotSoularium>], 
        [<ore:blockEmerald>, <astralsorcery:itemcraftingcomponent:4>, <extrautils2:opinium:3>, <astralsorcery:itemcraftingcomponent:4>, <ore:blockEmerald>], 
        [<ore:circuitIv>, <ore:blockEmerald>, <ore:ingotPlutonium242Base>, <ore:blockEmerald>, <ore:circuitIv>]
      ]);
    //Damn Good
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:opinium:5>, [
        [<ore:ingotVoid>, <ore:itemVibrantCrystal>, <ore:ingotIronwood>, <ore:itemPulsatingCrystal>, <ore:ingotVoid>], 
        [<ore:skullZombieController>, <minecraft:experience_bottle>, <extrautils2:opinium:4>, <gregtech:meta_item_1:282>, <ore:skullZombieController>], 
        [<ore:ingotFiery>, <minecraft:chorus_flower>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {}}), <minecraft:chorus_flower>, <ore:ingotFiery>], 
        [<ore:skullZombieController>, <gregtech:meta_item_1:282>, <extrautils2:opinium:4>, <minecraft:experience_bottle>, <ore:skullZombieController>], 
        [<ore:ingotVoid>, <ore:itemVibrantCrystal>, <ore:ingotIronwood>, <ore:itemPulsatingCrystal>, <ore:ingotVoid>]
      ]);
    //Amazing
      mods.extendedcrafting.TableCrafting.addShaped(3, <extrautils2:opinium:6>, [
        [<ore:ingotCrystalMatrix>, <ore:ingotCrystallineAlloy>, <gregtech:meta_item_1:492>, <minecraft:elytra>, <gregtech:meta_item_1:492>, <ore:ingotCrystallineAlloy>, <ore:ingotCrystalMatrix>], 
        [<ore:ingotCrystallineAlloy>, <extrautils2:opinium:5>, <draconicevolution:draconic_core>, <ore:alloyUltimate>, <draconicevolution:draconic_core>, <extrautils2:opinium:5>, <ore:ingotCrystallineAlloy>], 
        [<gregtech:meta_item_1:492>, <draconicevolution:draconic_core>, <ore:circuitLuv>, <ore:ingotAdaminite>, <ore:circuitLuv>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:492>], 
        [<minecraft:elytra>, <ore:alloyUltimate>, <gregtech:meta_item_1:206>, <extendedcrafting:singularity:3>, <gregtech:meta_item_1:206>, <ore:alloyUltimate>, <minecraft:elytra>], 
        [<gregtech:meta_item_1:492>, <draconicevolution:draconic_core>, <ore:circuitLuv>, <ore:ingotAdaminite>, <ore:circuitLuv>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:492>], 
        [<ore:ingotCrystallineAlloy>, <extrautils2:opinium:5>, <draconicevolution:draconic_core>, <ore:alloyUltimate>, <draconicevolution:draconic_core>, <extrautils2:opinium:5>, <ore:ingotCrystallineAlloy>], 
        [<ore:ingotCrystalMatrix>, <ore:ingotCrystallineAlloy>, <gregtech:meta_item_1:492>, <minecraft:elytra>, <gregtech:meta_item_1:492>, <ore:ingotCrystallineAlloy>, <ore:ingotCrystalMatrix>]
      ]);
    //Inspiring
      mods.extendedcrafting.TableCrafting.addShaped(3, <extrautils2:opinium:7>, [
        [<ore:gemNetherStar>, <ore:ingotElectrumFlux>, <minecraft:elytra>, <draconicevolution:awakened_core>, <minecraft:elytra>, <ore:ingotElectrumFlux>, <ore:gemNetherStar>], 
        [<ore:ingotElectrumFlux>, <extrautils2:opinium:6>, <draconicevolution:wyvern_core>, <ore:blockCrystalMatrix>, <draconicevolution:wyvern_core>, <extrautils2:opinium:6>, <ore:ingotElectrumFlux>], 
        [<mekanism:teleportationcore>, <draconicevolution:wyvern_core>, <ore:blockNetherStar>, <gregtech:meta_item_1:282>, <ore:blockNetherStar>, <draconicevolution:wyvern_core>, <threng:material:13>], 
        [<extendedcrafting:singularity:2>, <ore:blockCrystalMatrix>, <gregtech:meta_item_1:282>, <avaritia:singularity:4>, <gregtech:meta_item_1:282>, <ore:blockCrystalMatrix>, <extendedcrafting:singularity:2>], 
        [<threng:material:13>, <draconicevolution:wyvern_core>, <ore:blockNetherStar>, <gregtech:meta_item_1:282>, <ore:blockNetherStar>, <draconicevolution:wyvern_core>, <mekanism:teleportationcore>], 
        [<ore:ingotElectrumFlux>, <extrautils2:opinium:6>, <draconicevolution:wyvern_core>, <ore:blockCrystalMatrix>, <draconicevolution:wyvern_core>, <extrautils2:opinium:6>, <ore:ingotElectrumFlux>], 
        [<ore:gemNetherStar>, <ore:ingotElectrumFlux>, <minecraft:elytra>, <draconicevolution:awakened_core>, <minecraft:elytra>, <ore:ingotElectrumFlux>, <ore:gemNetherStar>]
      ]);
    //Perfected
      mods.extendedcrafting.TableCrafting.addShaped(4, <extrautils2:opinium:8>, [
        [<minecraft:bedrock>, <minecraft:bedrock>, <ore:blockCosmicNeutronium>, <solarflux:photovoltaic_cell_6>, <extendedcrafting:singularity:17>, <threng:material:13>, <ore:oc:cpu3>, <minecraft:bedrock>, <minecraft:bedrock>], 
        [<minecraft:bedrock>, <deepmoblearning:infused_ingot_block>, <ore:circuitUltimate>, <ore:ingotMithminite>, <extrautils2:opinium:5>, <ore:ingotMithminite>, <ore:circuitUltimate>, <deepmoblearning:infused_ingot_block>, <minecraft:bedrock>], 
        [<immersiveengineering:material:27>, <ore:circuitUltimate>, <ore:circuitUhv>, <botania:storage:1>, <gregtech:meta_item_1:705>, <botania:storage:1>, <ore:circuitUhv>, <ore:circuitUltimate>, <gregtech:meta_item_1:283>], 
        [<advancedrocketry:hotturf>, <ore:ingotCalifornium252Base>, <botania:storage:1>, <iceandfire:ice_dragon_heart>, <extrautils2:opinium:4>, <iceandfire:fire_dragon_heart>, <botania:storage:1>, <ore:ingotFiery>, <ore:itemSalt>], 
        [<extendedcrafting:singularity:34>, <extrautils2:opinium>, <gregtech:meta_item_1:705>, <extrautils2:opinium:2>, <ore:ingotIron>, <extrautils2:opinium:3>, <gregtech:meta_item_1:705>, <extrautils2:opinium:1>, <extendedcrafting:singularity:30>], 
        [<ore:skullSentientEnder>, <ore:ingotCalifornium252Base>, <botania:storage:1>, <iceandfire:fire_dragon_heart>, <extrautils2:opinium:7>, <iceandfire:ice_dragon_heart>, <botania:storage:1>, <ore:ingotFiery>, <ore:foodSouthernstylebreakfast>], 
        [<draconicevolution:chaos_shard>, <ore:circuitUltimate>, <ore:circuitUhv>, <botania:storage:1>, <gregtech:meta_item_1:705>, <botania:storage:1>, <ore:circuitUhv>, <ore:circuitUltimate>, <minecraft:end_crystal>], 
        [<minecraft:bedrock>, <deepmoblearning:infused_ingot_block>, <ore:circuitUltimate>, <ore:ingotStellarAlloy>, <extrautils2:opinium:6>, <ore:ingotStellarAlloy>, <ore:circuitUltimate>, <deepmoblearning:infused_ingot_block>, <minecraft:bedrock>], 
        [<minecraft:bedrock>, <minecraft:bedrock>, <extracells:storage.component:2>, <ore:ingotShadowium>, <extendedcrafting:singularity:6>, <ore:ingotPhotonium>, <astralsorcery:itemcraftingcomponent:4>, <minecraft:bedrock>, <minecraft:bedrock>]
      ]);
  //Redstone Clock
    mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:redstoneclock>, [
      [<ore:torchRedstoneActive>, <ore:dustRedstone>, <ore:dustRedstone>], 
      [<minecraft:repeater>, <minecraft:comparator>, <ore:dustRedstone>], 
      [<ore:stoneSmooth>, <ore:dustRedstone>, <ore:torchRedstoneActive>]
    ]);
  //Redstone Lantern
    mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:redstonelantern>, [
      [<ore:plateIron>, <ore:dustRedstone>, <ore:plateIron>], 
      [<ore:blockHopper>, <minecraft:comparator>, <ore:blockHopper>], 
      [<ore:plateIron>, <ore:dustRedstone>, <ore:plateIron>]
    ]);
  //Resonator
    assembler.recipeBuilder()
      .inputs([
        <extrautils2:machine>,
        <extrautils2:ingredients> * 4,
         <minecraft:redstone> * 8,
         <ore:circuitMv> * 4,
         <gregtech:meta_plate:51> * 6
      ])
      .outputs(<extrautils2:resonator>)
      .fluidInputs(<liquid:tin_alloy> * 576)
      .EUt(96)
      .duration(240)
      .buildAndRegister();
  //Scanner
    mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:scanner>, [
      [<gregtech:meta_item_1:232>, <ore:circuitLv>, <gregtech:meta_item_1:232>], 
      [<ore:circuitLv>, <extrautils2:machine>, <ore:circuitLv>], 
      [<gregtech:meta_item_1:232>, <ore:circuitLv>, <gregtech:meta_item_1:232>]
    ]);
  //Screen
    assembler.recipeBuilder()
      .inputs([
        <extrautils2:decorativesolid:3> * 4,
        <extrautils2:endershard> * 4,
        <extrautils2:ingredients> * 4,
        <gregtech:meta_item_1:403> * 4
      ])
      .outputs(<extrautils2:screen> * 2)
      .EUt(96)
      .duration(200)
      .buildAndRegister();
  //GP Generator
    //Dragon Egg
      mods.extendedcrafting.TableCrafting.addShaped(3, <extrautils2:passivegenerator:8>, [
        [<ore:enderpearl>, <ore:eyeofredstone>, <ore:dragonEgg>, <extrautils2:decorativesolid:3>, <ore:dragonEgg>, <ore:eyeofredstone>, <ore:enderpearl>], 
        [<ore:eyeofredstone>, <ore:compressed5xCobblestone>, <ore:gemNetherStar>, <ore:gearRedstone>, <ore:gemNetherStar>, <ore:compressed5xCobblestone>, <ore:eyeofredstone>], 
        [<ore:dragonEgg>, <ore:gemNetherStar>, <ore:compressed5xCobblestone>, <gregtech:meta_item_1:206>, <ore:compressed5xCobblestone>, <ore:gemNetherStar>, <ore:dragonEgg>], 
        [<extrautils2:decorativesolid:3>, <ore:gearRedstone>, <gregtech:meta_item_1:206>, <avaritia:endest_pearl>, <gregtech:meta_item_1:206>, <ore:gearRedstone>, <extrautils2:decorativesolid:3>], 
        [<ore:dragonEgg>, <ore:gemNetherStar>, <ore:compressed5xCobblestone>, <gregtech:meta_item_1:206>, <ore:compressed5xCobblestone>, <ore:gemNetherStar>, <ore:dragonEgg>], 
        [<ore:eyeofredstone>, <ore:compressed5xCobblestone>, <ore:gemNetherStar>, <ore:gearRedstone>, <ore:gemNetherStar>, <ore:compressed5xCobblestone>, <ore:eyeofredstone>], 
        [<ore:enderpearl>, <ore:eyeofredstone>, <ore:dragonEgg>, <extrautils2:decorativesolid:3>, <ore:dragonEgg>, <ore:eyeofredstone>, <ore:enderpearl>]
      ]);
    //Fire Mill
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:passivegenerator:5>, [
        [<extrautils2:decorativesolid:3>, <ore:coalPowered>, <extrautils2:decorativesolid:3>], 
        [<ore:compressed2xCobblestone>, <ore:rotorIron>, <ore:compressed2xCobblestone>], 
        [<extrautils2:decorativesolid:3>, <minecraft:nether_brick_fence>, <extrautils2:decorativesolid:3>]
      ]);
    //Lava Mill
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:passivegenerator:2>, [
        [<extrautils2:decorativesolid:3>, <minecraft:light_weighted_pressure_plate>, <extrautils2:decorativesolid:3>], 
        [<ore:compressed2xCobblestone>, <ore:coalPowered>, <ore:compressed2xCobblestone>], 
        [<extrautils2:decorativesolid:3>, <littletiles:ltcoloredblock:12>, <extrautils2:decorativesolid:3>]
      ]);
    //Lunar Panel
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:passivegenerator:1>, [
        [<ore:dustLunar>, <ore:gemMoon>, <ore:dustLunar>], 
        [<gregtech:transparent_casing>, <extrautils2:passivegenerator>, <gregtech:transparent_casing>], 
        [<extrautils2:decorativesolid:3>, <ore:coalPowered>, <extrautils2:decorativesolid:3>]
      ]);
    //Solar Panel
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:passivegenerator:7>, [
        [<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>], 
        [<gregtech:transparent_casing>, <ore:gemRedstone>, <gregtech:transparent_casing>], 
        [<extrautils2:decorativesolid:3>, <ore:coalPowered>, <extrautils2:decorativesolid:3>]
      ]);
    //Manual Mill
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:passivegenerator>, [
        [null, <ore:gearRedstone>, null], 
        [<ore:gemRedstone>, <ore:stickIronMagnetic>, <ore:gemRedstone>], 
        [<ore:compressed2xCobblestone>, <ore:gearRedstone>, <ore:compressed2xCobblestone>]
      ]);
    //Water Mill
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:passivegenerator:3>, [
        [<extrautils2:decorativesolid:3>, <ore:compressed2xCobblestone>, <extrautils2:decorativesolid:3>], 
        [<ore:coalPowered>, <ore:gearRedstone>, <ore:stickIronMagnetic>], 
        [<extrautils2:decorativesolid:3>, <ore:compressed2xCobblestone>, <extrautils2:decorativesolid:3>]
      ]);
    //Wind Mill
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:passivegenerator:4>, [
        [<extrautils2:decorativesolid:3>, <ore:compressed2xCobblestone>, <extrautils2:decorativesolid:3>], 
        [<ore:stickIronMagnetic>, <ore:gearRedstone>, <ore:coalPowered>], 
        [<extrautils2:decorativesolid:3>, <ore:compressed2xCobblestone>, <extrautils2:decorativesolid:3>]
      ]);
  //Sound Muffler
    assembler.recipeBuilder()
      .inputs([
        <minecraft:wool> * 64,
        <minecraft:noteblock> * 8,
        <gregtech:meta_item_1:499> * 16
      ])
      .outputs(<extrautils2:soundmuffler>)
      .EUt(100)
      .duration(200)
      .buildAndRegister();
  //Tank
    //Stone
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:drum>, [
        [<extrautils2:decorativesolid:3>, <ore:slab>, <extrautils2:decorativesolid:3>], 
        [<extrautils2:decorativesolid:3>, <travelersbackpack:backpack_tank>, <extrautils2:decorativesolid:3>], 
        [<extrautils2:decorativesolid:3>, <ore:slab>, <extrautils2:decorativesolid:3>]
      ]);
    //Iron
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:drum:1>, [
        [<extrautils2:drum>, <extrautils2:drum>, <gregtech:meta_item_1:202>, <extrautils2:drum>, <extrautils2:drum>], 
        [<extrautils2:drum>, <ore:ingotIron>, <extrautils2:drum>, <ore:ingotIron>, <extrautils2:drum>], 
        [<gregtech:meta_item_1:202>, <extrautils2:drum>, <ore:blockIron>, <extrautils2:drum>, <gregtech:meta_item_1:202>], 
        [<extrautils2:drum>, <ore:ingotIron>, <extrautils2:drum>, <ore:ingotIron>, <extrautils2:drum>], 
        [<extrautils2:drum>, <extrautils2:drum>, <gregtech:meta_item_1:202>, <extrautils2:drum>, <extrautils2:drum>]
      ]);
    //Reinforced
      mods.thaumcraft.Infusion.registerRecipe(
        "EXU2_LARGE_DRUM",
        "INFUSION",
        <extrautils2:drum:2>,
        150,
        [
          <aspect:vacuos> * 20,
          <aspect:metallum> * 20,
          <aspect:fabrico> * 20,
          <aspect:machina> * 20
        ],
        <extrautils2:drum:1>,
        [
          <minecraft:diamond_block>,
          <gregtech:meta_item_1:204>,
          <minecraft:diamond_block>,
          <minecraft:gold_block>,
          <minecraft:diamond_block>,
          <gregtech:meta_item_1:204>,
          <minecraft:diamond_block>,
          <minecraft:gold_block>
        ]
      );
    //Demonically
      mods.extendedcrafting.TableCrafting.addShaped(3, <extrautils2:drum:3>, [
        [<ore:plateDoubleTungstenCarbide>, <extrautils2:drum:2>, <extrautils2:drum:2>, <extrautils2:klein>, <extrautils2:drum:2>, <extrautils2:drum:2>, <ore:plateDoubleTungstenCarbide>], 
        [<extrautils2:drum:2>, <ore:blockDemonicMetal>, <ore:plateDoubleTungstenCarbide>, <gregtech:meta_item_1:205>, <ore:plateDoubleTungstenCarbide>, <ore:blockDemonicMetal>, <extrautils2:drum:2>], 
        [<extrautils2:drum:2>, <ore:plateDoubleTungstenCarbide>, <ore:ingotDemonicMetal>, <extrautils2:klein>, <ore:ingotDemonicMetal>, <ore:plateDoubleTungstenCarbide>, <extrautils2:drum:2>], 
        [<extrautils2:klein>, <gregtech:meta_item_1:205>, <ore:ingotDemonicMetal>, <ore:plateDraconium>, <ore:ingotDemonicMetal>, <gregtech:meta_item_1:205>, <extrautils2:klein>], 
        [<extrautils2:drum:2>, <ore:plateDoubleTungstenCarbide>, <ore:ingotDemonicMetal>, <extrautils2:klein>, <ore:ingotDemonicMetal>, <ore:plateDoubleTungstenCarbide>, <extrautils2:drum:2>], 
        [<extrautils2:drum:2>, <ore:blockDemonicMetal>, <ore:plateDoubleTungstenCarbide>, <gregtech:meta_item_1:205>, <ore:plateDoubleTungstenCarbide>, <ore:blockDemonicMetal>, <extrautils2:drum:2>], 
        [<ore:plateDoubleTungstenCarbide>, <extrautils2:drum:2>, <extrautils2:drum:2>, <extrautils2:klein>, <extrautils2:drum:2>, <extrautils2:drum:2>, <ore:plateDoubleTungstenCarbide>]
      ]);
  //Indexer
    mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:indexer>, [
      [<extrautils2:decorativesolid:3>, <ore:compressed2xCobblestone>, <extrautils2:largishchest>, <ore:compressed2xCobblestone>, <extrautils2:decorativesolid:3>], 
      [<extrautils2:pipe>, <ore:gemRedstone>, <ore:circuitMv>, <ore:gemRedstone>, <extrautils2:pipe>], 
      [<extrautils2:largishchest>, <extrautils2:grocket>, <extrautils2:screen>, <extrautils2:grocket>, <extrautils2:largishchest>], 
      [<extrautils2:pipe>, <ore:gemRedstone>, <ore:circuitMv>, <ore:gemRedstone>, <extrautils2:pipe>], 
      [<extrautils2:decorativesolid:3>, <ore:compressed2xCobblestone>, <extrautils2:largishchest>, <ore:compressed2xCobblestone>, <extrautils2:decorativesolid:3>]
    ]);
  //Terraformers
    //Terraformer
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:terraformer>, [
        [<extrautils2:terraformer:1>, <ore:circuitIv>, <ore:treeSapling>, <ore:circuitIv>, <extrautils2:terraformer:1>], 
        [<ore:circuitIv>, <gregtech:meta_item_1:235>, <gregtech:meta_item_1:220>, <gregtech:meta_item_1:235>, <ore:circuitIv>], 
        [<ore:treeSapling>, <gregtech:meta_item_1:250>, <extrautils2:terraformer:9>, <gregtech:meta_item_1:250>, <ore:treeSapling>], 
        [<ore:circuitIv>, <gregtech:meta_item_1:235>, <gregtech:meta_item_1:220>, <gregtech:meta_item_1:235>, <ore:circuitIv>], 
        [<extrautils2:terraformer:1>, <ore:circuitIv>, <ore:treeSapling>, <ore:circuitIv>, <extrautils2:terraformer:1>]
      ]);
    //Antenna
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:terraformer:1>, [
        [<gregtech:meta_item_1:234>, <gregtech:meta_item_1:219>, <gregtech:meta_item_1:234>, <gregtech:meta_item_1:219>, <gregtech:meta_item_1:234>], 
        [<gregtech:meta_item_1:219>, <minecraft:end_rod>, <quark:iron_rod>, <minecraft:end_rod>, <gregtech:meta_item_1:219>], 
        [<gregtech:meta_item_1:234>, <quark:iron_rod>, <ore:treeSapling>, <quark:iron_rod>, <gregtech:meta_item_1:234>], 
        [<gregtech:meta_item_1:219>, <minecraft:end_rod>, <quark:iron_rod>, <minecraft:end_rod>, <gregtech:meta_item_1:219>], 
        [<gregtech:meta_item_1:234>, <gregtech:meta_item_1:219>, <gregtech:meta_item_1:234>, <gregtech:meta_item_1:219>, <gregtech:meta_item_1:234>]
      ]);
    //Magic Infuser
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:terraformer:8>, [
        [<extrautils2:terraformer:1>, <ore:circuitIv>, <minecraft:enchanting_table>, <ore:circuitIv>, <extrautils2:terraformer:1>], 
        [<ore:circuitIv>, <thaumcraft:stone_arcane>, <gregtech:meta_item_1:220>, <thaumcraft:stone_arcane>, <ore:circuitIv>], 
        [<minecraft:enchanting_table>, <gregtech:meta_item_1:235>, <extrautils2:terraformer:9>, <gregtech:meta_item_1:235>, <minecraft:enchanting_table>], 
        [<ore:circuitIv>, <thaumcraft:stone_arcane>, <gregtech:meta_item_1:220>, <thaumcraft:stone_arcane>, <ore:circuitIv>], 
        [<extrautils2:terraformer:1>, <ore:circuitIv>, <minecraft:enchanting_table>, <ore:circuitIv>, <extrautils2:terraformer:1>]
      ]);
    //Humidifier
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:terraformer:2>, [
        [<extrautils2:terraformer:1>, <gregtech:meta_item_1:220>, <nuclearcraft:water_source_dense>, <gregtech:meta_item_1:235>, <extrautils2:terraformer:1>], 
        [<ore:circuitIv>, <littletiles:lttransparentcoloredblock:5>, <gregtech:meta_item_1:250>, <littletiles:lttransparentcoloredblock:5>, <ore:circuitIv>], 
        [<nuclearcraft:water_source_dense>, <gregtech:meta_item_1:250>, <extrautils2:terraformer:9>, <gregtech:meta_item_1:250>, <nuclearcraft:water_source_dense>], 
        [<ore:circuitIv>, <littletiles:lttransparentcoloredblock:5>, <gregtech:meta_item_1:250>, <littletiles:lttransparentcoloredblock:5>, <ore:circuitIv>], 
        [<extrautils2:terraformer:1>, <gregtech:meta_item_1:235>, <nuclearcraft:water_source_dense>, <gregtech:meta_item_1:220>, <extrautils2:terraformer:1>]
      ]);
    //Heater
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:terraformer:4>, [
        [<extrautils2:terraformer:1>, <gregtech:wire_coil:2>, <ore:circuitIv>, <gregtech:wire_coil:2>, <extrautils2:terraformer:1>], 
        [<gregtech:meta_item_1:492>, <gregtech:meta_item_1:100>, <gregtech:meta_item_1:604>, <gregtech:meta_item_1:100>, <gregtech:meta_item_1:492>], 
        [<ore:circuitIv>, <gregtech:wire_coil:2>, <extrautils2:terraformer:9>, <gregtech:wire_coil:2>, <ore:circuitIv>], 
        [<gregtech:meta_item_1:492>, <gregtech:meta_item_1:100>, <gregtech:meta_item_1:604>, <gregtech:meta_item_1:100>, <gregtech:meta_item_1:492>], 
        [<extrautils2:terraformer:1>, <gregtech:wire_coil:2>, <ore:circuitIv>, <gregtech:wire_coil:2>, <extrautils2:terraformer:1>]
      ]);
    //Dehumidifier
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:terraformer:3>, [
        [<extrautils2:terraformer:1>, <gregtech:meta_item_1:145>, <ore:circuitIv>, <gregtech:meta_item_1:145>, <extrautils2:terraformer:1>], 
        [<gregtech:meta_item_1:145>, <gregtech:wire_coil:2>, <gregtech:meta_item_1:220>, <gregtech:wire_coil:2>, <gregtech:meta_item_1:145>], 
        [<ore:circuitIv>, <cyclicmagic:dehydrator>, <extrautils2:terraformer:9>, <cyclicmagic:dehydrator>, <ore:circuitIv>], 
        [<gregtech:meta_item_1:145>, <gregtech:wire_coil:2>, <gregtech:meta_item_1:235>, <gregtech:wire_coil:2>, <gregtech:meta_item_1:145>], 
        [<extrautils2:terraformer:1>, <gregtech:meta_item_1:145>, <ore:circuitIv>, <gregtech:meta_item_1:145>, <extrautils2:terraformer:1>]
      ]);
    //Dehostilifier
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:terraformer:6>, [
        [<extrautils2:terraformer:1>, <minecraft:red_mushroom_block>, <ore:circuitLuv>, <minecraft:brown_mushroom_block>, <extrautils2:terraformer:1>], 
        [<minecraft:brown_mushroom_block>, <ore:mycelium>, <gregtech:meta_item_1:282>, <ore:mycelium>, <minecraft:red_mushroom_block>], 
        [<ore:circuitLuv>, <gregtech:meta_item_1:282>, <extrautils2:terraformer:9>, <gregtech:meta_item_1:282>, <ore:circuitLuv>], 
        [<minecraft:red_mushroom_block>, <ore:mycelium>, <gregtech:meta_item_1:282>, <ore:mycelium>, <minecraft:brown_mushroom_block>], 
        [<extrautils2:terraformer:1>, <minecraft:brown_mushroom_block>, <ore:circuitLuv>, <minecraft:red_mushroom_block>, <extrautils2:terraformer:1>]
      ]);
    //Cooler
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:terraformer:5>, [
        [<extrautils2:terraformer:1>, <ore:dustCryotheum>, <ore:circuitIv>, <ore:dustCryotheum>, <extrautils2:terraformer:1>], 
        [<ore:dustCryotheum>, <gregtech:machine:1002>, <nuclearcraft:cooler:10>, <gregtech:machine:1002>, <ore:dustCryotheum>], 
        [<ore:circuitIv>, <nuclearcraft:cooler:10>, <extrautils2:terraformer:9>, <nuclearcraft:cooler:10>, <ore:circuitIv>], 
        [<ore:dustCryotheum>, <gregtech:machine:1002>, <nuclearcraft:cooler:10>, <gregtech:machine:1002>, <ore:dustCryotheum>], 
        [<extrautils2:terraformer:1>, <ore:dustCryotheum>, <ore:circuitIv>, <ore:dustCryotheum>, <extrautils2:terraformer:1>]
      ]);
    //Climograph Base Unit
      mods.thaumcraft.Infusion.registerRecipe(
        "CLIMOGRAPH_BASE_UNIT",
        "INFUSION",
        <extrautils2:terraformer:9>,
        160,
        [
          <aspect:aer> * 20,
          <aspect:ignis> * 20,
          <aspect:vitreus> * 20,
          <aspect:victus> * 20,
          <aspect:mortuus> * 20,
          <aspect:potentia> * 20,
          <aspect:praecantatio> * 20,
          <aspect:herba> * 20,
          <aspect:sol> * 20
        ],
        <extrautils2:machine>,
        [
          <minecraft:prismarine>,
          <minecraft:dirt:2>,
          <minecraft:sand>,
          <minecraft:sponge:1>,
          <minecraft:grass>,
          <minecraft:mycelium>,
          <minecraft:red_flower:1>,
          <minecraft:mossy_cobblestone>
        ]
      );
  //Trash Cans
    //Fluid
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:trashcanfluid>, [
        [<gregtech:meta_item_1:315>, <gregtech:meta_item_1:203>, <gregtech:meta_item_1:315>], 
        [<gregtech:meta_item_1:203>, <ore:gemNetherStar>, <gregtech:meta_item_1:203>], 
        [<gregtech:meta_item_1:315>, <gregtech:meta_item_1:203>, <gregtech:meta_item_1:315>]
      ]);
    //Item
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:trashcanenergy>, [
        [<botanicadds:rune_energy>, <gregtech:meta_item_1:203>, <botanicadds:rune_energy>], 
        [<gregtech:meta_item_1:203>, <extrautils2:trashcan>, <gregtech:meta_item_1:203>], 
        [<botanicadds:rune_energy>, <gregtech:meta_item_1:203>, <botanicadds:rune_energy>]
      ]);
    //Energy
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:trashcan>, [
        [<gregtech:meta_item_1:317>, <gregtech:meta_item_1:203>, <gregtech:meta_item_1:317>], 
        [<gregtech:meta_item_1:203>, <ore:gemNetherStar>, <gregtech:meta_item_1:203>], 
        [<gregtech:meta_item_1:317>, <gregtech:meta_item_1:203>, <gregtech:meta_item_1:317>]
      ]);
  //Trash Chest
    mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:trashchest>, [
      [<ore:chest>, <extrautils2:trashcan>, <ore:chest>], 
      [<extrautils2:trashcan>, <ore:gemNetherStar>, <extrautils2:trashcan>], 
      [<ore:chest>, <extrautils2:trashcan>, <ore:chest>]
    ]);
  //Wireless Energy
    //Wireless Battery
      mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:powerbattery>, [
        [<gregtech:meta_item_1:235>, <gregtech:meta_item_1:100>, <enderio:item_capacitor_vivid>, <gregtech:meta_item_1:100>, <gregtech:meta_item_1:235>], 
        [<gregtech:meta_item_1:100>, <gregtech:meta_item_1:604>, <gregtech:meta_item_1:220>, <gregtech:meta_item_1:604>, <gregtech:meta_item_1:100>], 
        [<enderio:item_capacitor_vivid>, <gregtech:meta_item_1:220>, <extrautils2:machine>, <gregtech:meta_item_1:220>, <enderio:item_capacitor_vivid>], 
        [<gregtech:meta_item_1:100>, <gregtech:meta_item_1:604>, <gregtech:meta_item_1:220>, <gregtech:meta_item_1:604>, <gregtech:meta_item_1:100>], 
        [<gregtech:meta_item_1:235>, <gregtech:meta_item_1:100>, <enderio:item_capacitor_vivid>, <gregtech:meta_item_1:100>, <gregtech:meta_item_1:235>]
      ]);
    //Wireless Transmitter
      mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:powertransmitter>, [
        [<gregtech:meta_item_1:503>, <gregtech:meta_item_1:603>, <gregtech:meta_item_1:503>], 
        [<gregtech:meta_item_1:603>, <ore:gemRedstone>, <gregtech:meta_item_1:603>], 
        [<gregtech:meta_item_1:503>, <gregtech:meta_item_1:603>, <gregtech:meta_item_1:503>]
      ]);
  //Angel Ring
    //Nomal
      mods.extendedcrafting.TableCrafting.addShaped(4, <extrautils2:angelring>, [
        [<gregtech:transparent_casing:3>, <gregtech:transparent_casing:3>, <ore:blockRoseGold>, <ore:feather>, <ore:ingotCrystalMatrix>, <ore:feather>, <ore:blockRoseGold>, <gregtech:transparent_casing:3>, <gregtech:transparent_casing:3>], 
        [<gregtech:transparent_casing:3>, <ore:ingotCrystalMatrix>, <ore:circuitUv>, <ore:dustAstralStarmetal>, <avaritia:endest_pearl>, <ore:dustAstralStarmetal>, <ore:circuitUv>, <ore:ingotCrystalMatrix>, <gregtech:transparent_casing:3>], 
        [<ore:blockRoseGold>, <ore:circuitUv>, <extrautils2:opinium:6>, <gregtech:meta_item_1:207>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:207>, <extrautils2:opinium:6>, <ore:circuitUv>, <ore:blockRoseGold>], 
        [<ore:feather>, <ore:dustAstralStarmetal>, <gregtech:meta_item_1:207>, <extendedcrafting:singularity:5>, <extrautils2:chickenring:1>, <extendedcrafting:singularity:5>, <gregtech:meta_item_1:207>, <ore:dustAstralStarmetal>, <ore:feather>], 
        [<ore:ingotCrystalMatrix>, <avaritia:endest_pearl>, <gregtech:meta_item_1:282>, <extrautils2:chickenring:1>, <avaritia:singularity:1>, <extrautils2:chickenring:1>, <gregtech:meta_item_1:282>, <avaritia:endest_pearl>, <ore:ingotCrystalMatrix>], 
        [<ore:feather>, <ore:dustAstralStarmetal>, <gregtech:meta_item_1:207>, <extendedcrafting:singularity:5>, <extrautils2:chickenring:1>, <extendedcrafting:singularity:5>, <gregtech:meta_item_1:207>, <ore:dustAstralStarmetal>, <ore:feather>], 
        [<ore:blockRoseGold>, <ore:circuitUv>, <extrautils2:opinium:6>, <gregtech:meta_item_1:207>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:207>, <extrautils2:opinium:6>, <ore:circuitUv>, <ore:blockRoseGold>], 
        [<gregtech:transparent_casing:3>, <ore:ingotCrystalMatrix>, <ore:circuitUv>, <ore:dustAstralStarmetal>, <avaritia:endest_pearl>, <ore:dustAstralStarmetal>, <ore:circuitUv>, <ore:ingotCrystalMatrix>, <gregtech:transparent_casing:3>], 
        [<gregtech:transparent_casing:3>, <gregtech:transparent_casing:3>, <ore:blockRoseGold>, <ore:feather>, <ore:ingotCrystalMatrix>, <ore:feather>, <ore:blockRoseGold>, <gregtech:transparent_casing:3>, <gregtech:transparent_casing:3>]
      ]);
    //chicken Wing
      mods.thaumcraft.Infusion.registerRecipe(
        "ANGEL_RING_1",
        "INFUSION",
        <extrautils2:angelring:1>,
        1600,
        [
          <aspect:aer> * 10,
          <aspect:ordo> * 10,
          <aspect:motus> * 10,
          <aspect:potentia> * 10,
          <aspect:praecantatio> * 10,
          <aspect:volatus> * 10,
          <aspect:draco> * 10,
          <aspect:caeles> * 4,
          <aspect:ventus> * 10
        ],
        <extrautils2:angelring>,
        [
          <minecraft:feather>,
          <thaumcraft:fabric>,
          <minecraft:feather>,
          <thaumcraft:fabric>,
          <minecraft:feather>,
          <thaumcraft:fabric>,
          <minecraft:feather>,
          <thaumcraft:fabric>
        ]
      );
    //Demon Wing
      mods.thaumcraft.Infusion.registerRecipe(
        "ANGEL_RING_2",
        "INFUSION",
        <extrautils2:angelring:5>,
        1600,
        [
          <aspect:aer> * 10,
          <aspect:ordo> * 10,
          <aspect:motus> * 10,
          <aspect:potentia> * 10,
          <aspect:praecantatio> * 10,
          <aspect:volatus> * 10,
          <aspect:draco> * 10,
          <aspect:caeles> * 4,
          <aspect:ventus> * 10
        ],
        <extrautils2:angelring>,
        [
          <minecraft:feather>,
          <extrautils2:ingredients:10>,
          <minecraft:feather>,
          <extrautils2:ingredients:10>,
          <minecraft:feather>,
          <extrautils2:ingredients:10>,
          <minecraft:feather>,
          <extrautils2:ingredients:10>
        ]
      );
    //Golden wing
      mods.thaumcraft.Infusion.registerRecipe(
        "ANGEL_RING_3",
        "INFUSION",
        <extrautils2:angelring:4>,
        1600,
        [
          <aspect:aer> * 10,
          <aspect:ordo> * 10,
          <aspect:motus> * 10,
          <aspect:potentia> * 10,
          <aspect:praecantatio> * 10,
          <aspect:volatus> * 10,
          <aspect:draco> * 10,
          <aspect:caeles> * 4,
          <aspect:ventus> * 10
        ],
        <extrautils2:angelring>,
        [
          <minecraft:feather>,
          <gregtech:meta_plate:301>,
          <minecraft:feather>,
          <gregtech:meta_plate:301>,
          <minecraft:feather>,
          <gregtech:meta_plate:301>,
          <minecraft:feather>,
          <gregtech:meta_plate:301>
        ]
      );
    //Dragon Wing
      mods.thaumcraft.Infusion.registerRecipe(
        "ANGEL_RING_4",
        "INFUSION",
        <extrautils2:angelring:3>,
        1600,
        [
          <aspect:aer> * 10,
          <aspect:ordo> * 10,
          <aspect:motus> * 10,
          <aspect:potentia> * 10,
          <aspect:praecantatio> * 10,
          <aspect:volatus> * 10,
          <aspect:draco> * 10,
          <aspect:caeles> * 4,
          <aspect:ventus> * 10
        ],
        <extrautils2:angelring>,
        [
          <minecraft:feather>,
          <iceandfire:dragonscales_red>,
          <minecraft:feather>,
          <iceandfire:dragonscales_red>,
          <minecraft:feather>,
          <iceandfire:dragonscales_red>,
          <minecraft:feather>,
          <iceandfire:dragonscales_red>
        ]
      );
    //Pixie Wing
      mods.thaumcraft.Infusion.registerRecipe(
        "ANGEL_RING_5",
        "INFUSION",
        <extrautils2:angelring:2>,
        1600,
        [
          <aspect:aer> * 10,
          <aspect:ordo> * 10,
          <aspect:motus> * 10,
          <aspect:potentia> * 10,
          <aspect:praecantatio> * 10,
          <aspect:volatus> * 10,
          <aspect:draco> * 10,
          <aspect:caeles> * 4,
          <aspect:ventus> * 10
        ],
        <extrautils2:angelring>,
        [
          <minecraft:feather>,
          <iceandfire:pixie_wings>,
          <minecraft:feather>,
          <iceandfire:pixie_wings>,
          <minecraft:feather>,
          <iceandfire:pixie_wings>,
          <minecraft:feather>,
          <iceandfire:pixie_wings>
        ]
      );
  //Transefer Systems
    //
  //Creative Builders Wand
    mods.thaumcraft.Infusion.registerRecipe(
        "CREATIVE_BUILDERS_WAND",
        "INFUSION",
        <extrautils2:itemcreativebuilderswand>,
        1000,
        [
          <aspect:potentia> * 100,
          <aspect:permutatio> * 100,
          <aspect:praecantatio> * 100,
          <aspect:instrumentum> * 300,
          <aspect:fabrico> * 200,
          <aspect:machina> * 100
        ],
        <extrautils2:itembuilderswand>,
        [
          <mekanism:enrichedalloy>,
          <gregtech:meta_stick:2>,
          <mekanism:enrichedalloy>,
          <minecraft:diamond>,
          <mekanism:enrichedalloy>,
          <gregtech:meta_stick:2>,
          <mekanism:enrichedalloy>,
          <minecraft:diamond>,
        ]
      );
    
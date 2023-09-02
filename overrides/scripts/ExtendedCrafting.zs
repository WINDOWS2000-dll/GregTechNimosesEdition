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

print("------EXTENDED_CRAFTING_LOADING_START------");
//RecipesRemove
mods.extendedcrafting.TableCrafting.remove(<extendedcrafting:material:24>);
var array1 = [<extendedcrafting:pedestal>,<extendedcrafting:interface>,<extendedcrafting:table_basic>,<extendedcrafting:table_advanced>,<extendedcrafting:table_elite>,<extendedcrafting:table_ultimate>,<extendedcrafting:compressor>,<extendedcrafting:ender_alternator>,<extendedcrafting:material>,<extendedcrafting:material:3>,<extendedcrafting:material:2>,<extendedcrafting:material:7>,<extendedcrafting:material:8>,<extendedcrafting:material:9>,<extendedcrafting:material:10>,	<extendedcrafting:material:11>,<extendedcrafting:material:19>,<extendedcrafting:material:36>,<extendedcrafting:material:12>,<extendedcrafting:material:13>,<extendedcrafting:material:14>,<extendedcrafting:material:16>,<extendedcrafting:material:15>,<extendedcrafting:material:17>,<extendedcrafting:material:18>,<extendedcrafting:ender_crafter>] as IItemStack[];

for i in array1 {
	recipes.remove(i);
}

//ADD Recipe
	//Material
		//Ingot
			//Crystal
				mods.extendedcrafting.TableCrafting.addShaped(3, <extendedcrafting:material:24> * 16, [
					[null, null, <gregtech:meta_item_1:492>, <ore:plateDiamondinfusedingot>, <ore:stickLongDiamondinfusedingot>, <ore:runeManaB>, <ore:ingotManasteel>], 
					[null, <gregtech:meta_item_1:492>, <ore:plateDiamondinfusedingot>, <ore:dustSkyStone>, <ore:alloyElite>, <ore:stickThaumium>, <ore:runeWinterB>], 
					[<gregtech:meta_item_1:492>, <ore:plateDiamondinfusedingot>, <ore:gemExquisiteDiamond>, <appliedenergistics2:material:24>, <ore:gemExquisiteDiamond>, <ore:alloyElite>, <ore:stickLongDiamondinfusedingot>], 
					[<ore:plateDiamondinfusedingot>, <ore:dustSkyStone>, <appliedenergistics2:material:24>, <ore:gemNetherStar>, <appliedenergistics2:material:24>, <ore:dustSkyStone>, <ore:plateDiamondinfusedingot>], 
					[<ore:stickLongDiamondinfusedingot>, <ore:alloyElite>, <ore:gemExquisiteDiamond>, <appliedenergistics2:material:24>, <ore:gemExquisiteDiamond>, <ore:plateDiamondinfusedingot>, <gregtech:meta_item_1:492>], 
					[<ore:runeWaterB>, <ore:stickThaumium>, <ore:alloyElite>, <ore:dustSkyStone>, <ore:plateDiamondinfusedingot>, <gregtech:meta_item_1:492>, null], 
					[<ore:ingotManasteel>, <ore:runeAirB>, <ore:stickLongDiamondinfusedingot>, <ore:plateDiamondinfusedingot>, <gregtech:meta_item_1:492>, null, null]
				]);
			//Ender
				alloy_smelter.recipeBuilder()
    			.inputs([<minecraft:ender_eye>, <ore:ingotSteel>])
    			.outputs([<extendedcrafting:material:36>])
    			.EUt(120)
    			.duration(120)
    			.buildAndRegister();
			//BlackIron
				alloy_smelter.recipeBuilder()
   		 		.inputs([<gregtech:meta_ingot:2011>, <ore:stoneGraniteBlack>])
    			.outputs([<extendedcrafting:material> * 2])
    			.EUt(20)
    			.duration(400)
    			.buildAndRegister();
				//BlackIronPlate
					bender.recipeBuilder()
						.inputs([<extendedcrafting:material>])
						.notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 1}))
						.outputs([<extendedcrafting:material:2>])
						.EUt(24)
						.duration(200)
						.buildAndRegister();
				//BlackIronRod
					lathe.recipeBuilder()
						.inputs([<extendedcrafting:material>])
						.outputs([<extendedcrafting:material:3>])
						.EUt(24)
						.duration(200)
						.buildAndRegister();
		//Sonota
			mixer.recipeBuilder()
    		.inputs([<gregtech:meta_dust_small:1601> * 8, <gregtech:meta_dust:311>])
    		.outputs([<extendedcrafting:material:7> * 4])
    		.EUt(24)
    		.duration(180)
    		.buildAndRegister();
	//CraftingUnits
		//CraftingTable(Tier1 is not here)
			//Tier2
				mods.extendedcrafting.TableCrafting.addShaped(1, <extendedcrafting:table_advanced>, [
					[<extendedcrafting:material:8>, <ore:blockElectrum>, <extendedcrafting:material:8>], 
					[<extendedcrafting:material:9>, <extendedcrafting:table_basic>, <extendedcrafting:material:9>], 
					[<gregtech:meta_item_1:187>, <ore:workbench>, <gregtech:meta_item_1:187>]
				]);
			//Tier3
				mods.extendedcrafting.TableCrafting.addShaped(2, <extendedcrafting:table_elite>, [
					[null, <extendedcrafting:material:9>, <ore:plateNetherStar>, <extendedcrafting:material:9>, null], 
					[<extendedcrafting:material:9>, <extendedcrafting:material:10>, <ore:circuitIv>, <extendedcrafting:material:10>, <extendedcrafting:material:9>], 
					[<ore:plateNetherStar>, <gregtech:meta_item_1:190>, <extendedcrafting:table_advanced>, <gregtech:meta_item_1:190>, <ore:plateNetherStar>], 
					[<extendedcrafting:material:9>, <extendedcrafting:material:10>, <ore:circuitIv>, <extendedcrafting:material:10>, <extendedcrafting:material:9>], 
					[null, <extendedcrafting:material:9>, <ore:plateNetherStar>, <extendedcrafting:material:9>, null]
				]);
			//Tier4
				mods.extendedcrafting.TableCrafting.addShaped(3, <extendedcrafting:table_ultimate>, [
					[null, <ore:plateDoubleAstral>, <ore:plateNetherStar>, <extendedcrafting:material:12>, <ore:plateNetherStar>, <ore:plateDoubleAstral>, null], 
					[<ore:plateDoubleAstral>, <extendedcrafting:material:11>, <gregtech:meta_item_1:501>, <ore:circuitLuv>, <gregtech:meta_item_1:501>, <extendedcrafting:material:11>, <ore:plateDoubleAstral>], 
					[<ore:plateNetherStar>, <gregtech:meta_item_1:501>, <extendedcrafting:material:10>, <gregtech:meta_item_1:191>, <extendedcrafting:material:10>, <gregtech:meta_item_1:501>, <ore:plateNetherStar>], 
					[<extendedcrafting:material:12>, <ore:circuitIv>, <extendedcrafting:table_elite>, <ore:workbench>, <extendedcrafting:table_elite>, <ore:circuitIv>, <extendedcrafting:material:12>], 
					[<ore:plateNetherStar>, <gregtech:meta_item_1:501>, <extendedcrafting:material:10>, <gregtech:meta_item_1:191>, <extendedcrafting:material:10>, <gregtech:meta_item_1:501>, <ore:plateNetherStar>], 
					[<ore:plateDoubleAstral>, <extendedcrafting:material:11>, <gregtech:meta_item_1:501>, <ore:circuitLuv>, <gregtech:meta_item_1:501>, <extendedcrafting:material:11>, <ore:plateDoubleAstral>], 
					[null, <ore:plateDoubleAstral>, <ore:plateNetherStar>, <extendedcrafting:material:12>, <ore:plateNetherStar>, <ore:plateDoubleAstral>, null]
				]);
		//SingularityCompressor
			mods.extendedcrafting.TableCrafting.addShaped(2, <extendedcrafting:compressor>, [
				[<ore:stickLongTungstenCarbide>, <extendedcrafting:material:2>, <extendedcrafting:material:10>, <extendedcrafting:material:2>, <ore:stickLongTungstenCarbide>], 
				[<extendedcrafting:material:2>, <gregtech:meta_item_1:101>, <gregtech:meta_item_1:176>, <gregtech:meta_item_1:101>, <extendedcrafting:material:2>], 
				[<extendedcrafting:material:10>, <ore:circuitIv>, <extendedcrafting:material:12>, <ore:circuitIv>, <extendedcrafting:material:10>], 
				[<extendedcrafting:material:2>, <gregtech:meta_item_1:101>, <gregtech:meta_item_1:176>, <gregtech:meta_item_1:101>, <extendedcrafting:material:2>], 
				[<ore:stickLongTungstenCarbide>, <extendedcrafting:material:2>, <extendedcrafting:material:10>, <extendedcrafting:material:2>, <ore:stickLongTungstenCarbide>]
			]);
		//EnderCrafting
			//Alternator
				mods.extendedcrafting.TableCrafting.addShaped(2, <extendedcrafting:ender_alternator> * 2, [
					[null, <ore:plateEnderPearl>, <ore:blockEnderEye>, <ore:plateEnderPearl>, null], 
					[null, <ore:plateEnderium>, <gregtech:meta_item_1:281>, <ore:plateEnderium>, null], 
					[null, <extendedcrafting:storage:5>, <ore:blockEnderEye>, <extendedcrafting:storage:5>, null], 
					[<extendedcrafting:material:36>, <extendedcrafting:storage:5>, <extendedcrafting:storage:5>, <extendedcrafting:storage:5>, <extendedcrafting:material:36>], 
					[<ore:circuitIv>, <extendedcrafting:material:36>, <gregtech:meta_item_1:282>, <extendedcrafting:material:36>, <ore:circuitIv>]
				]);
			//Core
				mods.extendedcrafting.TableCrafting.addShaped(2, <extendedcrafting:ender_crafter>, [
					[<gregtech:meta_item_1:282>, <extendedcrafting:storage:5>, <extendedcrafting:material:36>, <extendedcrafting:storage:5>, <gregtech:meta_item_1:282>], 
					[<extendedcrafting:storage:5>, <extendedcrafting:material:10>, <ore:blockEnderPearl>, <extendedcrafting:material:10>, <extendedcrafting:storage:5>], 
					[<extendedcrafting:material:36>, <ore:blockEnderPearl>, <extendedcrafting:material:12>, <ore:blockEnderPearl>, <extendedcrafting:material:36>], 
					[<extendedcrafting:storage:5>, <extendedcrafting:material:10>, <ore:blockEnderPearl>, <extendedcrafting:material:10>, <extendedcrafting:storage:5>], 
					[<gregtech:meta_item_1:282>, <extendedcrafting:storage:5>, <extendedcrafting:material:36>, <extendedcrafting:storage:5>, <gregtech:meta_item_1:282>]
				]);
	//Component
		//Basic
			mods.extendedcrafting.TableCrafting.addShaped(1, <extendedcrafting:material:14> * 2, [
				[<ore:wireGtSingleIron>, <ore:gearSmallIron>, <ore:plateStoneingot>], 
				[<ore:gearSmallIron>, <ore:wireGtSingleIron>, <ore:plateStoneingot>], 
				[<ore:plateStoneingot>, <ore:plateStoneingot>, <ore:ingotIron>]
			]);
		//Advanced
			mods.extendedcrafting.TableCrafting.addShaped(1, <extendedcrafting:material:15> * 4, [
				[<ore:gearGold>, <ore:circuitLv>, <extendedcrafting:material:2>], 
				[<ore:circuitLv>, <minecraft:light_weighted_pressure_plate>, <extendedcrafting:material:2>], 
				[<extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:14>]
			]);
		//Elite
			mods.extendedcrafting.TableCrafting.addShaped(2, <extendedcrafting:material:16> * 4, [
				[<ore:gearDiamondinfusedingot>, <gregtech:meta_item_1:591>, <ore:gearStainlessSteel>, <ore:plateDiamondinfusedingot>, <extendedcrafting:material:14>], 
				[<gregtech:meta_item_1:591>, <ore:circuitHv>, <ore:alloyAdvanced>, <extendedcrafting:material:15>, <extendedcrafting:material:8>], 
				[<ore:gearSmallStainlessSteel>, <ore:alloyAdvanced>, <ore:gearDiamondinfusedingot>, <ore:plateDiamondinfusedingot>, <extendedcrafting:material:14>], 
				[<ore:plateDiamondinfusedingot>, <extendedcrafting:material:15>, <ore:plateDiamondinfusedingot>, <ore:plateDiamondinfusedingot>, <ore:plateDiamondinfusedingot>], 
				[<extendedcrafting:material:14>, <extendedcrafting:material:8>, <extendedcrafting:material:14>, <ore:plateDiamondinfusedingot>, <extendedcrafting:material:9>]
			]);
		//ULTIMATE
			mods.extendedcrafting.TableCrafting.addShaped(3, <extendedcrafting:material:17> * 4, [
				[<gregtech:meta_item_1:282>, <ore:circuitLuv>, <ore:circuitIv>, <ore:circuitLuv>, <gregtech:meta_item_1:282>, <extendedcrafting:material:16>, <gregtech:meta_item_1:492>], 
				[<ore:circuitLuv>, <ore:plateNetherStar>, <ore:circuitIv>, <ore:plateNetherStar>, <ore:circuitLuv>, <extendedcrafting:material:16>, <gregtech:meta_item_1:492>], 
				[<ore:circuitIv>, <ore:circuitIv>, <ore:circuitZpm>, <ore:circuitIv>, <ore:circuitIv>, <extendedcrafting:material:9>, <extendedcrafting:material:9>], 
				[<ore:circuitLuv>, <ore:plateNetherStar>, <ore:circuitIv>, <ore:plateNetherStar>, <ore:circuitLuv>, <extendedcrafting:material:16>, <gregtech:meta_item_1:492>], 
				[<gregtech:meta_item_1:282>, <ore:circuitLuv>, <ore:circuitIv>, <ore:circuitLuv>, <gregtech:meta_item_1:282>, <extendedcrafting:material:16>, <gregtech:meta_item_1:492>], 
				[<extendedcrafting:material:16>, <extendedcrafting:material:16>, <extendedcrafting:material:9>, <extendedcrafting:material:16>, <extendedcrafting:material:16>, <gregtech:meta_item_1:221>, <gregtech:meta_item_1:191>], 
				[<gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <extendedcrafting:material:9>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:236>, <gregtech:meta_item_1:206>]
			]);
		//Crystal
			mods.extendedcrafting.TableCrafting.addShaped(2, <extendedcrafting:material:18> * 4, [
				[<ore:plateDiamondinfusedingot>, <extendedcrafting:material:2>, <ore:plateDiamondinfusedingot>, <extendedcrafting:material:2>, <ore:plateDiamondinfusedingot>], 
				[<extendedcrafting:material:2>, <ore:nuggetCrystaltine>, <ore:ingotCrystaltine>, <ore:nuggetCrystaltine>, <extendedcrafting:material:2>], 
				[<ore:plateDiamondinfusedingot>, <ore:ingotCrystaltine>, <ore:alloyElite>, <ore:ingotCrystaltine>, <ore:plateDiamondinfusedingot>], 
				[<extendedcrafting:material:2>, <ore:nuggetCrystaltine>, <ore:ingotCrystaltine>, <ore:nuggetCrystaltine>, <extendedcrafting:material:2>], 
				[<ore:plateDiamondinfusedingot>, <extendedcrafting:material:2>, <ore:plateDiamondinfusedingot>, <extendedcrafting:material:2>, <ore:plateDiamondinfusedingot>]
			]);
		//TURE THE ULTIMATE
			mods.extendedcrafting.TableCrafting.addShaped(4, <extendedcrafting:material:19> * 4, [
				[<extendedcrafting:material:11>, <extendedcrafting:material:12>, <extendedcrafting:material:12>, <extendedcrafting:material:11>, <extendedcrafting:material:9>, <extendedcrafting:material:11>, <extendedcrafting:material:12>, <extendedcrafting:material:12>, <extendedcrafting:material:11>], 
				[<extendedcrafting:material:12>, <extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:10>, <extendedcrafting:material:10>, <extendedcrafting:material:10>, <extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:12>], 
				[<extendedcrafting:material:12>, <extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:12>, <extendedcrafting:material:9>, <extendedcrafting:material:12>, <extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:12>], 
				[<extendedcrafting:material:11>, <extendedcrafting:material:10>, <extendedcrafting:material:12>, <ore:plateAntimatter>, <ore:plateNetherStar>, <ore:plateAntimatter>, <extendedcrafting:material:12>, <extendedcrafting:material:10>, <extendedcrafting:material:11>], 
				[<extendedcrafting:material:9>, <extendedcrafting:material:10>, <extendedcrafting:material:9>, <ore:plateNetherStar>, <extendedcrafting:singularity_ultimate>, <ore:plateNetherStar>, <extendedcrafting:material:9>, <extendedcrafting:material:10>, <extendedcrafting:material:9>], 
				[<extendedcrafting:material:11>, <extendedcrafting:material:10>, <extendedcrafting:material:12>, <ore:plateAntimatter>, <ore:plateNetherStar>, <ore:plateAntimatter>, <extendedcrafting:material:12>, <extendedcrafting:material:10>, <extendedcrafting:material:11>], 
				[<extendedcrafting:material:12>, <extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:12>, <extendedcrafting:material:9>, <extendedcrafting:material:12>, <extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:12>], 
				[<extendedcrafting:material:12>, <extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:10>, <extendedcrafting:material:10>, <extendedcrafting:material:10>, <extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:12>], 
				[<extendedcrafting:material:11>, <extendedcrafting:material:12>, <extendedcrafting:material:12>, <extendedcrafting:material:11>, <extendedcrafting:material:9>, <extendedcrafting:material:11>, <extendedcrafting:material:12>, <extendedcrafting:material:12>, <extendedcrafting:material:11>]
			]);
	//Catalyst
		//Basic
			mods.extendedcrafting.TableCrafting.addShaped(1, <extendedcrafting:material:8>, [
				[<ore:stickSteel>, <extendedcrafting:material:14>, <ore:stickSteel>], 
				[<extendedcrafting:material:14>, <ore:gearIron>, <extendedcrafting:material:14>], 
				[<ore:stickSteel>, <extendedcrafting:material:14>, <ore:stickSteel>]
			]);
		//Advanced
			mods.extendedcrafting.TableCrafting.addShaped(1, <extendedcrafting:material:9>, [
				[<extendedcrafting:material:15>, <extendedcrafting:material:7>, <extendedcrafting:material:15>], 
				[<ore:circuitMv>, <ore:gearGold>, <ore:circuitMv>], 
				[<extendedcrafting:material:15>, <extendedcrafting:material:7>, <extendedcrafting:material:15>]
			]	);
		//Elite
			mods.extendedcrafting.TableCrafting.addShaped(2, <extendedcrafting:material:10>, [
				[<extendedcrafting:material:2>, <extendedcrafting:material:9>, <extendedcrafting:material:9>, <extendedcrafting:material:16>, <extendedcrafting:material:2>], 
				[<extendedcrafting:material:16>, <extendedcrafting:material:16>, <ore:circuitEv>, <extendedcrafting:material:16>, <extendedcrafting:material:9>], 
				[<extendedcrafting:material:9>, <ore:circuitEv>, <ore:gemNetherStar>, <ore:circuitEv>, <extendedcrafting:material:9>], 
				[<extendedcrafting:material:9>, <extendedcrafting:material:16>, <ore:circuitEv>, <extendedcrafting:material:16>, <extendedcrafting:material:16>], 
				[<extendedcrafting:material:2>, <extendedcrafting:material:16>, <extendedcrafting:material:9>, <extendedcrafting:material:9>, <extendedcrafting:material:2>]
			]);
		//Ultimate
			mods.extendedcrafting.TableCrafting.addShaped(3, <extendedcrafting:material:11>, [
				[<gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:17>, <gregtech:meta_item_1:492>], 
				[<extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <extendedcrafting:material:17>, <gregtech:meta_item_1:492>], 
				[<extendedcrafting:material:2>, <ore:plateTerrasteel>, <gregtech:meta_item_1:191>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:191>, <extendedcrafting:material:17>, <extendedcrafting:material:2>], 
				[<extendedcrafting:material:2>, <ore:plateTerrasteel>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:283>, <draconicevolution:draconic_core>, <ore:plateTerrasteel>, <extendedcrafting:material:2>], 
				[<extendedcrafting:material:2>, <extendedcrafting:material:17>, <gregtech:meta_item_1:191>, <draconicevolution:draconic_core>, <gregtech:meta_item_1:191>, <ore:plateTerrasteel>, <extendedcrafting:material:2>], 
				[<gregtech:meta_item_1:492>, <extendedcrafting:material:17>, <ore:plateTerrasteel>, <ore:plateTerrasteel>, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>], 
				[<gregtech:meta_item_1:492>, <extendedcrafting:material:17>, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>]
			]);
		//Crystal
			mods.extendedcrafting.TableCrafting.addShaped(2, <extendedcrafting:material:12>, [
				[<ore:alloyElite>, <extendedcrafting:material:2>, <ore:circuitHv>, <extendedcrafting:material:2>, <ore:alloyElite>], 
				[<extendedcrafting:material:2>, <ore:plateDiamondinfusedingot>, <extendedcrafting:material:18>, <ore:plateDiamondinfusedingot>, <extendedcrafting:material:2>], 
				[<ore:circuitHv>, <extendedcrafting:material:18>, <extendedcrafting:material:9>, <extendedcrafting:material:18>, <ore:circuitHv>], 
				[<extendedcrafting:material:2>, <ore:plateDiamondinfusedingot>, <extendedcrafting:material:18>, <ore:plateDiamondinfusedingot>, <extendedcrafting:material:2>], 
				[<ore:alloyElite>, <extendedcrafting:material:2>, <ore:circuitHv>, <extendedcrafting:material:2>, <ore:alloyElite>]
			]);
		//TURE TEH ULTIMATE
			mods.extendedcrafting.TableCrafting.addShaped(4, <extendedcrafting:material:13>, [
				[<extendedcrafting:material:2>, <extendedcrafting:material:2>, <ore:circuitUltimate>, <ore:alloyUltimate>, <ore:circuitUltimate>, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <extendedcrafting:material:19>, <extendedcrafting:material:2>], 
				[<extendedcrafting:material:19>, <extendedcrafting:material:19>, <extendedcrafting:material:19>, <extendedcrafting:material:19>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:plateAntimatter>, <extendedcrafting:material:19>, <extendedcrafting:material:2>], 
				[<extendedcrafting:material:2>, <ore:plateAntimatter>, <ore:circuitUev>, <ore:plateDoubleDraconiumawakened>, <ore:circuitUv>, <ore:plateDoubleDraconiumawakened>, <ore:circuitUev>, <extendedcrafting:material:19>, <ore:circuitUltimate>], 
				[<extendedcrafting:material:2>, <ore:plateAntimatter>, <ore:plateDoubleDraconiumawakened>, <ore:circuitZpm>, <ore:circuitLuv>, <ore:circuitZpm>, <ore:plateDoubleDraconiumawakened>, <extendedcrafting:material:19>, <ore:alloyUltimate>], 
				[<ore:circuitUltimate>, <ore:plateAntimatter>, <ore:circuitUv>, <ore:circuitLuv>, <ore:circuitUiv>, <ore:circuitLuv>, <ore:circuitUv>, <ore:plateAntimatter>, <ore:circuitUltimate>], 
				[<ore:alloyUltimate>, <extendedcrafting:material:19>, <ore:plateDoubleDraconiumawakened>, <ore:circuitZpm>, <ore:circuitLuv>, <ore:circuitZpm>, <ore:plateDoubleDraconiumawakened>, <ore:plateAntimatter>, <extendedcrafting:material:2>], 
				[<ore:circuitUltimate>, <extendedcrafting:material:19>, <ore:circuitUev>, <ore:plateDoubleDraconiumawakened>, <ore:circuitUv>, <ore:plateDoubleDraconiumawakened>, <ore:circuitUev>, <ore:plateAntimatter>, <extendedcrafting:material:2>], 
				[<extendedcrafting:material:2>, <extendedcrafting:material:19>, <ore:plateAntimatter>, <ore:plateAntimatter>, <ore:plateAntimatter>, <extendedcrafting:material:19>, <extendedcrafting:material:19>, <extendedcrafting:material:19>, <extendedcrafting:material:19>], 
				[<extendedcrafting:material:2>, <extendedcrafting:material:19>, <extendedcrafting:material:2>, <extendedcrafting:material:2>, <ore:circuitUltimate>, <ore:alloyUltimate>, <ore:circuitUltimate>, <extendedcrafting:material:2>, <extendedcrafting:material:2>]
			]);
	//Automation
		mods.extendedcrafting.TableCrafting.addShaped(1, <extendedcrafting:interface>, [
			[<extendedcrafting:material:2>, <gregtech:meta_item_1:159>, <extendedcrafting:material:2>], 
			[<gregtech:meta_item_1:188>, <extendedcrafting:frame>, <gregtech:meta_item_1:188>], 
			[<ore:circuitMv>, <gregtech:meta_item_1:159>, <ore:circuitMv>]
		]);

print("------EXTENDED_CRAFTING_LOADING_END------");

			
	

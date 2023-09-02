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

print("------STONE_AGE_LOADING_START------");
//RecipesRemove
  //MinecraftBases
		recipes.remove(<ore:chestWood>);
		recipes.remove(<minecraft:furnace>);
		recipes.remove(<ore:fenceGateWood>);
		recipes.remove(<ore:fenceWood>);
  //Beds
		var array114514 = [<minecraft:bed>,<minecraft:bed:1>,<minecraft:bed:2>,<minecraft:bed:3>,<minecraft:bed:4>,<minecraft:bed:5>,<minecraft:bed:6>,<minecraft:bed:7>,<minecraft:bed:8>,<minecraft:bed:9>,<minecraft:bed:10>,<minecraft:bed:11>,<minecraft:bed:12>,<minecraft:bed:13>,<minecraft:bed:14>,<minecraft:bed:15>] as IItemStack[];

		for i in array114514 {
			recipes.remove(i);
		}
	//CustomChest
		var array810 = [<quark:custom_chest>,<quark:custom_chest:1>,<quark:custom_chest:2>,<quark:custom_chest:3>,<quark:custom_chest:4>] as IItemStack[];

		for i in array810 {
			recipes.remove(i);
		}
  //WoodenToolsRemove
		recipes.remove(<minecraft:wooden_pickaxe>);
		recipes.remove(<minecraft:wooden_sword>);
		recipes.remove(<minecraft:wooden_shovel>);
		recipes.remove(<minecraft:wooden_axe>);
		recipes.remove(<minecraft:wooden_hoe>);
  //StoneTools
		recipes.remove(<minecraft:stone_pickaxe>);
		recipes.remove(<minecraft:stone_sword>);
		recipes.remove(<minecraft:stone_shovel>);
		recipes.remove(<minecraft:stone_axe>);
		recipes.remove(<minecraft:stone_hoe>);
    //GregStoneTools
			recipes.remove(<gregtech:meta_tool_head_pickaxe:32009>);
			recipes.remove(<gregtech:meta_tool_head_shovel:32009>);
			recipes.remove(<gregtech:meta_tool_head_axe:32009>);
			recipes.remove(<gregtech:meta_tool_head_hoe:32009>);
			recipes.remove(<gregtech:meta_tool_head_sword:32009>);
			recipes.remove(<gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "stoneingot"}}));
  //BricksRecipesRemove
    //SmeltingClayRecipe
			furnace.remove(<minecraft:brick>);
    //BricksVanilaRecipeRemove
			recipes.remove(<minecraft:brick_block>);
  //StickRecipsRemove
			recipes.remove(<minecraft:stick>);

		recipes.removeShaped(<minecraft:stick> * 16, [[null, <ore:logWood>, null],[null, <ore:logWood>, null], [null, null, null]]);
  //BowlRecipesRemove
		recipes.remove(<minecraft:bowl>);
  //BuldingIronRodRemove
		recipes.remove(<quark:iron_rod>);
  //ShearsRecipeRemove
		recipes.remove(<minecraft:shears>);
  //signRecipeRemove
		recipes.remove(<minecraft:sign>);
  //ShieldRecipeRemove
		recipes.remove(<minecraft:shield>);
  //ladderRecipeRemove
		recipes.remove(<minecraft:ladder>);
  //WoodenHalfRecipesRemove
		var array1 = [<minecraft:wooden_slab>,<minecraft:wooden_slab:1>,<minecraft:wooden_slab:2>,<minecraft:wooden_slab:3>,<minecraft:wooden_slab:4>,<minecraft:wooden_slab:5>] as IItemStack[];

		for i in array1 {
    		recipes.remove(i);
		}
  //WoodButtonRemove
		recipes.remove(<ore:buttonWood>);
  //StoneButtonRemove
		recipes.remove(<minecraft:stone_button>);
  //Vanila_armorRemoveとか
		var array2 = [<minecraft:leather_helmet>,<minecraft:leather_chestplate>,<minecraft:leather_leggings>,<minecraft:leather_boots>,<minecraft:iron_helmet>,<minecraft:iron_chestplate>,<minecraft:iron_leggings>,<minecraft:iron_boots>,<minecraft:golden_helmet>,<minecraft:golden_chestplate>,<minecraft:golden_leggings>,<minecraft:golden_boots>,
    <minecraft:chainmail_helmet>,<minecraft:chainmail_chestplate>,<minecraft:chainmail_leggings>,<minecraft:chainmail_boots>,<minecraft:diamond_helmet>,<minecraft:diamond_chestplate>,<minecraft:diamond_leggings>,<minecraft:diamond_boots>,<minecraft:iron_sword>,<minecraft:iron_pickaxe>,<minecraft:iron_axe>,<minecraft:iron_shovel>,<minecraft:diamond_shovel>,<minecraft:diamond_pickaxe>,<minecraft:diamond_axe>,<minecraft:diamond_sword>] as IItemStack[];

		for i in array2 {
   		 recipes.remove(i);
		}
  //Armor_StandRecipeRemove
		recipes.remove(<minecraft:armor_stand>);
  //PistonsRecipesRemove
		recipes.remove(<minecraft:piston>);
		recipes.remove(<minecraft:sticky_piston>);
  //WoodenDoorRecipesRemove
		var array3 = [<minecraft:wooden_door>,<minecraft:spruce_door>,<minecraft:birch_door>,<minecraft:jungle_door>,<minecraft:acacia_door>,<minecraft:dark_oak_door>] as IItemStack[];

		for i in array3 {
    		recipes.remove(i);
		}
  //BortRecipesRemove
		var array4 = [<minecraft:boat>,<minecraft:spruce_boat>,<minecraft:birch_boat>,<minecraft:jungle_boat>,<minecraft:acacia_boat>,<minecraft:dark_oak_boat>] as IItemStack[];

		for i in array4 {
    		recipes.remove(i);
		}
  //MoreFurnaceRecipesRemove
		var array5 = [<morefurnaces:furnaceblock>,<morefurnaces:furnaceblock:1>,<morefurnaces:furnaceblock:2>,<morefurnaces:furnaceblock:3>,<morefurnaces:furnaceblock:4>,<morefurnaces:furnaceblock:5>,<morefurnaces:furnaceblock:6>] as IItemStack[];

		for i in array5 {
   			recipes.remove(i);
		}
    //MoreFurnace_FurnaceUpgradeCardsRecipesRemove
			var array6 = [<morefurnaces:upgrade>,<morefurnaces:upgrade:1>,<morefurnaces:upgrade:2>,<morefurnaces:upgrade:3>,<morefurnaces:upgrade:4>,<morefurnaces:upgrade:5>,<morefurnaces:upgrade:6>,<morefurnaces:upgrade:7>] as IItemStack[];

			for i in array6 {
    			recipes.remove(i);
			}

  //ClockRecipesRemove
		recipes.remove(<minecraft:clock>);
  //CompasaRecipesRemove
		recipes.remove(<minecraft:compass>);
  //Bow_and_Fisher
		var array7 = [<minecraft:bow>,<minecraft:fishing_rod>] as IItemStack[];

		for i in array7 {
   			recipes.remove(i);
		}
  //HopperRecipesRemove
		recipes.remove(<minecraft:hopper>);
  //BookShelfs
		var array8 = [<minecraft:bookshelf>,<quark:custom_bookshelf>,<quark:custom_bookshelf:1>,<quark:custom_bookshelf:2>,<quark:custom_bookshelf:3>,<quark:custom_bookshelf:4>] as IItemStack[];

		for i in array8 {
  		  recipes.remove(i);
		}
  //Remove Architecture Craft Recipes
		var array9 = [<architecturecraft:sawbench>,<architecturecraft:hammer>,<architecturecraft:chisel>,<architecturecraft:largepulley>,<architecturecraft:sawblade>] as IItemStack[];

		for i in array9 {
  		  recipes.remove(i);
		}

	//Flint Tools(Greg) Remove

		recipes.removeShaped(<gregtech:meta_tool:4>.withTag({"GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}}), [[null, <minecraft:flint>, <minecraft:flint>],[null, <minecraft:stick>, null], [null, <minecraft:stick>, null]]);

		recipes.removeShaped(<gregtech:meta_tool:3>.withTag({"GT.ToolStats": {Material: "flint"}}), [[null, <minecraft:flint>, <minecraft:flint>],[null, <minecraft:stick>, <minecraft:flint>], [null, <minecraft:stick>, null]]);

		recipes.removeShaped(<gregtech:meta_tool:2>.withTag({"GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}}), [[null, <minecraft:flint>, null],[null, <minecraft:stick>, null], [null, <minecraft:stick>, null]]);

		recipes.removeShaped(<gregtech:meta_tool:1>.withTag({"GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}}), [[<minecraft:flint>, <minecraft:flint>, <minecraft:flint>],[null, <minecraft:stick>, null], [null, <minecraft:stick>, null]]);

		recipes.removeShaped(<gregtech:meta_tool>.withTag({ench: [{lvl: 2 as short, id: 20}], "GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}}), [[null, <minecraft:flint>, null],[null, <minecraft:flint>, null], [null, <minecraft:stick>, null]]);

	//TC workbench remove
		recipes.remove(<tconstruct:tooltables>);

//Add recipes
  //chest
		//Oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:chest>, [
				[<ore:screwWood>, <minecraft:log>, <ore:screwWood>], 
				[<minecraft:log>, <gregtech:meta_block_frame_101:1>, <minecraft:log>], 
				[<ore:screwWood>, <minecraft:log>, <ore:screwWood>]
				]);
		//Spurce
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:custom_chest>, [
				[<ore:screwWood>, <minecraft:log:1>, <ore:screwWood>], 
				[<minecraft:log:1>, <gregtech:meta_block_frame_101:1>, <minecraft:log:1>], 
				[<ore:screwWood>, <minecraft:log:1>, <ore:screwWood>]
				]);
		//Birch
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:custom_chest:1>, [
				[<ore:screwWood>, <minecraft:log:2>, <ore:screwWood>], 
				[<minecraft:log:2>, <gregtech:meta_block_frame_101:1>, <minecraft:log:2>], 
				[<ore:screwWood>, <minecraft:log:2>, <ore:screwWood>]
				]);
		//Jungle
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:custom_chest:2>, [
				[<ore:screwWood>, <minecraft:log:3>, <ore:screwWood>], 
				[<minecraft:log:3>, <gregtech:meta_block_frame_101:1>, <minecraft:log:3>], 
				[<ore:screwWood>, <minecraft:log:3>, <ore:screwWood>]
				]);
		//Acacia
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:custom_chest:3>, [
				[<ore:screwWood>, <minecraft:log2>, <ore:screwWood>], 
				[<minecraft:log2>, <gregtech:meta_block_frame_101:1>, <minecraft:log2>], 
				[<ore:screwWood>, <minecraft:log2>, <ore:screwWood>]
				]);
		//Dark_Oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:custom_chest:4>, [
			[<ore:screwWood>, <minecraft:log2:1>, <ore:screwWood>], 
			[<minecraft:log2:1>, <gregtech:meta_block_frame_101:1>, <minecraft:log2:1>], 
			[<ore:screwWood>, <minecraft:log2:1>, <ore:screwWood>]
			]);
  //furnace
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:furnace>, [
			[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], 
			[<minecraft:flint>, <minecraft:flint>, <minecraft:flint>], 
			[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]
			]);
  //Beds
		//White
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed>, [
				[<ore:wool>, <ore:wool>, <ore:wool>], 
				[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], 
				[<ore:fenceWood>, <ore:screwIron>, <ore:fenceWood>]
				]);
		//Orange
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:1>, [
				[<ore:dyeOrange>, <ore:dyeOrange>, <ore:dyeOrange>], 
				[<ore:dyeOrange>, <minecraft:bed>, <ore:dyeOrange>], 
				[<ore:dyeOrange>, <ore:dyeOrange>, <ore:dyeOrange>]
				]);
		//Magenta
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:2>, [
				[<ore:dyeMagenta>, <ore:dyeMagenta>, <ore:dyeMagenta>], 
				[<ore:dyeMagenta>, <minecraft:bed>, <ore:dyeMagenta>], 
				[<ore:dyeMagenta>, <ore:dyeMagenta>, <ore:dyeMagenta>]
				]);
		//Light_Blue
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:3>, [
				[<ore:dyeLightBlue>, <ore:dyeLightBlue>, <ore:dyeLightBlue>], 
				[<ore:dyeLightBlue>, <minecraft:bed>, <ore:dyeLightBlue>], 
				[<ore:dyeLightBlue>, <ore:dyeLightBlue>, <ore:dyeLightBlue>]
				]);
		//Yellow
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:4>, [
				[<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>], 
				[<ore:dyeYellow>, <minecraft:bed>, <ore:dyeYellow>], 
				[<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>]
				]);
		//Lime
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:5>, [
				[<ore:dyeLime>, <ore:dyeLime>, <ore:dyeLime>], 
				[<ore:dyeLime>, <minecraft:bed>, <ore:dyeLime>], 
				[<ore:dyeLime>, <ore:dyeLime>, <ore:dyeLime>]
				]);
		//Pink
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:6>, [
				[<ore:dyePink>, <ore:dyePink>, <ore:dyePink>], 
				[<ore:dyePink>, <minecraft:bed>, <ore:dyePink>], 
				[<ore:dyePink>, <ore:dyePink>, <ore:dyePink>]
				]);
		//Gray
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:7>, [
				[<ore:dyeGray>, <ore:dyeGray>, <ore:dyeGray>], 
				[<ore:dyeGray>, <minecraft:bed>, <ore:dyeGray>], 
				[<ore:dyeGray>, <ore:dyeGray>, <ore:dyeGray>]
				]);
		//Light_Gray
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:8>, [
				[<ore:dyeLightGray>, <ore:dyeLightGray>, <ore:dyeLightGray>], 
				[<ore:dyeLightGray>, <minecraft:bed>, <ore:dyeLightGray>], 
				[<ore:dyeLightGray>, <ore:dyeLightGray>, <ore:dyeLightGray>]
				]);
		//Cyan
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:9>, [
				[<ore:dyeCyan>, <ore:dyeCyan>, <ore:dyeCyan>], 
				[<ore:dyeCyan>, <minecraft:bed>, <ore:dyeCyan>], 
				[<ore:dyeCyan>, <ore:dyeCyan>, <ore:dyeCyan>]
				]);
		//Purple
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:10>, [
				[<ore:dyePurple>, <ore:dyePurple>, <ore:dyePurple>], 
				[<ore:dyePurple>, <minecraft:bed>, <ore:dyePurple>], 
				[<ore:dyePurple>, <ore:dyePurple>, <ore:dyePurple>]
				]);
		//Blue
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:11>, [
				[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], 
				[<ore:dyeBlue>, <minecraft:bed>, <ore:dyeBlue>], 
				[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>]
				]);
		//Brown
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:12>, [
				[<ore:dyeBrown>, <ore:dyeBrown>, <ore:dyeBrown>], 
				[<ore:dyeBrown>, <minecraft:bed>, <ore:dyeBrown>], 
				[<ore:dyeBrown>, <ore:dyeBrown>, <ore:dyeBrown>]
				]);
		//Green
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:13>, [
				[<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>], 
				[<ore:dyeGreen>, <minecraft:bed>, <ore:dyeGreen>], 
				[<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>]
				]);
		//Red
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:14>, [
				[<ore:dyeRed>, <ore:dyeRed>, <ore:dyeRed>], 
				[<ore:dyeRed>, <minecraft:bed>, <ore:dyeRed>], 
				[<ore:dyeRed>, <ore:dyeRed>, <ore:dyeRed>]
				]);
		//Black
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bed:15>, [
				[<ore:dyeBlack>, <ore:dyeBlack>, <ore:dyeBlack>], 
				[<ore:dyeBlack>, <minecraft:bed>, <ore:dyeBlack>], 
				[<ore:dyeBlack>, <ore:dyeBlack>, <ore:dyeBlack>]
				]);

  //FenceGate
		//Oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:fence_gate>, [
				[null, null, null], 
				[<minecraft:fence>, <ore:screwIron>, <minecraft:fence>], 
				[<minecraft:fence>, <ore:screwIron>, <minecraft:fence>]
				]);
		//Spruce
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:spruce_fence_gate>, [
				[null, null, null], 
				[<minecraft:spruce_fence>, <ore:screwIron>, <minecraft:spruce_fence>], 
				[<minecraft:spruce_fence>, <ore:screwIron>, <minecraft:spruce_fence>]
				]);
		//Birch
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:birch_fence_gate>, [
				[null, null, null], 
				[<minecraft:birch_fence>, <ore:screwIron>, <minecraft:birch_fence>], 
				[<minecraft:birch_fence>, <ore:screwIron>, <minecraft:birch_fence>]
				]);
		//Jungle
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:jungle_fence_gate>, [
				[null, null, null], 
				[<minecraft:jungle_fence>, <ore:screwIron>, <minecraft:jungle_fence>], 
				[<minecraft:jungle_fence>, <ore:screwIron>, <minecraft:jungle_fence>]
				]);
		//Acacia
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:acacia_fence_gate>, [
				[null, null, null], 
				[<minecraft:acacia_fence>, <ore:screwIron>, <minecraft:acacia_fence>], 
				[<minecraft:acacia_fence>, <ore:screwIron>, <minecraft:acacia_fence>]
				]);
		//Dark_Oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:dark_oak_fence_gate>, [
				[null, null, null], 
				[<minecraft:dark_oak_fence>, <ore:screwIron>, <minecraft:dark_oak_fence>], 
				[<minecraft:dark_oak_fence>, <ore:screwIron>, <minecraft:dark_oak_fence>]
				]);
  //fences
		//Oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:fence>*2, [
				[<ore:screwIron>, <minecraft:planks>, <ore:screwIron>], 
				[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], 
				[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>]
				]);
		//Spruce
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:spruce_fence>*2, [
				[<ore:screwIron>, <minecraft:planks:1>, <ore:screwIron>], 
				[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], 
				[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>]
				]);
		//Birch
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:birch_fence>*2, [
				[<ore:screwIron>, <minecraft:planks:2>, <ore:screwIron>], 
				[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], 
				[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>]
				]);
		//Jungle
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:jungle_fence>*2, [
				[<ore:screwIron>, <minecraft:planks:3>, <ore:screwIron>], 
				[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], 
				[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>]
				]);
		//Acacia
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:acacia_fence>*2, [
				[<ore:screwIron>, <minecraft:planks:4>, <ore:screwIron>], 
				[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], 
				[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>]
				]);
		//Dark_Oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:dark_oak_fence_gate>*2, [
				[<ore:screwIron>, <minecraft:planks:5>, <ore:screwIron>], 
				[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], 
				[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>]
				]);
  //WoodenTools
		//Pickaxe
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_pickaxe>, [
				[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
				[<ore:screwWood>, <ore:stickWood>, <ore:screwWood>], 
				[<ore:itemFlint>, <ore:stickWood>, <ore:itemFlint>]
				]);
		//Sword
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_sword>, [
				[<ore:screwWood>, <ore:plankWood>, <ore:itemFlint>], 
				[<ore:itemFlint>, <ore:plankWood>, <ore:itemFlint>], 
				[<ore:itemFlint>, <ore:stickWood>, <ore:screwWood>]
				]);
		//shovel
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_shovel>, [
				[<ore:itemFlint>, <ore:plankWood>, <ore:itemFlint>], 
				[<ore:screwWood>, <ore:stickWood>, <ore:screwWood>], 
				[null, <ore:plankWood>, null]
				]);
		//Axe
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_axe>, [
				[<ore:itemFlint>, <ore:plankWood>, <ore:itemFlint>], 
				[<ore:stickWood>, <ore:itemFlint>, <ore:plankWood>], 
				[<ore:screwWood>, <ore:stickWood>, <ore:itemFlint>]
				]);
		//Hoe
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_hoe>, [
				[<ore:screwWood>, <ore:plankWood>, <ore:plankWood>], 
				[null, <ore:stickWood>, <ore:itemFlint>], 
				[null, <ore:stickWood>, <ore:screwWood>]
				]);
  //WoodenPlate
		mods.extendedcrafting.TableCrafting.addShaped(1, <gregtech:meta_plate:1617>*4, [
			[null, null, <ore:itemFlint>], 
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
			[<ore:itemFlint>, null, null]
			]);
  //StoneToolsRecipes
    //StoneIngotDust
			mods.extendedcrafting.TableCrafting.addShaped(1, <gregtech:meta_dust:32009>*8, [
				[<ore:dustFlint>, <ore:dustStone>, <ore:dustFlint>], 
				[<ore:dustStone>, <ore:gravel>, <ore:dustStone>], 
				[<ore:dustFlint>, <ore:dustStone>, <ore:dustFlint>]
				]);
		//StoneIngotDustAnother
			mods.extendedcrafting.TableCrafting.addShaped(1, <gregtech:meta_dust:32009>*2, [
				[<ore:dustSmallFlint>, <ore:dustSmallStone>, <ore:dustSmallFlint>], 
				[<ore:dustSmallStone>, <ore:itemFlint>, <ore:dustSmallStone>], 
				[<ore:dustSmallFlint>, <ore:dustSmallStone>, <ore:dustSmallFlint>]
				]);
  	//StoneTools
    	//StonePickaxe
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:stone_pickaxe>, [
					[<ore:ingotStoneingot>, <ore:plateStoneingot>, <ore:plateStoneingot>], 
					[craftingToolFile, <minecraft:wooden_pickaxe>, <ore:plateStoneingot>], 
					[<ore:stickStoneingot>, craftingToolHardHammer, <ore:ingotStoneingot>]
					]);
    	//StoneSword
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:stone_sword>, [
					[craftingToolHardHammer, <ore:craftingToolFile>, <ore:plateStoneingot>], 
					[null, <ore:plateDoubleStoneingot>, <minecraft:wooden_sword>], 
					[craftingToolScrewdriver, <ore:stickStoneingot>, <ore:screwStoneingot>]
					]);
    	//StoneShovel
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:stone_shovel>, [
					[craftingToolHardHammer, <ore:plateStoneingot>, craftingToolFile], 
					[<ore:plateStoneingot>, <minecraft:wooden_shovel>, <ore:plateStoneingot>], 
					[null, <ore:stickStoneingot>, null]
					]);
   		//StoneAxe
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:stone_axe>, [
					[craftingToolHardHammer, <ore:plateStoneingot>, <ore:plateDoubleStoneingot>], 
					[craftingToolFile, <minecraft:wooden_axe>, <ore:plateDoubleStoneingot>], 
					[<ore:stickStoneingot>, <ore:boltStoneingot>, craftingToolScrewdriver]
					]);
    	//StoneHoe
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:stone_hoe>, [
					[craftingToolFile, <ore:plateStoneingot>, <ore:plateStoneingot>], 
					[null, <ore:toolHoe>, craftingToolHardHammer], 
					[<ore:stickStoneingot>, null, null]
					]);
  //BrickRecipes
    //BrickDust
			mods.extendedcrafting.TableCrafting.addShaped(1, <gregtech:meta_dust:2524>*4, [
				[<ore:dustClay>, <ore:dustClay>, <ore:dustClay>], 
				[<ore:dustClay>, <ore:clay>, <ore:sand>], 
				[<ore:sand>, <ore:sand>, <ore:sand>]
				]);
    //Brick
			furnace.addRecipe(<minecraft:brick>, <gregtech:meta_dust:2524>);
    //Bricks
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:brick_block>*2, [
				[<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick>], 
				[<ore:ingotBrick>, <minecraft:stone>, <ore:ingotBrick>], 
				[<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick>]
				]);
  //SticksRecipes
    //PrimalRecipe
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:stick>*4, [
				[null, null, <ore:plankWood>], 
				[null, <ore:plankWood>, null], 
				[<ore:plankWood>, null, null]
				]);
    //GTRecipe
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:stick>*16, [
				[null, null, null], 
				[null, <ore:logWood>, null], 
				[craftingToolSaw, null, null]
				]);
  //BowlRecipe
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bowl>, [
			[null, null, null], 
			[<gregtech:meta_plate:1617>, craftingToolSoftHammer, <gregtech:meta_plate:1617>], 
			[null, <gregtech:meta_plate:1617>, craftingToolFile]
			]);
  //IronRod(Build)Recipe
		mods.extendedcrafting.TableCrafting.addShaped(1, <quark:iron_rod>, [
			[craftingToolSaw, <ore:stickIron>, craftingToolHardHammer], 
			[craftingToolFile, <ore:stickIron>, craftingToolScrewdriver], 
			[<ore:screwIron>, <ore:slabStone>, <ore:screwIron>]
			]);
  //ShearsRecipe
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:shears>, [
			[craftingToolHardHammer, <ore:plateIron>, craftingToolWireCutter], 
			[<ore:stickWood>, <ore:screwIron>, <ore:plateIron>], 
			[craftingToolScrewdriver, <ore:stickWood>, craftingToolFile]
			]);
  //SignMageRecipe
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:sign>, [
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
			[<ore:plankWood>, <ore:stickWood>, <ore:plankWood>], 
			[<ore:dyeBlack>, <ore:stickWood>, craftingToolFile]
			]);
  //LadderRecipe
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:ladder>*4, [
			[<ore:stickWood>, craftingToolScrewdriver, <ore:stickWood>], 
			[<ore:screwIron>, <ore:stickWood>, <ore:screwIron>], 
			[<ore:stickWood>, craftingToolSoftHammer, <ore:stickWood>]
			]);
  //leverRecipe
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:lever>, [
			[null, <ore:stickWood>, null], 
			[null, <ore:screwIron>, craftingToolScrewdriver], 
			[null, <minecraft:cobblestone>, null]
			]);
  //WoodenHalfBlockRecipes]
    //oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_slab>*2, [
				[null, null, craftingToolSaw], 
				[null, <minecraft:planks>, null], 
				[null, null, null]
				]);
    //Sprues
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_slab:1>*2, [
				[null, null, craftingToolSaw], 
				[null, <minecraft:planks:1>, null], 
				[null, null, null]
				]);
    //Birch
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_slab:2>*2, [
				[null, null, craftingToolSaw], 
				[null, <minecraft:planks:2>, null], 
				[null, null, null]
				]);
    //Jungle
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_slab:3>*2, [
				[null, null, craftingToolSaw], 
				[null, <minecraft:planks:3>, null], 
				[null, null, null]
				]);
    //Acacia
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_slab:4>*2, [
				[null, null, craftingToolSaw], 
				[null, <minecraft:planks:4>, null], 
				[null, null, null]
				]);
    //Dark_oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_slab:5>*2, [
				[null, null, craftingToolSaw], 
				[null, <minecraft:planks:5>, null], 
				[null, null, null]
				]);
  //ButtonRecipesAdd
    //oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_button>*8, [
				[null, null, null], 
				[craftingToolFile, <minecraft:planks>, craftingToolSaw], 
				[null, null, null]
				]);
    //Sprues
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:spruce_button>*8, [
				[null, null, null], 
				[craftingToolFile, <minecraft:planks:1>, craftingToolSaw], 
				[null, null, null]
				]);
    //Birch
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:birch_button>*8, [
				[null, null, null], 
				[craftingToolFile, <minecraft:planks:2>, craftingToolSaw], 
				[null, null, null]
				]);
    //Jungle
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:jungle_button>*8, [
				[null, null, null], 
				[craftingToolFile, <minecraft:planks:3>, craftingToolSaw], 
				[null, null, null]
				]);
    //Acacia
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:acacia_button>*8, [
				[null, null, null], 
				[craftingToolFile, <minecraft:planks:4>, craftingToolSaw], 
				[null, null, null]
				]);
    //Dark_oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:dark_oak_button>*8, [
				[null, null, null], 
				[craftingToolFile, <minecraft:planks:5>, craftingToolSaw], 
				[null, null, null]
				]);
  //StoneButtonRecipe
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:stone_button>*4, [
			[null, null, null], 
			[craftingToolSaw, <minecraft:stone>, craftingToolHardHammer], 
			[null, craftingToolFile, null]
			]);
  //Vanila_ArmorsRecipe
    //Leather_ArmorsRecipes
      //Helmet
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:leather_helmet>, [
					[<ore:leather>, <ore:leather>, <ore:leather>], 
					[<ore:leather>, craftingToolWireCutter, <ore:leather>], 
					[null, null, null]
					]);
      //ChestPlate
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:leather_chestplate>, [
					[<ore:leather>, craftingToolWireCutter, <ore:leather>], 
					[<ore:leather>, <ore:leather>, <ore:leather>], 
					[<ore:leather>, <ore:leather>, <ore:leather>]
					]);
      //Leggings
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:leather_leggings>, [
					[<ore:leather>, <ore:leather>, <ore:leather>], 
					[<ore:leather>, craftingToolWireCutter, <ore:leather>], 
					[<ore:leather>, null, <ore:leather>]
					]);
      //Boots
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:leather_boots>, [
				[null, null, null], 
				[<ore:leather>, null, <ore:leather>], 
				[<ore:leather>, craftingToolWireCutter, <ore:leather>]
				]);
    //Iron_ArmorsRecipes
      //Helmet
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:iron_helmet>, [
					[<ore:plateDoubleIron>, <ore:plateDoubleIron>, <ore:plateDoubleIron>], 
					[<ore:plateDoubleIron>, craftingToolHardHammer, <ore:plateDoubleIron>], 
					[<ore:screwIron>, craftingToolScrewdriver, <ore:screwIron>]
					]);
      //ChestPlate
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:iron_chestplate>, [
					[<ore:plateDoubleIron>, craftingToolHardHammer, <ore:plateDoubleIron>], 
					[<ore:plateDoubleIron>, <ore:plateDoubleIron>, <ore:plateDoubleIron>], 
					[<ore:plateDoubleIron>, <ore:plateDoubleIron>, <ore:plateDoubleIron>]
					]);
      //Leggins
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:iron_leggings>, [
					[<ore:plateDoubleIron>, <ore:plateDoubleIron>, <ore:plateDoubleIron>], 
					[<ore:plateDoubleIron>, craftingToolHardHammer, <ore:plateDoubleIron>], 
					[<ore:plateDoubleIron>, craftingToolFile, <ore:plateDoubleIron>]
					]);
      //Boots
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:iron_boots>, [
					[<ore:ringIron>, <ore:screwIron>, <ore:ringIron>], 
					[<ore:plateDoubleIron>, craftingToolScrewdriver, <ore:plateDoubleIron>], 
					[<ore:plateDoubleIron>, craftingToolHardHammer, <ore:plateDoubleIron>]
					]);
    //Golden_ArmorsRecipes
      //Helmet
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:golden_helmet>, [
					[<ore:plateDoubleGold>, <ore:plateDoubleGold>, <ore:plateDoubleGold>], 
					[<ore:plateDoubleGold>, craftingToolHardHammer, <ore:plateDoubleGold>], 
					[<ore:screwGold>, craftingToolScrewdriver, <ore:screwGold>]
					]);
      //ChestPlate
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:golden_chestplate>, [
					[<ore:plateDoubleGold>, craftingToolHardHammer, <ore:plateDoubleGold>], 
					[<ore:plateDoubleGold>, <ore:plateDoubleGold>, <ore:plateDoubleGold>], 
					[<ore:plateDoubleGold>, <ore:plateDoubleGold>, <ore:plateDoubleGold>]
					]);
      //Leggins
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:golden_leggings>, [
					[<ore:plateDoubleGold>, <ore:plateDoubleGold>, <ore:plateDoubleGold>], 
					[<ore:plateDoubleGold>, craftingToolHardHammer, <ore:plateDoubleGold>], 
					[<ore:plateDoubleGold>, craftingToolFile, <ore:plateDoubleGold>]
					]);
    	//Boots
				mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:golden_boots>, [
					[<ore:ringGold>, <ore:screwGold>, <ore:ringGold>], 
					[<ore:plateDoubleGold>, craftingToolScrewdriver, <ore:plateDoubleGold>], 
					[<ore:plateDoubleGold>, craftingToolHardHammer, <ore:plateDoubleGold>]
					]);
  //Armor_StandRecipe
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:armor_stand>, [
			[<ore:stickLongWood>, <ore:stickLongWood>, <ore:stickLongWood>], 
			[<ore:screwIron>, <ore:stickLongWood>, craftingToolScrewdriver], 
			[<ore:stickLongWood>, <ore:slabStone>, <ore:stickLongWood>]
			]);
  //pistonRecipe
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:piston>, [
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
			[<ore:fenceWood>, <ore:frameGtStoneingot>, <ore:fenceWood>], 
			[<minecraft:cobblestone>, <ore:gearIron>, <minecraft:cobblestone>]
			]);
  //StickyPistonRecipe
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:sticky_piston>, [
			[null, <ore:blockSlime>, null], 
			[null, <ore:blockSlime>, null], 
			[null, <ore:piston>, null]
			]);
  //WoodenDoorsRecipes
    //oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:wooden_door>, [
				[<minecraft:planks>, <minecraft:planks>, <ore:screwIron>], 
				[<minecraft:planks>, <ore:ringIron>, craftingToolScrewdriver], 
				[<minecraft:planks>, <minecraft:planks>, <ore:springSmallIron>]
				]);
    //Sprues
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:spruce_door>, [
				[<minecraft:planks:1>, <minecraft:planks:1>, <ore:screwIron>], 
				[<minecraft:planks:1>, <ore:ringIron>, craftingToolScrewdriver], 
				[<minecraft:planks:1>, <minecraft:planks:1>, <ore:springSmallIron>]
				]);
    //Birch
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:birch_door>, [
				[<minecraft:planks:2>, <minecraft:planks:2>, <ore:screwIron>], 
				[<minecraft:planks:2>, <ore:ringIron>, craftingToolScrewdriver], 
				[<minecraft:planks:2>, <minecraft:planks:2>, <ore:springSmallIron>]
			  ]);
    //Jungle
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:jungle_door>, [
				[<minecraft:planks:3>, <minecraft:planks:3>, <ore:screwIron>], 
				[<minecraft:planks:3>, <ore:ringIron>, craftingToolScrewdriver], 
				[<minecraft:planks:3>, <minecraft:planks:3>, <ore:springSmallIron>]
				]);
    //Acacia
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:acacia_door>, [
				[<minecraft:planks:4>, <minecraft:planks:4>, <ore:screwIron>], 
				[<minecraft:planks:4>, <ore:ringIron>, craftingToolScrewdriver], 
				[<minecraft:planks:4>, <minecraft:planks:4>, <ore:springSmallIron>]
				]);
    //Dark_oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:dark_oak_door>, [
				[<minecraft:planks:5>, <minecraft:planks:5>, <ore:screwIron>], 
				[<minecraft:planks:5>, <ore:ringIron>, craftingToolScrewdriver], 
				[<minecraft:planks:5>, <minecraft:planks:5>, <ore:springSmallIron>]
				]);
  //WoodenBortRecipes
    //Oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:boat>, [
				[null, <minecraft:wooden_shovel>, null], 
				[<minecraft:planks>, craftingToolSoftHammer, <minecraft:planks>], 
				[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]
				]);
    //Sprues
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:spruce_boat>, [
				[null, <minecraft:wooden_shovel>, null], 
				[<minecraft:planks:1>, craftingToolSoftHammer, <minecraft:planks:1>], 
				[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]
				]);
    //Birch
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:birch_boat>, [
				[null, <minecraft:wooden_shovel>, null], 
				[<minecraft:planks:2>, craftingToolSoftHammer, <minecraft:planks:2>], 
				[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]
				]);
    //Jungle
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:jungle_boat>, [
				[null, <minecraft:wooden_shovel>, null], 
				[<minecraft:planks:3>, craftingToolSoftHammer, <minecraft:planks:3>], 
				[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]
			]);
    //Acacia
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:acacia_boat>, [
				[null, <minecraft:wooden_shovel>, null], 
				[<minecraft:planks:4>, craftingToolSoftHammer, <minecraft:planks:4>], 
				[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]
				]);
    //Dark_oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:dark_oak_boat>, [
				[null, <minecraft:wooden_shovel>, null], 
				[<minecraft:planks:5>, craftingToolSoftHammer, <minecraft:planks:5>], 
				[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]
				]);
  //MoreFurncaeRecipes
    //Iron_Furnace
			mods.extendedcrafting.TableCrafting.addShaped(1, <morefurnaces:furnaceblock>, [
			[craftingToolHardHammer, <ore:plateDoubleIron>, <ore:screwIron>], 
			[<ore:plateDoubleIron>, <ore:craftingFurnace>, <ore:plateDoubleIron>], 
			[<ore:screwIron>, <ore:plateDoubleIron>, craftingToolScrewdriver]
			]);
    //Gold_Furnace
			mods.extendedcrafting.TableCrafting.addShaped(1, <morefurnaces:furnaceblock:1>, [
				[craftingToolHardHammer, <ore:plateDoubleGold>, <ore:screwGold>], 
				[<ore:plateDoubleGold>, <morefurnaces:furnaceblock>, <ore:plateDoubleGold>], 
				[<ore:screwGold>, <ore:plateDoubleGold>, craftingToolScrewdriver]
				]);
    //Diamond_Furnace
			mods.extendedcrafting.TableCrafting.addShaped(1, <morefurnaces:furnaceblock:2>, [
				[craftingToolHardHammer, <ore:plateDiamond>, <ore:screwAluminium>], 
				[<ore:plateDiamond>, <morefurnaces:furnaceblock:1>, <ore:plateDiamond>], 
				[<ore:screwAluminium>, <ore:plateDiamond>, craftingToolScrewdriver]
				]);
    //Obsidian_Furnace
			mods.extendedcrafting.TableCrafting.addShaped(1, <morefurnaces:furnaceblock:3>, [
				[<tconstruct:large_plate>.withTag({Material: "obsidian"}), <ore:screwBlueAlloy>, <tconstruct:large_plate>.withTag({Material: "obsidian"})], 
				[<morefurnaces:furnaceblock:2>, craftingToolHardHammer, <morefurnaces:furnaceblock:2>], 
				[<tconstruct:large_plate>.withTag({Material: "obsidian"}), <ore:screwBlueAlloy>, <tconstruct:large_plate>.withTag({Material: "obsidian"})]
				]);
    //Nether_Furnace
			mods.extendedcrafting.TableCrafting.addShaped(1, <morefurnaces:furnaceblock:4>, [
				[<tconstruct:large_plate>.withTag({Material: "netherrack"}), <ore:brickNether>, <tconstruct:large_plate>.withTag({Material: "netherrack"})], 
				[<ore:brickNether>, <morefurnaces:furnaceblock:1>, <ore:brickNether>], 
				[<tconstruct:large_plate>.withTag({Material: "netherrack"}), <ore:brickNether>, <tconstruct:large_plate>.withTag({Material: "netherrack"})]
				]);
    //Copper_Furnace
			mods.extendedcrafting.TableCrafting.addShaped(1, <morefurnaces:furnaceblock:5>, [
				[craftingToolHardHammer, <ore:plateDoubleCopper>, <ore:screwIron>], 
				[<ore:plateDoubleCopper>, <ore:craftingFurnace>, <ore:plateDoubleCopper>], 
				[<ore:screwIron>, <ore:plateDoubleCopper>, craftingToolScrewdriver]
				]);
    //Silver_Furnace
			mods.extendedcrafting.TableCrafting.addShaped(1, <morefurnaces:furnaceblock:6>, [
				[craftingToolHardHammer, <ore:plateDoubleSilver>, <ore:screwSterlingSilver>], 
				[<ore:plateDoubleSilver>, <morefurnaces:furnaceblock:5>, <ore:plateDoubleSilver>], 
				[<ore:screwSterlingSilver>, <ore:plateDoubleSilver>, craftingToolScrewdriver]
				]);
  //ShieldRecipe
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:shield>, [
			[<ore:plankWood>, <ore:plateDoubleIron>, <ore:plankWood>], 
			[<ore:screwIron>, <ore:plateDoubleIron>, <ore:screwIron>], 
			[craftingToolScrewdriver, <ore:plankWood>, craftingToolHardHammer]
			]);
  //CompassRecipe
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:compass>, [
			[<ore:plateDoubleIron>, <ore:blockRedstone>, <ore:plateDoubleIron>], 
			[<ore:blockRedstone>, <minecraft:redstone>, <ore:blockRedstone>], 
			[<ore:plateDoubleIron>, <ore:blockRedstone>, <ore:plateDoubleIron>]
			]);
  //ClockRecipes
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:clock>, [
			[<ore:blockRedstone>, <ore:screwGold>, <ore:craftingRedstoneTorch>], 
			[<ore:wireFineGold>, <ore:gearSmallGold>, <ore:springSmallGold>], 
			[<ore:craftingRedstoneTorch>, <ore:stickGold>, <ore:blockRedstone>]
			]);
  //FishingRod_and_Bow
    //Bow
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bow>, [
				[<tconstruct:bow_string>.withTag({Material: "string"}), <ore:stickLongWood>, <ore:boltWood>], 
				[<tconstruct:bow_string>.withTag({Material: "string"}), craftingToolWireCutter, <ore:stickLongWood>], 
				[<tconstruct:bow_string>.withTag({Material: "string"}), <ore:stickLongWood>, <ore:boltWood>]
				]);
    //Fishing_Rod
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:fishing_rod>, [
			[null, null, <ore:stickLongIron>], 
			[null, <ore:stickLongWroughtIron>, <ore:string>], 
			[<ore:stickLongWood>, null, <ore:string>]
			]);
  //Hopperrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr(((((((((((((((())))))))))))))))
		mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:hopper>, [
			[<ore:plateDoubleIron>, <ore:springIron>, <ore:plateDoubleIron>], 
			[<ore:gearIron>, <ore:chest>, <ore:gearIron>], 
			[craftingToolHardHammer, <ore:plateDoubleIron>, craftingToolWrench]
			]);
  //BookShelfsRecipes
    //oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:bookshelf>, [
				[<minecraft:log>, <minecraft:log>, <minecraft:log>], 
				[<minecraft:book>, <minecraft:book>, <minecraft:book>], 
				[<minecraft:log>, <minecraft:log>, <minecraft:log>]
				]);
    //Sprues
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:custom_bookshelf>, [
				[<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>], 
				[<minecraft:book>, <minecraft:book>, <minecraft:book>], 
				[<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>]
				]);
    //Birch
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:custom_bookshelf:1>, [
			[<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>], 
			[<minecraft:book>, <minecraft:book>, <minecraft:book>], 
			[<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>]
			]);
    //Jungle
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:custom_bookshelf:2>, [
				[<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>], 
				[<minecraft:book>, <minecraft:book>, <minecraft:book>], 
				[<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>]
				]);
    //Acacia
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:custom_bookshelf:3>, [
				[<minecraft:log2>, <minecraft:log2>, <minecraft:log2>], 
				[<minecraft:book>, <minecraft:book>, <minecraft:book>], 
				[<minecraft:log2>, <minecraft:log2>, <minecraft:log2>]
				]);
    //Dark_Oak
			mods.extendedcrafting.TableCrafting.addShaped(1, <quark:custom_bookshelf:4>, [
				[<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>], 
				[<minecraft:book>, <minecraft:book>, <minecraft:book>], 
				[<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>]
				]);
  //Architecture Craft Recipes
    //Architect's Saw Bench
			mods.extendedcrafting.TableCrafting.addShaped(1, <architecturecraft:sawbench>, [
				[<ore:plateDoubleIron>, <architecturecraft:sawblade>, <ore:plateDoubleIron>], 
				[<ore:blockIron>, <architecturecraft:largepulley>, <ore:blockIron>], 
				[<ore:blockIron>, <ore:gearIron>, <ore:blockIron>]
				]);
    //Architect's Hammer
			mods.extendedcrafting.TableCrafting.addShaped(1, <architecturecraft:hammer>, [
				[null, null, <ore:plateDoubleWroughtIron>], 
				[null, craftingToolHardHammer, null], 
				[null, null, null]
				]);
    //Architect's Chisel
			mods.extendedcrafting.TableCrafting.addShaped(1, <architecturecraft:chisel>, [
				[null, null, <ore:plateDoubleWroughtIron>], 
				[null, <chisel:chisel_iron>, null], 
				[null, null, null]
				]);
    //Architect's Saw Blade
			mods.extendedcrafting.TableCrafting.addShaped(1, <architecturecraft:sawblade>, [
				[craftingToolHardHammer, <ore:plateDoubleWroughtIron>, null], 
				[<ore:plateDoubleWroughtIron>, <ore:toolHeadBuzzSawIron>, <ore:plateDoubleWroughtIron>], 
				[null, <ore:plateDoubleWroughtIron>, craftingToolFile]
				]);
    //Architect's Large Pulley
			mods.extendedcrafting.TableCrafting.addShaped(1, <architecturecraft:largepulley>, [
				[null, <ore:plateRubber>, <ore:ringIron>], 
				[<ore:plateRubber>, <ore:leather>, <ore:plateRubber>], 
				[<ore:ringIron>, <ore:plateRubber>, null]
				]);
	//序盤易化
		//WoodenScrewRecipe
			mods.extendedcrafting.TableCrafting.addShaped(1, <gregtech:meta_screw:1617> * 2, [
				[<ore:stickWood>, null, <ore:materialStoneTool>], 
				[null, null, null], 
				[null, null, null]
				]);
  //iron tool
    //ピッケル
      mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:iron_pickaxe>, [
        [<ore:ingotWroughtIron>, <ore:plateWroughtIron>, <ore:plateWroughtIron>], 
        [null, <ore:stickWood>, null], 
        [null, <ore:stickWood>, null]
      ]);
    //斧
      mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:iron_axe>, [
        [<ore:ingotWroughtIron>, <ore:ingotWroughtIron>, <ore:plateWroughtIron>], 
        [null, <ore:stickWood>, <ore:plateWroughtIron>], 
        [null, <ore:stickWood>, null]
      ]);
    //シャベル 
      mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:iron_shovel>, [
        [null, <ore:plateWroughtIron>, null], 
        [null, <ore:stickWood>, <ore:boltIron>], 
        [null, <ore:stickWood>, null]
      ]);
    //剣 
      mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:iron_sword>, [
        [null, <ore:plateWroughtIron>, null], 
        [null, <ore:plateWroughtIron>, null], 
        [null, <ore:stickIron>, null]
      ]);
  //Diamond Tools
    //ピッケル
      mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:diamond_pickaxe>, [
        [<ore:ingotDiamondinfusedingot>, <ore:plateDiamondinfusedingot>, <ore:plateDiamondinfusedingot>], 
        [null, <ore:stickWood>, <ore:screwDiamond>], 
        [null, <ore:stickWood>, null]
      ]);
    //斧
      mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:diamond_axe>, [
        [<ore:ingotDiamondinfusedingot>, <ore:plateDiamondinfusedingot>, <ore:plateDiamondinfusedingot>], 
        [null, <ore:stickWood>, <ore:plateDiamondinfusedingot>], 
        [null, <ore:stickWood>, null]
      ]);
    //シャベル
      mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:diamond_shovel>, [
        [null, <ore:plateDiamondinfusedingot>, null], 
        [null, <ore:stickWood>, <ore:screwDiamond>], 
        [null, <ore:stickWood>, null]
      ]);
    //剣
      mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:diamond_sword>, [
        [null, <ore:plateDiamondinfusedingot>, null], 
        [null, <ore:plateDiamondinfusedingot>, null], 
        [null, <ore:stickDiamond>, null]
      ]);
  //Diamond Armor
    //あたま
      mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:diamond_helmet>, [
        [<ore:ingotDiamondinfusedingot>, <ore:ingotDiamondinfusedingot>, <ore:ingotDiamondinfusedingot>], 
        [<ore:ingotDiamondinfusedingot>, null, <ore:ingotDiamondinfusedingot>], 
        [null, null, null]
      ]);
    //服
      mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:diamond_chestplate>, [
        [<ore:ingotDiamondinfusedingot>, null, <ore:ingotDiamondinfusedingot>], 
        [<ore:ingotDiamondinfusedingot>, <ore:ingotDiamondinfusedingot>, <ore:ingotDiamondinfusedingot>], 
        [<ore:ingotDiamondinfusedingot>, <ore:ingotDiamondinfusedingot>, <ore:ingotDiamondinfusedingot>]
      ]);
    //足
      mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:diamond_leggings>, [
        [<ore:ingotDiamondinfusedingot>, <ore:ingotDiamondinfusedingot>, <ore:ingotDiamondinfusedingot>], 
        [<ore:ingotDiamondinfusedingot>, null, <ore:ingotDiamondinfusedingot>], 
        [<ore:ingotDiamondinfusedingot>, null, <ore:ingotDiamondinfusedingot>]
      ]);
    //靴
      mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:diamond_boots>, [
        [null, null, null], 
        [<ore:ingotDiamondinfusedingot>, null, <ore:ingotDiamondinfusedingot>], 
        [<ore:ingotDiamondinfusedingot>, null, <ore:ingotDiamondinfusedingot>]
      ]);
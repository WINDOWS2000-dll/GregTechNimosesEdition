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

//Recipes Remove
  var array1 as IItemStack[] = [
    <storagedrawers:basicdrawers>,
    <storagedrawers:basicdrawers:1>,
    <storagedrawers:basicdrawers:2>,
    <storagedrawers:basicdrawers:3>,
    <storagedrawers:basicdrawers:4>,
    <storagedrawers:trim>,
    <storagedrawers:keybutton>,
    <storagedrawers:keybutton:1>,
    <storagedrawers:keybutton:2>,
    <storagedrawers:keybutton:3>,
    <storagedrawers:compdrawers>,
    <storagedrawers:controller>,
    <storagedrawers:controllerslave>,
    <storagedrawers:framingtable>,
    <storagedrawers:customdrawers>,
    <storagedrawers:customdrawers:1>,
    <storagedrawers:customdrawers:2>,
    <storagedrawers:customdrawers:3>,
    <storagedrawers:customdrawers:4>,
    <storagedrawers:customtrim>,
    <storagedrawers:upgrade_template>,
    <storagedrawers:upgrade_storage:1>,
    <storagedrawers:upgrade_storage:2>,
    <storagedrawers:upgrade_storage:3>,
    <storagedrawers:upgrade_storage:4>,
    <storagedrawers:upgrade_one_stack>,
    <storagedrawers:upgrade_status>,
    <storagedrawers:upgrade_status:1>,
    <storagedrawers:upgrade_void>,
    <storagedrawers:upgrade_conversion>,
    <storagedrawers:upgrade_redstone>,
    <storagedrawers:upgrade_redstone:1>,
    <storagedrawers:upgrade_redstone:2>,
    <storagedrawers:drawer_key>,
    <storagedrawers:shroud_key>,
    <storagedrawers:personal_key>,
    <storagedrawers:quantify_key>,
    <storagedrawers:tape>,
    <framedcompactdrawers:framed_drawer_controller>,
    <framedcompactdrawers:framed_slave>,
    <framedcompactdrawers:framed_compact_drawer>
  ];
  for i in array1 {
    recipes.remove(i);
  }
//ADD Recipes
  //Trim
    recipes.addShaped(<storagedrawers:trim>.withTag({material: "dark_oak"}) * 8, [[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],[<minecraft:planks:5>, <storagedrawers:basicdrawers>, <minecraft:planks:5>], [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]]);
    recipes.addShaped(<storagedrawers:trim>.withTag({material: "acacia"}) * 8, [[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],[<minecraft:planks:4>, <storagedrawers:basicdrawers>, <minecraft:planks:4>], [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]]);
    recipes.addShaped(<storagedrawers:trim>.withTag({material: "jungle"}) * 8, [[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],[<minecraft:planks:3>, <storagedrawers:basicdrawers>, <minecraft:planks:3>], [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]]);
    recipes.addShaped(<storagedrawers:trim>.withTag({material: "birch"}) * 8, [[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],[<minecraft:planks:2>, <storagedrawers:basicdrawers>, <minecraft:planks:2>], [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]]);
    recipes.addShaped(<storagedrawers:trim>.withTag({material: "spruce"}) * 8, [[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],[<minecraft:planks:1>, <storagedrawers:basicdrawers>, <minecraft:planks:1>], [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]);
    recipes.addShaped(<storagedrawers:trim>.withTag({material: "oak"}) * 8, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],[<minecraft:planks>, <storagedrawers:basicdrawers>, <minecraft:planks>], [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]);
  //2x2引き出し(1/2)
    recipes.addShapeless(<storagedrawers:basicdrawers:4>.withTag({material: "oak"}), [<storagedrawers:basicdrawers:3>.withTag({material: "oak"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:4>.withTag({material: "spruce"}), [<storagedrawers:basicdrawers:3>.withTag({material: "spruce"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:4>.withTag({material: "acacia"}), [<storagedrawers:basicdrawers:3>.withTag({material: "acacia"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:4>.withTag({material: "jungle"}), [<storagedrawers:basicdrawers:3>.withTag({material: "jungle"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:4>.withTag({material: "birch"}), [<storagedrawers:basicdrawers:3>.withTag({material: "birch"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:4>.withTag({material: "dark_oak"}), [<storagedrawers:basicdrawers:3>.withTag({material: "dark_oak"})]);
  //1x2引き出し(1/2)
    recipes.addShaped(<storagedrawers:basicdrawers:3>.withTag({material: "oak"}) * 2, [[<storagedrawers:basicdrawers:1>.withTag({material: "oak"}), null, craftingToolSaw],[null, null, null], [null, null, null]]);
    recipes.addShaped(<storagedrawers:basicdrawers:3>.withTag({material: "spruce"}) * 2, [[<storagedrawers:basicdrawers:1>.withTag({material: "spruce"}), null, craftingToolSaw],[null, null, null], [null, null, null]]);
    recipes.addShaped(<storagedrawers:basicdrawers:3>.withTag({material: "acacia"}) * 2, [[<storagedrawers:basicdrawers:1>.withTag({material: "acacia"}), null, craftingToolSaw],[null, null, null], [null, null, null]]);
    recipes.addShaped(<storagedrawers:basicdrawers:3>.withTag({material: "jungle"}) * 2, [[<storagedrawers:basicdrawers:1>.withTag({material: "jungle"}), null, craftingToolSaw],[null, null, null], [null, null, null]]);
    recipes.addShaped(<storagedrawers:basicdrawers:3>.withTag({material: "birch"}) * 2, [[<storagedrawers:basicdrawers:1>.withTag({material: "birch"}), null, craftingToolSaw],[null, null, null], [null, null, null]]);
    recipes.addShaped(<storagedrawers:basicdrawers:3>.withTag({material: "dark_oak"}) * 2, [[<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}), null, craftingToolSaw],[null, null, null], [null, null, null]]);
  //2x2引き出し
    recipes.addShapeless(<storagedrawers:basicdrawers:2>.withTag({material: "oak"}), [<storagedrawers:basicdrawers:1>.withTag({material: "oak"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:2>.withTag({material: "spruce"}), [<storagedrawers:basicdrawers:1>.withTag({material: "spruce"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:2>.withTag({material: "acacia"}), [<storagedrawers:basicdrawers:1>.withTag({material: "acacia"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:2>.withTag({material: "jungle"}), [<storagedrawers:basicdrawers:1>.withTag({material: "jungle"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:2>.withTag({material: "birch"}), [<storagedrawers:basicdrawers:1>.withTag({material: "birch"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"}), [<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"})]);
  //1x2引き出し
    recipes.addShapeless(<storagedrawers:basicdrawers:1>.withTag({material: "oak"}), [<storagedrawers:basicdrawers>.withTag({material: "oak"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:1>.withTag({material: "spruce"}), [<storagedrawers:basicdrawers>.withTag({material: "spruce"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:1>.withTag({material: "acacia"}), [<storagedrawers:basicdrawers>.withTag({material: "acacia"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:1>.withTag({material: "jungle"}), [<storagedrawers:basicdrawers>.withTag({material: "jungle"})]);
    recipes.addShapeless(<storagedrawers:basicdrawers:1>.withTag({material: "birch"}), [<storagedrawers:basicdrawers>.withTag({material: "birch"})]);
  //引き出し(Nomal)
    recipes.addShapeless(<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}), [<storagedrawers:basicdrawers>.withTag({material: "dark_oak"})]);
    recipes.addShaped(<storagedrawers:basicdrawers>.withTag({material: "spruce"}), [[<minecraft:planks:1>, <gregtech:meta_plate:1617>, <minecraft:planks:1>],[<quark:custom_chest>, <gregtech:meta_block_frame_101:1>, <quark:custom_chest>], [<minecraft:planks:1>, <gregtech:meta_plate:1617>, <minecraft:planks:1>]]);
    recipes.addShaped(<storagedrawers:basicdrawers>.withTag({material: "dark_oak"}), [[<minecraft:planks:5>, <gregtech:meta_plate:1617>, <minecraft:planks:5>],[<quark:custom_chest:4>, <gregtech:meta_block_frame_101:1>, <quark:custom_chest:4>], [<minecraft:planks:5>, <gregtech:meta_plate:1617>, <minecraft:planks:5>]]);
    recipes.addShaped(<storagedrawers:basicdrawers>.withTag({material: "acacia"}), [[<minecraft:planks:4>, <gregtech:meta_plate:1617>, <minecraft:planks:4>],[<quark:custom_chest:3>, <gregtech:meta_block_frame_101:1>, <quark:custom_chest:3>], [<minecraft:planks:4>, <gregtech:meta_plate:1617>, <minecraft:planks:4>]]);
    recipes.addShaped(<storagedrawers:basicdrawers>.withTag({material: "jungle"}), [[<minecraft:planks:3>, <gregtech:meta_plate:1617>, <minecraft:planks:3>],[<quark:custom_chest:2>, <gregtech:meta_block_frame_101:1>, <quark:custom_chest:2>], [<minecraft:planks:3>, <gregtech:meta_plate:1617>, <minecraft:planks:3>]]);
    recipes.addShaped(<storagedrawers:basicdrawers>.withTag({material: "birch"}), [[<minecraft:planks:2>, <gregtech:meta_plate:1617>, <minecraft:planks:2>],[<quark:custom_chest:1>, <gregtech:meta_block_frame_101:1>, <quark:custom_chest:1>], [<minecraft:planks:2>, <gregtech:meta_plate:1617>, <minecraft:planks:2>]]);
    recipes.addShaped(<storagedrawers:basicdrawers>.withTag({material: "oak"}), [[<minecraft:planks>, <gregtech:meta_plate:1617>, <minecraft:planks>],[<minecraft:chest>, <gregtech:meta_block_frame_101:1>, <minecraft:chest>], [<minecraft:planks>, <gregtech:meta_plate:1617>, <minecraft:planks>]]);
  //KeyButton
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:keybutton>, [
	    [<ore:plateStoneingot>, <ore:plateStoneingot>, <ore:plateStoneingot>], 
	    [<ore:plateStoneingot>, <storagedrawers:drawer_key>, <ore:plateStoneingot>], 
	    [<ore:plateStoneingot>, <ore:plateStoneingot>, <ore:plateStoneingot>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:keybutton:1>, [
	    [<ore:plateStoneingot>, <ore:plateStoneingot>, <ore:plateStoneingot>], 
	    [<ore:plateStoneingot>, <storagedrawers:shroud_key>, <ore:plateStoneingot>], 
	    [<ore:plateStoneingot>, <ore:plateStoneingot>, <ore:plateStoneingot>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:keybutton:2>, [
	    [<ore:plateStoneingot>, <ore:plateStoneingot>, <ore:plateStoneingot>], 
	    [<ore:plateStoneingot>, <storagedrawers:personal_key>, <ore:plateStoneingot>], 
	    [<ore:plateStoneingot>, <ore:plateStoneingot>, <ore:plateStoneingot>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:keybutton:3>, [
	    [<ore:plateStoneingot>, <ore:plateStoneingot>, <ore:plateStoneingot>], 
	    [<ore:plateStoneingot>, <storagedrawers:quantify_key>, <ore:plateStoneingot>], 
	    [<ore:plateStoneingot>, <ore:plateStoneingot>, <ore:plateStoneingot>]
    ]);
  //Advanced引き出し's
    mods.extendedcrafting.TableCrafting.addShaped(2, <storagedrawers:compdrawers>, [
	    [<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateDoubleStoneingot>, <ore:plateTreatedWood>, <ore:plateTreatedWood>], 
	    [<ore:plateTreatedWood>, <gregtech:meta_item_1:174>, <ore:circuitHv>, <gregtech:meta_item_1:174>, <ore:plateTreatedWood>], 
	    [<ore:plateDoubleStoneingot>, <ore:circuitHv>, <ore:drawerBasic>, <ore:circuitHv>, <ore:plateDoubleStoneingot>], 
	    [<ore:plateTreatedWood>, <gregtech:meta_item_1:174>, <ore:circuitHv>, <gregtech:meta_item_1:174>, <ore:plateTreatedWood>], 
	    [<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateDoubleStoneingot>, <ore:plateTreatedWood>, <ore:plateTreatedWood>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(2, <storagedrawers:controller>, [
	    [<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateDoubleStoneingot>, <ore:plateTreatedWood>, <ore:plateTreatedWood>], 
	    [<ore:plateTreatedWood>, <gregtech:meta_item_1:159>, <ore:circuitHv>, <gregtech:meta_item_1:234>, <ore:plateTreatedWood>], 
	    [<ore:plateDoubleStoneingot>, <ore:circuitHv>, <ore:drawerBasic>, <ore:circuitHv>, <ore:plateDoubleStoneingot>], 
	    [<ore:plateTreatedWood>, <gregtech:meta_item_1:234>, <ore:circuitHv>, <gregtech:meta_item_1:159>, <ore:plateTreatedWood>], 
	    [<ore:plateTreatedWood>, <ore:plateTreatedWood>, <ore:plateDoubleStoneingot>, <ore:plateTreatedWood>, <ore:plateTreatedWood>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:controllerslave>, [
	    [<ore:plateTreatedWood>, <gregtech:meta_item_1:234>, <ore:plateTreatedWood>], 
	    [<gregtech:meta_item_1:159>, <storagedrawers:controller>, <gregtech:meta_item_1:159>], 
	    [<ore:plateTreatedWood>, <ore:circuitMv>, <ore:plateTreatedWood>]
    ]);
  //引き出し装飾台
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:framingtable>, [
	    [<ore:pattern>, <ore:plateTreatedWood>, <ore:pattern>], 
	    [<ore:stickTreatedWood>, <ore:workbench>, <ore:stickTreatedWood>], 
	    [<ore:stickTreatedWood>, null, <ore:stickTreatedWood>]
    ]);
  //カスタム引き出し's
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:customdrawers>, [
	    [<gregtech:meta_stick:1648>, <gregtech:meta_stick_long:1617>, <gregtech:meta_stick:1648>], 
	    [<minecraft:chest>, <gregtech:meta_plate:1648>, <minecraft:chest>], 
	    [<gregtech:meta_stick:1648>, <gregtech:meta_stick_long:1617>, <gregtech:meta_stick:1648>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:customdrawers:1>, [
	    [<gregtech:meta_stick_long:1617>, <gregtech:meta_stick:1648>, <gregtech:meta_stick_long:1617>], 
	    [<gregtech:meta_plate:1648>, <storagedrawers:basicdrawers:1>, <gregtech:meta_plate:1648>], 
    	[<gregtech:meta_stick_long:1617>, <gregtech:meta_stick:1648>, <gregtech:meta_stick_long:1617>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:customdrawers:2>, [
	    [<gregtech:meta_stick:1648>, <gregtech:meta_stick_long:1617>, <gregtech:meta_stick:1648>], 
	    [<gregtech:meta_plate:1648>, <storagedrawers:basicdrawers:2>, <gregtech:meta_plate:1648>], 
	    [<gregtech:meta_stick:1648>, <gregtech:meta_stick_long:1617>, <gregtech:meta_stick:1648>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:customdrawers:3>, [
	    [<gregtech:meta_stick:1648>, <gregtech:meta_stick_long:1617>, <gregtech:meta_stick:1648>], 
	    [<gregtech:meta_plate:1648>, <storagedrawers:basicdrawers:3>, <gregtech:meta_plate:1648>], 
	    [<gregtech:meta_stick:1648>, <gregtech:meta_stick_long:1617>, <gregtech:meta_stick:1648>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:customdrawers:4>, [
	    [<gregtech:meta_stick:1648>, <gregtech:meta_stick_long:1617>, <gregtech:meta_stick:1648>], 
	    [<gregtech:meta_plate:1648>, <storagedrawers:basicdrawers:4>, <gregtech:meta_plate:1648>], 
	    [<gregtech:meta_stick:1648>, <gregtech:meta_stick_long:1617>, <gregtech:meta_stick:1648>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:customtrim>, [
	    [<gregtech:meta_stick:1648>, <gregtech:meta_stick_long:1617>, <gregtech:meta_stick:1648>], 
	    [<gregtech:meta_plate:1648>, <storagedrawers:trim>, <gregtech:meta_plate:1648>], 
	    [<gregtech:meta_stick:1648>, <gregtech:meta_stick_long:1617>, <gregtech:meta_stick:1648>]
    ]);
  //UpGrades
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_template>, [
	    [<ore:stickTreatedWood>, <ore:stickLongWood>, <ore:stickTreatedWood>], 
	    [<ore:stickLongWood>, <ore:chest>, <ore:stickLongWood>], 
    	[<ore:stickTreatedWood>, <ore:stickLongWood>, <ore:stickTreatedWood>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_storage>, [
	    [<ore:ingotIron>, <ore:stoneObsidian>, <ore:ingotIron>], 
	    [<ore:stoneObsidian>, <storagedrawers:upgrade_template>, <ore:stoneObsidian>], 
	    [<ore:ingotIron>, <ore:stoneObsidian>, <ore:ingotIron>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_storage:1>, [
	    [<ore:blockIron>, <ore:ingotSteel>, <ore:blockIron>], 
	    [<storagedrawers:upgrade_storage>, <storagedrawers:upgrade_template>, <storagedrawers:upgrade_storage>], 
	    [<ore:blockIron>, <ore:ingotSteel>, <ore:blockIron>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_storage:2>, [
	    [<ore:blockRoseGold>, <gregtech:meta_item_1:202>, <ore:blockRoseGold>], 
	    [<storagedrawers:upgrade_storage:1>, <storagedrawers:upgrade_template>, <storagedrawers:upgrade_storage:1>], 
	    [<ore:blockRoseGold>, <gregtech:meta_item_1:202>, <ore:blockRoseGold>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_storage:3>, [
	    [<ore:blockDiamondinfusedingot>, <gregtech:meta_item_1:203>, <ore:blockDiamondinfusedingot>], 
	    [<storagedrawers:upgrade_storage:2>, <storagedrawers:upgrade_template>, <storagedrawers:upgrade_storage:2>], 
	    [<ore:blockDiamondinfusedingot>, <gregtech:meta_item_1:203>, <ore:blockDiamondinfusedingot>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_storage:4>, [
	    [<ore:gemExquisiteEmerald>, <gregtech:meta_item_1:204>, <ore:gemExquisiteEmerald>], 
	    [<storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_template>, <storagedrawers:upgrade_storage:3>], 
	    [<ore:gemExquisiteEmerald>, <gregtech:meta_item_1:204>, <ore:gemExquisiteEmerald>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_one_stack>, [
	    [<ore:materialStoneTool>, <ore:materialStoneTool>, <ore:materialStoneTool>], 
	    [<ore:materialStoneTool>, <storagedrawers:upgrade_template>, <ore:materialStoneTool>], 
	    [<ore:materialStoneTool>, <ore:materialStoneTool>, <ore:materialStoneTool>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_status>, [
	    [<ore:plateTreatedWood>, <projectred-illumination:lamp:14>, <ore:plateTreatedWood>], 
	    [<ore:circuitLv>, <storagedrawers:upgrade_template>, <gregtech:meta_item_1:233>], 
	    [<ore:plateTreatedWood>, <projectred-illumination:lamp:14>, <ore:plateTreatedWood>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_status:1>, [
	    [<ore:plateTreatedWood>, <gregtech:meta_item_1:307>, <ore:plateTreatedWood>], 
	    [<ore:circuitMv>, <storagedrawers:upgrade_template>, <gregtech:meta_item_1:233>], 
    	[<ore:plateTreatedWood>, <gregtech:meta_item_1:305>, <ore:plateTreatedWood>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_void>, [
	    [<extrautils2:trashcan>, <ore:stoneObsidian>, <extrautils2:trashcan>], 
	    [<ore:stoneObsidian>, <storagedrawers:upgrade_template>, <ore:stoneObsidian>], 
	    [<extrautils2:trashcan>, <ore:stoneObsidian>, <extrautils2:trashcan>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_conversion>, [
    	[<gregtech:meta_item_1:174>, <ore:circuitHv>, <gregtech:meta_item_1:174>], 
    	[<ore:circuitHv>, <storagedrawers:upgrade_template>, <ore:circuitHv>], 
    	[<gregtech:meta_item_1:174>, <ore:circuitHv>, <gregtech:meta_item_1:174>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(4, <storagedrawers:upgrade_creative>, [
	    [<ore:plateDoubleTungstenCarbide>, <ore:plateDoubleTungstenCarbide>, <ore:plateNetherStar>, <gregtech:meta_item_1:178>, <storagedrawers:upgrade_storage:4>, <gregtech:meta_item_1:178>, <ore:plateNetherStar>, <ore:plateDoubleTungstenCarbide>, <ore:plateDoubleTungstenCarbide>], 
	    [<ore:plateDoubleTungstenCarbide>, <ore:circuitUv>, <gregtech:meta_item_1:207>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_storage:4>, <gregtech:meta_item_1:207>, <ore:circuitUv>, <ore:plateDoubleTungstenCarbide>], 
	    [<ore:plateNetherStar>, <gregtech:meta_item_1:207>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_storage:1>, <storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_storage:4>, <gregtech:meta_item_1:207>, <ore:plateNetherStar>], 
	    [<gregtech:meta_item_1:178>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_storage:1>, <storagedrawers:upgrade_storage>, <storagedrawers:upgrade_storage:1>, <storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_storage:4>, <gregtech:meta_item_1:178>], 
	    [<storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_storage:1>, <storagedrawers:upgrade_storage>, <storagedrawers:upgrade_template>, <storagedrawers:upgrade_storage>, <storagedrawers:upgrade_storage:1>, <storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_storage:4>], 
	    [<gregtech:meta_item_1:178>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_storage:1>, <storagedrawers:upgrade_storage>, <storagedrawers:upgrade_storage:1>, <storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_storage:4>, <gregtech:meta_item_1:178>], 
	    [<ore:plateNetherStar>, <gregtech:meta_item_1:207>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_storage:1>, <storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_storage:4>, <gregtech:meta_item_1:207>, <ore:plateNetherStar>], 
	    [<ore:plateDoubleTungstenCarbide>, <ore:circuitUv>, <gregtech:meta_item_1:207>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:3>, <storagedrawers:upgrade_storage:4>, <gregtech:meta_item_1:207>, <ore:circuitUv>, <ore:plateDoubleTungstenCarbide>], 
	    [<ore:plateDoubleTungstenCarbide>, <ore:plateDoubleTungstenCarbide>, <ore:plateNetherStar>, <gregtech:meta_item_1:178>, <storagedrawers:upgrade_storage:4>, <gregtech:meta_item_1:178>, <ore:plateNetherStar>, <ore:plateDoubleTungstenCarbide>, <ore:plateDoubleTungstenCarbide>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_redstone>, [
	    [<ore:circuitLv>, <ore:plateTreatedWood>, <ore:circuitLv>], 
	    [<minecraft:comparator>, <storagedrawers:upgrade_template>, <minecraft:comparator>], 
	    [<ore:stickTreatedWood>, <ore:blockRedstone>, <ore:stickTreatedWood>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_redstone:1>, [
	    [<ore:blockRedstone>, <ore:stickTreatedWood>, <ore:blockRedstone>], 
    	[<ore:circuitLv>, <storagedrawers:upgrade_template>, <ore:circuitLv>], 
	    [<minecraft:comparator>, <ore:plateTreatedWood>, <minecraft:comparator>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <storagedrawers:upgrade_redstone:2>, [
	    [<minecraft:comparator>, <ore:plateTreatedWood>, <minecraft:comparator>], 
	    [<ore:circuitLv>, <storagedrawers:upgrade_template>, <ore:circuitLv>], 
	    [<ore:blockRedstone>, <ore:stickTreatedWood>, <ore:blockRedstone>]
    ]);
  //CustomCompacting引き出し
    mods.extendedcrafting.TableCrafting.addShaped(1, <framedcompactdrawers:framed_drawer_controller>, [
	    [<ore:stickLongWood>, <ore:stickTreatedWood>, <ore:stickLongWood>], 
	    [<ore:plateTreatedWood>, <storagedrawers:controller>, <ore:plateTreatedWood>], 
	    [<ore:stickLongWood>, <ore:stickTreatedWood>, <ore:stickLongWood>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <framedcompactdrawers:framed_slave>, [
	    [<ore:stickLongWood>, <ore:stickTreatedWood>, <ore:stickLongWood>], 
	    [<ore:plateTreatedWood>, <storagedrawers:controllerslave>, <ore:plateTreatedWood>], 
	    [<ore:stickLongWood>, <ore:stickTreatedWood>, <ore:stickLongWood>]
    ]);
    mods.extendedcrafting.TableCrafting.addShaped(1, <framedcompactdrawers:framed_compact_drawer>, [
	    [<ore:stickLongWood>, <ore:stickTreatedWood>, <ore:stickLongWood>], 
	    [<ore:plateTreatedWood>, <storagedrawers:compdrawers>, <ore:plateTreatedWood>], 
	    [<ore:stickLongWood>, <ore:stickTreatedWood>, <ore:stickLongWood>]
    ]);
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


print("------LAZY_AE2_LOADING_START------");
//Recipes Remove
var array1 = [<threng:machine>,<threng:machine:1>,<threng:machine:2>,<threng:machine:3>,<threng:machine:4>,<threng:machine:5>,<threng:material:4>,<threng:material:1>,<threng:big_assembler>,<threng:big_assembler:5>,<threng:big_assembler:3>,<threng:big_assembler:4>,<threng:big_assembler:1>,<threng:material:8>,<threng:material:9>,<threng:material:10>,<threng:material:11>,<threng:material:12>,<threng:material:13>,<threng:big_assembler:2>] as IItemStack[];

for i in array1 {
    recipes.remove(i);
}


//ADD Recipes
  //なんかもう分類わけする必要ない気がするんだよねここ、あれじゃん、追加アイテム少ないじゃん、そういうことだよ。おｋ？
mixer.recipeBuilder()
    .inputs(<appliedenergistics2:material:7> * 4)
    .inputs(<threng:material:1> * 6)
    .inputs(<appliedenergistics2:material:45> * 6)
    .inputs(<ore:dustEnderPearl> * 4)
    .outputs(<threng:material:5> * 4)
    .fluidInputs(<liquid:distilled_water> * 1000)
    .fluidInputs(<liquid:redstone> * 500)
    .EUt(480)
    .duration(420)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<appliedenergistics2:material:8> * 8)
    .inputs(<ore:dustCoal> * 8)
    .inputs(<gregtech:meta_dust:99> * 8)
    .fluidInputs(<liquid:distilled_water> * 1000)
    .fluidInputs(<liquid:redstone> * 500)
    .outputs(<threng:material:1> * 8)
    .EUt(480)
    .duration(420)
    .buildAndRegister();

forming_press.recipeBuilder()
    .inputs([<threng:material:6> * 8, <threng:material:13> * 2, <gregtech:meta_item_1:633> * 4, <gregtech:meta_item_1:566> * 16, <threng:material:4> * 4, <gregtech:wire_quadruple:2517> * 16])
    .outputs(<threng:material:14> * 2)
    .EUt(1280)
    .duration(200)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();

forming_press.recipeBuilder()
    .inputs([<threng:material:5> * 4, <gregtech:meta_plate:2064> * 4, <gregtech:meta_plate:99> * 4, <gregtech:meta_wire_fine:2517> * 8, <gregtech:meta_item_1:403> * 2])
    .outputs(<threng:material:6> * 2)
    .EUt(1280)
    .duration(200)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();

cir_ass.recipeBuilder()
    .inputs([<appliedenergistics2:material:23> * 4, <appliedenergistics2:material:24> * 4, <appliedenergistics2:material:22> * 4, <ore:circuitEv> * 2, <gregtech:meta_wire_fine:277> * 16, <gregtech:meta_item_1:404> * 1])
    .fluidInputs(<liquid:redstone> * 144)
    .outputs(<threng:material:4> * 4)
    .EUt(510)
    .duration(400)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();
//Another
cir_ass.recipeBuilder()
    .inputs([<threng:material:13> * 2, <gregtech:meta_item_1:406> * 2, <gregtech:meta_item_1:638> * 2, <gregtech:meta_item_1:492> * 16, <gregtech:meta_item_1:282> * 1, <gregtech:meta_wire_fine:41> * 36])
    .fluidInputs(<liquid:redstone> * 480)
    .outputs(<threng:material:4> * 32)
    .EUt(7960)
    .duration(500)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();

forming_press.recipeBuilder()
    .inputs([<appliedenergistics2:material:8> * 2, <appliedenergistics2:material:45> * 2, <threng:material:1> * 2, <minecraft:iron_ingot> * 2])
    .outputs(<threng:material:2> * 2)
    .EUt(240)
    .duration(180)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs([<threng:material:2> * 1, <gregtech:meta_ingot:324> * 1])
    .outputs(<threng:material>)
    .EUt(100)
    .duration(90)
    .buildAndRegister();
//1x
assembler.recipeBuilder()
    .inputs([<extrautils2:ingredients:4> * 1, <threng:material:1> * 1, <appliedenergistics2:material:45> * 1])
    .outputs(<threng:material:7>)
    .EUt(40)
    .duration(80)
    .buildAndRegister();
//2x
alloy_smelter.recipeBuilder()
    .inputs([<threng:material:7> * 2, <thermalfoundation:material:893> * 1])
    .outputs(<threng:material:8>)
    .EUt(80)
    .duration(160)
    .buildAndRegister();
//4x
alloy_smelter.recipeBuilder()
    .inputs([<threng:material:8> * 2, <gregtech:meta_ingot:99> * 1])
    .outputs(<threng:material:9>)
    .EUt(160)
    .duration(320)
    .buildAndRegister();
//8x
alloy_smelter.recipeBuilder()
    .inputs([<threng:material:9> * 2, <appliedenergistics2:material:22> * 1])
    .outputs(<threng:material:10>)
    .EUt(320)
    .duration(640)
    .buildAndRegister();
//16x
alloy_smelter.recipeBuilder()
    .inputs([<threng:material:10> * 2, <appliedenergistics2:material:23> * 1])
    .outputs(<threng:material:11>)
    .EUt(640)
    .duration(1280)
    .buildAndRegister();
//32x
alloy_smelter.recipeBuilder()
    .inputs([<threng:material:11> * 2, <appliedenergistics2:material:24> * 1])
    .outputs(<threng:material:12>)
    .EUt(1280)
    .duration(2560)
    .buildAndRegister();
//64x
alloy_smelter.recipeBuilder()
    .inputs([<threng:material:12> * 2, <threng:material:6> * 1])
    .outputs(<threng:material:13>)
    .EUt(2040)
    .duration(5120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<appliedenergistics2:quartz_vibrant_glass> * 4, <appliedenergistics2:crafting_unit> * 2, <gregtech:meta_block_frame_188:12> * 4, <appliedenergistics2:part:16> * 4, <mekanism:polyethene:1> * 4, <enderio:item_material:66> * 2, <appliedenergistics2:material:22> * 2])
    .outputs(<threng:big_assembler> * 4)
    .EUt(480)
    .duration(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<modularmachinery:blockcasing:1> * 2, <gregtech:meta_gear_small:2> * 6, <gregtech:meta_item_1:128> * 2, <gregtech:meta_rotor:323> * 2, <gregtech:meta_block_frame_188:12> * 4, <gregtech:multiblock_casing:2> * 4, <redstonearsenal:material:193> * 2])
    .outputs(<threng:big_assembler:1> * 4)
    .EUt(480)
    .duration(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<threng:material:4> * 2, <appliedenergistics2:crafting_unit> * 4, <appliedenergistics2:part:16> * 4, <thermalexpansion:frame:130> * 2, <appliedenergistics2:drive> * 1, <gregtech:meta_item_1:492> * 4, <gregtech:meta_block_frame_188:12> * 2])
    .outputs(<threng:big_assembler:3> * 2)
    .EUt(480)
    .duration(360)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<threng:material:4> * 2, <appliedenergistics2:crafting_accelerator> * 4, <appliedenergistics2:part:16> * 8, <thermalexpansion:frame:130> * 2, <appliedenergistics2:molecular_assembler> * 4, <gregtech:meta_item_1:492> * 4, <gregtech:meta_block_frame_188:12> * 4])
    .outputs(<threng:big_assembler:4> * 4)
    .EUt(480)
    .duration(360)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<threng:material:4> * 2, <appliedenergistics2:interface> * 2, <appliedenergistics2:part:16> * 8, <thermalexpansion:frame:130> * 2, <appliedenergistics2:io_port> * 1, <gregtech:meta_item_1:492> * 2, <gregtech:meta_block_frame_188:12> * 4])
    .outputs(<threng:big_assembler:5> * 4)
    .EUt(480)
    .duration(360)
    .buildAndRegister();

mmRecipe("Large_ME_Assembling_Machine_Controller", "Prototype_Assembling_Line", 420)
    .addEnergyPerTickInput(32768)
    .addItemInput(<appliedenergistics2:molecular_assembler> * 4)
    .addItemInput(<threng:material:4> * 4)
    .addItemInput(<gregtech:machine:989> * 1)
    .addItemInput(<extendedcrafting:material:10> * 1)
    .addItemInput(<gregtech:meta_item_1:189> * 2)
    .addItemInput(<gregtech:meta_item_1:219> * 2)
    .addItemInput(<gregtech:meta_item_1:234> * 2)
    .addItemInput(<gregtech:meta_item_1:159> * 2)
    .addItemInput(<appliedenergistics2:part:16> * 8)
    .addItemInput(<appliedenergistics2:crafting_storage_4k> * 1)
    .addFluidInput(<liquid:soldering_alloy> * 10000)
    .addFluidInput(<liquid:polytetrafluoroethylene> * 6000)
    .addFluidInput(<liquid:crystal_matrix> * 2000)
    .addFluidInput(<liquid:radon> * 2000)
    .addItemOutput(<threng:big_assembler:2> * 1)
    .build();

print("------LAZY_AE2_LOADING_END------");
#=================================================
# MODPACKNAME: GregTechNimosesEdition
# Writer: Sanjinoyatu1692
# DiscordName: Windows16.5#2700
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

print("------ExtCells_LOADING_START------");

//RemoveRecipes
var array1 = [<extracells:storage.component>,<extracells:storage.component:1>,<extracells:storage.component:2>,<extracells:storage.component:3>,<extracells:storage.component:8>,<extracells:storage.component:9>,<extracells:storage.component:10>,<extracells:storage.casing>,<extracells:storage.casing:1>,<extracells:certustank>,<extracells:storage.physical>,<extracells:storage.physical:1>,<extracells:storage.physical:2>,<extracells:storage.physical:3>,<extracells:storage.fluid:4>,<extracells:storage.fluid:5>,<extracells:storage.fluid:6>,<extracpus:crafting_storage_256k>,<extracpus:crafting_storage_1024k>,<extracpus:crafting_storage_4096k>,<extracpus:crafting_storage_16384k>] as IItemStack[];

for i in array1 {
    recipes.remove(i);
}

//ADD Recipes
  //ItemStorageCells
    //256K
mods.extendedcrafting.TableCrafting.addShaped(1, <extracells:storage.component>, [
	[<appliedenergistics2:material:38>, <ore:circuitLuv>, <appliedenergistics2:material:38>], 
	[<ore:circuitLuv>, <gregtech:meta_item_1:262>, <ore:circuitLuv>], 
	[<appliedenergistics2:material:38>, <ore:circuitLuv>, <appliedenergistics2:material:38>]
]);
    //1024K
mods.extendedcrafting.TableCrafting.addShaped(1, <extracells:storage.component:1>, [
	[<extracells:storage.component>, <ore:circuitZpm>, <extracells:storage.component>], 
	[<ore:circuitZpm>, <gregtech:meta_item_1:262>, <ore:circuitZpm>], 
	[<extracells:storage.component>, <ore:circuitZpm>, <extracells:storage.component>]
]);
    //4096K
mods.extendedcrafting.TableCrafting.addShaped(2, <extracells:storage.component:2>, [
	[<threng:material:4>, <threng:material:4>, <gregtech:meta_item_1:262>, <ore:wireFinePlatinum>, <ore:wireFinePlatinum>], 
	[<ore:circuitUv>, <ore:plateDraconium>, <extracells:storage.component:1>, <ore:circuitUv>, <threng:material:14>], 
	[<ore:plateDraconium>, <extracells:storage.component:1>, <gregtech:meta_item_1:573>, <extracells:storage.component:1>, <ore:plateDraconium>], 
	[<threng:material:14>, <ore:circuitUv>, <extracells:storage.component:1>, <ore:plateDraconium>, <ore:circuitUv>], 
	[<ore:wireFinePlatinum>, <ore:wireFinePlatinum>, <gregtech:meta_item_1:262>, <threng:material:4>, <threng:material:4>]
]);
    //16384K
mods.extendedcrafting.TableCrafting.addShaped(2, <extracells:storage.component:3>, [
	[<extracells:storage.component:2>, <ore:circuitUhv>, <gregtech:meta_item_1:223>, <ore:circuitUv>, <extracells:storage.component:2>], 
	[<ore:circuitLuv>, <extendedcrafting:singularity:5>, <gregtech:meta_item_1:574>, <extendedcrafting:singularity:5>, <ore:circuitUhv>], 
	[<gregtech:meta_item_1:238>, <gregtech:meta_item_1:574>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:574>, <gregtech:meta_item_1:238>], 
	[<ore:circuitUhv>, <extendedcrafting:singularity:5>, <gregtech:meta_item_1:574>, <extendedcrafting:singularity:5>, <ore:circuitLuv>], 
	[<extracells:storage.component:2>, <ore:circuitUv>, <gregtech:meta_item_1:223>, <ore:circuitUhv>, <extracells:storage.component:2>]
]);
  //FluidStorageCells
    //256K
mods.extendedcrafting.TableCrafting.addShaped(1, <extracells:storage.component:8>, [
	[<ore:circuitLuv>, <appliedenergistics2:material:57>, <ore:plateLapis>], 
	[<appliedenergistics2:material:57>, <ore:gemExquisiteLapis>, <appliedenergistics2:material:57>], 
	[<ore:plateLapis>, <appliedenergistics2:material:57>, <ore:circuitLuv>]
]);
    //1024K
mods.extendedcrafting.TableCrafting.addShaped(1, <extracells:storage.component:9>, [
	[<ore:circuitZpm>, <extracells:storage.component:8>, <ore:plateLapis>], 
	[<extracells:storage.component:8>, <ore:gemExquisiteLapis>, <extracells:storage.component:8>], 
	[<ore:plateLapis>, <extracells:storage.component:8>, <ore:circuitZpm>]
]);
    //4096K
mods.extendedcrafting.TableCrafting.addShaped(2, <extracells:storage.component:10>, [
	[<extracells:storage.component:9>, <ore:circuitUv>, <gregtech:meta_item_1:567>, <ore:circuitUv>, <extracells:storage.component:9>], 
	[<ore:circuitUv>, <gregtech:meta_item_1:566>, <ore:gemExquisiteLapis>, <gregtech:meta_item_1:568>, <ore:circuitUv>], 
	[<gregtech:meta_item_1:574>, <ore:gemExquisiteLapis>, <gregtech:meta_item_1:581>, <ore:gemExquisiteLapis>, <gregtech:meta_item_1:574>], 
	[<ore:circuitUv>, <gregtech:meta_item_1:570>, <ore:gemExquisiteLapis>, <gregtech:meta_item_1:569>, <ore:circuitUv>], 
	[<extracells:storage.component:9>, <ore:circuitUv>, <gregtech:meta_item_1:567>, <ore:circuitUv>, <extracells:storage.component:9>]
]);
  //StorageHouging
    //Adv.Item
assembler.recipeBuilder()
    .inputs([<appliedenergistics2:material:39>, <gregtech:meta_wire_fine:2038> * 4, <gregtech:meta_plate:22> * 4, <ore:circuitLv> * 2, <gregtech:meta_wire_fine:80> * 4, <gregtech:meta_foil:80> * 4])
    .outputs(<extracells:storage.casing>)
    .EUt(480)
    .duration(280)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();
    //Adv.Fluid
assembler.recipeBuilder()
    .inputs([<appliedenergistics2:material:39>, <gregtech:meta_wire_fine:2038> * 4, <gregtech:meta_plate:2007> * 4, <ore:circuitLv> * 2, <gregtech:meta_wire_fine:80> * 4, <gregtech:meta_foil:80> * 4])
    .outputs(<extracells:storage.casing:1>)
    .EUt(480)
    .duration(280)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();
  //tank
mods.extendedcrafting.TableCrafting.addShaped(1, <extracells:certustank>, [
	[<buildcraftfactory:tank>, <ore:gemCertusQuartz>, <buildcraftfactory:tank>], 
	[<ore:gemCertusQuartz>, <ore:ringIron>, <ore:gemCertusQuartz>], 
	[<buildcraftfactory:tank>, <ore:gemCertusQuartz>, <buildcraftfactory:tank>]
]);
  //Cell Insert Recipe
    //256k
canner.recipeBuilder()
    .inputs([<extracells:storage.casing>, <extracells:storage.component>])
    .fluidInputs(<liquid:neon> * 1000)
    .outputs(<extracells:storage.physical>)
    .EUt(4096)
    .duration(60)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();
    //1024k
canner.recipeBuilder()
    .inputs([<extracells:storage.casing>, <extracells:storage.component:1>])
    .fluidInputs(<liquid:argon> * 1000)
    .outputs(<extracells:storage.physical:1>)
    .EUt(4096)
    .duration(60)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();
    //4096k
canner.recipeBuilder()
    .inputs([<extracells:storage.casing>, <extracells:storage.component:2>])
    .fluidInputs(<liquid:krypton> * 1000)
    .outputs(<extracells:storage.physical:2>)
    .EUt(4096)
    .duration(60)
    .property("cleanroom", "sterile_cleanroom")
    .buildAndRegister();
    //16384k
canner.recipeBuilder()
    .inputs([<extracells:storage.casing>, <extracells:storage.component:3>])
    .fluidInputs(<liquid:xenon> * 1000)
    .outputs(<extracells:storage.physical:3>)
    .EUt(4096)
    .duration(60)
    .property("cleanroom", "sterile_cleanroom")
    .buildAndRegister();
  //Fluid Cell Insert Recipe
    //256K
canner.recipeBuilder()
    .inputs([<extracells:storage.casing>, <extracells:storage.component:8>])
    .fluidInputs(<liquid:argon> * 1000)
    .outputs(<extracells:storage.fluid:4>)
    .EUt(4096)
    .duration(60)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();
	//1024K
canner.recipeBuilder()
    .inputs([<extracells:storage.casing>, <extracells:storage.component:9>])
    .fluidInputs(<liquid:krypton> * 1000)
    .outputs(<extracells:storage.fluid:5>)
    .EUt(4096)
    .duration(60)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();
	//4096K
canner.recipeBuilder()
    .inputs([<extracells:storage.casing>, <extracells:storage.component:10>])
    .fluidInputs(<liquid:xenon> * 1000)
    .outputs(<extracells:storage.fluid:6>)
    .EUt(4096)
    .duration(60)
    .property("cleanroom", "sterile_cleanroom")
    .buildAndRegister();
//Crafting Storages
assembler.recipeBuilder()
    .inputs([<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:43> * 2, <appliedenergistics2:material:44> * 2, <extracells:storage.component>, <threng:material:4>])
    .outputs(<extracpus:crafting_storage_256k>)
    .EUt(1024)
    .duration(240)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:43> * 2, <appliedenergistics2:material:44> * 2, <extracells:storage.component:1>, <threng:material:4>])
    .outputs(<extracpus:crafting_storage_1024k>)
    .EUt(1024)
    .duration(240)
    .property("cleanroom", "cleanroom")
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:43> * 2, <appliedenergistics2:material:44> * 2, <extracells:storage.component:2>, <threng:material:4>])
    .outputs(<extracpus:crafting_storage_4096k>)
    .EUt(1024)
    .duration(240)
    .property("cleanroom", "sterile_cleanroom")
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:43> * 2, <appliedenergistics2:material:44> * 2, <extracells:storage.component:3>, <threng:material:4>])
    .outputs(<extracpus:crafting_storage_16384k>)
    .EUt(1024)
    .duration(240)
    .property("cleanroom", "sterile_cleanroom")
    .buildAndRegister();
print("------ExtCells_LOADING_END------");
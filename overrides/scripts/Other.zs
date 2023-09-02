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

print("------GTNE_OTHERS_LOADING_START------");
//Remove Recipes
    var array = [<multipagechest:multipagechest>,<movingelevators:display_block>,<movingelevators:elevator_block>,<movingelevators:button_block>,<packagedauto:encoder>,<packagedauto:packager>,<packagedauto:unpackager>,<packagedauto:packager_extension>,<packagedauto:recipe_holder>,<packagedauto:package_component>,<packagedauto:me_package_component>,<packagedexcrafting:basic_crafter>,<packagedexcrafting:advanced_crafter>,<packagedexcrafting:elite_crafter>,<packagedexcrafting:ultimate_crafter>] as IItemStack[];

    for i in array {
        recipes.remove(i);
    }
//ADD Recipes
  //MultiPageChest
    //MultiPageChest
      mmRecipe("MultiPageChest", "Prototype_Assembling_Line", 600)
        .addEnergyPerTickInput(16000)
        .addItemInput(<minecraft:chest> * 24)
        .addItemInput(<gregtech:meta_item_1:205>)
        .addItemInput(<gregtech:meta_plate:396> * 8)
        .addItemInput(<gregtech:meta_item_1:629> * 2)
        .addItemInput(<gregtech:meta_item_1:262> * 2)
        .addItemInput(<gregtech:meta_stick:32002> * 24)
        .addItemInput(<gregtech:meta_stick:32010> * 24)
        .addItemInput(<gregtech:meta_plate:1648> * 64)
        .addItemOutput(<multipagechest:multipagechest> * 2)
        .build();
  //エレベーター
    //コントローラー
      assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:129> * 32, <gregtech:meta_item_1:234> * 8, <ore:circuitEv> * 4, <gregtech:meta_item_1:492> * 16, <gregtech:meta_stick_long:324> * 32, <immersiveengineering:wirecoil:7> * 32, <immersiveengineering:wirecoil:5> * 32, <immersiveengineering:wirecoil:4> * 32, <ore:blockIron> * 4])
        .outputs(<movingelevators:elevator_block> * 4)
        .EUt(480)
        .duration(1200)
        .buildAndRegister();
    //操作パネル
      mods.extendedcrafting.TableCrafting.addShaped(1, <movingelevators:display_block>, [
	      [<hoverboardmod:microcontroller>, <ore:circuitHv>, <gregtech:meta_item_1:597>], 
	      [<gregtech:meta_item_1:603>, <gregtech:machine:988>, <extrautils2:screen>], 
	      [<ore:blockIron>, <gregtech:meta_item_1:492>, <ore:blockIron>]
      ]);
    //遠隔操作パネル
      mods.extendedcrafting.TableCrafting.addShaped(1, <movingelevators:button_block>, [
	      [<gregtech:meta_item_1:98>, <gregtech:meta_item_1:503>, <gregtech:meta_item_1:98>], 
	      [<gregtech:meta_item_1:597>, <ore:circuitEv>, <gregtech:meta_item_1:597>], 
      	[<ore:componentInductor>, <gregtech:meta_item_1:591>, <ore:componentInductor>]
      ]);
  //Package&ExPackage
    //PackageAuto
      //Automation
        //Encorder
          mods.extendedcrafting.TableCrafting.addShaped(2, <packagedauto:encoder>, [
	          [<gregtech:meta_item_1:592>, <ore:circuitEv>, <threng:material:4>, <ore:circuitEv>, <gregtech:meta_item_1:592>], 
	          [<appliedenergistics2:material:52>, <extendedcrafting:table_basic>, <extendedcrafting:table_basic>, <extendedcrafting:table_basic>, <appliedenergistics2:material:52>], 
	          [<gregtech:meta_item_1:592>, <extendedcrafting:table_basic>, <extendedcrafting:table_basic>, <extendedcrafting:table_basic>, <gregtech:meta_item_1:592>], 
	          [<appliedenergistics2:material:52>, <extendedcrafting:table_basic>, <extendedcrafting:table_basic>, <extendedcrafting:table_basic>, <appliedenergistics2:material:52>], 
            [<gregtech:meta_item_1:592>, <ore:circuitEv>, <threng:material:4>, <ore:circuitEv>, <gregtech:meta_item_1:592>]
          ]);
        //Packager
          mods.extendedcrafting.TableCrafting.addShaped(1, <packagedauto:packager>, [
	          [<ore:plateAluminium>, <appliedenergistics2:material:52>, <ore:plateAluminium>], 
	          [<appliedenergistics2:material:43>, <gregtech:machine:501>, <appliedenergistics2:material:43>], 
	          [<ore:plateAluminium>, <threng:material:4>, <ore:plateAluminium>]
          ]);
        //Unpackager
          mods.extendedcrafting.TableCrafting.addShaped(1, <packagedauto:unpackager>, [
	          [<ore:plateAluminium>, <appliedenergistics2:material:52>, <ore:plateAluminium>], 
	          [<appliedenergistics2:material:44>, <gregtech:machine:501>, <appliedenergistics2:material:44>], 
	          [<ore:plateAluminium>, <threng:material:4>, <ore:plateAluminium>]
          ]);
        //Package Extension
          mods.extendedcrafting.TableCrafting.addShaped(1, <packagedauto:packager_extension>, [
	          [<ore:alloyElite>, <ore:plateAluminium>, <ore:alloyElite>], 
            [<ore:circuitEv>, <packagedauto:packager>, <ore:circuitEv>], 
	          [<ore:alloyElite>, <ore:plateAluminium>, <ore:alloyElite>]
          ]);
        //PackageCrafter
          //Basic
            mods.extendedcrafting.TableCrafting.addShaped(2, <packagedexcrafting:basic_crafter>, [
	            [null, <ore:plateSteel>, <gregtech:meta_item_1:308>, <ore:plateSteel>, null], 
	            [<ore:plateSteel>, <gregtech:meta_item_1:187>, <ore:circuitMv>, <gregtech:meta_item_1:187>, <ore:plateSteel>], 
	            [<gregtech:meta_item_1:308>, <ore:circuitMv>, <extendedcrafting:table_basic>, <ore:circuitMv>, <gregtech:meta_item_1:308>], 
	            [<ore:plateSteel>, <gregtech:meta_item_1:187>, <ore:circuitMv>, <gregtech:meta_item_1:187>, <ore:plateSteel>], 
	            [null, <ore:plateSteel>, <gregtech:meta_item_1:308>, <ore:plateSteel>, null]
            ]);
          //Advanced
            mods.extendedcrafting.TableCrafting.addShaped(2, <packagedexcrafting:advanced_crafter>, [
	            [null, <ore:plateAluminium>, <gregtech:meta_item_1:308>, <ore:plateAluminium>, null], 
	            [<ore:plateAluminium>, <gregtech:meta_item_1:188>, <ore:circuitHv>, <gregtech:meta_item_1:188>, <ore:plateAluminium>], 
	            [<gregtech:meta_item_1:308>, <ore:circuitHv>, <extendedcrafting:table_advanced>, <ore:circuitHv>, <gregtech:meta_item_1:308>], 
	            [<ore:plateAluminium>, <gregtech:meta_item_1:188>, <ore:circuitHv>, <gregtech:meta_item_1:188>, <ore:plateAluminium>], 
	            [null, <ore:plateAluminium>, <gregtech:meta_item_1:308>, <ore:plateAluminium>, null]
            ]);
          //Elite
            mods.extendedcrafting.TableCrafting.addShaped(2, <packagedexcrafting:elite_crafter>, [
	            [null, <ore:plateStainlessSteel>, <gregtech:meta_item_1:308>, <ore:plateStainlessSteel>, null], 
	            [<ore:plateStainlessSteel>, <gregtech:meta_item_1:189>, <ore:circuitEv>, <gregtech:meta_item_1:189>, <ore:plateStainlessSteel>], 
	            [<gregtech:meta_item_1:308>, <ore:circuitEv>, <extendedcrafting:table_elite>, <ore:circuitEv>, <gregtech:meta_item_1:308>], 
	            [<ore:plateStainlessSteel>, <gregtech:meta_item_1:189>, <ore:circuitEv>, <gregtech:meta_item_1:189>, <ore:plateStainlessSteel>], 
	            [null, <ore:plateStainlessSteel>, <gregtech:meta_item_1:308>, <ore:plateStainlessSteel>, null]
            ]);
          //Ultimate
            mods.extendedcrafting.TableCrafting.addShaped(2, <packagedexcrafting:ultimate_crafter>, [
	            [null, <ore:plateTitanium>, <gregtech:meta_item_1:308>, <ore:plateTitanium>, null], 
	            [<ore:plateTitanium>, <gregtech:meta_item_1:190>, <ore:circuitIv>, <gregtech:meta_item_1:190>, <ore:plateTitanium>], 
	            [<gregtech:meta_item_1:308>, <ore:circuitIv>, <extendedcrafting:table_ultimate>, <ore:circuitIv>, <gregtech:meta_item_1:308>], 
	            [<ore:plateTitanium>, <gregtech:meta_item_1:190>, <ore:circuitIv>, <gregtech:meta_item_1:190>, <ore:plateTitanium>], 
	            [null, <ore:plateTitanium>, <gregtech:meta_item_1:308>, <ore:plateTitanium>, null]
            ]);
        //Component
          //Holder
            mods.extendedcrafting.TableCrafting.addShaped(1, <packagedauto:recipe_holder>, [
	            [<ore:plateAluminium>, <ore:circuitEv>, <ore:plateAluminium>], 
	            [<gregtech:meta_item_1:592>, <appliedenergistics2:material:52>, <gregtech:meta_item_1:592>], 
	            [<ore:plateAluminium>, <packagedauto:package_component>, <ore:plateAluminium>]
            ]);
          //PackagingComponent
            mods.extendedcrafting.TableCrafting.addShaped(1, <packagedauto:package_component>, [
	            [<gregtech:meta_item_1:592>, <ore:plateRedAlloy>, <gregtech:meta_item_1:592>], 
	            [<ore:plateRedAlloy>, <gregtech:meta_item_1:592>, <ore:plateRedAlloy>], 
	            [<gregtech:meta_item_1:592>, <ore:circuitMv>, <gregtech:meta_item_1:592>]
            ]);
          //MEPackagingComponent
            mods.extendedcrafting.TableCrafting.addShaped(1, <packagedauto:me_package_component>, [
	            [<ore:circuitHv>, <appliedenergistics2:material:23>, <ore:circuitHv>], 
	            [<appliedenergistics2:material:43>, <packagedauto:package_component>, <appliedenergistics2:material:44>], 
	            [<ore:circuitHv>, <appliedenergistics2:material:23>, <ore:circuitHv>]
            ]);
  //
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

print("------FLUXNETWORK_LOADING_START------");

//RecipesRemove
  var array1 = [<fluxnetworks:fluxcore>,<fluxnetworks:flux>,<fluxnetworks:fluxconfigurator>,<fluxnetworks:fluxpoint>,<fluxnetworks:fluxplug>,<fluxnetworks:fluxcontroller>,<fluxnetworks:fluxstorage>,<fluxnetworks:herculeanfluxstorage>,<fluxnetworks:gargantuanfluxstorage>] as IItemStack[];
    for i in array1 {
      recipes.remove(i);
    }
//ADD Recipe
  //Material
    //Core
      chem_reactor.recipeBuilder()
        .inputs([<fluxnetworks:flux> * 6, <minecraft:ender_eye>])
        .fluidInputs([<liquid:ender> * 250])
        .outputs([<fluxnetworks:fluxcore>])
        .EUt(480)
        .duration(200)
        .buildAndRegister();
    //FluxDust
      mixer.recipeBuilder()
        .inputs([<ore:dustCoal> * 6, <ore:dustEnderEye> * 6, <ore:dustGlowstone> * 6, <botania:manaresource:23> * 6, <enderio:item_material:20> * 6, <extendedcrafting:material:7> * 6])
        .outputs([<fluxnetworks:flux> * 36])
        .EUt(120)
        .duration(1200)
        .buildAndRegister();
  //Configulator
    mods.extendedcrafting.TableCrafting.addShaped(2, <fluxnetworks:fluxconfigurator>, [
	    [null, null, null, <fluxnetworks:fluxcore>, <ore:gemEnderEye>], 
	    [null, null, <ore:alloyElite>, <ore:gemEnderEye>, <fluxnetworks:fluxcore>], 
	    [null, null, <extendedcrafting:material:3>, <ore:alloyElite>, null], 
	    [null, <extendedcrafting:material:3>, null, null, null], 
	    [<extendedcrafting:material:3>, null, null, null, null]
    ]);
  //FluxNetWork
    //Point
      assembler.recipeBuilder()
        .inputs([<fluxnetworks:fluxcore> * 2, <minecraft:nether_star>, <gregtech:meta_item_1:99> * 2, <ore:circuitEv> * 2, <gregtech:meta_item_1:604> * 8, <mekanism:reinforcedalloy> * 4, <extendedcrafting:material:10> * 2, <gregtech:wire_octal:32018> * 8])
        .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 31}))
        .outputs(<fluxnetworks:fluxpoint>)
        .EUt(480)
        .duration(1200)
        .buildAndRegister();
    //Plug
      assembler.recipeBuilder()
        .inputs([<fluxnetworks:fluxcore> * 2, <minecraft:nether_star>, <gregtech:meta_item_1:99> * 2, <ore:circuitEv> * 2, <gregtech:meta_item_1:604> * 8, <mekanism:reinforcedalloy> * 4, <extendedcrafting:material:10> * 2, <gregtech:wire_octal:32018> * 8])
        .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 32}))
        .outputs(<fluxnetworks:fluxplug>)
        .EUt(480)
        .duration(1200)
        .buildAndRegister();
    //Controller
      mods.extendedcrafting.TableCrafting.addShaped(2, <fluxnetworks:fluxcontroller>, [
	      [null, <gregtech:meta_item_1:492>, <ore:plateNetherStar>, <gregtech:meta_item_1:492>, null], 
	      [<gregtech:meta_item_1:492>, <fluxnetworks:fluxcore>, <ore:circuitIv>, <fluxnetworks:fluxcore>, <gregtech:meta_item_1:492>], 
	      [<ore:plateNetherStar>, <ore:circuitIv>, <gregtech:meta_item_1:282>, <ore:circuitIv>, <ore:plateNetherStar>], 
	      [<gregtech:meta_item_1:492>, <fluxnetworks:fluxcore>, <ore:circuitIv>, <fluxnetworks:fluxcore>, <gregtech:meta_item_1:492>], 
	      [null, <gregtech:meta_item_1:492>, <ore:plateNetherStar>, <gregtech:meta_item_1:492>, null]
      ]);
    //Battery
      //Nomal
        mods.extendedcrafting.TableCrafting.addShaped(2, <fluxnetworks:fluxstorage>, [
	        [null, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:604>, <gregtech:meta_item_1:492>, null], 
	        [<gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <fluxnetworks:fluxcore>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>], 
	        [<gregtech:meta_item_1:604>, <fluxnetworks:fluxcore>, <mekanism:energycube>.withTag({tier: 0}), <fluxnetworks:fluxcore>, <gregtech:meta_item_1:604>], 
	        [<gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>, <fluxnetworks:fluxcore>, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:492>], 
	        [null, <gregtech:meta_item_1:492>, <gregtech:meta_item_1:604>, <gregtech:meta_item_1:492>, null]
        ]);
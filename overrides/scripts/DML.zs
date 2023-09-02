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

print("------DML_LOADING_START------");
//RecipesRemove
  var array1 = [<deepmoblearning:extraction_chamber>,<deepmoblearning:trial_keystone>,<deepmoblearning:soot_covered_plate>,<deepmoblearning:polymer_clay>,<deepmoblearning:deep_learner>,<deepmoblearning:data_model_blank>,<deepmoblearning:trial_key>,<deepmoblearning:glitch_infused_chestplate>,<deepmoblearning:glitch_infused_helmet>,<deepmoblearning:glitch_infused_leggings>,<deepmoblearning:glitch_infused_boots>,<deepmoblearning:glitch_infused_sword>,<deepmoblearning:simulation_chamber>,<deepmoblearning:machine_casing>] as IItemStack[];
    for i in array1 {
      recipes.remove(i);
    }
//ADD Recipe
  //Machine
    //LootFabricator
      mods.extendedcrafting.TableCrafting.addShaped(2, <deepmoblearning:extraction_chamber>, [
	      [<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:living_matter_twilight>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>], 
	      [<deepmoblearning:soot_covered_plate>, <ore:alloyElite>, <ore:ingotManasteel>, <ore:alloyElite>, <deepmoblearning:soot_covered_plate>], 
      	[<deepmoblearning:living_matter_overworldian>, <ore:circuitIv>, <deepmoblearning:machine_casing>, <ore:circuitIv>, <deepmoblearning:living_matter_extraterrestrial>], 
      	[<deepmoblearning:soot_covered_plate>, <ore:alloyElite>, <ore:ingotManasteel>, <ore:alloyElite>, <deepmoblearning:soot_covered_plate>], 
        [<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>]
      ]);
    //TrialKeyStone
      mods.extendedcrafting.TableCrafting.addShaped(2, <deepmoblearning:trial_keystone>, [
	      [null, null, null, null, null], 
      	[<ore:plateDoubleDiamondinfusedingot>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <ore:plateDoubleDiamondinfusedingot>], 
      	[<deepmoblearning:soot_covered_plate>, <ore:circuitIv>, <deepmoblearning:simulation_chamber>, <ore:circuitIv>, <deepmoblearning:soot_covered_plate>], 
      	[<ore:plateDoubleDiamondinfusedingot>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:machine_casing>, <deepmoblearning:soot_covered_plate>, <ore:plateDoubleDiamondinfusedingot>], 
      	[null, null, null, null, null]
      ]);
    //SimulationChamber
      mods.extendedcrafting.TableCrafting.addShaped(2, <deepmoblearning:simulation_chamber>, [
	      [<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_redstone>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>], 
	      [<deepmoblearning:soot_covered_plate>, <gregtech:meta_item_1:189>, <deepmoblearning:polymer_clay>, <gregtech:meta_item_1:129>, <deepmoblearning:soot_covered_plate>], 
	      [<deepmoblearning:soot_covered_redstone>, <ore:circuitEv>, <deepmoblearning:data_model_blank>, <ore:circuitEv>, <deepmoblearning:soot_covered_redstone>], 
	      [<deepmoblearning:soot_covered_plate>, <gregtech:meta_item_1:144>, <deepmoblearning:polymer_clay>, <gregtech:meta_item_1:159>, <deepmoblearning:soot_covered_plate>], 
      	[<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_redstone>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>]
      ]);
  //Material
    //Soot-Covered Redstone
      mixer.recipeBuilder()
        .inputs([<fluxnetworks:flux>, <ore:dustRedstone> * 2])
        .outputs([<deepmoblearning:soot_covered_redstone> * 3])
        .EUt(120)
        .duration(40)
        .buildAndRegister();
    //Soot-Covered Plate
      forming_press.recipeBuilder()
        .inputs([<deepmoblearning:soot_covered_redstone> * 2, <gregtech:meta_plate:297>])
        .outputs(<deepmoblearning:soot_covered_plate>)
        .EUt(240)
        .duration(120)
        .buildAndRegister();
    //Polaymer Clay
      chem_reactor.recipeBuilder()
        .inputs([<minecraft:clay>, <gregtech:meta_ingot:1007> * 4])
        .fluidInputs([<liquid:ender> * 250])
        .outputs([<deepmoblearning:polymer_clay> * 2])
        .EUt(100)
        .duration(20)
        .buildAndRegister();
    //Soot-Covered Machine Casing
      mods.extendedcrafting.TableCrafting.addShaped(2, <deepmoblearning:machine_casing>, [
	      [<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <gregtech:meta_item_1:501>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>], 
	      [<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_redstone>, <extendedcrafting:material:2>, <deepmoblearning:soot_covered_redstone>, <deepmoblearning:soot_covered_plate>], 
	      [<gregtech:meta_item_1:501>, <ore:circuitEv>, <gregtech:machine:988>, <ore:circuitEv>, <gregtech:meta_item_1:501>], 
	      [<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_redstone>, <extendedcrafting:material:2>, <deepmoblearning:soot_covered_redstone>, <deepmoblearning:soot_covered_plate>], 
	      [<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <gregtech:meta_item_1:501>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>]
      ]);
  //MOB Kill Simulation&Trial
    //Deep Learner
      assembler.recipeBuilder()
        .inputs([<ore:circuitIv> * 4, <gregtech:meta_item_1:235> * 4, <gregtech:meta_item_1:220> * 4, <deepmoblearning:soot_covered_plate> * 4, <gregtech:meta_plate:113> * 6, <deepmoblearning:soot_covered_redstone> * 6, <gregtech:meta_wire_fine:277> * 16, <gregtech:meta_item_1:404>])
        .outputs([<deepmoblearning:deep_learner>])
        .EUt(240)
        .duration(200)
        .buildAndRegister();
    //Blank Data Module
      mods.extendedcrafting.TableCrafting.addShaped(2, <deepmoblearning:data_model_blank>, [
	      [null, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>], 
	      [<ore:plateDoubleElectrum>, <ore:plateDoubleDiamondinfusedingot>, <ore:circuitIv>, <gregtech:meta_item_1:262>, <ore:plateDoubleDiamondinfusedingot>], 
	      [<ore:stickGold>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:polymer_clay>, <deepmoblearning:polymer_clay>, <deepmoblearning:soot_covered_plate>], 
	      [<ore:plateDoubleElectrum>, <ore:plateDoubleDiamondinfusedingot>, <gregtech:meta_item_1:235>, <gregtech:meta_item_1:235>, <ore:plateDoubleDiamondinfusedingot>], 
	      [<ore:stickGold>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_plate>]
      ]);
    //Trial Key
      assembler.recipeBuilder()
        .inputs([<minecraft:ender_pearl> * 32, <immersiveengineering:metal:29> * 64, <immersiveengineering:metal:29> * 64, <minecraft:diamond> * 32])
        .outputs([<deepmoblearning:trial_key>])
        .fluidInputs([<liquid:ender> * 500])
        .EUt(240)
        .duration(240)
        .buildAndRegister();
  //Glitch-Infused-Armor&Sword
    //Helmet
      mods.extendedcrafting.TableCrafting.addShaped(2, <deepmoblearning:glitch_infused_helmet>, [
	      [<ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>], 
	      [<deepmoblearning:glitch_infused_ingot>, null, <ore:plateNetherStar>, null, <deepmoblearning:glitch_infused_ingot>], 
	      [<ore:plateNetherStar>, <ore:plateNetherStar>, <ore:alloyElite>, <ore:plateNetherStar>, <ore:plateNetherStar>], 
      	[<gregtech:meta_item_1:282>, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, <gregtech:meta_item_1:282>], 
      	[<deepmoblearning:glitch_infused_ingot>, null, null, null, <deepmoblearning:glitch_infused_ingot>]
      ]);
    //ChestPlate
      mods.extendedcrafting.TableCrafting.addShaped(2, <deepmoblearning:glitch_infused_chestplate>, [
	      [<deepmoblearning:glitch_infused_ingot>, null, null, null, <deepmoblearning:glitch_infused_ingot>], 
	      [<ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>], 
	      [<deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, <deepmoblearning:glitch_heart>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>], 
	      [<ore:plateTungstenCarbide>, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, <ore:plateTungstenCarbide>], 
	      [<ore:plateNetherStar>, <gregtech:meta_item_1:282>, <deepmoblearning:glitch_infused_ingot>, <gregtech:meta_item_1:282>, <ore:plateNetherStar>]
      ]);
    //Leggings
      mods.extendedcrafting.TableCrafting.addShaped(2, <deepmoblearning:glitch_infused_leggings>, [
      	[<ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>], 
      	[<ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>], 
      	[<ore:plateTungstenCarbide>, <gregtech:meta_item_1:282>, null, <gregtech:meta_item_1:282>, <ore:plateTungstenCarbide>], 
      	[<ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>], 
	      [<ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>]
      ]);
    //Boots
      mods.extendedcrafting.TableCrafting.addShaped(2, <deepmoblearning:glitch_infused_boots>, [
	      [null, null, null, null, null], 
	      [<ore:plateNetherStar>, <ore:plateNetherStar>, <gregtech:meta_item_1:282>, <ore:plateNetherStar>, <ore:plateNetherStar>], 
      	[<ore:plateTungstenCarbide>, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, <ore:plateTungstenCarbide>], 
      	[<ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>], 
      	[<deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, <gregtech:meta_item_1:282>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>]
      ]);
    //Sword
      mods.extendedcrafting.TableCrafting.addShaped(2, <deepmoblearning:glitch_infused_sword>, [
	      [null, null, null, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>], 
      	[null, null, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>], 
      	[<deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, null], 
      	[<ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, <ore:plateNetherStar>, null, null], 
      	[<ore:stickLongDraconium>, <ore:plateNetherStar>, <deepmoblearning:glitch_infused_ingot>, null, null]
      ]);
print("------DML_LOADING_END------");
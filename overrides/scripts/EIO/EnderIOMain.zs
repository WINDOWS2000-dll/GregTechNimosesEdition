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

//RemoveRecipe
var array1 = [
  <enderio:block_simple_alloy_smelter>,
  <enderio:block_alloy_smelter>,
  <enderio:block_enhanced_alloy_smelter>,
  <enderio:block_solar_panel>,
  <enderio:block_solar_panel:1>,
  <enderio:block_solar_panel:2>,
  <enderio:block_solar_panel:3>,
  <enderio:block_solar_panel:4>,
  <enderio:block_solar_panel:5>,
  <enderio:block_solar_panel:6>,
  <enderio:block_tank>,
  <enderio:block_tank:1>,
  <enderio:block_transceiver>,
  <enderio:block_vacuum_chest>,
  <enderio:block_xp_vacuum>,
  <enderio:block_travel_anchor>,
  <enderio:block_tele_pad>,
  <enderio:block_impulse_hopper>,
  <enderio:block_cap_bank:1>,
  <enderio:block_cap_bank:2>,
  <enderio:block_cap_bank:3>,
  <enderio:block_power_monitor>,
  <enderio:block_advanced_power_monitor>,
  <enderio:item_conduit_facade>,
  <enderio:item_conduit_facade:1>,
  <enderio:item_conduit_probe>,
  <enderio:item_yeta_wrench>,
  <enderio:item_xp_transfer>,
  <enderio:item_coord_selector>,
  <enderio:item_travel_staff>,
  <enderio:item_rod_of_return>,
  <enderio:item_magnet>,
  <enderio:item_basic_item_filter>,
  <enderio:item_advanced_item_filter>,
  <enderio:item_limited_item_filter>,
  <enderio:item_big_item_filter>,
  <enderio:item_big_advanced_item_filter>,
  <enderio:item_existing_item_filter>,
  <enderio:item_mod_item_filter>,
  <enderio:item_power_item_filter>,
  <enderio:item_soul_filter_normal>,
  <enderio:item_soul_filter_big>,
  <enderio:item_enchantment_filter_normal>,
  <enderio:item_enchantment_filter_normal>,
  <enderio:item_fluid_filter>,
  <enderio:item_soul_vial>,
  <enderio:item_dark_steel_helmet>,
  <enderio:item_dark_steel_chestplate>,
  <enderio:item_dark_steel_leggings>,
  <enderio:item_dark_steel_boots>,
  <enderio:item_dark_steel_shield>,
  <enderio:item_dark_steel_sword>,
  <enderio:item_dark_steel_pickaxe>,
  <enderio:item_dark_steel_axe>,
  <enderio:item_dark_steel_bow>,
  <enderio:item_dark_steel_shears>,
  <enderio:item_dark_steel_crook>,
  <enderio:item_dark_steel_hand>,
  <enderio:item_end_steel_sword>,
  <enderio:item_end_steel_pickaxe>,
  <enderio:item_end_steel_axe>,
  <enderio:item_end_steel_bow>,
  <enderio:item_end_steel_helmet>,
  <enderio:item_end_steel_chestplate>,
  <enderio:item_end_steel_leggings>,
  <enderio:item_end_steel_boots>,
  <enderio:item_end_steel_shield>,
  <enderio:item_staff_of_levity>,
  <enderio:item_stellar_alloy_sword>,
  <enderio:item_stellar_alloy_pickaxe>,
  <enderio:item_stellar_alloy_axe>,
  <enderio:item_stellar_alloy_helmet>,
  <enderio:item_stellar_alloy_chestplate>,
  <enderio:item_stellar_alloy_leggings>,
  <enderio:item_stellar_alloy_boots>,
  <enderio:block_inventory_panel>,
  <enderio:block_inventory_panel>,
  <enderio:block_inventory_chest_tiny>,
  <enderio:block_inventory_chest_small>,
  <enderio:block_inventory_chest_medium>,
  <enderio:block_inventory_chest_big>,
  <enderio:block_inventory_chest_large>,
  <enderio:block_inventory_chest_huge>,
  <enderio:block_inventory_chest_enormous>,
  <enderio:block_inventory_chest_warehouse>,
  <enderio:block_inventory_chest_warehouse13>,
  <enderio:item_inventory_remote>,
  <enderio:item_inventory_remote:1>,
  <enderio:item_inventory_remote:2>,
  <enderio:block_dark_steel_ladder>,
  <enderio:block_dark_iron_bars>,
  <enderio:block_dark_steel_trapdoor>,
  <enderio:block_reinforced_obsidian>,
  <enderio:block_dark_steel_door>,
  <enderio:block_dark_steel_anvil>,
  <enderio:block_end_iron_bars>,
  <enderio:block_slice_and_splice>,
  <enderio:block_soul_binder>,
  <enderio:block_powered_spawner>,
  <enderio:block_enhanced_sag_mill>,
  <enderio:block_enhanced_wired_charger>,
  <enderio:block_enhanced_vat>,
  <enderio:block_reservoir>,
  <enderio:block_buffer>,
  <enderio:block_buffer:1>,
  <enderio:block_buffer:2>,
  <enderio:block_enchanter>,
  <enderio:block_fused_glass>,
  <enderio:item_extract_speed_upgrade>,
  <enderio:block_fused_quartz>
] as IItemStack[];

for i in array1 {
    recipes.remove(i);
}

//ADD Recipe
  //Generator
    //Solar
      //T1
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_solar_panel>, [
          [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>], 
          [<ore:plateGlass>, <ore:itemPlatePhotovoltaic>, <ore:plateGlass>], 
          [<ore:itemSimpleChassiParts>, <ore:ingotElectricalSteel>, <ore:itemSimpleChassiParts>]
        ]);
      //T2
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_solar_panel:1>, [
          [<ore:ingotEnergeticAlloy>, <enderio:block_solar_panel>, <ore:ingotEnergeticAlloy>], 
          [<enderio:block_solar_panel>, <enderio:item_basic_capacitor>, <enderio:block_solar_panel>], 
          [<ore:ingotEnergeticAlloy>, <enderio:block_solar_panel>, <ore:ingotEnergeticAlloy>]
        ]);
      //T3
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_solar_panel:2>, [
          [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>], 
          [<enderio:block_solar_panel:1>, <ore:itemChassiParts>, <enderio:block_solar_panel:1>], 
          [<ore:ingotPulsatingIron>, <enderio:item_basic_capacitor:1>, <ore:ingotPulsatingIron>]
        ]);
      //T4
        mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:block_solar_panel:3>, [
          [<ore:plateGlass>, <gregtech:transparent_casing:2>, <gregtech:transparent_casing:2>, <gregtech:transparent_casing:2>, <ore:plateGlass>], 
          [<gregtech:transparent_casing:2>, <enderio:block_solar_panel:2>, <ore:itemVibrantCrystal>, <enderio:block_solar_panel:2>, <gregtech:transparent_casing:2>], 
          [<ore:ingotVibrantAlloy>, <enderio:block_solar_panel:2>, <ore:skullGuardianDiode>, <enderio:block_solar_panel:2>, <ore:ingotVibrantAlloy>], 
          [<ore:ingotVibrantAlloy>, <ore:itemChassiParts>, <enderio:item_basic_capacitor:2>, <ore:itemChassiParts>, <ore:ingotVibrantAlloy>], 
          [<ore:plateDoubleAluminium>, <ore:plateDoubleAluminium>, <ore:plateDoubleAluminium>, <ore:plateDoubleAluminium>, <ore:plateDoubleAluminium>]
        ]);
      //T5
        mods.extendedcrafting.TableCrafting.addShaped(3, <enderio:block_solar_panel:4>, [
          [<gregtech:meta_item_1:531>, <ore:circuitIv>, <gregtech:transparent_casing:2>, <gregtech:meta_item_1:101>, <gregtech:transparent_casing:2>, <ore:circuitIv>, <gregtech:meta_item_1:531>], 
          [<ore:circuitIv>, <ore:plateNetherStar>, <ore:ingotCrystallineAlloy>, <enderio:block_solar_panel:3>, <ore:ingotCrystallineAlloy>, <ore:plateNetherStar>, <ore:circuitIv>], 
          [<ore:plateNetherStar>, <ore:ingotCrystallineAlloy>, <enderio:block_solar_panel:3>, <enderio:block_solar_panel:3>, <enderio:block_solar_panel:3>, <ore:ingotCrystallineAlloy>, <ore:plateNetherStar>], 
          [<gregtech:meta_item_1:405>, <ore:skullGuardianDiode>, <gregtech:meta_item_1:605>, <enderio:item_capacitor_crystalline>, <gregtech:meta_item_1:605>, <ore:skullGuardianDiode>, <gregtech:meta_item_1:405>], 
          [<ore:plateNetherStar>, <ore:ingotCrystallineAlloy>, <enderio:block_solar_panel:3>, <enderio:block_solar_panel:3>, <enderio:block_solar_panel:3>, <ore:ingotCrystallineAlloy>, <ore:plateNetherStar>], 
          [<ore:circuitIv>, <ore:plateNetherStar>, <ore:ingotCrystallineAlloy>, <enderio:block_solar_panel:3>, <ore:ingotCrystallineAlloy>, <ore:plateNetherStar>, <ore:circuitIv>], 
          [<gregtech:meta_item_1:531>, <ore:circuitIv>, <gregtech:transparent_casing:2>, <gregtech:meta_item_1:101>, <gregtech:transparent_casing:2>, <ore:circuitIv>, <gregtech:meta_item_1:531>]
        ]);
      //T6
        mods.extendedcrafting.TableCrafting.addShaped(3, <enderio:block_solar_panel:5>, [
          [<gregtech:transparent_casing:2>, <gregtech:transparent_casing:1>, <ore:ingotMelodicAlloy>, <ore:circuitUv>, <ore:ingotMelodicAlloy>, <gregtech:transparent_casing:1>, <gregtech:transparent_casing:2>], 
          [<ore:plateNetherStar>, <ore:ingotMelodicAlloy>, <gregtech:meta_item_1:102>, <enderio:block_solar_panel:4>, <gregtech:meta_item_1:102>, <ore:ingotMelodicAlloy>, <ore:plateNetherStar>], 
          [<gregtech:meta_item_1:237>, <gregtech:meta_item_1:606>, <enderio:block_solar_panel:4>, <enderio:block_solar_panel:4>, <enderio:block_solar_panel:4>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:237>], 
          [<gregtech:meta_item_1:406>, <gregtech:meta_item_1:531>, <gregtech:meta_item_1:606>, <enderio:item_capacitor_melodic>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:531>, <gregtech:meta_item_1:406>], 
          [<gregtech:meta_item_1:237>, <gregtech:meta_item_1:606>, <enderio:block_solar_panel:4>, <enderio:block_solar_panel:4>, <enderio:block_solar_panel:4>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:237>], 
          [<ore:plateNetherStar>, <ore:ingotMelodicAlloy>, <gregtech:meta_item_1:102>, <enderio:block_solar_panel:4>, <gregtech:meta_item_1:102>, <ore:ingotMelodicAlloy>, <ore:plateNetherStar>], 
          [<gregtech:transparent_casing:2>, <gregtech:transparent_casing:1>, <ore:ingotMelodicAlloy>, <ore:circuitUv>, <ore:ingotMelodicAlloy>, <gregtech:transparent_casing:1>, <gregtech:transparent_casing:2>]
        ]);
      //TF
        mods.extendedcrafting.TableCrafting.addShaped(3, <enderio:block_solar_panel:6>, [
          [<ore:circuitUhv>, <gregtech:transparent_casing:1>, <gregtech:meta_item_1:599>, <enderio:block_solar_panel:5>, <gregtech:meta_item_1:599>, <gregtech:transparent_casing:1>, <ore:circuitUhv>], 
          [<gregtech:transparent_casing:1>, <ore:ingotStellarAlloy>, <gregtech:meta_item_1:104>, <enderio:block_solar_panel:5>, <gregtech:meta_item_1:104>, <ore:ingotStellarAlloy>, <gregtech:transparent_casing:1>], 
          [<gregtech:meta_item_1:497>, <gregtech:meta_item_1:705>, <enderio:block_solar_panel:5>, <ore:blockStellarAlloy>, <enderio:block_solar_panel:5>, <gregtech:meta_item_1:705>, <gregtech:meta_item_1:497>], 
          [<gregtech:meta_item_1:407>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:705>, <enderio:item_capacitor_stellar>, <gregtech:meta_item_1:705>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:407>], 
          [<gregtech:meta_item_1:497>, <gregtech:meta_item_1:705>, <enderio:block_solar_panel:5>, <ore:blockStellarAlloy>, <enderio:block_solar_panel:5>, <gregtech:meta_item_1:705>, <gregtech:meta_item_1:497>], 
          [<gregtech:transparent_casing:1>, <ore:ingotStellarAlloy>, <gregtech:meta_item_1:104>, <enderio:block_solar_panel:5>, <gregtech:meta_item_1:104>, <ore:ingotStellarAlloy>, <gregtech:transparent_casing:1>], 
          [<ore:circuitUhv>, <gregtech:transparent_casing:1>, <gregtech:meta_item_1:599>, <enderio:block_solar_panel:5>, <gregtech:meta_item_1:599>, <gregtech:transparent_casing:1>, <ore:circuitUhv>]
        ]);
  //Buffers
    //Tank
      //T1
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_tank>, [
          [<ore:plateBlackSteel>, <itank:blocktank>, <ore:plateBlackSteel>], 
          [<gregtech:transparent_casing>, <gregtech:meta_item_1:248>, <gregtech:transparent_casing>], 
          [<ore:plateBlackSteel>, <itank:blocktank>, <ore:plateBlackSteel>]
        ]);
      //T2
        assembler.recipeBuilder()
          .inputs([
            <enderio:block_tank> * 2,
            <gregtech:meta_item_1:249> * 2,
            <ore:circuitHv>,
            <gregtech:transparent_casing:2>,
            <enderio:block_dark_iron_bars> * 2
          ])
          .outputs(<enderio:block_tank:1>)
          .EUt(480)
          .duration(200)
          .buildAndRegister();
    //Energy
      //T1
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_cap_bank:1>, [
          [<gregtech:meta_item_1:98>, <enderio:item_basic_capacitor>, <gregtech:meta_item_1:98>], 
          [<enderio:item_basic_capacitor>, <ore:itemMachineChassi>, <enderio:item_basic_capacitor>], 
          [<gregtech:meta_item_1:98>, <enderio:item_basic_capacitor>, <gregtech:meta_item_1:98>]
        ]);
      //T2
        mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:block_cap_bank:2>, [
          [<enderio:item_basic_capacitor:1>, <ore:componentDiode>, <gregtech:meta_item_1:492>, <ore:componentDiode>, <enderio:item_basic_capacitor:1>], 
          [<ore:componentDiode>, <gregtech:meta_item_1:604>, <enderio:block_cap_bank:1>, <gregtech:meta_item_1:604>, <ore:componentDiode>], 
          [<gregtech:meta_item_1:492>, <enderio:block_cap_bank:1>, <enderio:block_cap_bank:1>, <enderio:block_cap_bank:1>, <gregtech:meta_item_1:492>], 
          [<ore:componentDiode>, <gregtech:meta_item_1:604>, <enderio:block_cap_bank:1>, <gregtech:meta_item_1:604>, <ore:componentDiode>], 
          [<enderio:item_basic_capacitor:1>, <ore:componentDiode>, <gregtech:meta_item_1:492>, <ore:componentDiode>, <enderio:item_basic_capacitor:1>]
        ]);
      //T3
        mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:block_cap_bank:3>, [
          [<enderio:item_capacitor_melodic>, <gregtech:meta_item_1:531>, <gregtech:meta_item_1:703>, <gregtech:meta_item_1:531>, <enderio:item_capacitor_melodic>], 
          [<gregtech:meta_item_1:531>, <gregtech:meta_item_1:605>, <enderio:block_cap_bank:2>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:531>], 
          [<gregtech:meta_item_1:703>, <enderio:block_cap_bank:2>, <enderio:block_cap_bank:2>, <enderio:block_cap_bank:2>, <gregtech:meta_item_1:703>], 
          [<gregtech:meta_item_1:531>, <gregtech:meta_item_1:605>, <enderio:block_cap_bank:2>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:531>], 
          [<enderio:item_capacitor_melodic>, <gregtech:meta_item_1:531>, <gregtech:meta_item_1:703>, <gregtech:meta_item_1:531>, <enderio:item_capacitor_melodic>]
        ]);
    //Buffer
      //Item
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_buffer>, [
          [<gregtech:meta_item_1:293>, <ore:gearIronInfinity>, <gregtech:meta_item_1:293>], 
          [<ore:itemChassiParts>, <ore:itemMachineChassi>, <ore:itemChassiParts>], 
          [<gregtech:meta_item_1:293>, <ore:chest>, <gregtech:meta_item_1:293>]
        ]);
      //Energy
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_buffer:1>, [
          [<gregtech:meta_item_1:293>, <ore:gearIronInfinity>, <gregtech:meta_item_1:293>], 
          [<ore:itemChassiParts>, <ore:itemMachineChassi>, <ore:itemChassiParts>], 
          [<gregtech:meta_item_1:293>, <enderio:block_cap_bank:1>, <gregtech:meta_item_1:293>]
        ]);
      //Omni
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_buffer:2>, [
          [null, null, null], 
          [<enderio:block_buffer>, <ore:itemMachineChassi>, <enderio:block_buffer:1>], 
          [null, null, null]
        ]);
  //Inv Storage Sys
    //Panel
      mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:block_inventory_panel>, [
        [null, <ore:itemRemoteAwarenessUpgrade>, <ore:gearIronInfinity>, <ore:itemRemoteAwarenessUpgrade>, null], 
        [<ore:itemRemoteAwarenessUpgrade>, <ore:itemChassiParts>, <ore:chest>, <ore:itemChassiParts>, <ore:itemRemoteAwarenessUpgrade>], 
        [<ore:gearIronInfinity>, <ore:circuitEv>, <enderio:block_tank>, <ore:circuitEv>, <ore:gearIronInfinity>], 
        [<ore:itemRemoteAwarenessUpgrade>, <ore:itemChassiParts>, <extendedcrafting:table_basic>, <ore:itemChassiParts>, <ore:itemRemoteAwarenessUpgrade>], 
        [null, <ore:itemRemoteAwarenessUpgrade>, <ore:gearIronInfinity>, <ore:itemRemoteAwarenessUpgrade>, null]
      ]);
    //Sensor
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_inventory_panel_sensor>, [
        [<ore:circuitHv>, <gregtech:meta_item_1:503>, <ore:circuitHv>], 
        [<ore:ingotRedstoneAlloy>, <ore:itemMachineChassi>, <ore:ingotRedstoneAlloy>], 
        [<gregtech:meta_item_1:233>, <ore:ingotElectricalSteel>, <gregtech:meta_item_1:233>]
      ]);
    //Storages
      //T1
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_inventory_chest_tiny>, [
          [<ore:chest>, <ore:itemRemoteAwarenessUpgrade>, <ore:circuitMv>], 
          [<ore:chest>, <ore:itemMachineChassi>, <gregtech:meta_item_1:202>], 
          [<ore:chest>, <enderio:item_basic_capacitor>, <ore:circuitMv>]
        ]);
      //T2
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_inventory_chest_small>, [
          [<ore:itemChassiParts>, <ore:chest>, <ore:itemChassiParts>], 
          [<ore:circuitMv>, <enderio:block_inventory_chest_tiny>, <ore:circuitMv>], 
          [<ore:circuitHv>, <gregtech:meta_item_1:591>, <ore:circuitHv>]
        ]);
      //T3
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_inventory_chest_medium>, [
          [<ore:itemChassiParts>, <ore:chest>, <ore:itemChassiParts>], 
          [<ore:circuitEv>, <enderio:block_inventory_chest_small>, <ore:circuitEv>], 
          [<ore:circuitHv>, <gregtech:meta_item_1:591>, <ore:circuitHv>]
        ]);
      //T4
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_inventory_chest_big>, [
          [<gregtech:meta_item_1:261>, <ore:itemSoulMachineChassi>, <gregtech:meta_item_1:261>], 
          [<ore:circuitHv>, <enderio:block_inventory_chest_medium>, <ore:circuitHv>], 
          [<ore:circuitEv>, <ore:chest>, <ore:circuitEv>]
        ]);
      //T5
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_inventory_chest_large>, [
          [<gregtech:meta_item_1:261>, <ore:itemSoulMachineChassi>, <gregtech:meta_item_1:261>], 
          [<ore:circuitEv>, <enderio:block_inventory_chest_big>, <ore:circuitEv>], 
          [<ore:circuitHv>, <ore:chest>, <ore:circuitHv>]
        ]);
      //T6
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_inventory_chest_huge>, [
          [<gregtech:meta_item_1:261>, <ore:itemSoulMachineChassi>, <gregtech:meta_item_1:261>], 
          [<ore:circuitEv>, <enderio:block_inventory_chest_large>, <ore:circuitEv>], 
          [<ore:circuitHv>, <ore:chest>, <ore:circuitHv>]
        ]);
      //T7
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_inventory_chest_enormous>, [
          [<gregtech:meta_item_1:262>, <ore:itemEndSteelMachineChassi>, <gregtech:meta_item_1:262>], 
          [<ore:circuitIv>, <enderio:block_inventory_chest_huge>, <ore:circuitIv>], 
          [<ore:circuitEv>, <ore:chest>, <ore:circuitEv>]
        ]);
      //T8
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_inventory_chest_warehouse>, [
          [<gregtech:meta_item_1:262>, <ore:itemEndSteelMachineChassi>, <gregtech:meta_item_1:262>], 
          [<ore:circuitIv>, <enderio:block_inventory_chest_enormous>, <ore:circuitIv>], 
          [<ore:circuitEv>, <ore:chest>, <ore:circuitEv>]
        ]);
      //T9
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_inventory_chest_warehouse13>, [
          [<gregtech:meta_item_1:262>, <ore:itemEndSteelMachineChassi>, <gregtech:meta_item_1:262>], 
          [<ore:circuitIv>, <enderio:block_inventory_chest_warehouse>, <ore:circuitIv>], 
          [<ore:circuitEv>, <ore:chest>, <ore:circuitEv>]
        ]);
    //Remote Oder
      //T1
        assembler.recipeBuilder()
          .inputs([
            <enderio:block_inventory_panel>,
            <enderio:item_material:44>,
            <enderio:item_basic_capacitor:2>,
            <enderio:item_material:16>,
            <gregtech:meta_item_1:220> * 2,
            <gregtech:meta_item_1:235> * 2,
            <ore:circuitIv> * 2,
            <enderio:block_tank>
          ])
          .fluidInputs([<liquid:ender> * 1250])
          .outputs(<enderio:item_inventory_remote>)
          .EUt(1960)
          .duration(160)
          .buildAndRegister();
      //T2
        assembler.recipeBuilder()
          .inputs([
            <enderio:item_inventory_remote>,
            <enderio:item_material:44> * 2,
            <enderio:item_capacitor_crystalline>,
            <enderio:item_material:14> * 2,
            <enderio:item_material:15> * 2,
            <gregtech:meta_item_1:221>,
            <gregtech:meta_item_1:236>,
            <ore:circuitIv>,
            <enderio:block_tank>
          ])
          .fluidInputs([<liquid:ender> * 2500])
          .outputs(<enderio:item_inventory_remote:1>)
          .EUt(4800)
          .duration(200)
          .buildAndRegister();
      //T3
        assembler.recipeBuilder()
          .inputs([
            <enderio:item_inventory_remote:1>,
            <enderio:item_material:44> * 4,
            <enderio:item_capacitor_melodic>,
            <enderio:item_material:16> * 2,
            <enderio:item_material:15> * 4,
            <gregtech:meta_item_1:221> * 2,
            <gregtech:meta_item_1:236> * 2,
            <ore:circuitLuv> * 2,
            <enderio:block_tank> * 4
          ])
          .outputs(<enderio:item_inventory_remote:2>)
          .EUt(8191)
          .duration(2400)
          .buildAndRegister();
  //Tools & Aromrs
    //Aromrs
      //Dark Steel
        //Helmet
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_dark_steel_helmet>, [
            [<ore:screwAstral>, <ore:ingotDarkSteel>, <ore:screwAstral>], 
            [<ore:ingotDarkSteel>, <ore:gearIronInfinity>, <ore:ingotDarkSteel>], 
            [null, null, null]
          ]);
        //ChestPlate
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_dark_steel_chestplate>, [
            [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>], 
            [<ore:screwAstral>, <ore:gearIronInfinity>, <ore:screwAstral>], 
            [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>]
          ]);
        //Leggings
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_dark_steel_leggings>, [
            [<ore:ingotDarkSteel>, <ore:gearIronInfinity>, <ore:ingotDarkSteel>], 
            [<ore:screwAstral>, null, <ore:screwAstral>], 
            [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>]
          ]);
        //Boots
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_dark_steel_boots>, [
            [null, <ore:screwAstral>, null], 
            [<ore:ingotDarkSteel>, <ore:gearIronInfinity>, <ore:ingotDarkSteel>], 
            [<ore:ingotDarkSteel>, <ore:screwAstral>, <ore:ingotDarkSteel>]
          ]);
      //EndSteel
        //Helmet
          mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:item_end_steel_helmet>, [
            [<ore:screwTitanium>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:screwTitanium>], 
            [<ore:ingotEndSteel>, <ore:plateTitanium>, <enderio:item_dark_steel_helmet>, <ore:plateTitanium>, <ore:ingotEndSteel>], 
            [<ore:ingotEndSteel>, <ore:plateTitanium>, <ore:skullGuardianDiode>, <ore:plateTitanium>, <ore:ingotEndSteel>], 
            [null, null, null, null, null], 
            [null, null, null, null, null]
          ]);
        //ChestPlate
          mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:item_end_steel_chestplate>, [
            [<ore:ingotEndSteel>, null, null, null, <ore:ingotEndSteel>], 
            [<ore:ingotEndSteel>, <ore:ingotEndSteel>, null, <ore:ingotEndSteel>, <ore:ingotEndSteel>], 
            [<ore:plateTitanium>, <ore:ingotEndSteel>, <enderio:item_dark_steel_chestplate>, <ore:ingotEndSteel>, <ore:plateTitanium>], 
            [<ore:ingotEndSteel>, <ore:plateTitanium>, <ore:skullGuardianDiode>, <ore:plateTitanium>, <ore:ingotEndSteel>], 
            [null, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, null]
          ]);
        //Leggings
          mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:item_end_steel_leggings>, [
            [null, <ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>, null], 
            [null, <ore:ingotEndSteel>, <ore:skullGuardianDiode>, <ore:ingotEndSteel>, null], 
            [null, <ore:ingotEndSteel>, <enderio:item_dark_steel_leggings>, <ore:ingotEndSteel>, null], 
            [null, <ore:ingotEndSteel>, null, <ore:ingotEndSteel>, null], 
            [null, <ore:ingotEndSteel>, null, <ore:ingotEndSteel>, null]
          ]);
        //Boots
          mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:item_end_steel_boots>, [
            [null, null, null, null, null], 
            [null, null, null, null, null], 
            [null, <ore:ingotEndSteel>, <enderio:item_dark_steel_boots>, <ore:ingotEndSteel>, null], 
            [<ore:plateTitanium>, <ore:ingotEndSteel>, <ore:skullGuardianDiode>, <ore:ingotEndSteel>, <ore:plateTitanium>], 
            [<ore:plateTitanium>, <ore:ingotEndSteel>, null, <ore:ingotEndSteel>, <ore:plateTitanium>]
          ]);
      //Stellar Alloy
        //Helmet
          mods.extendedcrafting.TableCrafting.addShaped(3, <enderio:item_stellar_alloy_helmet>, [
            [<ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:plateDoubleTerrasteel>], 
            [<ore:ingotStellarAlloy>, <ore:plateDoubleTerrasteel>, <ore:circuitLuv>, <ore:skullSentientEnder>, <ore:circuitLuv>, <ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>], 
            [<ore:ingotStellarAlloy>, <ore:plateDoubleTerrasteel>, <mechtech:meta_item:1007>, <enderio:item_end_steel_helmet>, <mechtech:meta_item:1007>, <ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>], 
            [<ore:plateDoubleTerrasteel>, <ore:plateDoubleAstral>, null, null, null, <ore:plateDoubleAstral>, <ore:plateDoubleTerrasteel>], 
            [null, null, null, null, null, null, null], 
            [null, null, null, null, null, null, null], 
            [null, null, null, null, null, null, null]
          ]);
        //ChestPlate
          mods.extendedcrafting.TableCrafting.addShaped(3, <enderio:item_stellar_alloy_chestplate>, [
            [null, null, null, null, null, null, null], 
            [<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:plateDoubleAstral>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>], 
            [<ore:ingotStellarAlloy>, <ore:plateDoubleTerrasteel>, <ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>, <ore:plateDoubleTerrasteel>, <ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>], 
            [<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <mechtech:meta_item:1007>, <ore:skullSentientEnder>, <mechtech:meta_item:1007>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>], 
            [null, <ore:ingotStellarAlloy>, <ore:skullSentientEnder>, <enderio:item_end_steel_chestplate>, <ore:skullSentientEnder>, <ore:ingotStellarAlloy>, null], 
            [null, <ore:ingotStellarAlloy>, <mechtech:meta_item:1007>, <ore:skullSentientEnder>, <mechtech:meta_item:1007>, <ore:ingotStellarAlloy>, null], 
            [null, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, null]
          ]);
        //Leggings
          mods.extendedcrafting.TableCrafting.addShaped(3, <enderio:item_stellar_alloy_leggings>, [
            [null, <ore:plateDoubleAstral>, <ore:plateDoubleAstral>, <ore:plateDoubleAstral>, <ore:plateDoubleAstral>, <ore:plateDoubleAstral>, null], 
            [<ore:plateDoubleAstral>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:plateDoubleAstral>], 
            [<mechtech:meta_item:1007>, <ore:ingotStellarAlloy>, <ore:plateDoubleAstral>, <enderio:item_end_steel_leggings>, <ore:plateDoubleAstral>, <ore:ingotStellarAlloy>, <mechtech:meta_item:1007>], 
            [<mechtech:meta_item:1007>, <ore:ingotStellarAlloy>, <ore:plateDoubleTerrasteel>, <ore:skullSentientEnder>, <ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>, <mechtech:meta_item:1007>], 
            [<mechtech:meta_item:1007>, <ore:ingotStellarAlloy>, <ore:plateDoubleAstral>, null, <ore:plateDoubleAstral>, <ore:ingotStellarAlloy>, <mechtech:meta_item:1007>], 
            [<ore:plateNetherStar>, <ore:ingotStellarAlloy>, <ore:plateNetherStar>, null, <ore:plateNetherStar>, <ore:ingotStellarAlloy>, <ore:plateNetherStar>], 
            [<ore:plateNetherStar>, <ore:ingotStellarAlloy>, <ore:plateNetherStar>, null, <ore:plateNetherStar>, <ore:ingotStellarAlloy>, <ore:plateNetherStar>]
          ]);
        //Boots
          mods.extendedcrafting.TableCrafting.addShaped(3, <enderio:item_stellar_alloy_boots>, [
            [null, null, null, null, null, null, null], 
            [null, null, null, null, null, null, null], 
            [<ore:plateGlass>, <ore:plateDoubleAstral>, <ore:ingotStellarAlloy>, <mechtech:meta_item:1007>, <ore:ingotStellarAlloy>, <ore:plateDoubleAstral>, <ore:plateGlass>], 
            [<ore:plateGlass>, <ore:plateDoubleAstral>, <ore:ingotStellarAlloy>, <ore:skullSentientEnder>, <ore:ingotStellarAlloy>, <ore:plateDoubleAstral>, <ore:plateGlass>], 
            [<ore:plateDoubleAstral>, <ore:plateDoubleAstral>, <ore:ingotStellarAlloy>, <enderio:item_end_steel_boots>, <ore:ingotStellarAlloy>, <ore:plateDoubleAstral>, <ore:plateDoubleAstral>], 
            [<ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:skullSentientEnder>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:plateDoubleTerrasteel>], 
            [<ore:plateGlass>, <ore:plateDoubleTerrasteel>, <ore:plateDoubleTerrasteel>, <mechtech:meta_item:1007>, <ore:plateDoubleTerrasteel>, <ore:plateDoubleTerrasteel>, <ore:plateGlass>]
          ]);
    //Tools
      //DarkSteel
        //Sword
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_dark_steel_sword>, [
            [null, null, <ore:ingotDarkSteel>], 
            [craftingToolHardHammer, <ore:ingotDarkSteel>, <ore:plateAstral>], 
            [<ore:itemInfinityRod>, <ore:plateAstral>, craftingToolFile]
          ]);
        //Pickaxe
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_dark_steel_pickaxe>, [
            [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], 
            [craftingToolFile, <ore:itemInfinityRod>, craftingToolHardHammer], 
            [null, <ore:itemInfinityRod>, null]
          ]);
        //Axe
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_dark_steel_axe>, [
            [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, craftingToolHardHammer], 
            [<ore:ingotDarkSteel>, <ore:itemInfinityRod>, null], 
            [craftingToolFile, <ore:itemInfinityRod>, null]
          ]);
        //Bow
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_dark_steel_bow>, [
            [<ore:screwAstral>, <ore:ingotDarkSteel>, <ore:itemInfinityRod>], 
            [<ore:itemInfinityRod>, craftingToolScrewdriver, <ore:itemInfinityRod>], 
            [<ore:screwAstral>, <ore:ingotDarkSteel>, <ore:itemInfinityRod>]
          ]);
        //Shears
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_dark_steel_shears>, [
            [null, null, null], 
            [craftingToolHardHammer, <ore:ingotDarkSteel>, null], 
            [<ore:ingotDarkSteel>, craftingToolFile, null]
          ]);
        //Shield
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_dark_steel_shield>, [
            [<ore:ingotDarkSteel>, <ore:gearIronInfinity>, <ore:ingotDarkSteel>], 
            [craftingToolHardHammer, <minecraft:shield>, craftingToolFile], 
            [<ore:screwAstral>, <ore:ingotDarkSteel>, <ore:screwAstral>]
          ]);
        //Crook
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_dark_steel_crook>, [
            [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], 
            [craftingToolHardHammer, <ore:itemInfinityRod>, <ore:ingotDarkSteel>], 
            [null, <ore:itemInfinityRod>, craftingToolFile]
          ]);
        //BackHoe
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_dark_steel_hand>, [
            [<ore:itemInfinityRod>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], 
            [<ore:itemInfinityRod>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], 
            [<ore:itemInfinityRod>, craftingToolFile, craftingToolHardHammer]
          ]);
      //EndSteel
        //Sword
          mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:item_end_steel_sword>, [
            [null, null, null, null, <ore:ingotEndSteel>], 
            [null, null, null, <ore:ingotEndSteel>, null], 
            [<ore:itemChassiParts>, <ore:stickTitanium>, <ore:ingotEndSteel>, null, null], 
            [null, <enderio:item_dark_steel_sword>, <ore:stickTitanium>, null, null], 
            [<ore:itemInfinityRod>, null, <ore:itemChassiParts>, null, null]
          ]);
        //Picaxe
          mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:item_end_steel_pickaxe>, [
            [<ore:itemChassiParts>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:itemChassiParts>], 
            [<ore:ingotEndSteel>, null, <enderio:item_dark_steel_pickaxe>, null, <ore:ingotEndSteel>], 
            [null, null, <ore:stickTitanium>, null, null], 
            [null, null, <ore:itemInfinityRod>, null, null], 
            [null, null, <ore:stickTitanium>, null, null]
          ]);
        //Axe
          mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:item_end_steel_axe>, [
            [null, <ore:ingotEndSteel>, <ore:ingotEndSteel>, null, null], 
            [<ore:ingotEndSteel>, <ore:itemChassiParts>, <enderio:item_dark_steel_axe>, null, null], 
            [<ore:ingotEndSteel>, <ore:itemChassiParts>, <ore:stickTitanium>, null, null], 
            [<ore:ingotEndSteel>, null, <ore:itemInfinityRod>, null, null], 
            [null, null, <ore:stickTitanium>, null, null]
          ]);
        //Bow
          mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:item_end_steel_bow>, [
            [null, <ore:stickTitanium>, <ore:ingotEndSteel>, null, null], 
            [<ore:stickTitanium>, null, <ore:ingotEndSteel>, null, null], 
            [<enderio:item_dark_steel_bow>, null, <ore:itemInfinityRod>, null, null], 
            [<ore:stickTitanium>, null, <ore:ingotEndSteel>, null, null], 
            [null, <ore:stickTitanium>, <ore:ingotEndSteel>, null, null]
          ]);
        //Shield
          mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:item_end_steel_shield>, [
            [<ore:plateTitanium>, null, null, null, <ore:plateTitanium>], 
            [<ore:plateTitanium>, <ore:ingotEndSteel>, <ore:plateTitanium>, <ore:ingotEndSteel>, <ore:plateTitanium>], 
            [<ore:stickTitanium>, <ore:ingotEndSteel>, <enderio:item_dark_steel_shield>, <ore:ingotEndSteel>, <ore:stickTitanium>], 
            [null, <ore:ingotEndSteel>, <ore:skullGuardianDiode>, <ore:ingotEndSteel>, null], 
            [null, null, <ore:ingotEndSteel>, null, null]
          ]);
        //Staff of Livity
          assembler.recipeBuilder()
            .inputs([
              <enderio:item_travel_staff>,
              <enderio:item_material:19>,
              <gregtech:meta_item_1:282> * 2,
              <ore:circuitIv> * 8,
              <gregtech:meta_item_1:605> * 16,
              <enderio:item_material:44>
            ])
            .outputs(<enderio:item_staff_of_levity>)
            .EUt(2000)
            .duration(360)
            .buildAndRegister();
      //Stellar Alloy
        //Pickaxe
          mods.extendedcrafting.TableCrafting.addShaped(3, <enderio:item_stellar_alloy_pickaxe>, [
            [<ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:skullSentientEnder>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:plateDoubleTerrasteel>], 
            [<ore:ingotStellarAlloy>, <ore:plateNetherStar>, <ore:plateNetherStar>, <ore:stickLongAstral>, <ore:plateNetherStar>, <ore:plateNetherStar>, <ore:ingotStellarAlloy>], 
            [<ore:plateNetherStar>, null, null, <ore:ingotStellarAlloy>, null, null, <ore:plateNetherStar>], 
            [null, null, null, <enderio:item_end_steel_pickaxe>, null, null, null], 
            [null, null, null, <ore:stickLongAstral>, null, null, null], 
            [null, null, null, <ore:ingotStellarAlloy>, null, null, null], 
            [null, null, null, <ore:stickLongTerrasteel>, null, null, null]
          ]);
        //Axe
          mods.extendedcrafting.TableCrafting.addShaped(3, <enderio:item_stellar_alloy_axe>, [
            [null, <ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:plateNetherStar>, null], 
            [<ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:plateNetherStar>, null, null], 
            [<ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:stickLongAstral>, null, null, null], 
            [<ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>, null, <enderio:item_end_steel_axe>, null, null, null], 
            [<ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>, null, <ore:skullSentientEnder>, null, null, null], 
            [<ore:plateNetherStar>, null, null, <ore:stickLongAstral>, null, null, null], 
            [null, null, null, <ore:stickLongAstral>, null, null, null]
          ]);
        //Sword
          mods.extendedcrafting.TableCrafting.addShaped(3, <enderio:item_stellar_alloy_sword>, [
            [null, null, null, null, null, <ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>], 
            [null, null, null, null, <ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>, <ore:plateDoubleAstral>], 
            [null, null, null, <ore:plateDoubleTerrasteel>, <enderio:item_capacitor_stellar>, <ore:plateDoubleAstral>, null], 
            [null, <ore:plateNetherStar>, <ore:plateDoubleTerrasteel>, <ore:ingotStellarAlloy>, <ore:plateDoubleAstral>, null, null], 
            [<ore:plateNetherStar>, <ore:ingotStellarAlloy>, <ore:skullSentientEnder>, <ore:plateDoubleAstral>, null, null, null], 
            [null, <enderio:item_end_steel_sword>, <ore:ingotStellarAlloy>, <ore:plateNetherStar>, null, null, null], 
            [<ore:stickLongAstral>, null, <ore:plateNetherStar>, null, null, null, null]
          ]);
      //Other Tools
        //Yeta Wernch
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_yeta_wrench>, [
            [null, <ore:stickBismuthBronze>, <ore:ingotEnergeticAlloy>], 
            [null, <ore:gearSelenium>, <ore:stickBismuthBronze>], 
            [<ore:stickBismuthBronze>, null, null]
          ]);
        //Coordinate Selector
          assembler.recipeBuilder()
            .inputs([
              <gregtech:meta_item_1:235>,
              <gregtech:meta_item_1:261> * 2,
              <ore:circuitIv> * 2,
              <enderio:item_material:71> * 2,
              <enderio:item_material:42> * 2
            ])
            .outputs(<enderio:item_coord_selector>)
            .EUt(1000)
            .duration(120)
            .buildAndRegister();
        //Staff of Traveling
          assembler.recipeBuilder()
            .inputs([
              <enderio:item_material:71> * 2,
              <enderio:item_material:16>,
              <enderio:item_material:12> * 2,
              <gregtech:meta_item_1:282>,
              <ore:circuitEv> * 2
            ])
            .outputs(<enderio:item_travel_staff>)
            .EUt(480)
            .duration(200)
            .buildAndRegister();
        //Rod of Return
          assembler.recipeBuilder()
            .inputs([
              <enderio:item_material:71> * 2,
              <enderio:item_material:16>,
              <enderio:item_material:13> * 2,
              <gregtech:meta_item_1:282>,
              <ore:circuitIv> * 4
            ])
            .outputs(<enderio:item_rod_of_return>)
            .EUt(1920)
            .duration(240)
            .buildAndRegister();
        //Electromagnet   
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_magnet>, [
            [<gregtech:meta_item_1:98>, <ore:stickSteelMagnetic>, <gregtech:meta_item_1:98>], 
            [<ore:ingotEnergeticAlloy>, <enderio:item_basic_capacitor>, <ore:ingotEnergeticAlloy>], 
            [<ore:stickSteelMagnetic>, <ore:circuitMv>, <ore:stickSteelMagnetic>]
          ]);
        //Conduit Probe
          mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_conduit_probe>, [
            [<ore:itemInfinityRod>, null, <ore:itemInfinityRod>], 
            [<gregtech:meta_item_1:592>, <ore:skullZombieElectrode>, <gregtech:meta_item_1:592>], 
            [<gregtech:meta_item_1:307>, <ore:circuitHv>, <gregtech:meta_item_1:307>]
          ]);       
  //Filters
    //Item
      //Nomal
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_basic_item_filter>, [
          [<ore:itemSimpleChassiParts>, <ore:circuitMv>, <ore:itemSimpleChassiParts>], 
          [<gregtech:meta_item_1:592>, <gregtech:meta_item_1:291>, <gregtech:meta_item_1:593>], 
          [<ore:barsIron>, <ore:barsIron>, <ore:barsIron>]
        ]);
      //Advanced
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_advanced_item_filter>, [
          [<ore:circuitMv>, <ore:itemChassiParts>, <ore:circuitMv>], 
          [<gregtech:meta_item_1:291>, <enderio:item_basic_item_filter>, <gregtech:meta_item_1:291>], 
          [<ore:circuitMv>, <gregtech:meta_item_1:292>, <ore:circuitMv>]
        ]);
      //Limited
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_limited_item_filter>, [
          [<ore:circuitHv>, <ore:itemChassiParts>, <ore:circuitHv>], 
          [<gregtech:meta_item_1:292>, <enderio:item_advanced_item_filter>, <gregtech:meta_item_1:292>], 
          [<ore:circuitHv>, <gregtech:meta_item_1:293>, <ore:circuitHv>]
        ]);
      //Big
        assembler.recipeBuilder()
          .inputs([
            <enderio:item_limited_item_filter>,
            <enderio:item_material:40>,
            <enderio:item_material:45>,
            <enderio:block_dark_iron_bars> * 2,
            <enderio:item_material:2> * 2,
            <gregtech:meta_item_1:293>,
            <ore:circuitHv> * 4
          ])
          .outputs(<enderio:item_big_item_filter>)
          .EUt(200)
          .duration(200)
          .buildAndRegister();
      //Advanced Big
        assembler.recipeBuilder()
          .inputs([
            <enderio:item_big_item_filter>,
            <enderio:item_material:41>,
            <enderio:item_material:45> * 2,
            <enderio:block_dark_iron_bars> * 8,
            <enderio:item_material:2> * 4,
            <ore:circuitEv> * 4,
            <enderio:item_material:12> * 2,
            <enderio:item_material:13> * 2
          ])
          .outputs(<enderio:item_big_advanced_item_filter>)
          .EUt(200)
          .duration(200)
          .buildAndRegister();
      //Existing
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_existing_item_filter>, [
          [<ore:torchRedstoneActive>, <ore:circuitHv>, <ore:torchRedstoneActive>], 
          [<gregtech:meta_item_1:291>, <enderio:item_advanced_item_filter>, <gregtech:meta_item_1:301>], 
          [<ore:torchRedstoneActive>, <ore:circuitHv>, <ore:torchRedstoneActive>]
        ]);
      //MOD ID
        assembler.recipeBuilder()
          .inputs([
            <enderio:item_advanced_item_filter>,
            <ore:circuitHv> * 4,
            <gregtech:meta_item_1:261> * 4,
            <opencomputers:component:16>,
            <opencomputers:card:11>,
            <gregtech:meta_item_1:465>,
            <projectred-fabrication:ic_chip>
          ])
          .outputs(<enderio:item_mod_item_filter>)
          .EUt(200)
          .duration(260)
          .buildAndRegister();
      //Power
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_power_item_filter>, [
          [<ore:circuitMv>, <ore:skullSkeletalContractor>, <ore:circuitMv>], 
          [<gregtech:meta_item_1:602>, <enderio:item_basic_item_filter>, <gregtech:meta_item_1:602>], 
          [<ore:circuitMv>, <ore:barsIron>, <ore:circuitMv>]
        ]);
    //Soul
      //Nomal
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_soul_filter_normal>, [
          [<enderio:block_dark_iron_bars>, <enderio:item_soul_vial>, <enderio:block_dark_iron_bars>], 
          [<ore:circuitHv>, <enderio:item_advanced_item_filter>, <ore:circuitHv>], 
          [<ore:skullSkeletalContractor>, <ore:skullZombieController>, <ore:skullSkeletalContractor>]
        ]);
      //Advanced
        assembler.recipeBuilder()
          .inputs([
            <enderio:item_soul_filter_normal>,
            <enderio:block_dark_iron_bars> * 4,
            <ore:circuitEv> * 4,
            <enderio:item_material:2> * 4,
            <enderio:item_material:40> * 2,
            <enderio:item_material:43> * 2,
            <enderio:item_material:56> * 2,
            <enderio:item_material:45> * 2
          ])
          .outputs(<enderio:item_soul_filter_big>)
          .EUt(200)
          .duration(240)
          .buildAndRegister();
    //Enchantment
      //Nomal
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_enchantment_filter_normal>, [
          [<enderio:block_dark_iron_bars>, <ore:bookshelfOak>, <enderio:block_dark_iron_bars>], 
          [<ore:circuitHv>, <enderio:item_advanced_item_filter>, <ore:circuitHv>], 
          [<ore:skullSkeletalContractor>, <ore:skullZombieController>, <ore:skullSkeletalContractor>]
        ]);
      //Advanced
        assembler.recipeBuilder()
          .inputs([
            <enderio:item_enchantment_filter_normal>,
            <enderio:block_dark_iron_bars> * 4,
            <ore:circuitEv> * 4,
            <enderio:item_material:2> * 4,
            <enderio:item_material:40> * 2,
            <enderio:item_material:43> * 2,
            <enderio:item_material:56> * 2,
            <enderio:item_material:45> * 2
          ])
          .outputs(<enderio:item_enchantment_filter_big>)
          .EUt(200)
          .duration(320)
          .buildAndRegister();
    //Fluid
      //Nomal
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_fluid_filter>, [
          [<gregtech:meta_item_1:290>, <ore:circuitMv>, <gregtech:meta_item_1:290>], 
          [<minecraft:bucket>, <enderio:item_basic_item_filter>, <minecraft:bucket>], 
          [<gregtech:meta_item_1:290>, <ore:circuitMv>, <gregtech:meta_item_1:290>]
        ]);
  //Others
    //Ladders
      //DarkSteel
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_dark_steel_ladder> * 2, [
          [<ore:itemInfinityRod>, <ore:screwAstral>, <ore:itemInfinityRod>], 
          [<ore:itemInfinityRod>, <ore:ingotDarkSteel>, <ore:itemInfinityRod>], 
          [<ore:itemInfinityRod>, <ore:screwAstral>, <ore:itemInfinityRod>]
        ]);
    //Bars
      //Darksteel
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_dark_iron_bars>, [
          [<ore:itemInfinityRod>, <ore:screwAstral>, <ore:itemInfinityRod>], 
          [<ore:ingotDarkSteel>, <ore:stickAstral>, <ore:ingotDarkSteel>], 
          [<ore:itemInfinityRod>, <ore:screwAstral>, <ore:itemInfinityRod>]
        ]);
      //Endsteel
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_end_iron_bars>, [
          [<ore:itemInfinityRod>, <ore:ingotEndSteel>, <ore:itemInfinityRod>], 
          [<ore:itemInfinityRod>, <enderio:block_dark_iron_bars>, <ore:itemInfinityRod>], 
          [<ore:itemInfinityRod>, <ore:ingotEndSteel>, <ore:itemInfinityRod>]
        ]);
    //TrapDoor
      //DarkSteel
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_dark_steel_trapdoor>, [
          [<ore:stickAstral>, <ore:plateAstral>, <ore:stickAstral>], 
          [<ore:itemInfinityRod>, <ore:ingotDarkSteel>, <ore:itemInfinityRod>], 
          [<ore:ingotDarkSteel>, <ore:itemInfinityRod>, <ore:ingotDarkSteel>]
        ]);
    //Reinforced Obsidian
      assembler.recipeBuilder()
        .inputs([
          <enderio:block_dark_iron_bars> * 4,
          <enderio:item_alloy_ingot:6> * 4,
          <minecraft:obsidian> * 4,
          <enderio:item_material:69> * 4,
          <enderio:item_material:20> * 4
        ])
        .fluidInputs(<liquid:concrete> * 1000)
        .outputs(<enderio:block_reinforced_obsidian> * 2)
        .EUt(480)
        .duration(1200)
        .buildAndRegister();
    //DrakSteelDoor
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_dark_steel_door>, [
        [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, craftingToolHardHammer], 
        [<ore:ingotDarkSteel>, <ore:doorIron>, <ore:gearIronInfinity>], 
        [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, craftingToolScrewdriver]
      ]);
    //DarkSteel Anvil
      assembler.recipeBuilder()
        .inputs([
          <enderio:block_alloy:6> * 4,
          <enderio:item_alloy_ingot:6> * 5,
          <gregtech:meta_screw:113> * 4,
          <gregtech:meta_plate:113> * 8,
          <enderio:item_material:68> * 4
        ])
        .fluidInputs(<liquid:steel> * 1152)
        .outputs(<enderio:block_dark_steel_anvil>)
        .EUt(480)
        .duration(1600)
        .buildAndRegister();
    //Conduit Upgrade
      mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:item_extract_speed_upgrade>, [
        [<gregtech:meta_item_1:127>, <gregtech:meta_item_1:172>, <gregtech:meta_item_1:127>], 
        [<ore:itemSimpleChassiParts>, <ore:craftingPiston>, <ore:itemSimpleChassiParts>], 
        [<gregtech:meta_item_1:127>, <gregtech:meta_item_1:157>, <gregtech:meta_item_1:127>]
      ]);
    //Glasses
      //Clear
        alloy_smelter.recipeBuilder()
          .inputs([
            <gregtech:meta_dust:2000>,
            <gregtech:meta_dust:214>
          ])
          .outputs([<enderio:block_fused_glass>])
          .EUt(64)
          .duration(40)
          .buildAndRegister();
      //Quartz
        alloy_smelter.recipeBuilder()
          .inputs([
            <enderio:block_fused_glass>,
            <minecraft:quartz_block>
          ])
          .outputs([<enderio:block_fused_quartz>])
          .EUt(64)
          .duration(60)
          .buildAndRegister();
      //Infinity Water
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_reservoir>, [
          [<ore:blockGlassHardened>, <gregtech:meta_item_1:247>, <ore:blockGlassHardened>], 
          [<ore:listAllwater>, <minecraft:cauldron>, <ore:listAllwater>], 
          [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>]
        ]);
      //Exp Rod
        assembler.recipeBuilder()
          .inputs([
            <enderio:item_material:71> * 4,
            <enderio:item_alloy_ingot:1> * 6,
            <enderio:item_alloy_ingot:7> * 2,
            <enderio:item_alloy_ingot:7>
          ])
          .outputs(<enderio:item_xp_transfer>)
          .fluidInputs(<liquid:xpjuice> * 1000)
          .EUt(480)
          .duration(160)
          .buildAndRegister();
      //Cable facade
        chem_bath.recipeBuilder()
          .inputs(<enderio:item_material:4>)
          .outputs(<enderio:item_conduit_facade> * 8)
          .fluidInputs(<liquid:concrete> * 1000)
          .EUt(24)
          .duration(120)
          .buildAndRegister();
      //Cable facade(Hard)
        chem_bath.recipeBuilder()
          .inputs(<enderio:item_conduit_facade>)
          .outputs(<enderio:item_conduit_facade:1>)
          .fluidInputs(<liquid:obsidian> * 144)
          .EUt(24)
          .duration(120)
          .buildAndRegister();
  //Machines
    //Teleporters
      //Dimensional Transceiver
        mmRecipe("Dimensional_Transceiver", "Prototype_Assembling_Line", 800) //RecipeName UseMachine RecipeTick
          .addEnergyPerTickInput(16384)//EnergyInput
          .addItemInput(<enderio:item_material:55> * 2)//1
          .addItemInput(<enderio:item_material:43> * 4)//2
          .addItemInput(<enderio:item_basic_capacitor:2> * 2)//3
          .addItemInput(<gregtech:meta_item_1:205> * 4)//4
          .addItemInput(<gregtech:meta_item_1:282> * 4)//5
          .addItemInput(<enderio:item_material:16> * 2)//6
          .addItemInput(<gregtech:meta_item_1:635> * 4)//7
          .addItemInput(<gregtech:meta_item_1:634> * 8)//8
          .addItemInput(<astralsorcery:itemcraftingcomponent:4> * 8)//9
          .addItemInput(<gregtech:meta_plate:1602> * 4)//10
          .addFluidInput(<liquid:pulsating_iron> * 1152)//1
          .addItemOutput(<enderio:block_transceiver> * 2)//OutPutItem
          .build();//BuildRecipe
      //TelePad
        assline.recipeBuilder()
          .inputs([
            <enderio:item_material:54> * 9,
            <enderio:item_material:16> * 36,
            <enderio:item_material:44> * 9,
            <enderio:item_material:13> * 63,
            <enderio:item_material:2> * 45,
            <gregtech:meta_item_1:207> * 9,
            <gregtech:meta_item_1:237> * 18,
            <gregtech:meta_item_1:222> * 18,
            <ore:circuitUv> * 9,
            <ore:circuitZpm> * 18,
            <gregtech:meta_item_1:282> * 36,
            <draconicevolution:wyvern_core> * 18,
            <gregtech:meta_item_1:501>
          ])
          .outputs([<enderio:block_tele_pad> * 9])
          .fluidInputs([<liquid:naquadah_enriched> * 14400])
          .EUt(262144)
          .duration(1800)
          .property("cleanroom", "cleanroom")
          .buildAndRegister();
      //とらべるあんかー
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_travel_anchor>, [
          [<ore:itemChassiParts>, <ore:itemEnderCrystal>, <ore:itemChassiParts>], 
          [<gregtech:meta_item_1:203>, <ore:itemMachineChassi>, <gregtech:meta_item_1:203>], 
          [<ore:itemChassiParts>, <ore:itemEnderCrystal>, <ore:itemChassiParts>]
        ]);
    //Hoppers
      //Implse
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_impulse_hopper>, [
          [<gregtech:meta_item_1:293>, <enderio:block_dark_iron_bars>, <gregtech:meta_item_1:293>], 
          [<ore:itemChassiParts>, <ore:itemSoulMachineChassi>, <ore:itemChassiParts>], 
          [<ore:gearEnergized>, <enderio:block_vacuum_chest>, <ore:gearEnergized>]
        ]);
      //Vaccum
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_vacuum_chest>, [
          [<gregtech:meta_item_1:99>, <ore:chest>, <gregtech:meta_item_1:99>], 
          [<ore:itemChassiParts>, <ore:itemPulsatingCrystal>, <ore:itemChassiParts>], 
          [<gregtech:meta_item_1:99>, <ore:chest>, <gregtech:meta_item_1:99>]
        ]);
      //Xp
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_xp_vacuum>, [
          [null, <enderio:item_xp_transfer>, null], 
          [<ore:circuitEv>, <enderio:block_vacuum_chest>, <ore:circuitEv>], 
          [null, null, null]
        ]);
    //Graphical Energy Monitor
      //Nomal
        mods.extendedcrafting.TableCrafting.addShaped(1, <enderio:block_power_monitor>, [
          [<ore:ingotElectricalSteel>, <enderio:item_conduit_probe>, <ore:ingotElectricalSteel>], 
          [<ore:ingotDarkSteel>, <ore:itemMachineChassi>, <ore:ingotDarkSteel>], 
          [<ore:ingotElectricalSteel>, <enderio:item_power_conduit:1>, <ore:ingotElectricalSteel>]
        ]);
      //Advanced
        assembler.recipeBuilder()
          .inputs([
            <enderio:block_power_monitor>,
            <gregtech:meta_item_1:307> * 4,
            <opencomputers:card:3> * 2,
            <gregtech:machine:1667>
          ])
          .outputs(<enderio:block_advanced_power_monitor>)
          .EUt(320)
          .duration(160)
          .buildAndRegister();
    //Soul machines
      //Slice'N' Splice
        mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:block_slice_and_splice>, [
          [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:ingotSoularium>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>], 
          [<ore:circuitEv>, <ore:gearEnergized>, <gregtech:meta_item_1:129>, <ore:gearEnergized>, <ore:circuitEv>], 
          [<ore:ingotSoularium>, <ore:toolHeadBuzzSawUltimet>, <ore:itemSoulMachineChassi>, <gregtech:meta_item_1:189>, <ore:ingotSoularium>], 
          [<ore:circuitEv>, <ore:gearEnergized>, <enderio:block_dark_iron_bars>, <ore:gearEnergized>, <ore:circuitEv>], 
          [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:ingotSoularium>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]
        ]);
      //Soul Binder
        mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:block_soul_binder>, [
          [null, <ore:ingotSoularium>, <enderio:item_soul_vial>, <ore:ingotSoularium>, null], 
          [<ore:ingotSoularium>, <ore:circuitEv>, <ore:itemSkull>, <ore:circuitEv>, <ore:ingotSoularium>], 
          [<ore:gearEnergized>, <ore:itemSkull>, <ore:itemSoulMachineChassi>, <ore:itemSkull>, <ore:gearEnergized>], 
          [<ore:ingotSoularium>, <ore:circuitEv>, <ore:itemSkull>, <ore:circuitEv>, <ore:ingotSoularium>], 
          [null, <ore:ingotSoularium>, <enderio:item_soul_vial>, <ore:ingotSoularium>, null]
        ]);
      //Auto Spawner
        mods.extendedcrafting.TableCrafting.addShaped(2, <enderio:block_powered_spawner>, [
          [<enderio:item_basic_capacitor:2>, <ore:itemVibrantCrystal>, <ore:ingotSoularium>, <ore:itemVibrantCrystal>, <enderio:item_basic_capacitor:2>], 
          [<ore:itemVibrantCrystal>, <ore:gearVibrant>, <ore:skullSentientEnder>, <ore:gearVibrant>, <ore:itemVibrantCrystal>], 
          [<ore:ingotSoularium>, <ore:circuitIv>, <ore:itemUnsouledMachineChassi>, <ore:circuitIv>, <ore:ingotSoularium>], 
          [<ore:itemVibrantCrystal>, <ore:gearVibrant>, <ore:skullZombieFrankenstein>, <ore:gearVibrant>, <ore:itemVibrantCrystal>], 
          [<enderio:item_basic_capacitor:2>, <ore:itemVibrantCrystal>, <ore:ingotSoularium>, <ore:itemVibrantCrystal>, <enderio:item_basic_capacitor:2>]
        ]);
          
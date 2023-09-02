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

print("------U2luZ3VsYXJpdHk=_LOADING_START------");

//Remove U2luZ3VsYXJpdHk=
  //404 Not Founaｰ(B
//ADDJ)�V���
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:15>, [
      [<ore:compressed8xCobblestone>, <ore:compressed8xCobblestone>, <gregtech:meta_item_1:497>, <ore:ingotHotDraconiumawakened>, <ore:circuitUhv>, <ore:ingotHotDraconiumawakened>, <gregtech:meta_item_1:497>, <ore:compressed8xCobblestone>, <ore:compressed8xCobblestone>], 
      [<ore:compressed8xCobblestone>, <gregtech:meta_item_1:497>, <ore:blockCosmicNeutronium>, <ore:circuitUhv>, <gregtech:meta_item_1:606>, <ore:circuitUhv>, <ore:blockCosmicNeutronium>, <gregtech:meta_item_1:497>, <ore:compressed8xCobblestone>], 
      [<gregtech:meta_item_1:497>, <ore:blockCosmicNeutronium>, <ore:blockCosmicNeutronium>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:701>, <gregtech:meta_item_1:606>, <ore:blockCosmicNeutronium>, <ore:blockCosmicNeutronium>, <gregtech:meta_item_1:497>], 
      [<ore:ingotHotDraconiumawakened>, <ore:circuitUhv>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:701>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:701>, <gregtech:meta_item_1:606>, <ore:circuitUhv>, <ore:ingotHotDraconiumawakened>], 
      [<ore:circuitUhv>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:701>, <gregtech:meta_item_1:606>, <botania_tweaks:compressed_tiny_potato_8>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:701>, <gregtech:meta_item_1:606>, <ore:circuitUhv>], 
      [<ore:ingotHotDraconiumawakened>, <ore:circuitUhv>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:701>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:701>, <gregtech:meta_item_1:606>, <ore:circuitUhv>, <ore:ingotHotDraconiumawakened>], 
      [<gregtech:meta_item_1:497>, <ore:blockCosmicNeutronium>, <ore:blockCosmicNeutronium>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:701>, <gregtech:meta_item_1:606>, <ore:blockCosmicNeutronium>, <ore:blockCosmicNeutronium>, <gregtech:meta_item_1:497>], 
      [<ore:compressed8xCobblestone>, <gregtech:meta_item_1:497>, <ore:blockCosmicNeutronium>, <ore:circuitUhv>, <gregtech:meta_item_1:606>, <ore:circuitUhv>, <ore:blockCosmicNeutronium>, <gregtech:meta_item_1:497>, <ore:compressed8xCobblestone>], 
      [<ore:compressed8xCobblestone>, <ore:compressed8xCobblestone>, <gregtech:meta_item_1:497>, <ore:ingotHotDraconiumawakened>, <ore:circuitUhv>, <ore:ingotHotDraconiumawakened>, <gregtech:meta_item_1:497>, <ore:compressed8xCobblestone>, <ore:compressed8xCobblestone>]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:14>, [
      [<ore:ingotCosmicNeutronium>, <extendedcrafting:singularity:2>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <astralsorcery:itemcraftingcomponent:3>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <extendedcrafting:singularity:2>, <ore:ingotCosmicNeutronium>], 
      [<extendedcrafting:singularity:2>, <astralsorcery:itemcoloredlens:3>, <astralsorcery:iteminfusedglass>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <ore:dustAstralStarmetal>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <astralsorcery:iteminfusedglass>, <astralsorcery:itemcoloredlens:2>, <extendedcrafting:singularity:2>], 
      [<ore:ingotStellarAlloy>, <astralsorcery:iteminfusedglass>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.aevitas"}}), <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <astralsorcery:iteminfusedglass>, <ore:ingotStellarAlloy>], 
      [<ore:ingotStellarAlloy>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <astralsorcery:itemcraftingcomponent:4>, <ore:runeSummerB>, <ore:dustAstralStarmetal>, <ore:runeWinterB>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <ore:ingotStellarAlloy>], 
      [<astralsorcery:itemcoloredlens:4>, <astralsorcery:itemshiftingstar>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}), <ore:dustAstralStarmetal>, <avaritia:singularity:4>, <ore:dustAstralStarmetal>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}), <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.evorsio"}}), <astralsorcery:itemcoloredlens:6>], 
      [<ore:ingotStellarAlloy>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <astralsorcery:itemcraftingcomponent:4>, <ore:runeSpringB>, <ore:dustAstralStarmetal>, <ore:runeAutumnB>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <ore:ingotStellarAlloy>], 
      [<ore:ingotStellarAlloy>, <astralsorcery:iteminfusedglass>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}), <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <astralsorcery:iteminfusedglass>, <ore:ingotStellarAlloy>], 
      [<extendedcrafting:singularity:2>, <astralsorcery:itemcoloredlens>, <astralsorcery:iteminfusedglass>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <ore:dustAstralStarmetal>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <astralsorcery:iteminfusedglass>, <astralsorcery:itemcoloredlens:1>, <extendedcrafting:singularity:2>], 
      [<ore:ingotCosmicNeutronium>, <extendedcrafting:singularity:2>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <astralsorcery:itemcoloredlens:5>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <extendedcrafting:singularity:2>, <ore:ingotCosmicNeutronium>]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:13>, [
      [<minecraft:magma>, <minecraft:magma>, <ore:blockSkyStone>, <ore:ingotCosmicNeutronium>, <extendedcrafting:singularity>, <ore:ingotCosmicNeutronium>, <ore:blockSkyStone>, <minecraft:magma>, <minecraft:magma>], 
      [<minecraft:magma>, <ore:blockObsidian>, <ore:blockObsidian>, <ore:blockObsidian>, <ore:railBed>, <ore:blockObsidian>, <ore:blockObsidian>, <ore:blockObsidian>, <minecraft:magma>], 
      [<ore:blockSkyStone>, <ore:blockObsidian>, <ore:railBed>, <ore:blockSkyStone>, <ore:dustPetrotheum>, <ore:blockSkyStone>, <ore:railBed>, <ore:blockObsidian>, <ore:blockSkyStone>], 
      [<ore:ingotCosmicNeutronium>, <ore:blockObsidian>, <ore:blockSkyStone>, <ore:railBed>, <ore:dustPetrotheum>, <ore:railBed>, <ore:blockSkyStone>, <ore:blockObsidian>, <ore:ingotCosmicNeutronium>], 
      [<extendedcrafting:singularity>, <ore:railBed>, <ore:dustPetrotheum>, <ore:dustPetrotheum>, <avaritia:singularity:10>, <ore:dustPetrotheum>, <ore:dustPetrotheum>, <ore:railBed>, <extendedcrafting:singularity>], 
      [<ore:ingotCosmicNeutronium>, <ore:blockObsidian>, <ore:blockSkyStone>, <ore:railBed>, <ore:dustPetrotheum>, <ore:railBed>, <ore:blockSkyStone>, <ore:blockObsidian>, <ore:ingotCosmicNeutronium>], 
      [<ore:blockSkyStone>, <ore:blockObsidian>, <ore:railBed>, <ore:blockSkyStone>, <ore:dustPetrotheum>, <ore:blockSkyStone>, <ore:railBed>, <ore:blockObsidian>, <ore:blockSkyStone>], 
      [<minecraft:magma>, <ore:blockObsidian>, <ore:blockObsidian>, <ore:blockObsidian>, <ore:railBed>, <ore:blockObsidian>, <ore:blockObsidian>, <ore:blockObsidian>, <minecraft:magma>], 
      [<minecraft:magma>, <minecraft:magma>, <ore:blockSkyStone>, <ore:ingotCosmicNeutronium>, <extendedcrafting:singularity>, <ore:ingotCosmicNeutronium>, <ore:blockSkyStone>, <minecraft:magma>, <minecraft:magma>]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:12>, [
      [<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:blockPackedIce>, <ore:blockPackedIce>, <ore:blockPackedIce>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
      [<ore:ingotCosmicNeutronium>, <ore:runeWaterB>, <ore:blockPackedIce>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <ore:blockPackedIce>, <ore:runeWaterB>, <ore:ingotCosmicNeutronium>], 
      [<ore:ingotCosmicNeutronium>, <ore:blockPackedIce>, <ore:runeWaterB>, <ore:oreCrystalWater>, <ore:runeWaterB>, <ore:oreCrystalWater>, <ore:runeWaterB>, <ore:blockPackedIce>, <ore:ingotCosmicNeutronium>], 
      [<ore:blockPackedIce>, <avaritia:resource>, <ore:oreCrystalWater>, <ore:oreCrystalWater>, <ore:runeWaterB>, <ore:oreCrystalWater>, <ore:oreCrystalWater>, <avaritia:resource>, <ore:blockPackedIce>], 
      [<ore:blockPackedIce>, <avaritia:resource>, <ore:runeWaterB>, <ore:runeWaterB>, <avaritia:singularity:2>, <ore:runeWaterB>, <ore:runeWaterB>, <avaritia:resource>, <ore:blockPackedIce>], 
      [<ore:blockPackedIce>, <avaritia:resource>, <ore:oreCrystalWater>, <ore:oreCrystalWater>, <ore:runeWaterB>, <ore:oreCrystalWater>, <ore:oreCrystalWater>, <avaritia:resource>, <ore:blockPackedIce>], 
      [<ore:ingotCosmicNeutronium>, <ore:blockPackedIce>, <ore:runeWaterB>, <ore:oreCrystalWater>, <ore:runeWaterB>, <ore:oreCrystalWater>, <ore:runeWaterB>, <ore:blockPackedIce>, <ore:ingotCosmicNeutronium>], 
      [<ore:ingotCosmicNeutronium>, <ore:runeWaterB>, <ore:blockPackedIce>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <ore:blockPackedIce>, <ore:runeWaterB>, <ore:ingotCosmicNeutronium>], 
      [<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:blockPackedIce>, <ore:blockPackedIce>, <ore:blockPackedIce>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:11>, [
      [<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <deepmoblearning:infused_ingot_block>, <ore:blockCosmicNeutronium>, <gregtech:meta_item_1:283>, <ore:blockCosmicNeutronium>, <deepmoblearning:infused_ingot_block>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
      [<ore:ingotCosmicNeutronium>, <deepmoblearning:infused_ingot_block>, <ore:blockDraconiumAwakened>, <ore:plateDoubleAntimatter>, <gregtech:meta_item_1:283>, <ore:plateDoubleAntimatter>, <ore:blockDraconiumAwakened>, <deepmoblearning:infused_ingot_block>, <ore:ingotCosmicNeutronium>], 
      [<deepmoblearning:infused_ingot_block>, <ore:blockDraconiumAwakened>, <ore:blockCosmicNeutronium>, <ore:plateDoubleAntimatter>, <gregtech:meta_item_1:282>, <ore:plateDoubleAntimatter>, <ore:blockCosmicNeutronium>, <ore:blockDraconiumAwakened>, <deepmoblearning:infused_ingot_block>], 
      [<ore:blockCosmicNeutronium>, <ore:plateDoubleAntimatter>, <ore:plateDoubleAntimatter>, <avaritia:singularity:11>, <gregtech:meta_item_1:282>, <avaritia:singularity:1>, <ore:plateDoubleAntimatter>, <ore:plateDoubleAntimatter>, <ore:blockCosmicNeutronium>], 
      [<gregtech:meta_item_1:283>, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:282>, <avaritia:resource:5>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:282>, <gregtech:meta_item_1:283>, <gregtech:meta_item_1:283>], 
      [<ore:blockCosmicNeutronium>, <ore:plateDoubleAntimatter>, <ore:plateDoubleAntimatter>, <avaritia:singularity:13>, <gregtech:meta_item_1:282>, <avaritia:singularity:14>, <ore:plateDoubleAntimatter>, <ore:plateDoubleAntimatter>, <ore:blockCosmicNeutronium>], 
      [<deepmoblearning:infused_ingot_block>, <ore:blockDraconiumAwakened>, <ore:blockCosmicNeutronium>, <ore:plateDoubleAntimatter>, <gregtech:meta_item_1:282>, <ore:plateDoubleAntimatter>, <ore:blockCosmicNeutronium>, <ore:blockDraconiumAwakened>, <deepmoblearning:infused_ingot_block>], 
      [<ore:ingotCosmicNeutronium>, <deepmoblearning:infused_ingot_block>, <ore:blockDraconiumAwakened>, <ore:plateDoubleAntimatter>, <gregtech:meta_item_1:283>, <ore:plateDoubleAntimatter>, <ore:blockDraconiumAwakened>, <deepmoblearning:infused_ingot_block>, <ore:ingotCosmicNeutronium>], 
      [<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <deepmoblearning:infused_ingot_block>, <ore:blockCosmicNeutronium>, <gregtech:meta_item_1:283>, <ore:blockCosmicNeutronium>, <deepmoblearning:infused_ingot_block>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:10>, [
      [<avaritia:singularity:3>, <gregtech:meta_item_1:134>, <ore:circuitUhv>, <gregtech:meta_item_1:239>, <ore:circuitUhv>, <gregtech:meta_item_1:239>, <ore:circuitUhv>, <gregtech:meta_item_1:134>, <avaritia:singularity:3>], 
      [<gregtech:meta_item_1:134>, <gregtech:meta_item_1:164>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:209>, <ore:circuitUev>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:164>, <gregtech:meta_item_1:134>], 
      [<ore:circuitUhv>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:164>, <gregtech:meta_item_1:194>, <ore:circuitUiv>, <gregtech:meta_item_1:194>, <gregtech:meta_item_1:164>, <gregtech:meta_item_1:209>, <ore:circuitUhv>], 
      [<gregtech:meta_item_1:224>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:194>, <gregtech:meta_item_1:254>, <ore:circuitUxv>, <gregtech:meta_item_1:254>, <gregtech:meta_item_1:194>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:224>], 
      [<ore:circuitUhv>, <ore:circuitUev>, <ore:circuitUiv>, <ore:circuitUxv>, <avaritia:singularity>, <ore:circuitUxv>, <ore:circuitUiv>, <ore:circuitUev>, <ore:circuitUhv>], 
      [<gregtech:meta_item_1:224>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:194>, <gregtech:meta_item_1:254>, <ore:circuitUxv>, <gregtech:meta_item_1:254>, <gregtech:meta_item_1:194>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:224>], 
      [<ore:circuitUhv>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:164>, <gregtech:meta_item_1:194>, <ore:circuitUiv>, <gregtech:meta_item_1:194>, <gregtech:meta_item_1:164>, <gregtech:meta_item_1:209>, <ore:circuitUhv>], 
      [<gregtech:meta_item_1:134>, <gregtech:meta_item_1:164>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:209>, <ore:circuitUev>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:164>, <gregtech:meta_item_1:134>], 
      [<avaritia:singularity:3>, <gregtech:meta_item_1:134>, <ore:circuitUhv>, <gregtech:meta_item_1:239>, <ore:circuitUhv>, <gregtech:meta_item_1:239>, <ore:circuitUhv>, <gregtech:meta_item_1:134>, <avaritia:singularity:3>]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:9>, [
      [<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:gemExquisiteEmerald>, <ore:gemExquisiteLazurite>, <ore:gemExquisiteRuby>, <ore:gemExquisiteLazurite>, <ore:gemExquisiteEmerald>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
      [<ore:ingotCosmicNeutronium>, <ore:gemExquisiteDiamond>, <ore:gemExquisiteNetherQuartz>, <ore:gemExquisiteGlass>, <ore:gemExquisiteOlivine>, <ore:gemExquisiteGlass>, <ore:gemExquisiteNetherQuartz>, <ore:gemExquisiteDiamond>, <ore:ingotCosmicNeutronium>], 
      [<ore:gemExquisiteGreenSapphire>, <ore:gemExquisiteMonazite>, <ore:gemExquisiteOpal>, <ore:gemExquisiteLapis>, <ore:gemExquisiteGarnetRed>, <ore:gemExquisiteLapis>, <ore:gemExquisiteOpal>, <ore:gemExquisiteMonazite>, <ore:gemExquisiteGreenSapphire>], 
      [<ore:gemExquisiteRutile>, <ore:gemExquisiteMalachite>, <ore:gemExquisiteAmethyst>, <ore:gemExquisiteApatite>, <ore:gemExquisiteGarnetYellow>, <ore:gemExquisiteApatite>, <ore:gemExquisiteAmethyst>, <ore:gemExquisiteMalachite>, <ore:gemExquisiteRutile>], 
      [<ore:gemExquisiteRuby>, <ore:gemExquisiteOlivine>, <ore:gemExquisiteGarnetRed>, <ore:gemExquisiteGarnetYellow>, <avaritia:singularity:10>, <ore:gemExquisiteGarnetYellow>, <ore:gemExquisiteGarnetRed>, <ore:gemExquisiteOlivine>, <ore:gemExquisiteRuby>], 
      [<ore:gemExquisiteRutile>, <ore:gemExquisiteMalachite>, <ore:gemExquisiteAmethyst>, <ore:gemExquisiteApatite>, <ore:gemExquisiteGarnetYellow>, <ore:gemExquisiteApatite>, <ore:gemExquisiteAmethyst>, <ore:gemExquisiteMalachite>, <ore:gemExquisiteRutile>], 
      [<ore:gemExquisiteGreenSapphire>, <ore:gemExquisiteMonazite>, <ore:gemExquisiteOpal>, <ore:gemExquisiteLapis>, <ore:gemExquisiteGarnetRed>, <ore:gemExquisiteLapis>, <ore:gemExquisiteOpal>, <ore:gemExquisiteMonazite>, <ore:gemExquisiteGreenSapphire>], 
      [<ore:ingotCosmicNeutronium>, <ore:gemExquisiteDiamond>, <ore:gemExquisiteNetherQuartz>, <ore:gemExquisiteGlass>, <ore:gemExquisiteOlivine>, <ore:gemExquisiteGlass>, <ore:gemExquisiteNetherQuartz>, <ore:gemExquisiteDiamond>, <ore:ingotCosmicNeutronium>], 
      [<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:gemExquisiteEmerald>, <ore:gemExquisiteLazurite>, <ore:gemExquisiteRuby>, <ore:gemExquisiteLazurite>, <ore:gemExquisiteEmerald>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:8>, [
      [<ore:ingotBismuthBronze>, <ore:ingotBlackBronze>, <ore:ingotRoseGold>, <ore:ingotSterlingSilver>, <ore:ingotNiobiumTitanium>, <ore:ingotNiobiumNitride>, <ore:ingotNichrome>, <ore:ingotMagnalium>, <ore:ingotVanadiumSteel>], 
      [<ore:ingotRuridit>, <ore:ingotRedSteel>, <ore:ingotRhodiumPlatedPalladium>, <ore:ingotNaquadahAlloy>, <ore:ingotBorosilicateGlass>, <ore:ingotPotin>, <ore:ingotFloppa>, <ore:ingotBlueSteel>, <ore:ingotCobaltBrass>], 
      [<ore:ingotSolderingAlloy>, <ore:ingotIncoloyMa956>, <ore:ingotTerrasteel>, <ore:ingotSignalum>, <ore:ingotDraconium>, <ore:ingotLumium>, <ore:ingotManasteel>, <ore:ingotHssg>, <ore:ingotTungstenSteel>], 
      [<ore:ingotStainlessSteel>, <ore:ingotTitaniumTungstenCarbide>, <ore:ingotSignalum>, <ore:ingotBronze>, <ore:ingotIngaasp>, <ore:ingotBatteryAlloy>, <ore:ingotLumium>, <ore:ingotRedAlloy>, <ore:ingotDamascusSteel>], 
      [<ore:ingotTinAlloy>, <ore:ingotHslaSteel>, <ore:ingotDraconiumAwakened>, <ore:ingotElectrum>, <avaritia:singularity:12>, <ore:ingotInvar>, <ore:ingotDraconiumAwakened>, <ore:ingotHsse>, <ore:ingotBlackSteel>], 
      [<ore:ingotVanadiumGallium>, <ore:ingotMolybdenumDisilicide>, <ore:ingotAntimatter>, <ore:ingotCupronickel>, <ore:ingotKanthal>, <ore:ingotAstral>, <ore:ingotEnderium>, <ore:ingotHsss>, <ore:ingotPolybenzimidazole>], 
      [<ore:ingotOsmiridium>, <ore:ingotTantalumCarbide>, <ore:ingotManasteel>, <ore:ingotAntimatter>, <ore:ingotDraconium>, <ore:ingotEnderium>, <ore:ingotTerrasteel>, <ore:ingotBlueAlloy>, <ore:ingotRutheniumTriniumAmericiumNeutronate>], 
      [<ore:ingotGalliumArsenide>, <ore:ingotTitaniumCarbide>, <ore:ingotZeron100>, <ore:ingotTrinaquadalloy>, <ore:ingotHastelloyX>, <ore:ingotHastelloyC276>, <ore:ingotWatertightSteel>, <ore:ingotStellite100>, <ore:ingotEnrichedNaquadahTriniumEuropiumDuranide>], 
      [<ore:ingotIndiumGalliumPhosphide>, <ore:ingotNickelZincFerrite>, <ore:ingotManganesePhosphide>, <ore:ingotMagnesiumDiboride>, <ore:ingotMercuryBariumCalciumCuprate>, <ore:ingotUraniumTriplatinum>, <ore:ingotSamariumIronArsenicOxide>, <ore:ingotIndiumTinBariumTitaniumCuprate>, <ore:ingotUraniumRhodiumDinaquadide>]
    ]);
  //��������� J)�V���
    
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:7>, [
      [<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <gregtechfoodoption:gtfo_meta_item:64>, <gregtechfoodoption:gtfo_meta_item:41>, <gregtechfoodoption:gtfo_meta_item:60>, <gregtechfoodoption:gtfo_meta_item:41>, <gregtechfoodoption:gtfo_meta_item:63>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>], 
      [<ore:ingotCosmicNeutronium>, <gregtechfoodoption:gtfo_meta_item:69>, <gregtechfoodoption:gtfo_meta_item:88>, <gregtechfoodoption:gtfo_meta_item:90>, <avaritia:cosmic_meatballs>, <gregtechfoodoption:gtfo_meta_item:90>, <gregtechfoodoption:gtfo_meta_item:88>, <gregtechfoodoption:gtfo_meta_item:68>, <ore:ingotCosmicNeutronium>], 
      [<gregtechfoodoption:gtfo_meta_item:61>, <gregtechfoodoption:gtfo_meta_item:70>, <avaritia:cosmic_meatballs>, <avaritia:resource:2>, <gregtechfoodoption:gtfo_meta_item:72>, <avaritia:resource:2>, <avaritia:cosmic_meatballs>, <gregtechfoodoption:gtfo_meta_item:70>, <gregtechfoodoption:gtfo_meta_item:61>], 
      [<ore:foodFries>, <gregtechfoodoption:gtfo_meta_item:89>, <avaritia:resource:2>, <gregtechfoodoption:gtfo_meta_item:101>, <avaritia:ultimate_stew>, <gregtechfoodoption:gtfo_meta_item:101>, <avaritia:resource:2>, <gregtechfoodoption:gtfo_meta_item:89>, <ore:foodFries>], 
      [<gregtechfoodoption:gtfo_meta_item:59>, <avaritia:cosmic_meatballs>, <gregtechfoodoption:gtfo_meta_item:71>, <avaritia:ultimate_stew>, <gregtechfoodoption:gtfo_meta_item:60>, <avaritia:ultimate_stew>, <gregtechfoodoption:gtfo_meta_item:71>, <avaritia:cosmic_meatballs>, <gregtechfoodoption:gtfo_meta_item:59>], 
      [<ore:foodFries>, <gregtechfoodoption:gtfo_meta_item:89>, <avaritia:resource:2>, <gregtechfoodoption:gtfo_meta_item:101>, <avaritia:ultimate_stew>, <gregtechfoodoption:gtfo_meta_item:101>, <avaritia:resource:2>, <gregtechfoodoption:gtfo_meta_item:89>, <ore:foodFries>], 
      [<gregtechfoodoption:gtfo_meta_item:62>, <gregtechfoodoption:gtfo_meta_item:70>, <avaritia:cosmic_meatballs>, <avaritia:resource:2>, <gregtechfoodoption:gtfo_meta_item:72>, <avaritia:resource:2>, <avaritia:cosmic_meatballs>, <gregtechfoodoption:gtfo_meta_item:70>, <gregtechfoodoption:gtfo_meta_item:62>], 
      [<ore:ingotCosmicNeutronium>, <gregtechfoodoption:gtfo_meta_item:69>, <gregtechfoodoption:gtfo_meta_item:88>, <gregtechfoodoption:gtfo_meta_item:90>, <avaritia:cosmic_meatballs>, <gregtechfoodoption:gtfo_meta_item:90>, <gregtechfoodoption:gtfo_meta_item:88>, <gregtechfoodoption:gtfo_meta_item:68>, <ore:ingotCosmicNeutronium>], 
      [<ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <gregtechfoodoption:gtfo_meta_item:64>, <gregtechfoodoption:gtfo_meta_item:41>, <gregtechfoodoption:gtfo_meta_item:60>, <gregtechfoodoption:gtfo_meta_item:41>, <gregtechfoodoption:gtfo_meta_item:63>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>]
    ]);
    
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:6>, [
      [null, null, <ore:blockCosmicNeutronium>, <ore:ingotCalifornium251Base>, <ore:ingotCalifornium251Base>, <ore:ingotCalifornium251Base>, <ore:blockCosmicNeutronium>, null, null], 
      [null, <ore:blockCosmicNeutronium>, <draconicevolution:chaos_shard>, <ore:ingotAstralStarmetal>, <ore:blockCosmicNeutronium>, <ore:ingotAstralStarmetal>, <draconicevolution:chaos_shard>, <ore:blockCosmicNeutronium>, null], 
      [<ore:blockCosmicNeutronium>, <draconicevolution:chaos_shard>, <extendedcrafting:material:40>, <ore:blockCosmicNeutronium>, <avaritia:endest_pearl>, <ore:blockCosmicNeutronium>, <extendedcrafting:material:40>, <draconicevolution:chaos_shard>, <ore:blockCosmicNeutronium>], 
      [<ore:ingotCalifornium251Base>, <ore:ingotAstralStarmetal>, <ore:blockCosmicNeutronium>, <draconicevolution:chaos_shard>, <avaritia:endest_pearl>, <draconicevolution:chaos_shard>, <ore:blockCosmicNeutronium>, <ore:ingotAstralStarmetal>, <ore:ingotCalifornium251Base>], 
      [<ore:ingotCalifornium251Base>, <ore:blockCosmicNeutronium>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <avaritia:singularity:12>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <ore:blockCosmicNeutronium>, <ore:ingotCalifornium251Base>], 
      [<ore:ingotCalifornium251Base>, <ore:ingotAstralStarmetal>, <ore:blockCosmicNeutronium>, <draconicevolution:chaos_shard>, <avaritia:endest_pearl>, <draconicevolution:chaos_shard>, <ore:blockCosmicNeutronium>, <ore:ingotAstralStarmetal>, <ore:ingotCalifornium251Base>], 
      [<ore:blockCosmicNeutronium>, <draconicevolution:chaos_shard>, <extendedcrafting:material:40>, <ore:blockCosmicNeutronium>, <avaritia:endest_pearl>, <ore:blockCosmicNeutronium>, <extendedcrafting:material:40>, <draconicevolution:chaos_shard>, <ore:blockCosmicNeutronium>], 
      [null, <ore:blockCosmicNeutronium>, <draconicevolution:chaos_shard>, <ore:ingotAstralStarmetal>, <ore:blockCosmicNeutronium>, <ore:ingotAstralStarmetal>, <draconicevolution:chaos_shard>, <ore:blockCosmicNeutronium>, null], 
      [null, null, <ore:blockCosmicNeutronium>, <ore:ingotCalifornium251Base>, <ore:ingotCalifornium251Base>, <ore:ingotCalifornium251Base>, <ore:blockCosmicNeutronium>, null, null]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:5>, [
      [<gregtech:meta_item_1:187>, <gregtech:meta_item_1:188>, <gregtech:meta_item_1:189>, <gregtech:meta_item_1:401>, <gregtech:meta_item_1:402>, <gregtech:meta_item_1:403>, <gregtech:meta_item_1:404>, <gregtech:meta_item_1:405>, <gregtech:meta_item_1:406>], 
      [<gregtech:meta_item_1:190>, <gregtech:meta_item_1:191>, <gregtech:meta_item_1:192>, <gregtech:meta_item_1:602>, <gregtech:meta_item_1:603>, <gregtech:meta_item_1:604>, <gregtech:meta_item_1:605>, <gregtech:meta_item_1:606>, <gregtech:meta_item_1:407>], 
      [<gregtech:meta_item_1:193>, <gregtech:meta_item_1:194>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <draconicevolution:chaos_shard>, <gregtech:wire_coil>, <gregtech:wire_coil:1>, <gregtech:wire_coil:2>, <gregtech:wire_coil:3>], 
      [<gregtech:machine:986>, <gregtech:machine:987>, <ore:ingotCosmicNeutronium>, <draconicevolution:chaos_shard>, <minecraft:wooden_pickaxe>, <draconicevolution:chaos_shard>, <gregtech:wire_coil:4>, <gregtech:wire_coil:5>, <gregtech:wire_coil:6>], 
      [<gregtech:machine:989>, <gregtech:machine:988>, <draconicevolution:chaos_shard>, <minecraft:diamond_pickaxe>, <draconicadditions:chaos_heart>, <minecraft:stone_pickaxe>, <draconicevolution:chaos_shard>, <ore:alloyUltimate>, <gregtech:wire_coil:7>], 
      [<gregtech:machine:990>, <gregtech:machine:991>, <gregtech:machine:1020>, <draconicevolution:chaos_shard>, <minecraft:iron_pickaxe>, <draconicevolution:chaos_shard>, <ore:ingotCosmicNeutronium>, <ore:alloyElite>, <ore:alloyAdvanced>], 
      [<gregtech:machine:992>, <gregtech:machine:993>, <gregtech:machine:1021>, <gregtech:machine:1022>, <draconicevolution:chaos_shard>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:208>], 
      [<ore:circuitLuv>, <ore:circuitZpm>, <ore:circuitUv>, <ore:circuitUhv>, <ore:circuitUev>, <ore:circuitUiv>, <gregtech:meta_item_1:207>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:205>], 
      [<ore:circuitUlv>, <ore:circuitLv>, <ore:circuitMv>, <ore:circuitHv>, <ore:circuitEv>, <ore:circuitIv>, <gregtech:meta_item_1:204>, <gregtech:meta_item_1:203>, <gregtech:meta_item_1:202>]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:4>, [
      [<enderio:item_ender_food>, <catwalks:catwalk>.withTag({material: "nyanwalk"}), <iceandfire:dragonscales_white>, <botania:cosmetic:32>, <ore:mysticFlowerCyan>, <botania:cosmetic:32>, <iceandfire:dragonscales_white>, <catwalks:catwalk>.withTag({material: "nyanwalk"}), <enderio:item_ender_food>], 
      [<catwalks:catwalk>.withTag({material: "nyanwalk"}), <ore:mysticFlowerBlack>, <ore:mysticFlowerPink>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <ore:mysticFlowerLime>, <ore:mysticFlowerGreen>, <catwalks:catwalk>.withTag({material: "nyanwalk"})], 
      [<thaumictinkerer:energetic_nitor>, <ore:mysticFlowerGray>, <astralsorcery:itemcraftingcomponent:4>, <ore:plateMithminite>, <ore:eternalLifeEssence>, <ore:plateMithminite>, <astralsorcery:itemcraftingcomponent:4>, <ore:mysticFlowerYellow>, <thaumictinkerer:energetic_nitor>], 
      [<botania:cosmetic:32>, <astralsorcery:itemshiftingstar>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <ore:eternalLifeEssence>, <ore:runeGluttonyB>, <ore:eternalLifeEssence>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.aevitas"}}), <botania:cosmetic:32>], 
      [<ore:mysticFlowerPurple>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}), <ore:runeGreedB>, <ore:runeEnvyB>, <ore:runeWrathB>, <ore:runePrideB>, <ore:runeSlothB>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.evorsio"}}), <ore:mysticFlowerBlue>], 
      [<botania:cosmetic:32>, <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <ore:eternalLifeEssence>, <ore:runeLustB>, <ore:eternalLifeEssence>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "caeles"}]}), <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}), <botania:cosmetic:32>], 
      [<thaumictinkerer:energetic_nitor>, <ore:mysticFlowerWhite>, <astralsorcery:itemcraftingcomponent:4>, <ore:plateMithminite>, <ore:eternalLifeEssence>, <ore:plateMithminite>, <astralsorcery:itemcraftingcomponent:4>, <ore:mysticFlowerLightBlue>, <thaumictinkerer:energetic_nitor>], 
      [<catwalks:catwalk>.withTag({material: "nyanwalk"}), <ore:mysticFlowerRed>, <ore:mysticFlowerOrange>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <ore:mysticFlowerMagenta>, <ore:mysticFlowerBrown>, <catwalks:catwalk>.withTag({material: "nyanwalk"})], 
      [<enderio:item_ender_food>, <catwalks:catwalk>.withTag({material: "nyanwalk"}), <iceandfire:dragonscales_white>, <botania:cosmetic:32>, <ore:mysticFlowerLightGray>, <botania:cosmetic:32>, <iceandfire:dragonscales_white>, <catwalks:catwalk>.withTag({material: "nyanwalk"}), <enderio:item_ender_food>]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:3>, [
      [<ore:ingotCosmicNeutronium>, <gregtech:meta_item_1:309>, <gregtech:meta_item_1:309>, <mekanism:basicblock2:6>, <gregtech:meta_item_1:149>, <mekanism:basicblock2:6>, <gregtech:meta_item_1:309>, <gregtech:meta_item_1:309>, <ore:ingotCosmicNeutronium>], 
      [<gregtech:meta_item_1:309>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:179>, <gregtech:meta_item_1:309>, <ore:pipeNonupleFluidTungstenCarbide>, <gregtech:meta_item_1:309>, <gregtech:meta_item_1:179>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:309>], 
      [<gregtech:meta_item_1:309>, <gregtech:meta_item_1:179>, <gregtech:meta_item_1:179>, <ore:plateDoubleTungstenCarbide>, <ore:pipeNonupleFluidTungstenCarbide>, <ore:plateDoubleTungstenCarbide>, <gregtech:meta_item_1:179>, <gregtech:meta_item_1:179>, <gregtech:meta_item_1:309>], 
      [<mekanism:basicblock2:6>, <gregtech:meta_item_1:309>, <ore:plateDoubleTungstenCarbide>, <ore:plateDoubleTungstenCarbide>, <ore:pipeNonupleFluidTungstenCarbide>, <ore:plateDoubleTungstenCarbide>, <ore:plateDoubleTungstenCarbide>, <gregtech:meta_item_1:309>, <mekanism:basicblock2:6>], 
      [<gregtech:meta_item_1:149>, <ore:pipeNonupleFluidTungstenCarbide>, <ore:pipeNonupleFluidTungstenCarbide>, <ore:pipeNonupleFluidTungstenCarbide>, <avaritia:singularity>, <ore:pipeNonupleFluidTungstenCarbide>, <ore:pipeNonupleFluidTungstenCarbide>, <ore:pipeNonupleFluidTungstenCarbide>, <gregtech:meta_item_1:149>], 
      [<mekanism:basicblock2:6>, <gregtech:meta_item_1:309>, <ore:plateDoubleTungstenCarbide>, <ore:plateDoubleTungstenCarbide>, <ore:pipeNonupleFluidTungstenCarbide>, <ore:plateDoubleTungstenCarbide>, <ore:plateDoubleTungstenCarbide>, <gregtech:meta_item_1:309>, <mekanism:basicblock2:6>], 
      [<gregtech:meta_item_1:309>, <gregtech:meta_item_1:179>, <gregtech:meta_item_1:179>, <ore:plateDoubleTungstenCarbide>, <ore:pipeNonupleFluidTungstenCarbide>, <ore:plateDoubleTungstenCarbide>, <gregtech:meta_item_1:179>, <gregtech:meta_item_1:179>, <gregtech:meta_item_1:309>], 
      [<gregtech:meta_item_1:309>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:179>, <gregtech:meta_item_1:309>, <ore:pipeNonupleFluidTungstenCarbide>, <gregtech:meta_item_1:309>, <gregtech:meta_item_1:179>, <gregtech:meta_item_1:208>, <gregtech:meta_item_1:309>], 
      [<ore:ingotCosmicNeutronium>, <gregtech:meta_item_1:309>, <gregtech:meta_item_1:309>, <mekanism:basicblock2:6>, <gregtech:meta_item_1:149>, <mekanism:basicblock2:6>, <gregtech:meta_item_1:309>, <gregtech:meta_item_1:309>, <ore:ingotCosmicNeutronium>]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:2>, [
      [<ore:pipeSmallFluidTungstenSteel>, <ore:pipeSmallFluidAluminium>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidDuranium>, <ore:pipeSmallFluidNeutronium>, <ore:pipeSmallFluidCopper>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidAluminium>, <ore:pipeSmallFluidTungstenCarbide>], 
      [<ore:pipeSmallFluidAluminium>, <ore:ingotCosmicNeutronium>, <ore:pipeSmallFluidChrome>, <ore:pipeSmallFluidIridium>, <ore:pipeSmallFluidNiobiumTitanium>, <ore:pipeSmallFluidGold>, <ore:pipeSmallFluidChrome>, <ore:ingotCosmicNeutronium>, <ore:pipeSmallFluidAluminium>], 
      [<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidChrome>, <ore:pipeSmallFluidEuropium>, <ore:pipeSmallFluidNaquadah>, <ore:pipeSmallFluidPlastic>, <ore:pipeSmallFluidLead>, <ore:pipeSmallFluidEuropium>, <ore:pipeSmallFluidChrome>, <ore:pipeSmallFluidBronze>], 
      [<ore:pipeSmallFluidCopper>, <ore:pipeSmallFluidGold>, <ore:pipeSmallFluidLead>, <ore:pipeSmallFluidStainlessSteel>, <ore:pipeSmallFluidPolytetrafluoroethylene>, <ore:pipeSmallFluidPotin>, <ore:pipeSmallFluidNaquadah>, <ore:pipeSmallFluidIridium>, <ore:pipeSmallFluidDuranium>], 
      [<ore:pipeSmallFluidNeutronium>, <ore:pipeSmallFluidNiobiumTitanium>, <ore:pipeSmallFluidPlastic>, <ore:pipeSmallFluidPolybenzimidazole>, <ore:pipeSmallFluidTitanium>, <ore:pipeSmallFluidPolybenzimidazole>, <ore:pipeSmallFluidPlastic>, <ore:pipeSmallFluidNiobiumTitanium>, <ore:pipeSmallFluidNeutronium>], 
      [<ore:pipeSmallFluidDuranium>, <ore:pipeSmallFluidIridium>, <ore:pipeSmallFluidNaquadah>, <ore:pipeSmallFluidSteel>, <ore:pipeSmallFluidPolytetrafluoroethylene>, <ore:pipeSmallFluidTinAlloy>, <ore:pipeSmallFluidLead>, <ore:pipeSmallFluidGold>, <ore:pipeSmallFluidCopper>], 
      [<ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidChrome>, <ore:pipeSmallFluidEuropium>, <ore:pipeSmallFluidLead>, <ore:pipeSmallFluidPlastic>, <ore:pipeSmallFluidNaquadah>, <ore:pipeSmallFluidEuropium>, <ore:pipeSmallFluidChrome>, <ore:pipeSmallFluidBronze>], 
      [<ore:pipeSmallFluidAluminium>, <ore:ingotCosmicNeutronium>, <ore:pipeSmallFluidChrome>, <ore:pipeSmallFluidGold>, <ore:pipeSmallFluidNiobiumTitanium>, <ore:pipeSmallFluidIridium>, <ore:pipeSmallFluidChrome>, <ore:ingotCosmicNeutronium>, <ore:pipeSmallFluidAluminium>], 
      [<ore:pipeSmallFluidVanadiumSteel>, <ore:pipeSmallFluidAluminium>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidCopper>, <ore:pipeSmallFluidNeutronium>, <ore:pipeSmallFluidDuranium>, <ore:pipeSmallFluidBronze>, <ore:pipeSmallFluidAluminium>, <ore:pipeSmallFluidTungsten>]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity:1>, [
      [<gregtech:meta_item_1:209>, <gregtech:meta_item_1:209>, <extrabotany:blockorichalcos>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:104>, <extrabotany:blockorichalcos>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:209>], 
      [<gregtech:meta_item_1:209>, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, <extendedcrafting:singularity_ultimate>, <draconicadditions:chaotic_energy_core>, <extendedcrafting:singularity_ultimate>, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, <gregtech:meta_item_1:209>], 
      [<extrabotany:blockorichalcos>, <draconicevolution:chaos_shard>, <avaritia:resource:5>, <draconicevolution:chaos_shard>, <ore:circuitUiv>, <draconicevolution:chaos_shard>, <avaritia:resource:5>, <draconicevolution:chaos_shard>, <extrabotany:blockorichalcos>], 
      [<gregtech:meta_item_1:104>, <extendedcrafting:singularity_ultimate>, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, <extendedcrafting:material:13>, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, <extendedcrafting:singularity_ultimate>, <gregtech:meta_item_1:104>], 
      [<gregtech:meta_item_1:104>, <draconicadditions:chaotic_energy_core>, <ore:circuitUiv>, <extendedcrafting:material:13>, <gregtech:meta_item_1:1000>, <extendedcrafting:material:13>, <ore:circuitUiv>, <draconicadditions:chaotic_energy_core>, <gregtech:meta_item_1:104>], 
      [<gregtech:meta_item_1:104>, <extendedcrafting:singularity_ultimate>, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, <extendedcrafting:material:13>, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, <extendedcrafting:singularity_ultimate>, <gregtech:meta_item_1:104>], 
      [<extrabotany:blockorichalcos>, <draconicevolution:chaos_shard>, <avaritia:resource:5>, <draconicevolution:chaos_shard>, <ore:circuitUiv>, <draconicevolution:chaos_shard>, <avaritia:resource:5>, <draconicevolution:chaos_shard>, <extrabotany:blockorichalcos>], 
      [<gregtech:meta_item_1:209>, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, <extendedcrafting:singularity_ultimate>, <draconicadditions:chaotic_energy_core>, <extendedcrafting:singularity_ultimate>, <draconicevolution:chaos_shard>, <draconicevolution:chaos_shard>, <gregtech:meta_item_1:209>], 
      [<gregtech:meta_item_1:209>, <gregtech:meta_item_1:209>, <extrabotany:blockorichalcos>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:104>, <gregtech:meta_item_1:104>, <extrabotany:blockorichalcos>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:209>]
    ]);
  //��������� J)�V���
    mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:combined_singularity>, [
      [<ore:gearIronInfinity>, <ore:gearEnergized>, <ore:gearVibrant>, <ore:rotorDraconiumawakened>, <ore:gearSmallChaoticmetal>, <ore:rotorDraconiumawakened>, <ore:gearVibrant>, <ore:gearEnergized>, <ore:gearIronInfinity>], 
      [<ore:gearEnergized>, <ore:gearVibrant>, <ore:rotorDraconiumawakened>, <gregtech:meta_item_1:134>, <avaritia:singularity:5>, <gregtech:meta_item_1:134>, <ore:rotorDraconiumawakened>, <ore:gearVibrant>, <ore:gearEnergized>], 
      [<ore:gearVibrant>, <ore:rotorDraconiumawakened>, <avaritia:singularity:9>, <gregtech:meta_item_1:134>, <ore:rotorDraconiumawakened>, <gregtech:meta_item_1:134>, <avaritia:singularity:14>, <ore:rotorDraconiumawakened>, <ore:gearVibrant>], 
      [<ore:rotorDraconiumawakened>, <gregtech:meta_item_1:134>, <gregtech:meta_item_1:134>, <ore:rotorDraconiumawakened>, <ore:gearAntimatter>, <ore:rotorDraconiumawakened>, <gregtech:meta_item_1:134>, <gregtech:meta_item_1:134>, <ore:rotorDraconiumawakened>], 
      [<ore:gearSmallChaoticmetal>, <avaritia:singularity>, <ore:rotorDraconiumawakened>, <ore:gearAntimatter>, <avaritia:singularity:13>, <ore:gearAntimatter>, <ore:rotorDraconiumawakened>, <avaritia:singularity:8>, <ore:gearSmallChaoticmetal>], 
      [<ore:rotorDraconiumawakened>, <gregtech:meta_item_1:134>, <gregtech:meta_item_1:134>, <ore:rotorDraconiumawakened>, <ore:gearAntimatter>, <ore:rotorDraconiumawakened>, <gregtech:meta_item_1:134>, <gregtech:meta_item_1:134>, <ore:rotorDraconiumawakened>], 
      [<ore:gearVibrant>, <ore:rotorDraconiumawakened>, <avaritia:singularity:7>, <gregtech:meta_item_1:134>, <ore:rotorDraconiumawakened>, <gregtech:meta_item_1:134>, <avaritia:singularity:6>, <ore:rotorDraconiumawakened>, <ore:gearVibrant>], 
      [<ore:gearEnergized>, <ore:gearVibrant>, <ore:rotorDraconiumawakened>, <gregtech:meta_item_1:134>, <avaritia:singularity:1>, <gregtech:meta_item_1:134>, <ore:rotorDraconiumawakened>, <ore:gearVibrant>, <ore:gearEnergized>], 
      [<ore:gearIronInfinity>, <ore:gearEnergized>, <ore:gearVibrant>, <ore:rotorDraconiumawakened>, <ore:gearSmallChaoticmetal>, <ore:rotorDraconiumawakened>, <ore:gearVibrant>, <ore:gearEnergized>, <ore:gearIronInfinity>]
    ]);


//E T E R N A L   S I N G U L A R I T Y
  mods.extendedcrafting.TableCrafting.addShaped(4, <eternalsingularity:eternal_singularity>, [
	[<eternalsingularity:combined_singularity:7>, <ore:blockCosmicNeutronium>, <ore:ingotInfinity>, <ore:blockAntimatter>, <ore:blockCrystalMatrix>, <ore:blockAntimatter>, <ore:ingotInfinity>, <ore:blockCosmicNeutronium>, <eternalsingularity:combined_singularity:5>], 
	[<ore:blockCosmicNeutronium>, <draconicevolution:chaos_shard>, <ore:blockCrystalMatrix>, <extendedcrafting:material:13>, <eternalsingularity:combined_singularity:12>, <extendedcrafting:material:13>, <ore:blockCrystalMatrix>, <draconicevolution:chaos_shard>, <ore:blockCosmicNeutronium>], 
	[<ore:ingotInfinity>, <ore:blockCrystalMatrix>, <eternalsingularity:combined_singularity:6>, <ore:blockDraconiumawakened>, <avaritia:resource:5>, <ore:blockDraconiumawakened>, <eternalsingularity:combined_singularity:4>, <ore:blockCrystalMatrix>, <ore:ingotInfinity>], 
	[<ore:blockAntimatter>, <extendedcrafting:material:13>, <ore:blockDraconiumawakened>, <eternalsingularity:combined_singularity:11>, <extendedcrafting:singularity_ultimate>, <eternalsingularity:combined_singularity:13>, <ore:blockDraconiumawakened>, <extendedcrafting:material:13>, <ore:blockAntimatter>], 
	[<ore:blockCrystalMatrix>, <eternalsingularity:combined_singularity:1>, <avaritia:resource:5>, <extendedcrafting:singularity_ultimate>, <avaritia:resource:5>, <extendedcrafting:singularity_ultimate>, <avaritia:resource:5>, <eternalsingularity:combined_singularity:10>, <ore:blockCrystalMatrix>], 
	[<ore:blockAntimatter>, <extendedcrafting:material:13>, <ore:blockDraconiumawakened>, <eternalsingularity:combined_singularity:9>, <extendedcrafting:singularity_ultimate>, <eternalsingularity:combined_singularity:15>, <ore:blockDraconiumawakened>, <extendedcrafting:material:13>, <ore:blockAntimatter>], 
	[<ore:ingotInfinity>, <ore:blockCrystalMatrix>, <eternalsingularity:combined_singularity>, <ore:blockDraconiumawakened>, <avaritia:resource:5>, <ore:blockDraconiumawakened>, <eternalsingularity:combined_singularity:8>, <ore:blockCrystalMatrix>, <ore:ingotInfinity>], 
	[<ore:blockCosmicNeutronium>, <draconicevolution:chaos_shard>, <ore:blockCrystalMatrix>, <extendedcrafting:material:13>, <eternalsingularity:combined_singularity:14>, <extendedcrafting:material:13>, <ore:blockCrystalMatrix>, <draconicevolution:chaos_shard>, <ore:blockCosmicNeutronium>], 
	[<eternalsingularity:combined_singularity:2>, <ore:blockCosmicNeutronium>, <ore:ingotInfinity>, <ore:blockAntimatter>, <ore:blockCrystalMatrix>, <ore:blockAntimatter>, <ore:ingotInfinity>, <ore:blockCosmicNeutronium>, <eternalsingularity:combined_singularity:3>]
]);

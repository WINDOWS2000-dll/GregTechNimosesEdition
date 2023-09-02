#=================================================
# MODPACKNAME: GregTechNimosesEdition
# Writer: Sanjinoyatu1692
# DiscordName: Windows.EXE2000#2700
# Issue: Please send to my DirectMessage
#=================================================
#loader gregtech
#priority 900
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialRegistry;
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
import mods.gregtech.material.Elements;

print("------NaqadahFuelLineMaterialLoadingStart------");
var naquadahresidue1 = Elements.add(500, 500, -1, null, "naquadahresidue", "???", false);
var naquadahresidue2 = Elements.add(500, 500, -1, null, "enrichednaqadahresidue", "???", false);
var naquadahresidue3 = Elements.add(500, 500, -1, null, "nquadriaresidue", "???", false);

//ADD Material
var naquadahresidue = MaterialBuilder(32100, "naquadahresidue")
    .dust()
    .iconSet("DULL")
    .color(0x171308)
    .element("naquadahresidue")
    .build();

var enrichednaqadahresidue = MaterialBuilder(32101, "enrichednaqadahresidue")
    .dust()
    .iconSet("DULL")
    .color(0x0d0c08)
    .element("enrichednaqadahresidue")
    .build();

var naquadraresidue = MaterialBuilder(32102, "naquadriaresidue")
    .dust()
    .iconSet("DULL")
    .color(0x0d0c09)
    .element("nquadriaresidue")
    .build();

var acidicnaquadahsolution = MaterialBuilder(32103, "acidicnaquadahsolution")
    .fluid()
    .color(0x0d0c09)
    .build();

var refinednaquadahsolution = MaterialBuilder(32104, "refinednaquadahsolution")
    .fluid()
    .color(0x0d0c09)
    .build();

var xenonizationnaquadahsolution = MaterialBuilder(32105, "xenonizationnaquadahsolution")
    .fluid()
    .color(0x0d0c09)
    .build();

var stabilizationnaquadahsolution = MaterialBuilder(32106, "stabilizationnaquadahsolution")
    .fluid()
    .color(0x0d0c)
    .build();

var heavymetaldrainage = MaterialBuilder(32107, "heavymetaldrainage")
    .fluid()
    .color(0x70008a)
    .build();

var naquadahsolutionresidue = MaterialBuilder(32108, "naquadahsolutionresidue")
    .fluid()
    .color(0x000000)
    .build();

var naquadahresiduesolution = MaterialBuilder(32109, "naquadahresiduesolution")
    .fluid()
    .color(0x005130)
    .build();

var concentratednaquadahmixture = MaterialBuilder(32110, "concentratednaquadahmixture")
    .fluid()
    .color(0x005130)
    .build();
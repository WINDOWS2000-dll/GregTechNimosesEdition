#=================================================
# MODPACKNAME: GregTechNimosesEdition
# Writer: Sanjinoyatu1692
# DiscordName: Windows.EXE2000#2700
# Issue: Please send to my DirectMessage
#=================================================
#loader gregtech
#priority 995
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

print("------GREGTECH_MATERIALS_LOADING_START------");

                                              //₀₁₂₃₄₅₆₇₈₉

var TlMa = Elements.add(144, 233, -1, null, "Terrasteel", "TlMa", false);
var If = Elements.add(2147483647, 2147483647, -1, null, "Infinity", "If", false);
var MaFe = Elements.add(13, 21, -1, null, "Manasteel", "MaFe", false);
var EdFe = Elements.add(32, 64, -1, null, "Thaumium", "EdFe", false);
var Ed = Elements.add(666, 666, -1, null, "Void", "Ed", false);
var Gaia = Elements.add(233, 377, -1, null, "Gaiaingot", "Gaia", false);
var GaiaFe = Elements.add(233, 377, -1, null, "Gaiasteel", "GaiaFe", false);
var Dc = Elements.add(700, 900, -1, null, "Draconium", "Dc", false);
var DcX = Elements.add(9001, 9001, -1, null, "Draconiumawakened", "DcX", false);
var Stone = Elements.add(16, 16, -1, null, "Stoneingot", "Stn", false);
var ERROR = Elements.add(2147483647, 2147483647, -1, null, "Antimatter", "ERROR", false);
var FATALERROR = Elements.add(2147483647, 2147483647, -1, null, "Strangelet", "FATALERROR", false);
var UNKNOWN = Elements.add(666666666, 666666666, -1, null, "Chaoticmetal", "UNKNOWN", false);
var Enderium = Elements.add(171, 254, -1, null, "Enderium", "PtPb₃(BeK₄N₅)", false);
var LeadPlatinium = Elements.add(160, 242, -1, null, "Leadplatinium", "PtPb₃", false);
var Signalum = Elements.add(112, 147, -1, null, "Signalum", "AgCu₃Si(FeS₂)₅(CrAl₂O₃)Hg₃", false);
var Shibuichi = Elements.add(76, 99, -1, null, "Shibuichi", "AgCu₃", false);
var Lumium = Elements.add(110, 110, -1, null, "Lumium", "Au₂Si(FeS₂)₅(CrAl₂O₃)Hg₃(AgSn₃)₂", false);
var TinSilver = Elements.add(97, 128, -1, null, "Tinsilver", "AgSn₃", false);
var Astral = Elements.add(240, 240, -1, null, "Astral", "AstFe", false);
var InGaAsP = Elements.add(128, 161, -1, null, "Indiumgalliumarsenidephosphide", "InGaAsP", false);
var AlGaAs = Elements.add(77, 94, -1, null, "Algaas", "AlGaAs", false);
var LiTiO = Elements.add(218, 242, -1, null, "Lithiumtitanate", "Li₄Ti₅O₁₂", false);
var LiMnO = Elements.add(85, 96, -1, null, "Lithiummanganeseoxide", "LiMn₂O₄", false);
var Hatune = Elements.add(39393939, 39393939, -1, null, "Hatunemiku", "Mikuchaaaaaaaaaaaan", false);
var Selenium = Elements.add(34, 45, -1, null, "Selenium", "Se", false);
var KClO4 = Elements.add(19+17+32, 20+18+32, -1, null, "Potassiumperchlorate", "KClO₄", false);
var HClO4 = Elements.add(1+17+24, 18+24, -1, null, "Perchloricacid", "HClO₄", false);
var Br = Elements.add(35, 44, -1, null, "Bromine", "Br", false);


//ADD Chemical Formular
  //GlowStone
    <material:glowstone>.setFormula("Au₂Si(FeS₂)₅(CrAl₂O₃)Hg₃", true);
  //Gold
    <material:gold>.addFlags("generate_long_rod", "generate_gear", "generate_small_gear");
  //ホウ酸ガラス
    <material:borosilicate_glass>.addFlags(["generate_long_rod", "generate_gear", "generate_small_gear", "generate_rod"]);
  //炭化タングステン
    <material:tungsten_carbide>.addFlags(["generate_ring", "generate_spring", "generate_spring_small", "generate_fine_wire", "generate_rotor", "generate_round"]);

//ADD Materials
var terrasteel = MaterialBuilder(32000, "terrasteel")
    .fluid()
    .ingot()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x0ffa32)
    .toolStats(100,18,38000,120)
    .blastTemp(3800)
    .ore()
    .cableProperties(32768,4,0,true)
    .element("Terrasteel")
    .build();

var infinity = MaterialBuilder(32001, "infinity")
    .fluid()
    .ingot()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0xffffff)
    .toolStats(10000,10000,2147483647,9999)//Spd ATK Dur Enc
    .blastTemp(200000000)
    .ore()
    .cableProperties(1073741824,128,0,true)
    .element("Infinity")
    .build();

var manasteel = MaterialBuilder(32002, "manasteel")
    .fluid()
    .ingot()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x0f65fa)
    .toolStats(35,6,1024,20)
    .blastTemp(1200)
    .ore()
    .cableProperties(128,4,0,false)
    .element("ManaSteel")
    .build();

var thaumium = MaterialBuilder(32003, "thaumium")
    .fluid()
    .ingot()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x7600de)
    .toolStats(38,8,1280,15)
    .blastTemp(700)
    .ore()
    .cableProperties(128,3,2,false)
    .element("Thaumium")
    .build();

var voidmetal = MaterialBuilder(32004, "void")
    .fluid()
    .ingot()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x1e0038)
    .toolStats(100,16,4096,1)
    .blastTemp(3000)
    .ore()
    .cableProperties(2048,4,0,false)
    .element("Void")
    .build();

var gaia = MaterialBuilder(32005, "gaia")
    .fluid()
    .ingot()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x89c7b5)
    .toolStats(120,24,8192,300)
    .blastTemp(4250)
    .cableProperties(131072,2,0,false)
    .element("Gaiaingot")
    .build();

var gaiasteel = MaterialBuilder(32006, "gaiasteel")
    .fluid()
    .ingot()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x89c799)
    .toolStats(160,26,10000,320)
    .blastTemp(5000)
    .cableProperties(131072,6,0,false)
    .element("Gaiasteel")
    .build();

var draconium = MaterialBuilder(32007, "draconium")
    .fluid()
    .ingot()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x9d00ff)
    .blastTemp(4700, "HIGH", 16384, 10000)
    .toolStats(400,100,42000,160)
    .cableProperties(8192,16,16,false)
    .element("Draconium")
    .build();

var draconiumawakened = MaterialBuilder(32008, "draconiumawakened")
    .fluid()
    .ingot()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0xff5100)
    .toolStats(700,200,81920,500)
    .blastTemp(9999)
    .cableProperties(524288,32,0,false)
    .element("DraconiumAwakened")
    .build();

var stoneingot = MaterialBuilder(32009, "stoneingot")
    .fluid()
    .ingot()
    .iconSet("DULL")
    .flags(["generate_plate", "generate_bolt_screw", "generate_rod", "generate_frame"])
    .color(0x696969)
    .toolStats(1,1,64,1145141919)
    .element("Stoneingot")
    .build();

var diamondinfusedingot = MaterialBuilder(32010, "diamondinfusedingot")
    .ingot()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x6dc2bc)
    .toolStats(4,4,256,1)
    .build();

var antimatter = MaterialBuilder(32011, "antimatter")
    .ingot()
    .fluid()
    .plasma()
    .iconSet("SHINY")
    .blastTemp(200000000, "HIGHEST", 4000000, 1200)
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x14018a)
    .cableProperties(2147483647,1,0,true)
    .element("Antimatter")
    .build();

var strangelet = MaterialBuilder(32012, "strangelet")
    .ingot()
    .fluid()
    .plasma()
    .blastTemp(2147483647, "HIGHEST", 100663296, 2000)
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x4a0000)
    .cableProperties(2147483647,8192,0,true)
    .element("Strangelet")
    .build();

var chaoticmetal = MaterialBuilder(32013, "chaoticmetal")
    .ingot()
    .fluid()
    .plasma()
    .iconSet("DULL")
    .blastTemp(10000, "HIGHEST", 520000, 2400)
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x000000)
    .element("Chaoticmetal")
    .build();

var enderium = MaterialBuilder(32014, "enderium")
    .ingot()
    .fluid()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x0f615a)
    .cableProperties(8192,4,0,false)
    .element("Enderium")
    .build();

var leadplatinium = MaterialBuilder(32015, "leadplatinium")
    .ingot()
    .fluid()
    .plasma()
    .iconSet("DULL")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x1f7870)
    .element("Leadplatinium")
    .build();

var shibuichi = MaterialBuilder(32016, "shibuichi")
    .ingot()
    .fluid()
    .plasma()
    .iconSet("DULL")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0xab9b9e)
    .element("Shibuichi")
    .build();

var tinsilver = MaterialBuilder(32017, "tinsilver")
    .ingot()
    .fluid()
    .plasma()
    .iconSet("DULL")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0xc9c9c9)
    .element("Tinsilver")
    .build();

var signalum = MaterialBuilder(32018, "signalum")
    .ingot()
    .fluid()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0xc93904)
    .cableProperties(512,4,0,false)
    .element("Signalum")
    .build();

var lumium = MaterialBuilder(32019, "lumium")
    .ingot()
    .fluid()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0xf5f062)
    .cableProperties(2048,4,0,false)
    .element("Lumium")
    .build();

var astral = MaterialBuilder(32021, "astral")
    .ingot()
    .fluid()
    .plasma()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .color(0x040dbf)
    .cableProperties(512,8,0,true)
    .element("Astral")
    .build();

var algaas = MaterialBuilder(32022, "algaas")
    .ingot()
    .fluid()
    .iconSet("DULL")
    .flags(["generate_rod", "generate_bolt_screw", "generate_plate", "generate_dense", "generate_foil"])
    .color(0x292145)
    .element("Algaas")
    .build();

var ingaasp = MaterialBuilder(32023, "ingaasp")
    .ingot()
    .fluid()
    .iconSet("SHINY")
    .flags(["generate_rod", "generate_bolt_screw", "generate_plate", "generate_dense", "generate_foil"])
    .color(0x4c017a)
    .element("Indiumgalliumarsenidephosphide")
    .build();

var litio = MaterialBuilder(32024, "litio")
    .ingot()
    .fluid()
    .iconSet("DULL")
    .flags(["generate_rod", "generate_plate", "generate_foil"])
    .color(0xffffef)
    .element("Lithiumtitanate")
    .build();

var limno = MaterialBuilder(32025, "limno")
    .ingot()
    .fluid()
    .iconSet("DULL")
    .flags(["generate_rod", "generate_plate", "generate_foil"])
    .color(0xfffeee)
    .element("Lithiummanganeseoxide")
    .build();

var inertinfinityingot = MaterialBuilder(32026, "inertinfinity")
    .ingot()
    .fluid()
    .iconSet("DULL")
    .color(0x808080)
    .build();

var hatunemiku = MaterialBuilder(32039, "hatunemiku")
    .ingot()
    .fluid()
    .plasma()
    .iconSet("SHINY")
    .color(0x0592ae)
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .toolStats(3939393939,3939393939,2147483647,2147483647)
    .element("Hatunemiku")
    .blastTemp(2147483647, "HIGHEST", 100663296, 393939)
    .cableProperties(2147483647,393939,0,true)
    .build();

var selenium = MaterialBuilder(32027, "selenium")
    .ingot()
    .fluid()
    .plasma()
    .iconSet("SHINY")
    .color(0x3163)
    .flags(["generate_rod", "generate_gear", "generate_long_rod", "generate_bolt_screw", "generate_ring", "generate_spring", "generate_spring_small", "generate_small_gear", "generate_rotor", "generate_frame"])
    .element("Selenium")
    .build();

var potassiumperchlorate = MaterialBuilder(32029, "potassiumperchlorate")
    .dust()
    .iconSet("DULL")
    .color(0x009d99)
    .element("Potassiumperchlorate")
    .build();

var perchloricacid = MaterialBuilder(32030, "perchloricacid")
    .dust()
    .iconSet("DULL")
    .color(0x009490)
    .element("Perchloricacid")
    .build();

var zpp = MaterialBuilder(32031, "zpp")
    .dust()
    .iconSet("DULL")
    .color(0x7b2800)
    .build();

var bistrichloromethylbenzene = MaterialBuilder(32032, "bistrichloromethylbenzene")
    .dust()
    .color(0xffffff)
    .iconSet("METALLIC")
    .build();

var bromine = MaterialBuilder(32033, "bromine")
    .dust()
    .fluid()
    .iconSet("SHINY")
    .color(0x800000)
    .build();

var terephthalicacid = MaterialBuilder(32034, "terephthalicacid")
    .dust()
    .iconSet("METALLIC")
    .color(0xffffff)
    .build();

var terephthaloylchloride = MaterialBuilder(32035, "terephthaloylchloride")
    .dust()
    .iconSet("METALLIC")
    .color(0xffffff)
    .build();
    
var pphenylenediamine = MaterialBuilder(32036, "pphenylenediamine")
    .dust()
    .iconSet("METALLIC")
    .color(0xfffeef)
    .build();

var fournitrochlorobenzene = MaterialBuilder(32037, "fournitrochlorobenzene")
    .dust()
    .iconSet("SHINY")
    .color(0xe5b200)
    .build();

var fournitroaniline = MaterialBuilder(32038, "fournitroaniline")
    .dust()
    .iconSet("SHINY")
    .color(0xac5501)
    .build();
  
var kevlar = MaterialBuilder(32040, "kevlar")
    .fluid()
    .ingot()
    .color(0xf1d00f)
    .flags(["generate_rod"])
    .build();

print("------GREGTECH_MATERIALS_LOADING_END------");
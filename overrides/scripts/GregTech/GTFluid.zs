#=================================================
# MODPACKNAME: GregTechNimosesEdition
# Writer: Sanjinoyatu1692
# DiscordName: Windows.EXE2000#2700
# Issue: Please send to my DirectMessage
#=================================================
#loader gregtech
#priority 910
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

//Elements
/*
PCl3 = Elements.add();
PCl5 = Elements.add();
AsCl3 = Elements.add();
AsF3 = Elements.add();
PF5 = Elements.add();
*/
//var TlMa = Elements.add(144, 233, -1, null, "Terrasteel", "TlMa", false);


//Neutronium
var ultrahighdensityneutronium = MaterialBuilder(32020, "ultrahighdensityneutronium")
    .fluid()
    .color(0xfffff1)
    .build();

//Phosphorus pentafluoride
var Phosphoruspentafluoride = MaterialBuilder(32200, "phosphoruspentafluoride")
    .fluid()
    .color(0xf5f17f)
    .build();

//phosphorus pentachloride
var phosphoruspentachloride = MaterialBuilder(32201, "phosphoruspentachloride")
    .fluid()
    .color(0x92a624)
    .build();

//phosphorus trichloride
var phosphorustrichloride = MaterialBuilder(32202, "phosphorustrichloride")
    .fluid()
    .color(0xa7bf21)
    .build();

//arsenictrifluoride
var arsenictrifluoride = MaterialBuilder(32203, "arsenictrifluoride")
    .fluid()
    .color(0x81bacc)
    .build();

//arsenictrichloride
var arsenictrichloride = MaterialBuilder(32204, "arsenictrichloride")
    .fluid()
    .color(0x81cc90)
    .build();

var lithiumhexafluorophosphate = MaterialBuilder(32205, "lithiumhexafluorophosphate")
    .fluid()
    .color(0x53c7c9)
    .build();

var moltenbedrock = MaterialBuilder(32206, "moltenbedrock")
    .fluid()
    .color(0x424347)
    .build();

var pyrolysisgasoline = MaterialBuilder(32207, "pyrolysisgasoline")
    .fluid()
    .color(0x9a853d)
    .build();

var heavynaphtha = MaterialBuilder(32208, "heavynaphtha")
    .fluid()
    .color(0xf1d05e)
    .build();

var btx = MaterialBuilder(32209, "btx")
    .fluid()
    .color(0x9a8562)
    .build();

var pxylene = MaterialBuilder(32210, "pxylene")
    .fluid()
    .color(0xc06f36)
    .build();

var nutrientsolutionta = MaterialBuilder(32211, "nutrientsolutionta")
    .fluid()
    .color(0x00ff0e)
    .build();

var nutrientsolutiontb = MaterialBuilder(32212, "nutrientsolutiontb")
    .fluid()
    .color(0x00fea1)
    .build();

var nutrientsolutiontc = MaterialBuilder(32213, "nutrientsolutiontc")
    .fluid()
    .color(0x00fdee)
    .build();

var nutrientsolutiontd = MaterialBuilder(32214, "nutrientsolutiontd")
    .fluid()
    .color(0x00fcdd)
    .build();

var nutrientsolutionte = MaterialBuilder(32215, "nutrientsolutionte")
    .fluid()
    .color(0xff00aa)
    .build();

var firedragonblood = MaterialBuilder(32216, "firedragonblood")
    .fluid()
    .color(0xc82828)
    .build();

var icedragonblood = MaterialBuilder(32217, "icedragonblood")
    .fluid()
    .color(0x2adce1)
    .build();
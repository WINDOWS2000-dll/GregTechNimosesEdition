#=================================================
# MODPACKNAME: GregTechNimosesEdition
# Writer: Sanjinoyatu1692
# DiscordName: Windows.EXE2000#2700
# Issue: Please send to my DirectMessage
#=================================================

#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;

print("------OREDICT_LOADING_START------");
//Create Oredict
    oreDict.get("circuitUev");

    oreDict.get("circuitUiv");

    oreDict.get("circuitUxv");

//ADD OreDict
    val addoredict = <ore:ingotDraconiumAwakened>;
    addoredict.add(<gregtech:meta_ingot:32008>);

    val addoredict1 = <ore:circuitZpm>;
    addoredict1.add(<contenttweaker:draconiccircuit>);

    val addoredict2 = <ore:circuitUv>;
    addoredict2.add([<contenttweaker:draconicprosessor>, <contenttweaker:awakenedcircuit>]);

    val addoredict3 = <ore:circuitUhv>;
    addoredict3.add([<contenttweaker:draconicprosessorarray>, <contenttweaker:awakenedprosessor>, <contenttweaker:chaoticcircuit>]);

    val addoredict4 = <ore:circuitUev>;
    addoredict4.add([<contenttweaker:draconicmainframe>, <contenttweaker:awakenedprocessorarray>, <contenttweaker:chaoticprocessor>]);

    val addoredict5 = <ore:circuitUiv>;
    addoredict5.add([<contenttweaker:awakenedmainframe>, <contenttweaker:chaoticprocessorarray>]);

    val addoredict6 = <ore:circuitUxv>;
    addoredict6.add(<contenttweaker:chaoticprocessormainframe>);

    val addoredict7 = <ore:ingotAstralStarmetal>;
    addoredict7.add(<gregtech:meta_ingot:32021>);

    val addoredict8 = <ore:gaiaIngot>;
    addoredict8.add(<gregtech:meta_ingot:32005>);

    val addoredict9 = <ore:Astral>;
    addoredict9.add(<astralsorcery:itemcraftingcomponent:1>);

//Remove OreDict
    val removeoredict1 = <ore:ingotTitanium>;
    removeoredict1.remove(<libvulpes:productingot:7>);

print("------OREDICT_LOADING_END------");

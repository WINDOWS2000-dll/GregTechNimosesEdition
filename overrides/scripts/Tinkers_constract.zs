#=================================================
# MODPACKNAME: GregTechNimosesEdition
# Writer: Sanjinoyatu1692
# DiscordName: Windows.EXE2000#2700
# Issue: Please send to my DirectMessage
#=================================================
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.tconstruct.Casting;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;

//any casts remove
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:1>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:2>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:11>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:clay_cast>);

//remove melting recipes - removes all first, then we can selectively add ingot melting back in on an add needed basis
var meltingRemoved as ILiquidStack[]= [
	<liquid:titanium>,
	<liquid:iridium>,
	<liquid:cobalt>,
	<liquid:ardite>,
	<liquid:constantan>,
	<liquid:redstone>,
	<liquid:glowstone>,
	<liquid:soularium>,
	<liquid:clay>,
	<liquid:draconium>,
	<liquid:osmium>,
	<liquid:steel>,
	<liquid:uranium>,
	<liquid:brass>,
	<liquid:plutonium>,
	<liquid:copper>,
	<liquid:gold>,
	<liquid:aluminum>,
	<liquid:crystalline_alloy>,
	<liquid:thorium>,
	<liquid:tin>,
	<liquid:bronze>,
	<liquid:terrasteel>,
	<liquid:platinum>,
	<liquid:lithium>,
	<liquid:beryllium>,
	<liquid:zinc>,
	<liquid:nickel>,
	<liquid:silver>,
	<liquid:invar>,
	<liquid:ender>,
	<liquid:enderium>,
	<liquid:signalum>,
	<liquid:construction_alloy>,
	<liquid:pulsating_iron>,
	<liquid:conductive_iron>,
	<liquid:redstone_alloy>,
	<liquid:vibrant_alloy>,
	<liquid:energetic_alloy>,
	<liquid:vivid_alloy>,
	<liquid:dark_steel>,
	<liquid:end_steel>,
	<liquid:electrical_steel>,
	<liquid:energetic_silver>,
	<liquid:crystalline_pink_slime>,
	<liquid:stellar_alloy>,
	<liquid:melodic_alloy>,
	<liquid:crude_steel>,
	<liquid:lumium>,
	<liquid:hard_carbon>,
	<liquid:tough>,
	<liquid:boron>,
	<liquid:palladium_fluid>,
	<liquid:lead>,
	<liquid:magnesium>,
	<liquid:manasteel>,
	<liquid:thaumium>,
	<liquid:electrum>,
	<liquid:infinity_metal>,
	<liquid:void_metal>,
	<liquid:manganese>,
	<liquid:starmetal>,
	<liquid:emerald>,
	<liquid:glass>,
	<liquid:refined_glowstone>,
	<liquid:refined_obsidian>,
	<liquid:dragonsteel_fire>,
	<liquid:dragonsteel_ice>,
	<liquid:neutronium>,
	<liquid:ferroboron>,
	<liquid:manganese_dioxide>,
	<liquid:alubrass>,
	<liquid:obsidian>,
	<liquid:stone>,
	<liquid:fluxed_electrum>,
	<liquid:draconic_metal>,
	<liquid:chaotic_metal>,
	<liquid:wyvern_metal>,
	<liquid:fluix_steel>,
	<liquid:sky_stone>,
	<liquid:diamond>,
	<liquid:xu_demonic_metal>,
	<liquid:xu_enchanted_metal>,
	<liquid:xu_evil_metal>,
	<liquid:glass>,
	<liquid:emerald>
];

for i in meltingRemoved {
	mods.tconstruct.Melting.removeRecipe(i);
}
//Alloys Removed
var alloysRemoved as ILiquidStack[]= [
	<liquid:signalum>,
  <liquid:ferroboron>,
  <liquid:hard_carbon>,
  <liquid:tough>,
	<liquid:enderium>,
	<liquid:electrum>,
	<liquid:manyullyn>,
	<liquid:obsidian>,
	<liquid:magnesium_diboride>,
	<liquid:steel>,
	<liquid:lumium>,
	<liquid:osmiridium>,
	<liquid:invar>,
	<liquid:constantan>,
	<liquid:alubrass>,
	<liquid:brass>,
	<liquid:energetic_alloy>,
	<liquid:vibrant_alloy>,
	<liquid:pulsating_iron>,
	<liquid:conductive_iron>,
	<liquid:dark_steel>,
	<liquid:clay>
	];

for i in alloysRemoved {
	mods.tconstruct.Alloy.removeRecipe(i);
}

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


print("------Large_Fusion_Reactor_Recipe_Loading_Start------");

/*
LFR R/P Mk.1 64 EU/t 80% 0.800 material 88% 0.880
LFR R/P Mk.2 128 EU/t 75% 0.750 material 76% 0.760
LFR R/P Mk.3 256 EU/t 60% 0.600 material 64% 0.640 
*/

//ADD Recipe
  //Fusion Reactor Mk.1
  #=============================
  #Large Fusion Reactor Mk.1
  #LFR R/P Mk.1 64 EU/t 80% 0.800
  #=============================
    //Helium Plasma
      mmRecipe("Helium_Plasma", "Large_Fusion_Reactor_Mk1", 16)
        .addEnergyPerTickInput(838861)//MAX2,000,000,000
        .addFluidInput(<liquid:tritium> * 8000)
        .addFluidInput(<liquid:deuterium> * 8000)
        .addFluidOutput(<liquid:plasma.helium> * 8000)
        .addMekanismLaserInput(4000000)
        .build();
    //Lutetium
      mmRecipe("Lutetium", "Large_Fusion_Reactor_Mk1", 16)
        .addEnergyPerTickInput(1572864)//MAX2,000,000,000
        .addFluidInput(<liquid:silicon> * 1024)
        .addFluidInput(<liquid:lanthanum> * 1024)
        .addFluidOutput(<liquid:lutetium> * 1024)
        .addMekanismLaserInput(4000000)
        .build();
    //Duranium
      mmRecipe("Duranium", "Large_Fusion_Reactor_Mk1", 64)
        .addEnergyPerTickInput(3355443)//MAX2,000,000,000
        .addFluidInput(<liquid:gallium> * 1024)
        .addFluidInput(<liquid:radon> * 8000)
        .addFluidOutput(<liquid:duranium> * 1024)
        .addMekanismLaserInput(4000000)
        .build();
    //Europium
      mmRecipe("Europium", "Large_Fusion_Reactor_Mk1", 64)
        .addEnergyPerTickInput(5033164)//MAX2,000,000,000
        .addFluidInput(<liquid:hydrogen> * 24000)
        .addFluidInput(<liquid:neodymium> * 1024)
        .addFluidOutput(<liquid:europium> * 1024)
        .addMekanismLaserInput(4000000)
        .build();
    //Chrome
      mmRecipe("Chrome", "Large_Fusion_Reactor_Mk1", 64)
        .addEnergyPerTickInput(5033164)//MAX2,000,000,000
        .addFluidInput(<liquid:hydrogen> * 8000)
        .addFluidInput(<liquid:vanadium> * 1024)
        .addFluidOutput(<liquid:chrome> * 1024)
        .addMekanismLaserInput(4000000)
        .build();
    //Osmium
      mmRecipe("Osmium", "Large_Fusion_Reactor_Mk1", 64)
        .addEnergyPerTickInput(5033164)//MAX2,000,000,000
        .addFluidInput(<liquid:silver> * 1024)
        .addFluidInput(<liquid:copper> * 1024)
        .addFluidOutput(<liquid:osmium> * 1024)
        .addMekanismLaserInput(4000000)
        .build();
    //Uranium
      mmRecipe("Uranium", "Large_Fusion_Reactor_Mk1", 128)
        .addEnergyPerTickInput(5033164)//MAX2,000,000,000
        .addFluidInput(<liquid:aluminium> * 1024)
        .addFluidInput(<liquid:gold> * 1024)
        .addFluidOutput(<liquid:uranium> * 1024)
        .addMekanismLaserInput(4000000)
        .build();
    //Uranium235
      mmRecipe("Uranium_235", "Large_Fusion_Reactor_Mk1", 128)
        .addEnergyPerTickInput(5033164)//MAX2,000,000,000
        .addFluidInput(<liquid:mercury> * 8000)
        .addFluidInput(<liquid:magnesium> * 1024)
        .addFluidOutput(<liquid:uranium_235> * 1024)
        .addMekanismLaserInput(4000000)
        .build();
    //Plutonium 239
      mmRecipe("Plutonium_239", "Large_Fusion_Reactor_Mk1", 128)
        .addEnergyPerTickInput(10066330)//MAX2,000,000,000
        .addFluidInput(<liquid:zinc> * 1024)
        .addFluidInput(<liquid:xenon> * 8000)
        .addFluidOutput(<liquid:plutonium> * 1024)
        .addMekanismLaserInput(4000000)
        .build();
  //Fusion Reactor Mk.2
  #=============================
  #Large Fusion Reactor Mk.1
  #LFR R/P Mk.2 128 EU/t 75% 0.750
  #=============================
    //Mk.1's Recipe
      //Helium Plasma
        mmRecipe("Helium_PlasmaMk2", "Large_Fusion_Reactor_Mk2", 16)
          .addEnergyPerTickInput(1572864)//MAX2,000,000,000
          .addFluidInput(<liquid:tritium> * 16000)
          .addFluidInput(<liquid:deuterium> * 16000)
          .addFluidOutput(<liquid:plasma.helium> * 16000)
          .addMekanismLaserInput(8000000)
          .build();
      //Lutetium
        mmRecipe("LutetiumMk2", "Large_Fusion_Reactor_Mk2", 16)
          .addEnergyPerTickInput(2949120)//MAX2,000,000,000
          .addFluidInput(<liquid:silicon> * 2048)
          .addFluidInput(<liquid:lanthanum> * 2048)
          .addFluidOutput(<liquid:lutetium> * 2048)
          .addMekanismLaserInput(8000000)
          .build();
      //Duranium
        mmRecipe("DuraniumMk2", "Large_Fusion_Reactor_Mk2", 64)
          .addEnergyPerTickInput(6291456)//MAX2,000,000,000
          .addFluidInput(<liquid:gallium> * 2048)
          .addFluidInput(<liquid:radon> * 16000)
          .addFluidOutput(<liquid:duranium> * 2048)
          .addMekanismLaserInput(8000000)
          .build();
      //Europium
        mmRecipe("EuropiumMk2", "Large_Fusion_Reactor_Mk2", 64)
          .addEnergyPerTickInput(9437184)//MAX2,000,000,000
          .addFluidInput(<liquid:hydrogen> * 48000)
          .addFluidInput(<liquid:neodymium> * 2048)
          .addFluidOutput(<liquid:europium> * 2048)
          .addMekanismLaserInput(8000000)
          .build();
      //Chrome
        mmRecipe("ChromeMk2", "Large_Fusion_Reactor_Mk2", 64)
          .addEnergyPerTickInput(9437184)//MAX2,000,000,000
          .addFluidInput(<liquid:hydrogen> * 16000)
          .addFluidInput(<liquid:vanadium> * 2048)
          .addFluidOutput(<liquid:chrome> * 2048)
          .addMekanismLaserInput(8000000)
          .build();
      //Osmium
        mmRecipe("OsmiumMk2", "Large_Fusion_Reactor_Mk2", 64)
          .addEnergyPerTickInput(9437184)//MAX2,000,000,000
          .addFluidInput(<liquid:silver> * 2048)
          .addFluidInput(<liquid:copper> * 2048)
          .addFluidOutput(<liquid:osmium> * 2048)
          .addMekanismLaserInput(8000000)
          .build();
      //Uranium
        mmRecipe("UraniumMk2", "Large_Fusion_Reactor_Mk2", 128)
          .addEnergyPerTickInput(9437184)//MAX2,000,000,000
          .addFluidInput(<liquid:aluminium> * 2048)
          .addFluidInput(<liquid:gold> * 2048)
          .addFluidOutput(<liquid:uranium> * 2048)
          .addMekanismLaserInput(8000000)
          .build();
      //Uranium235
        mmRecipe("Uranium_235Mk2", "Large_Fusion_Reactor_Mk2", 128)
          .addEnergyPerTickInput(9437184)//MAX2,000,000,000
          .addFluidInput(<liquid:mercury> * 16000)
          .addFluidInput(<liquid:magnesium> * 2048)
          .addFluidOutput(<liquid:uranium_235> * 2048)
          .addMekanismLaserInput(8000000)
          .build();
      //Plutonium 239
        mmRecipe("Plutonium_239Mk2", "Large_Fusion_Reactor_Mk2", 128)
          .addEnergyPerTickInput(18874368)//MAX2,000,000,000
          .addFluidInput(<liquid:zinc> * 2048)
          .addFluidInput(<liquid:xenon> * 16000)
          .addFluidOutput(<liquid:plutonium> * 2048)
          .addMekanismLaserInput(8000000)
          .build();
    //Mk.2's Recipe
      //Awakened Draconium
        mmRecipe("Awakened_Draconium", "Large_Fusion_Reactor_Mk2", 20)
          .addEnergyPerTickInput(18874368)//MAX2,000,000,000
          .addFluidInput(<liquid:draconium> * 18432)
          .addFluidInput(<liquid:naquadria> * 18432)
          .addFluidOutput(<liquid:draconiumawakened> * 18432)
          .addMekanismLaserInput(8000000)
          .build();
      //Ox Plasma
        mmRecipe("Ox_Plasma", "Large_Fusion_Reactor_Mk2", 32)
          .addEnergyPerTickInput(1572864)//MAX2,000,000,000
          .addFluidInput(<liquid:carbon> * 2048)
          .addFluidInput(<liquid:helium_3> * 16000)
          .addFluidOutput(<liquid:plasma.oxygen> * 16000)
          .addMekanismLaserInput(8000000)
          .build();
      //Arg Plasma
        mmRecipe("Arg_Plasma", "Large_Fusion_Reactor_Mk2", 32)
          .addEnergyPerTickInput(9437184)//MAX2,000,000,000
          .addFluidInput(<liquid:carbon> * 2048)
          .addFluidInput(<liquid:magnesium> * 2048)
          .addFluidOutput(<liquid:plasma.argon> * 16000)
          .addMekanismLaserInput(8000000)
          .build();
      //Darmstadtium
        mmRecipe("Darmstadtium", "Large_Fusion_Reactor_Mk2", 32)
          .addEnergyPerTickInput(11796480)//MAX2,000,000,000
          .addFluidInput(<liquid:arsenic> * 4096)
          .addFluidInput(<liquid:ruthenium> * 2048)
          .addFluidOutput(<liquid:darmstadtium> * 2048)
          .addMekanismLaserInput(8000000)
          .build();
      //Tritanium
        mmRecipe("Tritanium", "Large_Fusion_Reactor_Mk2", 64)
          .addEnergyPerTickInput(11796480)//MAX2,000,000,000
          .addFluidInput(<liquid:titanium> * 4096)
          .addFluidInput(<liquid:duranium> * 4096)
          .addFluidOutput(<liquid:tritanium> * 2048)
          .addMekanismLaserInput(8000000)
          .build();
      //Americium
        mmRecipe("Americium", "Large_Fusion_Reactor_Mk2", 64)
          .addEnergyPerTickInput(18874368)//MAX2,000,000,000
          .addFluidInput(<liquid:lutetium> * 4096)
          .addFluidInput(<liquid:chrome> * 4096)
          .addFluidOutput(<liquid:americium> * 4096)
          .addMekanismLaserInput(8000000)
          .build();
      //Radon
        mmRecipe("Radon", "Large_Fusion_Reactor_Mk2", 64)
          .addEnergyPerTickInput(11796480)//MAX2,000,000,000
          .addFluidInput(<liquid:gold> * 2048)
          .addFluidInput(<liquid:mercury> * 2048)
          .addFluidOutput(<liquid:radon> * 16000)
          .addMekanismLaserInput(8000000)
          .build();
      //Nitr Plasma
        mmRecipe("Nitr_Plasma", "Large_Fusion_Reactor_Mk2", 16)
          .addEnergyPerTickInput(6291456)//MAX2,000,000,000
          .addFluidInput(<liquid:beryllium> * 2048)
          .addFluidInput(<liquid:deuterium> * 48000)
          .addFluidOutput(<liquid:plasma.nitrogen> * 16000)
          .addMekanismLaserInput(8000000)
          .build();
      //Indium
        mmRecipe("Indium", "Large_Fusion_Reactor_Mk2", 16)
          .addEnergyPerTickInput(9437184)//MAX2,000,000,000
          .addFluidInput(<liquid:silver> * 18432)
          .addFluidInput(<liquid:lithium> * 18432)
          .addFluidOutput(<liquid:indium> * 18432)
          .addMekanismLaserInput(8000000)
          .build();
      //Pu-241
        mmRecipe("Pu_241", "Large_Fusion_Reactor_Mk2", 128)
          .addEnergyPerTickInput(18874368)//MAX2,000,000,000
          .addFluidInput(<liquid:krypton> * 16000)
          .addFluidInput(<liquid:cerium> * 2048)
          .addFluidOutput(<liquid:plutonium_241> * 2048)
          .addMekanismLaserInput(8000000)
          .build();
  //Fusion Reactor Mk.3
  #=============================
  #Large Fusion Reactor Mk.3
  #LFR R/P Mk.3 256 EU/t 60% 0.600
  #=============================
    //Mk.1's Recipe
      //Helium Plasma
        mmRecipe("Helium_PlasmaMk3", "Large_Fusion_Reactor_Mk3", 16)
          .addEnergyPerTickInput(2516538)//MAX2,000,000,000
          .addFluidInput(<liquid:tritium> * 32000)
          .addFluidInput(<liquid:deuterium> * 32000)
          .addFluidOutput(<liquid:plasma.helium> * 32000)
          .addMekanismLaserInput(16000000)
          .build();
      //Lutetium
        mmRecipe("LutetiumMk3", "Large_Fusion_Reactor_Mk3", 16)
          .addEnergyPerTickInput(4718592)//MAX2,000,000,000
          .addFluidInput(<liquid:silicon> * 4096)
          .addFluidInput(<liquid:lanthanum> * 4096)
          .addFluidOutput(<liquid:lutetium> * 4096)
          .addMekanismLaserInput(16000000)
          .build();
      //Duranium
        mmRecipe("DuraniumMk3", "Large_Fusion_Reactor_Mk3", 64)
          .addEnergyPerTickInput(10066329)//MAX2,000,000,000
          .addFluidInput(<liquid:gallium> * 4096)
          .addFluidInput(<liquid:radon> * 32000)
          .addFluidOutput(<liquid:duranium> * 4096)
          .addMekanismLaserInput(16000000)
          .build();
      //Europium
        mmRecipe("EuropiumMk3", "Large_Fusion_Reactor_Mk3", 64)
          .addEnergyPerTickInput(15099494)//MAX2,000,000,000
          .addFluidInput(<liquid:hydrogen> * 96000)
          .addFluidInput(<liquid:neodymium> * 4096)
          .addFluidOutput(<liquid:europium> * 1024)
          .addMekanismLaserInput(16000000)
          .build();
      //Chrome
        mmRecipe("ChromeMk3", "Large_Fusion_Reactor_Mk3", 64)
          .addEnergyPerTickInput(15099494)//MAX2,000,000,000
          .addFluidInput(<liquid:hydrogen> * 32000)
          .addFluidInput(<liquid:vanadium> * 4096)
          .addFluidOutput(<liquid:chrome> * 4096)
          .addMekanismLaserInput(16000000)
          .build();
      //Osmium
        mmRecipe("OsmiumMk3", "Large_Fusion_Reactor_Mk3", 64)
          .addEnergyPerTickInput(15099494)//MAX2,000,000,000
          .addFluidInput(<liquid:silver> * 4096)
          .addFluidInput(<liquid:copper> * 4096)
          .addFluidOutput(<liquid:osmium> * 4096)
          .addMekanismLaserInput(16000000)
          .build();
      //Uranium
          mmRecipe("UraniumMk3", "Large_Fusion_Reactor_Mk3", 128)
            .addEnergyPerTickInput(15099494)//MAX2,000,000,000
            .addFluidInput(<liquid:aluminium> * 4096)
            .addFluidInput(<liquid:gold> * 4096)
            .addFluidOutput(<liquid:uranium> * 4096)
            .addMekanismLaserInput(16000000)
            .build();
      //Uranium235
          mmRecipe("Uranium_235Mk3", "Large_Fusion_Reactor_Mk3", 128)
            .addEnergyPerTickInput(15099494)//MAX2,000,000,000
            .addFluidInput(<liquid:mercury> * 32000)
            .addFluidInput(<liquid:magnesium> * 4096)
            .addFluidOutput(<liquid:uranium_235> * 4096)
            .addMekanismLaserInput(16000000)
            .build();
      //Plutonium 239
          mmRecipe("Plutonium_239Mk3", "Large_Fusion_Reactor_Mk3", 128)
            .addEnergyPerTickInput(30198988)//MAX2,000,000,000
            .addFluidInput(<liquid:zinc> * 4096)
            .addFluidInput(<liquid:xenon> * 32000)
            .addFluidOutput(<liquid:plutonium> * 4096)
            .addMekanismLaserInput(16000000)
            .build();
    //Mk.2's Recipe
      //Awakened Draconium
        mmRecipe("Awakened_DraconiumMk3", "Large_Fusion_Reactor_Mk3", 20)
          .addEnergyPerTickInput(30198988)//MAX2,000,000,000
          .addFluidInput(<liquid:draconium> * 36864)
          .addFluidInput(<liquid:naquadria> * 36864)
          .addFluidOutput(<liquid:draconiumawakened> * 36864)
          .addMekanismLaserInput(16000000)
          .build();
      //Ox Plasma
        mmRecipe("Ox_PlasmaMk3", "Large_Fusion_Reactor_Mk3", 32)
          .addEnergyPerTickInput(2516582)//MAX2,000,000,000
          .addFluidInput(<liquid:carbon> * 4096)
          .addFluidInput(<liquid:helium_3> * 32000)
          .addFluidOutput(<liquid:plasma.oxygen> * 32000)
          .addMekanismLaserInput(16000000)
          .build();
      //Arg Plasma
        mmRecipe("Arg_PlasmaMk3", "Large_Fusion_Reactor_Mk3", 32)
          .addEnergyPerTickInput(15099494)//MAX2,000,000,000
          .addFluidInput(<liquid:carbon> * 4096)
          .addFluidInput(<liquid:magnesium> * 4096)
          .addFluidOutput(<liquid:plasma.argon> * 32000)
          .addMekanismLaserInput(16000000)
          .build();
      //Darmstadtium
        mmRecipe("DarmstadtiumMk3", "Large_Fusion_Reactor_Mk3", 32)
          .addEnergyPerTickInput(18874368)//MAX2,000,000,000
          .addFluidInput(<liquid:arsenic> * 8192)
          .addFluidInput(<liquid:ruthenium> * 4096)
          .addFluidOutput(<liquid:darmstadtium> * 4096)
          .addMekanismLaserInput(16000000)
          .build();
      //Tritanium
        mmRecipe("TritaniumMk3", "Large_Fusion_Reactor_Mk3", 64)
          .addEnergyPerTickInput(18874368)//MAX2,000,000,000
          .addFluidInput(<liquid:titanium> * 8192)
          .addFluidInput(<liquid:duranium> * 8192)
          .addFluidOutput(<liquid:tritanium> * 4096)
          .addMekanismLaserInput(16000000)
          .build();
      //Americium
        mmRecipe("AmericiumMk3", "Large_Fusion_Reactor_Mk3", 64)
          .addEnergyPerTickInput(30198988)//MAX2,000,000,000
          .addFluidInput(<liquid:lutetium> * 8192)
          .addFluidInput(<liquid:chrome> * 8192)
          .addFluidOutput(<liquid:americium> * 8192)
          .addMekanismLaserInput(16000000)
          .build();
      //Radon
        mmRecipe("RadonMk3", "Large_Fusion_Reactor_Mk3", 64)
          .addEnergyPerTickInput(18874368)//MAX2,000,000,000
          .addFluidInput(<liquid:gold> * 4096)
          .addFluidInput(<liquid:mercury> * 4096)
          .addFluidOutput(<liquid:radon> * 32000)
          .addMekanismLaserInput(16000000)
          .build();
      //Nitr Plasma
        mmRecipe("Nitr_PlasmaMk3", "Large_Fusion_Reactor_Mk3", 16)
          .addEnergyPerTickInput(10066329)//MAX2,000,000,000
          .addFluidInput(<liquid:beryllium> * 4096)
          .addFluidInput(<liquid:deuterium> * 96000)
          .addFluidOutput(<liquid:plasma.nitrogen> * 32000)
          .addMekanismLaserInput(16000000)
          .build();
      //Indium
        mmRecipe("IndiumMk3", "Large_Fusion_Reactor_Mk3", 16)
          .addEnergyPerTickInput(15099494)//MAX2,000,000,000
          .addFluidInput(<liquid:silver> * 36864)
          .addFluidInput(<liquid:lithium> * 36864)
          .addFluidOutput(<liquid:indium> * 36864)
          .addMekanismLaserInput(16000000)
          .build();
      //Pu-241
        mmRecipe("Pu_241Mk3", "Large_Fusion_Reactor_Mk3", 128)
          .addEnergyPerTickInput(30198988)//MAX2,000,000,000
          .addFluidInput(<liquid:krypton> * 32000)
          .addFluidInput(<liquid:cerium> * 4096)
          .addFluidOutput(<liquid:plutonium_241> * 4096)
          .addMekanismLaserInput(16000000)
          .build();
    //Mk3's Recipe
      //Naquadria
        mmRecipe("Naquadria", "Large_Fusion_Reactor_Mk3", 32)
          .addEnergyPerTickInput(30198988)//MAX2,000,000,000
          .addFluidInput(<liquid:radon> * 32000)
          .addFluidInput(<liquid:naquadah_enriched> * 4096)
          .addFluidOutput(<liquid:naquadria> * 4096)
          .addMekanismLaserInput(16000000)
          .build();
      //Nic Plasma
        mmRecipe("Nic_Plasma", "Large_Fusion_Reactor_Mk3", 16)
          .addEnergyPerTickInput(18874368)//MAX2,000,000,000
          .addFluidInput(<liquid:fluorine> * 32000)
          .addFluidInput(<liquid:potassium> * 4096)
          .addFluidOutput(<liquid:plasma.nickel> * 4096)
          .addMekanismLaserInput(16000000)
          .build();
      //Iron Plasma
        mmRecipe("Iron_Plasma", "Large_Fusion_Reactor_Mk3", 32)
          .addEnergyPerTickInput(4718592)//MAX2,000,000,000
          .addFluidInput(<liquid:silicon> * 4096)
          .addFluidInput(<liquid:magnesium> * 4096)
          .addFluidOutput(<liquid:plasma.iron> * 4096)
          .addMekanismLaserInput(16000000)
          .build();
      //NEUTRONIUM
        mmRecipe("NEUTRONIUM", "Large_Fusion_Reactor_Mk3", 200)
          .addEnergyPerTickInput(85563801)//MAX2,000,000,000
          .addFluidInput(<liquid:naquadria> * 32768)
          .addFluidInput(<liquid:americium> * 32768)
          .addFluidOutput(<liquid:ultrahighdensityneutronium> * 8192)
          .addMekanismLaserInput(16000000)
          .build();


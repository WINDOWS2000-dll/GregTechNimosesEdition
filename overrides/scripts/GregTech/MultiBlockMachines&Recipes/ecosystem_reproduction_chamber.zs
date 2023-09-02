import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlock;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IFacing;
import crafttweaker.world.IWorld;
import mods.contenttweaker.Random;
import mods.contenttweaker.World;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IPatternMatchContext;
import mods.gregtech.multiblock.functions.ICheckRecipeFunction;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.multiblock.functions.IUpdateFormedValidFunction;
import mods.gregtech.multiblock.functions.IFormStructureFunction;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.functions.ICompleteRecipeFunction;
import mods.gregtech.recipe.IRecipe;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.predicate.IMTEPredicate;
import mods.gregtech.IMetaTileEntity;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;
import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.thaumcraft.Infusion;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipeBuilder.newBuilder as mmRecipe;
import mods.astralsorcery.Utils;
import mods.astralsorcery.Altar.addTraitAltarRecipe as AlterT4Recipe;

//RecipeMap
  //ecosystem_reproduction_chamber
    global ecosystem_reproduction_chamber_recipe as RecipeMap = FactoryRecipeMap.start("ecosystem_reproduction_chamber")
      .minFluidInputs(1)
      .maxFluidInputs(3)
      .minInputs(1)
      .maxInputs(9)
      .maxFluidOutputs(3)
      .maxOutputs(12)
      .build();

val ecosystem_reproduction_chamber = Builder.start("ecosystem_reproduction_chamber", 3000)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
            .aisle(
              "     HHHHH     ",
              "   FFFFFFFFF   ",
              "  FFFFFFFFFFF  ",
              " FFFFFFFFFFFFF ",
              " FFFFFFFFFFFFF ",
              "FFFFFFFFFFFFFFF",
              "HFFFFFFFFFFFFFH",
              "HFFFFFFFFFFFFFH",
              "HFFFFFFFFFFFFFH",
              "FFFFFFFFFFFFFFF",
              " FFFFFFFFFFFFF ",
              " FFFFFFFFFFFFF ",
              "  FFFFFFFFFFF  ",
              "   FFFFFFFFF   ",
              "     FHCFF     "
            )
            .aisle(
              "     FFFFF     ",//1
              "   FFPPPPPFF   ",//2
              "  FPPPPPPPPPF  ",//3
              " FPWWWWWWWWWPF ",//4
              " FPWBBBBBBBWPF ",//5
              "FPPWBBBBBBBWPPF",//6
              "HPPWBBWWWBBWPPH",//7
              "HPPWBBWWWBBWPPH",//8
              "HPPWBBWWWBBWPPH",//9
              "FPPWBBBBBBBWPPF",//10
              " FPWBBBBBBBWPF ",//11
              " FPWWWWWWWWWPF ",//12
              "  FPPPPPPPPPF  ",//13
              "   FFPPPPPFF   ",//14
              "     FFFFF     "
            )
            .aisle(
              "     FFFFF     ",
              "   FFGGGGGFF   ",
              "  FGGGGGGGGGF  ",
              " FGGGGGGGGGGGF ",
              " FGGGGGGGGGGGF ",
              "FGGGGGGGGGGGGGF",
              "FGGGGGGGGGGGGGF",
              "FGGGGGGGGGGGGGF",
              "FGGGGGGGGGGGGGF",
              "FGGGGGGGGGGGGGF",
              " FGGGGGGGGGGGF ",
              " FGGGGGGGGGGGF ",
              "  FGGGGGGGGGF  ",
              "   FFGGGGGFF   ",
              "     FFFFF     "
            )
            .aisleRepeatable(6, 6,
              "     FFFFF     ",
              "   FF#####FF   ",
              "  F#########F  ",
              " F###########F ",
              " F###########F ",
              "F#############F",
              "F#############F",
              "F#############F",
              "F#############F",
              "F#############F",
              " F###########F ",
              " F###########F ",
              "  F#########F  ",
              "   FF#####FF   ",
              "     FFFFF     "
            )
            .aisle(
              "     FFFFF     ",
              "   FFFFFFFFF   ",
              "  FFFLLLLLFFF  ",
              " FFLLFFFFFLLFF ",
              " FFLFFFFFFFLFF ",
              "FFLFFFFFFFFFLFF",
              "FFLFFFFFFFFFLFF",
              "FFLFFFFFFFFFLFF",
              "FFLFFFFFFFFFLFF",
              "FFLFFFFFFFFFLFF",
              " FFLFFFFFFFLFF ",
              " FFLLFFFFFLLFF ",
              "  FFFLLLLLFFF  ",
              "   FFFFFFFFF   ",
              "     FFFFF     "
            )
        .where('C', controller.self())
        .where('G', <blockstate:minecraft:grass>)
        .where('W', <metastate:gcym:unique_casing>)
        .where('B', <metastate:gcym:unique_casing:1>)
        .where('L', <metastate:gregtech:cleanroom_casing:1>)
        .where('P', <metastate:gregtech:boiler_casing:1>)
        .where(' ', CTPredicate.getAny())
        .where('#', CTPredicate.getAir())
        .where("F", CTPredicate.states(<metastate:gregtech:metal_casing:5>))
        .where('H', CTPredicate.states(<metastate:gregtech:metal_casing:4>)
                      |   CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(3).setMaxGlobalLimited(3).setPreviewCount(3)
                      |   CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(3).setMaxGlobalLimited(3).setPreviewCount(3)
                      |   CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(3).setMaxGlobalLimited(3).setPreviewCount(3)
                      |   CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(3).setMaxGlobalLimited(3).setPreviewCount(3)
                      |   CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                      |   CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
        )
        .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(ecosystem_reproduction_chamber_recipe)
    .withBaseTexture(<metastate:gregtech:metal_casing:5>)
    .buildAndRegister() as Multiblock;

ecosystem_reproduction_chamber.hasMufflerMechanics = false;

//ADD Recipe
  //Dragon Stage1
    //Fire
      //Red
        ecosystem_reproduction_chamber.recipeMap
          .recipeBuilder()
            .inputs([
              <iceandfire:dragonegg_red>,
              <iceandfire:chared_dirt> * 16,
              <iceandfire:nest> * 16,
              <minecraft:feather> * 32,
              <iceandfire:dragon_meal> * 24,
              <gregtech:meta_tool_head_sword:113> * 12
            ])
            .outputs([
              <iceandfire:fire_dragon_heart>,
              <iceandfire:dragonscales_red> * 16,
              <iceandfire:fire_dragon_flesh> * 8,
              <iceandfire:dragonbone> * 16
            ])
            .fluidInputs([
              <liquid:water> * 12000,
              <liquid:nutrientsolutionta> * 4000,
              <liquid:lava> * 8000
            ])
            .fluidOutputs([
              <liquid:firedragonblood> * 576,
              <liquid:gtfo_sludge> * 5760
            ])
            .EUt(8192)
            .duration(12000)
            .buildAndRegister();
      //Emerald
        ecosystem_reproduction_chamber.recipeMap
          .recipeBuilder()
            .inputs([
              <iceandfire:dragonegg_green>,
              <iceandfire:chared_dirt> * 16,
              <iceandfire:nest> * 16,
              <minecraft:feather> * 32,
              <iceandfire:dragon_meal> * 24,
              <gregtech:meta_tool_head_sword:113> * 12
            ])
            .outputs([
              <iceandfire:fire_dragon_heart>,
              <iceandfire:dragonscales_green> * 16,
              <iceandfire:fire_dragon_flesh> * 8,
              <iceandfire:dragonbone> * 16
            ])
            .fluidInputs([
              <liquid:water> * 12000,
              <liquid:nutrientsolutionta> * 4000,
              <liquid:lava> * 8000
            ])
            .fluidOutputs([
              <liquid:firedragonblood> * 576,
              <liquid:gtfo_sludge> * 5760
            ])
            .EUt(8192)
            .duration(12000)
            .buildAndRegister();
      //Bronze
        ecosystem_reproduction_chamber.recipeMap
          .recipeBuilder()
            .inputs([
              <iceandfire:dragonegg_bronze>,
              <iceandfire:chared_dirt> * 16,
              <iceandfire:nest> * 16,
              <minecraft:feather> * 32,
              <iceandfire:dragon_meal> * 24,
              <gregtech:meta_tool_head_sword:113> * 12
            ])
            .outputs([
              <iceandfire:fire_dragon_heart>,
              <iceandfire:dragonscales_bronze> * 16,
              <iceandfire:fire_dragon_flesh> * 8,
              <iceandfire:dragonbone> * 16
            ])
            .fluidInputs([
              <liquid:water> * 12000,
              <liquid:nutrientsolutionta> * 4000,
              <liquid:lava> * 8000
            ])
            .fluidOutputs([
              <liquid:firedragonblood> * 576,
              <liquid:gtfo_sludge> * 5760
            ])
            .EUt(8192)
            .duration(12000)
            .buildAndRegister();
      //Gray
        ecosystem_reproduction_chamber.recipeMap
          .recipeBuilder()
            .inputs([
              <iceandfire:dragonegg_gray>,
              <iceandfire:chared_dirt> * 16,
              <iceandfire:nest> * 16,
              <minecraft:feather> * 32,
              <iceandfire:dragon_meal> * 24,
              <gregtech:meta_tool_head_sword:113> * 12
            ])
            .outputs([
              <iceandfire:fire_dragon_heart>,
              <iceandfire:dragonscales_gray> * 16,
              <iceandfire:fire_dragon_flesh> * 8,
              <iceandfire:dragonbone> * 16
            ])
            .fluidInputs([
              <liquid:water> * 12000,
              <liquid:nutrientsolutionta> * 4000,
              <liquid:lava> * 8000
            ])
            .fluidOutputs([
              <liquid:firedragonblood> * 576,
              <liquid:gtfo_sludge> * 5760
            ])
            .EUt(8192)
            .duration(12000)
            .buildAndRegister();
    //Ice
      //Blue
        ecosystem_reproduction_chamber.recipeMap
          .recipeBuilder()
            .inputs([
              <iceandfire:dragonegg_blue>,
              <iceandfire:frozen_dirt> * 16,
              <iceandfire:nest> * 16,
              <minecraft:feather> * 32,
              <iceandfire:dragon_meal> * 24,
              <gregtech:meta_tool_head_sword:113> * 12
            ])
            .outputs([
              <iceandfire:ice_dragon_heart>,
              <iceandfire:dragonscales_blue> * 16,
              <iceandfire:ice_dragon_flesh> * 8,
              <iceandfire:dragonbone> * 16
            ])
            .fluidInputs([
              <liquid:water> * 12000,
              <liquid:nutrientsolutionta> * 4000,
              <liquid:ice> * 8000
           ])
            .fluidOutputs([
              <liquid:icedragonblood> * 576,
              <liquid:gtfo_sludge> * 5760
            ])
            .EUt(8192)
            .duration(12000)
            .buildAndRegister();
      //White
        ecosystem_reproduction_chamber.recipeMap
          .recipeBuilder()
            .inputs([
              <iceandfire:dragonegg_white>,
              <iceandfire:frozen_dirt> * 16,
              <iceandfire:nest> * 16,
              <minecraft:feather> * 32,
              <iceandfire:dragon_meal> * 24,
              <gregtech:meta_tool_head_sword:113> * 12
            ])
            .outputs([
              <iceandfire:ice_dragon_heart>,
              <iceandfire:dragonscales_white> * 16,
              <iceandfire:ice_dragon_flesh> * 8,
              <iceandfire:dragonbone> * 16
            ])
            .fluidInputs([
              <liquid:water> * 12000,
              <liquid:nutrientsolutionta> * 4000,
              <liquid:ice> * 8000
           ])
            .fluidOutputs([
              <liquid:icedragonblood> * 576,
              <liquid:gtfo_sludge> * 5760
            ])
            .EUt(8192)
            .duration(12000)
            .buildAndRegister();
      //Sapphire
        ecosystem_reproduction_chamber.recipeMap
          .recipeBuilder()
            .inputs([
              <iceandfire:dragonegg_sapphire>,
              <iceandfire:frozen_dirt> * 16,
              <iceandfire:nest> * 16,
              <minecraft:feather> * 32,
              <iceandfire:dragon_meal> * 24,
              <gregtech:meta_tool_head_sword:113> * 12
            ])
            .outputs([
              <iceandfire:ice_dragon_heart>,
              <iceandfire:dragonscales_sapphire> * 16,
              <iceandfire:ice_dragon_flesh> * 8,
              <iceandfire:dragonbone> * 16
            ])
            .fluidInputs([
              <liquid:water> * 12000,
              <liquid:nutrientsolutionta> * 4000,
              <liquid:ice> * 8000
           ])
            .fluidOutputs([
              <liquid:icedragonblood> * 576,
              <liquid:gtfo_sludge> * 5760
            ])
            .EUt(8192)
            .duration(12000)
            .buildAndRegister();
      //Silver
        ecosystem_reproduction_chamber.recipeMap
          .recipeBuilder()
            .inputs([
              <iceandfire:dragonegg_silver>,
              <iceandfire:frozen_dirt> * 16,
              <iceandfire:nest> * 16,
              <minecraft:feather> * 32,
              <iceandfire:dragon_meal> * 24,
              <gregtech:meta_tool_head_sword:113> * 12
            ])
            .outputs([
              <iceandfire:ice_dragon_heart>,
              <iceandfire:dragonscales_silver> * 16,
              <iceandfire:ice_dragon_flesh> * 8,
              <iceandfire:dragonbone> * 16
            ])
            .fluidInputs([
              <liquid:water> * 12000,
              <liquid:nutrientsolutionta> * 4000,
              <liquid:ice> * 8000
           ])
            .fluidOutputs([
              <liquid:icedragonblood> * 576,
              <liquid:gtfo_sludge> * 5760
            ])
            .EUt(8192)
            .duration(12000)
            .buildAndRegister();
  //Dragon Stage 2
    //Fire
      //Red
        ecosystem_reproduction_chamber.recipeMap
          .recipeBuilder()
            .inputs([
              <iceandfire:dragonegg_red>,
              <iceandfire:chared_dirt> * 32,
              <iceandfire:chared_stone> * 32,
              <iceandfire:nest> * 48,
              <iceandfire:dragon_meal> * 32,
              <minecraft:magma> * 24,
              <iceandfire:ash> * 16,
              <gregtech:meta_tool_head_sword:2013> * 16
            ])
            .outputs([
              <iceandfire:fire_dragon_heart>,
              <iceandfire:dragonscales_red> * 32,
              <iceandfire:fire_dragon_flesh> * 16,
              <iceandfire:dragonbone> * 32
            ])
            .fluidInputs([
              <liquid:water> * 24000,
              <liquid:nutrientsolutiontb> * 4000,
              <liquid:lava> * 16000
            ])
            .fluidOutputs([
              <liquid:firedragonblood> * 1152,
              <liquid:gtfo_sludge> * 11520
            ])
            .EUt(24000)
            .duration(18000)
            .buildAndRegister();
      //Emerald

      //Bronze

      //Gray

    //Ice
      //Blue

      //White

      //Sapphire

      //Silver

  //Dragon Stage 3
    //Fire
      //Red

      //Emerald

      //Bronze

      //Gray

    //Ice
      //Blue

      //White

      //Sapphire

      //Silver
  
  //Dragon Stage 4
    //Fire
      //Red

      //Emerald

      //Bronze

      //Gray

    //Ice
      //Blue

      //White

      //Sapphire

      //Silver

  //Dragon Stage 5
    //Fire
      //Red

      //Emerald

      //Bronze

      //Gray

    //Ice
      //Blue

      //White

      //Sapphire

      //Silver

    
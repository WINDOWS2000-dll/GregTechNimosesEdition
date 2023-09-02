#=================================================
# MODPACKNAME: GregTechNimosesEdition
# Writer: Sanjinoyatu1692
# DiscordName: Windows.EXE2000#2700
# Issue: Please send to my DirectMessage
#=================================================

#priority 1001

#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.Block;
import crafttweaker.event.IPlayerEvent;

print("------CONTENTTWEAKER_ITEM_LOADING_START------");

var awakenedcircuit = VanillaFactory.createItem("awakenedcircuit");
awakenedcircuit.maxStackSize = 64;
awakenedcircuit.register();

var awakenedprosessor = VanillaFactory.createItem("awakenedprosessor");
awakenedprosessor.maxStackSize = 64;
awakenedprosessor.register();

var awakenedprocessorarray = VanillaFactory.createItem("awakenedprocessorarray");
awakenedprocessorarray.maxStackSize = 64;
awakenedprocessorarray.register();

var awakenedmainframe = VanillaFactory.createItem("awakenedmainframe");
awakenedmainframe.maxStackSize = 64;
awakenedmainframe.register();

var draconiccircuit = VanillaFactory.createItem("draconiccircuit");
draconiccircuit.maxStackSize = 64;
draconiccircuit.register();

var draconicprosessor = VanillaFactory.createItem("draconicprosessor");
draconicprosessor.maxStackSize = 64;
draconicprosessor.register();

var draconicprosessorarray = VanillaFactory.createItem("draconicprosessorarray");
draconicprosessorarray.maxStackSize = 64;
draconicprosessorarray.register();

var draconicmainframe = VanillaFactory.createItem("draconicmainframe");
draconicmainframe.maxStackSize = 64;
draconicmainframe.register();

var chaoticcircuit = VanillaFactory.createItem("chaoticcircuit");
chaoticcircuit.maxStackSize = 48;
chaoticcircuit.register();

var chaoticprocessor = VanillaFactory.createItem("chaoticprocessor");
chaoticprocessor.maxStackSize = 48;
chaoticprocessor.register();

var chaoticprocessorarray = VanillaFactory.createItem("chaoticprocessorarray");
chaoticprocessorarray.maxStackSize = 48;
chaoticprocessorarray.register();

var chaoticprocessormainframe = VanillaFactory.createItem("chaoticprocessormainframe");
chaoticprocessormainframe.maxStackSize = 48;
chaoticprocessormainframe.register();

var crystaloscillator = VanillaFactory.createItem("crystaloscillator");
crystaloscillator.maxStackSize = 64;
crystaloscillator.register();

var spacesuitfabric = VanillaFactory.createItem("spacesuitfabric");
spacesuitfabric.maxStackSize = 64;
spacesuitfabric.register();

var kevlarfabric = VanillaFactory.createItem("kevlarfabric");
kevlarfabric.maxStackSize = 64;
kevlarfabric.register();

var kevlarfiber = VanillaFactory.createItem("kevlarfiber");
kevlarfiber.maxStackSize = 64;
kevlarfiber.register();

var carbonreinforcedfabric = VanillaFactory.createItem("carbonreinforcedfabric");
carbonreinforcedfabric.maxStackSize = 64;
carbonreinforcedfabric.register();

var fallen_netherstar = VanillaFactory.createItem("fallen_netherstar");
fallen_netherstar.maxStackSize = 64;
fallen_netherstar.rarity = "epic";
fallen_netherstar.register();

//AE2 Rework

var material_network_processor_press = VanillaFactory.createItem("material_network_processor_press");
material_network_processor_press.maxStackSize = 64;
material_network_processor_press.register();

var material_network_processor_print = VanillaFactory.createItem("material_network_processor_print");
material_network_processor_print.maxStackSize = 64;
material_network_processor_print.register();

var material_network_processor = VanillaFactory.createItem("material_network_processor");
material_network_processor.maxStackSize = 64;
material_network_processor.register();

var material_fluid_processor = VanillaFactory.createItem("material_fluid_processor");
material_fluid_processor.maxStackSize = 64;
material_fluid_processor.register();

var material_fluid_processor_press = VanillaFactory.createItem("material_fluid_processor_press");
material_fluid_processor_press.maxStackSize = 64;
material_fluid_processor_press.register();

var material_fluid_processor_print = VanillaFactory.createItem("material_fluid_processor_print");
material_fluid_processor_print.maxStackSize = 64;
material_fluid_processor_print.register();

var material_network_control_processor = VanillaFactory.createItem("material_network_control_processor");
material_network_control_processor.maxStackSize = 64;
material_network_control_processor.register();

var material_me_data_processing_unit = VanillaFactory.createItem("material_me_data_processing_unit");
material_me_data_processing_unit.maxStackSize = 64;
material_me_data_processing_unit.register();

var material_crafting_control_processor = VanillaFactory.createItem("material_crafting_control_processor");
material_crafting_control_processor.maxStackSize = 64;
material_crafting_control_processor.register();

var material_logistics_control_processor = VanillaFactory.createItem("material_logistics_control_processor");
material_logistics_control_processor.maxStackSize = 64;
material_logistics_control_processor.register();

var material_fluid_crafting_processor = VanillaFactory.createItem("material_fluid_crafting_processor");
material_fluid_crafting_processor.maxStackSize = 64;
material_fluid_crafting_processor.register();

var material_me_control_processor = VanillaFactory.createItem("material_me_control_processor");
material_me_control_processor.maxStackSize = 16;
material_me_control_processor.rarity = "epic";
material_me_control_processor.register();

var lens_lazurite = VanillaFactory.createItem("lens_lazurite");
lens_lazurite.maxStackSize = 64;
lens_lazurite.register();

var lens_uvarovite = VanillaFactory.createItem("lens_uvarovite");
lens_uvarovite.maxStackSize = 64;
lens_uvarovite.register();

var life_support_system = VanillaFactory.createItem("life_support_system");
    life_support_system.maxStackSize = 1;
    life_support_system.register();

//MAXV Components
var maxv_motor = VanillaFactory.createItem("maxv_motor");
    maxv_motor.maxStackSize = 64;
    maxv_motor.register();

var maxv_piston = VanillaFactory.createItem("maxv_piston");
    maxv_piston.maxStackSize = 64;
    maxv_piston.register();

var maxv_pump = VanillaFactory.createItem("maxv_pump");
    maxv_pump.maxStackSize = 64;
    maxv_pump.register();

var maxv_conveyor = VanillaFactory.createItem("maxv_conveyor");
    maxv_conveyor.maxStackSize = 64;
    maxv_conveyor.register();

var maxv_robot_arm = VanillaFactory.createItem("maxv_robot_arm");
    maxv_robot_arm.maxStackSize = 64;
    maxv_robot_arm.register();

var maxv_emitter = VanillaFactory.createItem("maxv_emitter"); 
    maxv_emitter.maxStackSize = 64;
    maxv_emitter.register();

var maxv_sensor = VanillaFactory.createItem("maxv_sensor");
    maxv_sensor.maxStackSize = 64;
    maxv_sensor.register();

var maxv_field_generator = VanillaFactory.createItem("maxv_field_generator");
    maxv_field_generator.maxStackSize = 64;
    maxv_field_generator.register();

val kevlararmor = MaterialSystem.getMaterialBuilder().setName("kevlararmor").setColor(12702004).build().registerPart("armor").getData();
    kevlararmor.addDataValue("durability", 80);
    kevlararmor.addDataValue("enchantability", 10);
    kevlararmor.addDataValue("toughness", 3.5);
    kevlararmor.addDataValue("reduction", 3, 7, 5, 4);

val carbonfiberreinforcedarmor = MaterialSystem.getMaterialBuilder().setName("carbonfiberreinforcedarmor").setColor(1838349).build().registerPart("armor").getData();
    carbonfiberreinforcedarmor.addDataValue("durability", 350);
    carbonfiberreinforcedarmor.addDataValue("enchantability", 16);
    carbonfiberreinforcedarmor.addDataValue("toughness", 5.5);
    carbonfiberreinforcedarmor.addDataValue("reduction", 5, 10, 6, 4);
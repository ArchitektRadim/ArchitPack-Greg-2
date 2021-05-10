#imports
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.gregtech.recipe.RecipeMaps;
import mods.appliedenergistics2.Inscriber;

#variables
val brewery = mods.gregtech.recipe.RecipeMap.getByName("brewer");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val implosion = mods.gregtech.recipe.RecipeMap.getByName("implosion_compressor");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
val spinnyGoFast = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val wiremill = mods.gregtech.recipe.RecipeMap.getByName("wiremill");
var fusionReactor = mods.gregtech.recipe.RecipeMap.getByName("fusion_reactor");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");
val cracker = mods.gregtech.recipe.RecipeMap.getByName("cracker");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val vacfreezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
val thermalCent = mods.gregtech.recipe.RecipeMap.getByName("thermal_centrifuge");
val cutting_saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
val distillery = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val precissionLaser = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
val formingPress = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
val extruder = mods.gregtech.recipe.RecipeMap.getByName("extruder");
val alloy = RecipeMap.getByName("alloy_smelter");

#descriptions
mods.jei.JEI.addDescription(<forestry:wood_pile>,"Charcoal is really convenient early-game energy source. The earliest way of obtaining Charcoal is building a Pit. Simply place some Wood Piles, cover them up with any fireproof material listed in JEI, left one-block space for ignition and ignite. Finally cover up the hole and wait for particles until they stop appearing. The pit should be filled with Charcoal Blocks");

#oredict-fix
val crystalCertus = <ore:crystalCertusQuartz>;
crystalCertus.add(<gregtech:meta_item_1:8202>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material>);

val crystalCertusAny = <ore:crystalCertusAny>;
crystalCertusAny.add(<gregtech:meta_item_1:8202>);
crystalCertusAny.add(<appliedenergistics2:material:1>);
crystalCertusAny.add(<appliedenergistics2:material:10>);

#-------------------------------------------------------------------
#------------------------------RECIPES------------------------------

#-----------------------------crafting------------------------------

mods.jei.JEI.removeAndHide(<forestry:ingot_copper>);
mods.jei.JEI.removeAndHide(<forestry:ingot_tin>);
mods.jei.JEI.removeAndHide(<forestry:ingot_bronze>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:49>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:51>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:46>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:2>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:3>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:45>);
recipes.remove(<forestry:squeezer>);
mods.jei.JEI.removeAndHide(<forestry:squeezer>);

#-----------------------------inscriber-----------------------------

Inscriber.removeRecipe(<appliedenergistics2:material:13>);
Inscriber.removeRecipe(<appliedenergistics2:material:14>);
Inscriber.removeRecipe(<appliedenergistics2:material:15>);
Inscriber.removeRecipe(<appliedenergistics2:material:16>);
Inscriber.removeRecipe(<appliedenergistics2:material:17>);
Inscriber.removeRecipe(<appliedenergistics2:material:18>);
Inscriber.removeRecipe(<appliedenergistics2:material:19>);
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
Inscriber.removeRecipe(<appliedenergistics2:material:22>);
Inscriber.removeRecipe(<appliedenergistics2:material:23>);
Inscriber.removeRecipe(<appliedenergistics2:material:24>);

#---------------------------alloy-smelter---------------------------

recipes.remove(<appliedenergistics2:quartz_glass>);
alloy.recipeBuilder().inputs([<ore:dustNetherQuartz>*4,<minecraft:glass>*5]).outputs([<appliedenergistics2:quartz_glass>*5]).duration(250).EUt(16).buildAndRegister();
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);

#-----------------------------compressor------------------------------

compressor.recipeBuilder()
        .inputs(<ore:gemRuby> *9)
		.outputs(<gregtech:compressed_7:8>)
		.duration(400)
		.EUt(2)
		.buildAndRegister();

compressor.recipeBuilder()
        .inputs(<ore:gemSapphire> *9)
		.outputs(<gregtech:compressed_7:11>)
		.duration(400)
		.EUt(2)
		.buildAndRegister();

#-----------------------------macerator------------------------------

macerator.recipeBuilder()
        .inputs(<ore:crystalFluix>)
		.outputs(<appliedenergistics2:material:8>)
		.duration(30)
		.EUt(32)
		.buildAndRegister();

macerator.recipeBuilder()
        .inputs(<ore:crystalPureFluix>)
		.outputs(<appliedenergistics2:material:8>)
		.duration(30)
		.EUt(32)
		.buildAndRegister();

#-----------------------------extruder------------------------------

extruder.recipeBuilder()
        .inputs(<ore:plateSilicon>)
		.notConsumable(<appliedenergistics2:material:19>)
		.outputs(<appliedenergistics2:material:20>)
		.duration(40)
		.EUt(480)
		.buildAndRegister();

extruder.recipeBuilder()
		.inputs(<appliedenergistics2:material:16>)
		.notConsumable(<appliedenergistics2:material:13>)
		.outputs(<appliedenergistics2:material:23>)
		.duration(40)
		.EUt(820)
		.buildAndRegister();

extruder.recipeBuilder()
		.inputs(<appliedenergistics2:material:17>)
		.notConsumable(<appliedenergistics2:material:14>)
		.outputs(<appliedenergistics2:material:24>)
		.duration(40)
		.EUt(820)
		.buildAndRegister();

extruder.recipeBuilder()
		.inputs(<appliedenergistics2:material:18>)
		.notConsumable(<appliedenergistics2:material:15>)
		.outputs(<appliedenergistics2:material:22>)
		.duration(40)
		.EUt(820)
		.buildAndRegister();

#------------------------------forming_press------------------------

formingPress.recipeBuilder()
		.inputs(<appliedenergistics2:material:20>, <ore:circuitAdvanced>, <ore:plateCertusQuartz>)
		.outputs(<appliedenergistics2:material:16>)
		.duration(150)
		.EUt(480)
		.buildAndRegister();

formingPress.recipeBuilder()
		.inputs(<appliedenergistics2:material:20>, <ore:circuitAdvanced>, <ore:plateDiamond>)
		.outputs(<appliedenergistics2:material:17>)
		.duration(150)
		.EUt(480)
		.buildAndRegister();

formingPress.recipeBuilder()
        .inputs(<appliedenergistics2:material:20>, <ore:circuitAdvanced>, <ore:plateGold>)
		.outputs(<appliedenergistics2:material:18>)
		.duration(150)
		.EUt(480)
		.buildAndRegister();

#-----------------------------EBF--------------------------

furnace.remove(<tconstruct:ingots:1>);
blast_furnace.recipeBuilder()
    .inputs(<ore:ingotBlackSteel> * 1, <ore:dustSignalum> * 2)
    .fluidInputs([<liquid:oxygen> * 500])
    .outputs(<ore:ingotArdite>.firstItem * 1)
    .property("temperature", 1600)
    .duration(2400)
    .EUt(120)
    .buildAndRegister();

#-----------------------------assembler--------------------------

assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_1:12192> *4, <ore:screwTungstenSteel> *2, <minecraft:diamond_block>, <gregtech:meta_item_2:32490>)
		.outputs(<forestry:hardened_machine>)
		.duration(50)
		.EUt(90)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<ore:plateBeryllium> *4, <ore:screwStainlessSteel> *2, <minecraft:slime_ball>, <ore:circuitGood>)
		.outputs(<forestry:flexible_casing>)
		.duration(50)
		.EUt(90)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32455> *2, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <ore:dyeGreen>)
		.outputs(<railcraft:circuit:1>)
		.duration(200)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32455> *2, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <ore:dyeRed>)
		.outputs(<railcraft:circuit>)
		.duration(200)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32455> *2, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <ore:dyeYellow>)
		.outputs(<railcraft:circuit:2>)
		.duration(200)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32455> *2, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <ore:dyeBlue>)
		.outputs(<railcraft:circuit:3>)
		.duration(200)
		.EUt(8)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32455> *2, <gregtech:meta_item_2:32447>, <gregtech:meta_item_2:32477>, <ore:dyeBlue>)
		.outputs(<railcraft:circuit:3>)
		.duration(200)
		.EUt(8)
		.buildAndRegister();


assembler.recipeBuilder()
		.inputs(<ore:plateTin>, <gregtech:meta_item_2:32455> *3, <gregtech:meta_item_2:16237> *4, <gregtech:meta_item_2:32447>)
		.fluidInputs([<liquid:tin> * 144])
		.outputs(<forestry:chipsets>)
		.duration(400)
		.EUt(16)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<ore:plateCopper>, <gregtech:meta_item_2:32455> *3, <gregtech:meta_item_2:16237> *4, <gregtech:meta_item_2:32447>)
		.fluidInputs([<liquid:tin> * 144])
		.outputs(<forestry:chipsets:1>)
		.duration(400)
		.EUt(16)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<ore:plateIron>, <gregtech:meta_item_2:32455> *3, <gregtech:meta_item_2:16237> *4, <gregtech:meta_item_2:32447>)
		.fluidInputs([<liquid:tin> * 144])
		.outputs(<forestry:chipsets:2>)
		.duration(400)
		.EUt(16)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<ore:plateGold>, <gregtech:meta_item_2:32455> *3, <gregtech:meta_item_2:16237> *4, <gregtech:meta_item_2:32447>)
		.fluidInputs([<liquid:tin> * 144])
		.outputs(<forestry:chipsets:3>)
		.duration(400)
		.EUt(16)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<railcraft:worldspike:1>, <ore:circuitGood>)
		.outputs(<railcraft:worldspike:3>)
		.duration(100)
		.EUt(120)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<ore:blockObsidian> *3, <ore:plateDenseSteel>, <ore:plateGold>, <minecraft:ender_pearl>)
		.outputs(<railcraft:worldspike_point>)
		.duration(100)
		.EUt(120)
		.buildAndRegister();

#----------------------------opencomputers-------------------------------

assembler.recipeBuilder()
		.inputs(<ore:wireGtSingleCopper>, <ore:dustSmallEmerald>)
		.fluidInputs([<liquid:rubber> * 72])
		.outputs(<opencomputers:cable>)
		.duration(400)
		.EUt(16)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<ore:wireFineGold>, <ore:foilSilicon> *2)
		.fluidInputs([<liquid:soldering_alloy> * 144])
		.outputs(<opencomputers:material:6> *8)
		.duration(1200)
		.EUt(32)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <opencomputers:material:6> *6)
		.fluidInputs([<liquid:soldering_alloy> * 72])
		.outputs(<opencomputers:material:11> *3)
		.duration(750)
		.EUt(32)
		.buildAndRegister();

recipes.remove(<opencomputers:material:28>);
recipes.addShapeless(<opencomputers:material:28> *9, [<opencomputers:chameliumblock>]);
mixer.recipeBuilder()
		.inputs(<ore:dustGlucose>, <ore:dustCellulose>)
		.fluidInputs([<liquid:water> * 144])
		.outputs(<opencomputers:material:28> *2)
		.duration(200)
		.EUt(16)
		.buildAndRegister();

#----------------------------carpenter-------------------------------

mods.forestry.Carpenter.removeRecipe(<forestry:hardened_machine>);
mods.forestry.Carpenter.removeRecipe(<forestry:impregnated_casing>);

mods.forestry.Carpenter.removeRecipe(<forestry:flexible_casing>);

mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:1>);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:2>);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:3>);

mods.forestry.Carpenter.removeRecipe(<forestry:portable_alyzer>);
mods.forestry.Carpenter.removeRecipe(<forestry:soldering_iron>);

mods.forestry.Carpenter.removeRecipe(<forestry:kit_pickaxe>);
mods.forestry.Carpenter.removeRecipe(<forestry:kit_shovel>);

#----------------------------chisel-------------------------------

recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron>, [[<gregtech:meta_tool:6>, <ore:plateIron>], [<ore:stickWood>, <gregtech:meta_tool:9>]]);
recipes.remove(<chisel:chisel_diamond>);
recipes.addShaped(<chisel:chisel_diamond>, [[<gregtech:meta_tool:6>, <ore:plateDiamond>], [<ore:stickWood>, <gregtech:meta_tool:9>]]);
recipes.remove(<chisel:chisel_hitech>);
recipes.addShapeless(<chisel:chisel_hitech>, [<chisel:chisel_diamond>, <ore:circuitBasic>]);

recipes.remove(<chisel:antiblock:15>);
recipes.addShaped(<chisel:antiblock:15> *16, [[<ore:platePlastic>, <ore:platePlastic>, <ore:platePlastic>], [<ore:platePlastic>, <ore:dustGlowstone>, <ore:platePlastic>], [<ore:platePlastic>, <ore:platePlastic>, <ore:platePlastic>]]);
recipes.remove(<chisel:factory>);
recipes.addShaped(<chisel:factory> *16, [[<ore:plateIron>, <minecraft:stone>, <ore:plateIron>], [<minecraft:stone>, null, <minecraft:stone>], [<ore:plateIron>, <minecraft:stone>, <ore:plateIron>]]);
recipes.remove(<chisel:laboratory>);
recipes.addShaped(<chisel:laboratory> *16, [[<ore:plateIron>, <gregtech:concrete>, <ore:plateIron>], [<gregtech:concrete>, null, <gregtech:concrete>], [<ore:plateIron>, <gregtech:concrete>, <ore:plateIron>]]);

#----------------------------applied-energetics-2-items-------------------------------

recipes.remove(<appliedenergistics2:part:140>);
cutting_saw.recipeBuilder()
        .inputs(<ore:stickNetherQuartz>)
		.outputs(<appliedenergistics2:part:140> *2)
		.duration(80)
		.EUt(48)
		.buildAndRegister();
cutting_saw.recipeBuilder()
        .inputs(<ore:stickCertusQuartz>)
		.outputs(<appliedenergistics2:part:140> *2)
		.duration(80)
		.EUt(48)
		.buildAndRegister();

recipes.removeShapeless(<appliedenergistics2:part:16> * 4, [<appliedenergistics2:part:140>, <ore:crystalFluix> | <appliedenergistics2:material:12>, <ore:crystalFluix> | <appliedenergistics2:material:12>]);

formingPress.recipeBuilder()
        .inputs(<appliedenergistics2:part:140>, <ore:dustFluix> *2, <ore:wireGtSingleTitanium> *2, <appliedenergistics2:quartz_glass>)
		.outputs(<appliedenergistics2:part:16> *4)
		.duration(100)
		.EUt(120)
		.buildAndRegister();

recipes.removeShaped(<appliedenergistics2:part:180> * 3, [[null, <ore:dustGlowstone>, <appliedenergistics2:quartz_glass>], [<ore:ingotIron>, <ore:dustRedstone>, <appliedenergistics2:quartz_glass>], [null, <ore:dustGlowstone>, <appliedenergistics2:quartz_glass>]]);
recipes.addShaped(<appliedenergistics2:part:180> * 3, [[<gregtech:meta_tool:11>, <appliedenergistics2:quartz_glass>, <gregtech:meta_tool:8>], [<ore:screwStainlessSteel>, <gtadditions:ga_meta_item:32579>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);

recipes.remove(<appliedenergistics2:material:42>);
assembler.recipeBuilder()
		.inputs(<ore:plateStainlessSteel> *2, <gregtech:meta_item_1:32683>, <ore:dustRegularEnderPearl>, <appliedenergistics2:material:1>)
		.outputs(<appliedenergistics2:material:42> *2)
		.duration(100)
		.EUt(480)
		.buildAndRegister();

recipes.remove(<appliedenergistics2:material:39>);
recipes.addShaped(<appliedenergistics2:material:39>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);

electrolyzer.recipeBuilder()
		.inputs(<ore:crystalCertusQuartz>)
		.outputs(<appliedenergistics2:material:1>)
		.duration(800)
		.EUt(160)
		.buildAndRegister();

recipes.remove(<appliedenergistics2:material:43>);
recipes.remove(<appliedenergistics2:material:44>);
assembler.recipeBuilder()
		.inputs(<ore:plateStainlessSteel>, <gregtech:meta_item_1:32682>, <appliedenergistics2:material:22>, <ore:plateCertusQuartz>)
		.outputs(<appliedenergistics2:material:43> *2)
		.duration(100)
		.EUt(820)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<ore:plateStainlessSteel>, <gregtech:meta_item_1:32682>, <appliedenergistics2:material:22>, <ore:plateNetherQuartz>)
		.outputs(<appliedenergistics2:material:44> *2)
		.duration(100)
		.EUt(820)
		.buildAndRegister();

recipes.remove(<appliedenergistics2:material:52>);
recipes.addShaped(<appliedenergistics2:material:52>, [[<ore:screwStainlessSteel>, <appliedenergistics2:quartz_glass>, <gregtech:meta_tool:11>], [<ore:platePlastic>, <minecraft:paper>, <ore:platePlastic>], [null, <ore:plateCertusQuartz>, null]]);

#----------------------------applied-energetics-2-cells-------------------------------

recipes.remove(<appliedenergistics2:view_cell>);
recipes.addShapeless(<appliedenergistics2:view_cell>, [<appliedenergistics2:material:39>, <ore:crystalCertusAny>]);
recipes.addShaped(<appliedenergistics2:view_cell>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <ore:crystalCertusAny>, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);

recipes.remove(<appliedenergistics2:storage_cell_1k>);
recipes.addShapeless(<appliedenergistics2:storage_cell_1k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:35>]);
recipes.addShaped(<appliedenergistics2:storage_cell_1k>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:35>, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);
recipes.remove(<appliedenergistics2:storage_cell_4k>);
recipes.addShapeless(<appliedenergistics2:storage_cell_4k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:36>]);
recipes.addShaped(<appliedenergistics2:storage_cell_4k>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:36>, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);
recipes.remove(<appliedenergistics2:storage_cell_16k>);
recipes.addShapeless(<appliedenergistics2:storage_cell_16k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:37>]);
recipes.addShaped(<appliedenergistics2:storage_cell_16k>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:37>, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);
recipes.remove(<appliedenergistics2:storage_cell_64k>);
recipes.addShapeless(<appliedenergistics2:storage_cell_64k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:38>]);
recipes.addShaped(<appliedenergistics2:storage_cell_64k>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:38>, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);

recipes.remove(<appliedenergistics2:fluid_storage_cell_1k>);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_1k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:54>]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_1k>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:54>, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);
recipes.remove(<appliedenergistics2:fluid_storage_cell_4k>);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_4k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:55>]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_4k>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:55>, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);
recipes.remove(<appliedenergistics2:fluid_storage_cell_16k>);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_16k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:56>]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_16k>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:56>, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);
recipes.remove(<appliedenergistics2:fluid_storage_cell_64k>);
recipes.addShapeless(<appliedenergistics2:fluid_storage_cell_64k>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:57>]);
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_64k>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:57>, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);

recipes.remove(<appliedenergistics2:spatial_storage_cell_2_cubed>);
recipes.addShapeless(<appliedenergistics2:spatial_storage_cell_2_cubed>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:32>]);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:32>, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);
recipes.remove(<appliedenergistics2:spatial_storage_cell_16_cubed>);
recipes.addShapeless(<appliedenergistics2:spatial_storage_cell_16_cubed>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:33>]);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:33>, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);
recipes.remove(<appliedenergistics2:spatial_storage_cell_128_cubed>);
recipes.addShapeless(<appliedenergistics2:spatial_storage_cell_128_cubed>, [<appliedenergistics2:material:39>, <appliedenergistics2:material:34>]);
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>, [[<gregtech:meta_tool:8>, <appliedenergistics2:quartz_glass>, <ore:screwStainlessSteel>], [<ore:plateStainlessSteel>, <appliedenergistics2:material:34>, <ore:plateStainlessSteel>], [<ore:screwStainlessSteel>, <ore:plateCertusQuartz>, <gregtech:meta_tool:11>]]);

#----------------------------applied-energetics-2-storage-components-------------------------------

recipes.remove(<appliedenergistics2:material:35>);
assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32448>, <appliedenergistics2:material:22>, <gregtech:meta_item_2:32485> *4, <ore:plateCertusQuartz>)
		.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
		.outputs(<appliedenergistics2:material:35>)
		.duration(50)
		.EUt(420)
		.buildAndRegister();
recipes.remove(<appliedenergistics2:material:36>);
recipes.addShaped(<appliedenergistics2:material:36>, [[<ore:circuitGood>, <appliedenergistics2:material:35>, <ore:screwStainlessSteel>], [<appliedenergistics2:material:35>, <appliedenergistics2:material:23>, <appliedenergistics2:material:35>], [<ore:screwStainlessSteel>, <appliedenergistics2:material:35>, <ore:circuitGood>]]);
recipes.remove(<appliedenergistics2:material:37>);
recipes.addShaped(<appliedenergistics2:material:37>, [[<ore:circuitAdvanced>, <appliedenergistics2:material:36>, <ore:screwStainlessSteel>], [<appliedenergistics2:material:36>, <appliedenergistics2:material:23>, <appliedenergistics2:material:36>], [<ore:screwStainlessSteel>, <appliedenergistics2:material:36>, <ore:circuitAdvanced>]]);
recipes.remove(<appliedenergistics2:material:38>);
recipes.addShaped(<appliedenergistics2:material:38>, [[<ore:circuitExtreme>, <appliedenergistics2:material:37>, <ore:screwStainlessSteel>], [<appliedenergistics2:material:37>, <appliedenergistics2:material:23>, <appliedenergistics2:material:37>], [<ore:screwStainlessSteel>, <appliedenergistics2:material:37>, <ore:circuitExtreme>]]);

recipes.remove(<appliedenergistics2:material:54>);
assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32448>, <appliedenergistics2:material:22>, <gregtech:meta_item_2:32485> *4, <ore:plateCertusQuartz>)
		.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
		.outputs(<appliedenergistics2:material:54>)
		.duration(50)
		.EUt(420)
		.buildAndRegister();
recipes.remove(<appliedenergistics2:material:55>);
recipes.addShaped(<appliedenergistics2:material:55>, [[<ore:circuitGood>, <appliedenergistics2:material:54>, <ore:screwStainlessSteel>], [<appliedenergistics2:material:54>, <appliedenergistics2:material:23>, <appliedenergistics2:material:54>], [<ore:screwStainlessSteel>, <appliedenergistics2:material:54>, <ore:circuitGood>]]);
recipes.remove(<appliedenergistics2:material:56>);
recipes.addShaped(<appliedenergistics2:material:56>, [[<ore:circuitAdvanced>, <appliedenergistics2:material:55>, <ore:screwStainlessSteel>], [<appliedenergistics2:material:55>, <appliedenergistics2:material:23>, <appliedenergistics2:material:55>], [<ore:screwStainlessSteel>, <appliedenergistics2:material:55>, <ore:circuitAdvanced>]]);
recipes.remove(<appliedenergistics2:material:57>);
recipes.addShaped(<appliedenergistics2:material:57>, [[<ore:circuitExtreme>, <appliedenergistics2:material:56>, <ore:screwStainlessSteel>], [<appliedenergistics2:material:56>, <appliedenergistics2:material:23>, <appliedenergistics2:material:56>], [<ore:screwStainlessSteel>, <appliedenergistics2:material:56>, <ore:circuitExtreme>]]);

recipes.remove(<appliedenergistics2:material:32>);
assembler.recipeBuilder()
		.inputs(<gregtech:meta_item_2:32448>, <appliedenergistics2:material:24>, <gregtech:meta_item_2:32485> *4, <ore:plateCertusQuartz>)
		.outputs(<appliedenergistics2:material:32>)
		.duration(50)
		.EUt(420)
		.buildAndRegister();
recipes.remove(<appliedenergistics2:material:33>);
recipes.addShaped(<appliedenergistics2:material:33>, [[<ore:circuitAdvanced>, <appliedenergistics2:material:32>, <ore:screwStainlessSteel>], [<appliedenergistics2:material:31>, <appliedenergistics2:material:24>, <appliedenergistics2:material:32>], [<ore:screwStainlessSteel>, <appliedenergistics2:material:32>, <ore:circuitAdvanced>]]);
recipes.remove(<appliedenergistics2:material:34>);
recipes.addShaped(<appliedenergistics2:material:34>, [[<ore:circuitExtreme>, <appliedenergistics2:material:33>, <ore:screwStainlessSteel>], [<appliedenergistics2:material:33>, <appliedenergistics2:material:24>, <appliedenergistics2:material:33>], [<ore:screwStainlessSteel>, <appliedenergistics2:material:33>, <ore:circuitExtreme>]]);

#----------------------------ae2-ingots-to-plates-------------------------------

recipes.replaceAllOccurences(<ore:ingotIron>, <ore:plateStainlessSteel>, <*>.only(function(item) {    return item.definition.owner == "appliedenergistics2";}));
recipes.replaceAllOccurences(<ore:ingotGold>, <ore:platePlatinum>, <*>.only(function(item) {    return item.definition.owner == "appliedenergistics2";}));
recipes.replaceAllOccurences(<ore:ingotIron>, <ore:plateStainlessSteel>, <*>.only(function(item) {    return item.definition.owner == "logisticsbridge";}));
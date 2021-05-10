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
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

#----------------------------logistics_pipes-pipes-------------------------------

recipes.remove(<logisticspipes:pipe_transport_basic>);
recipes.addShaped(<logisticspipes:pipe_transport_basic> *4, [[<ore:stickSteelMagnetic>, <gregtech:meta_tool:9>, <ore:stickSteelMagnetic>], [<ore:paneGlassColorless>, null, <ore:paneGlassColorless>], [<ore:stickSteelMagnetic>, <gregtech:meta_tool:6>, <ore:stickSteelMagnetic>]]);

recipes.removeShaped(<logisticspipes:pipe_basic>, [[<logisticspipes:chip_fpga>], [<logisticspipes:pipe_transport_basic>]]);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_transport_basic> *6, <logisticspipes:chip_fpga>, <gregtech:meta_item_1:32630>, <gregtech:meta_item_1:32600>, <ore:plateSteel>)
		.outputs(<logisticspipes:pipe_basic> *6)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_request>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <ore:circuitBasic>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_request"}))
		.outputs(<logisticspipes:pipe_request>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_provider>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <ore:circuitBasic>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_provider"}))
		.outputs(<logisticspipes:pipe_provider>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_crafting>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <logisticspipes:chip_fpga>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_crafting"}))
		.outputs(<logisticspipes:pipe_crafting>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_satellite>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <logisticspipes:chip_fpga>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_satellite"}))
		.outputs(<logisticspipes:pipe_satellite>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_supplier>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <ore:circuitBasic>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_supplier"}))
		.outputs(<logisticspipes:pipe_supplier>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_chassis_mk1>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <logisticspipes:chip_fpga>*2, <ore:circuitBasic>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_chassis_mk1"}))
		.outputs(<logisticspipes:pipe_chassis_mk1>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_chassis_mk2>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_chassis_mk1:*>, <ore:circuitBasic> *2, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_chassis_mk2"}))
		.outputs(<logisticspipes:pipe_chassis_mk2>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_chassis_mk3>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_chassis_mk2:*>, <ore:circuitGood>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_chassis_mk3"}))
		.outputs(<logisticspipes:pipe_chassis_mk3>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_chassis_mk4>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_chassis_mk3:*>, <ore:circuitGood>, <ore:circuitBasic> *2, <ore:wireFineRedAlloy> *2, <ore:plateAluminium> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_chassis_mk4"}))
		.outputs(<logisticspipes:pipe_chassis_mk4>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_chassis_mk5>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_chassis_mk4:*>, <ore:circuitGood> *2, <ore:wireFineRedAlloy> *2, <ore:plateStainlessSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_chassis_mk5"}))
		.outputs(<logisticspipes:pipe_chassis_mk5>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_request_mk2>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_request:*>, <ore:circuitGood> *2, <ore:wireFineRedAlloy> *2, <ore:plateAluminium> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_request_mk2"}))
		.outputs(<logisticspipes:pipe_request_mk2>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_remote_orderer>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <ore:circuitBasic>, <ore:wireFineRedAlloy> *2, <gregtech:meta_item_1:32691>, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_remote_orderer"}))
		.outputs(<logisticspipes:pipe_remote_orderer>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_inventory_system_connector>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <ore:circuitBasic>, <ore:wireFineRedAlloy> *2, <gregtech:meta_item_1:32691>, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_inventory_system_connector"}))
		.outputs(<logisticspipes:pipe_inventory_system_connector>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_system_entrance>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_provider:*>, <logisticspipes:chip_fpga>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_system_entrance"}))
		.outputs(<logisticspipes:pipe_system_entrance>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_system_destination>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_provider:*>, <logisticspipes:chip_fpga>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_system_destination"}))
		.outputs(<logisticspipes:pipe_system_destination>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_firewall>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <ore:circuitGood>, <gregtech:meta_item_1:32691>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_firewall"}))
		.outputs(<logisticspipes:pipe_firewall>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_fluid_basic>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <ore:circuitBasic>, <thermaldynamics:duct_16>, <ore:wireFineRedAlloy> *2, <ore:plateAluminium> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_basic"}))
		.outputs(<logisticspipes:pipe_fluid_basic>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_fluid_supplier>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <ore:circuitBasic> *2, <thermaldynamics:duct_16>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_supplier"}))
		.outputs(<logisticspipes:pipe_fluid_supplier>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_fluid_insertion>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_fluid_basic:*>, <logisticspipes:chip_fpga>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_insertion"}))
		.outputs(<logisticspipes:pipe_fluid_insertion>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_fluid_provider>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_fluid_basic:*>, <ore:circuitBasic>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_provider"}))
		.outputs(<logisticspipes:pipe_fluid_provider>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_fluid_request>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_fluid_basic:*>, <ore:circuitBasic>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_request"}))
		.outputs(<logisticspipes:pipe_fluid_request>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_fluid_extractor>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_fluid_basic:*>, <logisticspipes:chip_fpga>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_extractor"}))
		.outputs(<logisticspipes:pipe_fluid_extractor>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_fluid_satellite>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_fluid_basic:*>, <logisticspipes:chip_fpga>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_satellite"}))
		.outputs(<logisticspipes:pipe_fluid_satellite>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_fluid_supplier_mk2>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_fluid_supplier:*>, <ore:circuitBasic>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_supplier_mk2"}))
		.outputs(<logisticspipes:pipe_fluid_supplier_mk2>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_lb.bridgepipe>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <logisticspipes:chip_fpga> *2, <ore:circuitGood>, <ore:wireFineRedAlloy> *2, <ore:plateStainlessSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_lb.bridgepipe"}))
		.outputs(<logisticspipes:pipe_lb.bridgepipe>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_lb.resultpipe>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <logisticspipes:chip_fpga>, <ore:wireFineRedAlloy> *2, <ore:plateSteel> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_lb.resultpipe"}))
		.outputs(<logisticspipes:pipe_lb.resultpipe>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

recipes.remove(<logisticspipes:pipe_lb.craftingmanager>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:pipe_basic:*>, <ore:chestWood>, <logisticspipes:chip_fpga> *4, <ore:wireFineRedAlloy> *2, <ore:plateAluminium> *2)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_lb.craftingmanager"}))
		.outputs(<logisticspipes:pipe_lb.craftingmanager>)
		.duration(100)
		.EUt(24)
		.buildAndRegister();

#----------------------------logistics_pipes-items-------------------------------

recipes.remove(<logisticspipes:chip_basic_raw>);
mods.jei.JEI.removeAndHide(<logisticspipes:chip_basic_raw>);
furnace.remove(<logisticspipes:chip_basic>);
mods.jei.JEI.removeAndHide(<logisticspipes:chip_basic>);

recipes.remove(<logisticspipes:chip_advanced_raw>);
mods.jei.JEI.removeAndHide(<logisticspipes:chip_advanced_raw>);
furnace.remove(<logisticspipes:chip_advanced>);
mods.jei.JEI.removeAndHide(<logisticspipes:chip_advanced>);

recipes.remove(<logisticspipes:chip_fpga_raw>);
mods.jei.JEI.removeAndHide(<logisticspipes:chip_fpga_raw>);
furnace.remove(<logisticspipes:chip_fpga>);
assembler.recipeBuilder()
		.inputs(<opencomputers:material:11>, <ore:circuitBasic>, <ore:wireFineRedAlloy> *2)
		.outputs(<logisticspipes:chip_fpga> *2)
		.duration(120)
		.EUt(32)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_blank>);
recipes.addShaped(<logisticspipes:module_blank>, [[null, <ore:paper>, null], [<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>], [null, <ore:nuggetGold>, null]]);

recipes.remove(<logisticspipes:disk>);
recipes.addShaped(<logisticspipes:disk>, [[<gregtech:meta_tool:6>, <ore:paper>, <gregtech:meta_tool:11>], [<ore:dyeBlack>, <ore:oc:materialDisk>, <ore:screwSteel>], [null, <ore:platePlastic>, null]]);

recipes.removeShaped(<logisticspipes:remote_orderer>, [[<logisticspipes:chip_advanced>, <ore:ingotGold>, <logisticspipes:chip_advanced>], [<ore:dustRedstone>, <ore:blockGlass>, <ore:gemLapis>], [<ore:dustRedstone>, <ore:dustRedstone>, <ore:gemLapis>]]);
recipes.addShaped(<logisticspipes:remote_orderer>, [[<ore:screwSteel>, <gregtech:meta_item_1:32681>, <gregtech:meta_tool:11>], [<ore:plateSteel>, <ore:paneGlassColorless>, <ore:plateSteel>], [<gregtech:meta_tool:6>, <gregtech:meta_item_1:32529>, <ore:screwSteel>]]);

recipes.removeShaped(<logisticspipes:sign_creator>);
recipes.addShaped(<logisticspipes:sign_creator>, [[null, <minecraft:sign>, null],[<ore:screwIron>, <ore:circuitBasic>, <ore:screwIron>], [null, <ore:plateSteel>, null]]);

recipes.removeShaped(<logisticspipes:pipe_controller>);
recipes.addShaped(<logisticspipes:pipe_controller>, [[<ore:screwIron>, <gregtech:meta_tool:11>], [<ore:circuitBasic>, <ore:oc:materialNumPad>], [<ore:plateIron>, <ore:dyeRed>]]);

recipes.removeShaped(<logisticspipes:pipe_manager>);
recipes.addShaped(<logisticspipes:pipe_manager>, [[<ore:screwIron>, <gregtech:meta_tool:11>], [<ore:circuitBasic>, <ore:oc:materialNumPad>], [<ore:plateIron>, <ore:dyeYellow>]]);

recipes.removeShaped(<logisticspipes:logistics_programmer>);
recipes.addShaped(<logisticspipes:logistics_programmer>, [[<ore:screwIron>, <gregtech:meta_tool:11>], [<ore:circuitBasic>, <ore:oc:materialNumPad>], [<ore:plateIron>, <ore:dyeBlue>]]);

#----------------------------logistics_pipes-modules-------------------------------

recipes.remove(<logisticspipes:module_item_sink>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:chip_fpga>, <logisticspipes:module_blank:*> *3, <ore:plateSteel>, <ore:dyeGreen>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_item_sink"}))
		.outputs(<logisticspipes:module_item_sink> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_passive_supplier>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:chip_fpga>, <logisticspipes:module_blank:*> *3, <ore:plateSteel>, <ore:dyeRed>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_passive_supplier"}))
		.outputs(<logisticspipes:module_passive_supplier> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_extractor>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:chip_fpga>, <ore:circuitBasic>, <logisticspipes:module_blank:*> *3, <ore:plateSteel>, <ore:dyeBlue>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_extractor"}))
		.outputs(<logisticspipes:module_extractor> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_item_sink_polymorphic>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:chip_fpga>, <logisticspipes:module_blank:*> *3, <ore:plateSteel>, <ore:dyeOrange>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_item_sink_polymorphic"}))
		.outputs(<logisticspipes:module_item_sink_polymorphic> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_quick_sort>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:chip_fpga>, <ore:circuitGood>, <logisticspipes:module_blank:*> *3, <ore:plateAluminium>, <ore:dyeBlue>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_quick_sort"}))
		.outputs(<logisticspipes:module_quick_sort> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_terminus>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:chip_fpga>, <logisticspipes:module_blank:*> *3, <ore:plateSteel>, <ore:dyePurple>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_terminus"}))
		.outputs(<logisticspipes:module_terminus> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_extractor_advanced>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:chip_fpga>, <logisticspipes:module_extractor:*>, <ore:dyeBlue>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_extractor_advanced"}))
		.outputs(<logisticspipes:module_extractor_advanced> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_provider>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:chip_fpga>, <ore:circuitBasic>, <logisticspipes:module_blank:*> *3, <ore:plateSteel>, <ore:dyeBlue>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_provider"}))
		.outputs(<logisticspipes:module_provider> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_item_sink_mod>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:chip_fpga>, <logisticspipes:module_blank:*> *3, <ore:plateAluminium>, <ore:dyeGreen>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_item_sink_mod"}))
		.outputs(<logisticspipes:module_item_sink_mod> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_item_sink_oredict>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:chip_fpga>, <logisticspipes:module_blank:*> *3, <ore:plateAluminium>, <ore:dyeGreen>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_item_sink_oredict"}))
		.outputs(<logisticspipes:module_item_sink_oredict> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_enchantment_sink>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <logisticspipes:module_item_sink:*>, <ore:plateSteel>, <ore:dyeRed>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_enchantment_sink"}))
		.outputs(<logisticspipes:module_enchantment_sink> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_enchantment_sink_mk2>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <logisticspipes:module_enchantment_sink:*>, <ore:plateAluminium>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_enchantment_sink_mk2"}))
		.outputs(<logisticspipes:module_enchantment_sink_mk2> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_crafter>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:chip_fpga>, <ore:circuitBasic>, <logisticspipes:module_blank:*> *3, <ore:plateAluminium>, <ore:dyeOrange>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_crafter"}))
		.outputs(<logisticspipes:module_crafter> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_active_supplier>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <ore:circuitGood>, <logisticspipes:module_blank:*> *3, <ore:plateAluminium>, <ore:dyeRed>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_active_supplier"}))
		.outputs(<logisticspipes:module_active_supplier> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:module_item_sink_creativetab>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:chip_fpga>, <logisticspipes:module_blank:*> *3, <ore:plateAluminium>, <ore:dyeGreen>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_item_sink_creativetab"}))
		.outputs(<logisticspipes:module_item_sink_creativetab> *3)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

#----------------------------logistics_pipes-upgrades-------------------------------

recipes.remove(<logisticspipes:upgrade_sneaky>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <ore:plateSteel>, <ore:screwSteel>, <ore:paper>, <ore:dyeRed>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_sneaky"}))
		.outputs(<logisticspipes:upgrade_sneaky>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_speed>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <ore:plateSteel>, <ore:screwSteel>, <ore:paper>, <ore:dyeGreen>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_speed"}))
		.outputs(<logisticspipes:upgrade_speed>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_disconnection>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <ore:plateSteel>, <ore:screwSteel>, <ore:paper>, <ore:dyeGray>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_disconnection"}))
		.outputs(<logisticspipes:upgrade_disconnection>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_disconnection>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <ore:plateSteel>, <ore:screwSteel>, <ore:paper>, <ore:dyeGray>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_disconnection"}))
		.outputs(<logisticspipes:upgrade_disconnection>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_satellite_advanced>);
assembler.recipeBuilder()
		.inputs(<ore:circuitGood>, <ore:plateSteel>, <ore:screwSteel>, <ore:paper>, <ore:dyeYellow>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_satellite_advanced"}))
		.outputs(<logisticspipes:upgrade_satellite_advanced>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_fluid_crafting>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <ore:plateSteel>, <ore:screwSteel>, <ore:paper>, <ore:dyeOrange>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_fluid_crafting"}))
		.outputs(<logisticspipes:upgrade_fluid_crafting>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_crafting_byproduct>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <ore:plateSteel>, <ore:screwSteel>, <ore:paper>, <ore:dyeRed>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_crafting_byproduct"}))
		.outputs(<logisticspipes:upgrade_crafting_byproduct>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_fuzzy>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <ore:plateSteel>, <ore:screwSteel>, <ore:paper>, <ore:dyeBlack>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_fuzzy"}))
		.outputs(<logisticspipes:upgrade_fuzzy>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_power_transportation>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <ore:plateSteel>, <ore:screwSteel>, <ore:paper>, <ore:dyeBlue>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_power_transportation"}))
		.outputs(<logisticspipes:upgrade_power_transportation>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_opaque>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <ore:plateSteel>, <ore:screwSteel>, <ore:paper>, <ore:dyeGray>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_opaque"}))
		.outputs(<logisticspipes:upgrade_opaque>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_crafting_cleanup>);
assembler.recipeBuilder()
		.inputs(<ore:circuitGood>, <ore:plateSteel>, <ore:screwSteel>, <ore:paper>, <ore:dyeRed>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_crafting_cleanup"}))
		.outputs(<logisticspipes:upgrade_crafting_cleanup>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_sneaky_combination>);
assembler.recipeBuilder()
		.inputs(<ore:circuitGood>, <ore:plateAluminium>, <ore:screwSteel>, <ore:paper>, <ore:dyeOrange>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_sneaky_combination"}))
		.outputs(<logisticspipes:upgrade_sneaky_combination>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_pattern>);
assembler.recipeBuilder()
		.inputs(<ore:circuitGood>, <ore:plateAluminium>, <ore:screwSteel>, <ore:paper>, <ore:dyeOrange>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_pattern"}))
		.outputs(<logisticspipes:upgrade_pattern>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

assembler.recipeBuilder()
		.inputs(<ore:circuitGood>, <ore:plateAluminium>, <ore:screwSteel>, <ore:paper>, <ore:dyeBlue>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_power_supplier_rf"}))
		.outputs(<logisticspipes:upgrade_power_supplier_rf>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_crafting_monitoring>);
assembler.recipeBuilder()
		.inputs(<ore:circuitGood>, <ore:plateAluminium>, <ore:screwSteel>, <ore:paper>, <ore:dyeLime>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_crafting_monitoring"}))
		.outputs(<logisticspipes:upgrade_crafting_monitoring>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_module_upgrade>);
assembler.recipeBuilder()
		.inputs(<ore:circuitGood>, <ore:plateAluminium>, <ore:screwSteel>, <ore:paper>, <ore:dyeBlack>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_module_upgrade"}))
		.outputs(<logisticspipes:upgrade_module_upgrade>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_action_speed>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <ore:plateAluminium>, <ore:screwSteel>, <ore:paper>, <ore:dyeGreen>, <ore:dyeOrange>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_action_speed"}))
		.outputs(<logisticspipes:upgrade_action_speed>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_item_extraction>);
assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>, <ore:plateAluminium>, <ore:screwSteel>, <ore:paper>, <ore:dyeGreen>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_item_extraction"}))
		.outputs(<logisticspipes:upgrade_item_extraction>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_item_stack_extraction>);
assembler.recipeBuilder()
		.inputs(<ore:circuitGood>, <ore:plateAluminium>, <ore:screwSteel>, <ore:paper>, <ore:dyeGreen>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_item_stack_extraction"}))
		.outputs(<logisticspipes:upgrade_item_stack_extraction>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_lb.buffer_upgrade>);
assembler.recipeBuilder()
		.inputs(<ore:circuitGood>, <logisticspipes:chip_fpga>, <ore:plateStainlessSteel>, <ore:screwSteel>, <ore:paper>, <ore:dyeOrange>)
		.notConsumable(<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_lb.buffer_upgrade"}))
		.outputs(<logisticspipes:upgrade_lb.buffer_upgrade>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

recipes.remove(<logisticspipes:upgrade_lb.adv_extraction_upgrade>);
assembler.recipeBuilder()
		.inputs(<logisticspipes:upgrade_item_stack_extraction>, <ore:circuitGood>)
		.outputs(<logisticspipes:upgrade_lb.adv_extraction_upgrade>)
		.duration(80)
		.EUt(16)
		.buildAndRegister();

#----------------------------logistics_pipes-blocks-------------------------------

recipes.remove(<logisticspipes:frame>);
recipes.addShaped(<logisticspipes:frame>, [[<ore:screwSteel>, <ore:platePlastic>, <ore:screwSteel>], [<ore:plateIron>, <gregtech:meta_tool:6>, <ore:plateIron>], [null, <ore:plateSteel>, null]]);

recipes.remove(<logisticspipes:pipe_request_table>);
recipes.addShaped(<logisticspipes:pipe_request_table>, [[null, <ore:circuitGood>, null], [<logisticspipes:pipe_request_mk2>, <logisticspipes:frame>, <logisticspipes:pipe_crafting>], [null, <ore:chestWood>, null]]);

recipes.remove(<logisticspipes:power_junction>);
recipes.addShaped(<logisticspipes:power_junction>, [[null, <ore:circuitBasic>, null], [<ore:cableGtSingleCopper>, <logisticspipes:frame>, <ore:cableGtSingleCopper>], [null, <gregtech:meta_item_1:32528>, null]]);

recipes.remove(<logisticspipes:security_station>);
recipes.addShaped(<logisticspipes:security_station>, [[<ore:circuitGood>], [<logisticspipes:frame>], [<minecraft:name_tag>]]);

recipes.remove(<logisticspipes:crafting_table>);
recipes.addShaped(<logisticspipes:crafting_table> *4, [[<logisticspipes:frame>, <ore:circuitBasic>, <logisticspipes:frame>], [null, <ore:craftingTableWood>, null], [<logisticspipes:frame>, <gregtech:meta_item_1:32650>, <logisticspipes:frame>]]);

recipes.remove(<logisticspipes:crafting_table_fuzzy>);
recipes.addShapeless(<logisticspipes:crafting_table_fuzzy> *4, [<ore:circuitGood>, <logisticspipes:crafting_table> *4]);

recipes.remove(<logisticspipes:statistics_table>);
recipes.addShaped(<logisticspipes:statistics_table>, [[<ore:circuitGood>], [<logisticspipes:frame>], [<minecraft:writable_book>]]);

recipes.addShaped(<logisticspipes:power_provider_rf>, [[null, <ore:circuitBasic>, null], [<ore:cableGtQuadrupleRedAlloy>, <logisticspipes:frame>, <ore:cableGtQuadrupleRedAlloy>]]);

recipes.remove(<logisticspipes:program_compiler>);
recipes.addShaped(<logisticspipes:program_compiler>, [[null, <ore:circuitGood>, null], [<ore:oc:cpu1>, <logisticspipes:frame>, <ore:oc:ram1>], [null, <ore:rotorBronze>, null]]);
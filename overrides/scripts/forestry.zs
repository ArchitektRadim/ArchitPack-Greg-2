#variables
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

#REMOVAL
#farm
recipes.removeByRecipeName("forestry:arboretum");
recipes.removeByRecipeName("forestry:arboretum_managed_manual");
recipes.removeByRecipeName("forestry:arboretum_manual_managed");
recipes.removeByRecipeName("forestry:farm_crops");
recipes.removeByRecipeName("forestry:farm_crop_managed_manual");
recipes.removeByRecipeName("forestry:farm_crop_manual_managed");
recipes.removeByRecipeName("forestry:farm_mushroom");
recipes.removeByRecipeName("forestry:farm_mushroom_managed_manual");
recipes.removeByRecipeName("forestry:farm_mushroom_manual_managed");
recipes.removeByRecipeName("forestry:farm_gourd");
recipes.removeByRecipeName("forestry:farm_gourd_managed_manual");
recipes.removeByRecipeName("forestry:farm_gourd_manual_managed");
recipes.removeByRecipeName("forestry:farm_ender");
recipes.removeByRecipeName("forestry:farm_ender_managed_manual");
recipes.removeByRecipeName("forestry:farm_ender_manual_managed");
recipes.removeByRecipeName("forestry:farm_nether");
recipes.removeByRecipeName("forestry:farm_nether_managed_manual");
recipes.removeByRecipeName("forestry:farm_nether_manual_managed");
recipes.removeByRecipeName("forestry:peat_bog");
recipes.removeByRecipeName("forestry:peat_bog_managed_manual");
recipes.removeByRecipeName("forestry:peat_bog_manual_managed");
#multifarm
recipes.remove(<forestry:ffarm>);
recipes.remove(<forestry:ffarm:2>);
recipes.remove(<forestry:ffarm:3>);
recipes.remove(<forestry:ffarm:4>);
recipes.remove(<forestry:ffarm:5>);
#items
recipes.remove(<forestry:bronze_shovel>);
recipes.remove(<forestry:bronze_pickaxe>);
recipes.remove(<forestry:gear_bronze>);
recipes.remove(<forestry:gear_copper>);
recipes.remove(<forestry:gear_tin>);
recipes.remove(<forestry:sturdy_machine>);
#machines
recipes.remove(<forestry:moistener>);
recipes.remove(<forestry:carpenter>);
recipes.remove(<forestry:rainmaker>);
recipes.remove(<forestry:raintank>);
recipes.remove(<forestry:analyzer>);
recipes.remove(<forestry:worktable>);
mods.jei.JEI.removeAndHide(<forestry:centrifuge>);

#CUSTOM RECIPES
#multifarm blocks
assembler.recipeBuilder()
		.inputs(<minecraft:stonebrick>, <ore:screwSteel> * 4, <ore:gearSmallSteel>, <ore:plateBronze> * 2, <forestry:thermionic_tubes:10>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm>.withTag({FarmBlock: 0}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<minecraft:stonebrick:1>, <ore:screwSteel> * 4, <ore:gearSmallSteel>, <ore:plateBronze> * 2, <forestry:thermionic_tubes:10>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm>.withTag({FarmBlock: 1}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<minecraft:stonebrick:2>, <ore:screwSteel> * 4, <ore:gearSmallSteel>, <ore:plateBronze> * 2, <forestry:thermionic_tubes:10>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm>.withTag({FarmBlock: 2}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<minecraft:brick_block>, <ore:screwSteel> * 4, <ore:gearSmallSteel>, <ore:plateBronze> * 2, <forestry:thermionic_tubes:10>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm>.withTag({FarmBlock: 3}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<minecraft:sandstone:2>, <ore:screwSteel> * 4, <ore:gearSmallSteel>, <ore:plateBronze> * 2, <forestry:thermionic_tubes:10>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm>.withTag({FarmBlock: 4}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<minecraft:sandstone:1>, <ore:screwSteel> * 4, <ore:gearSmallSteel>, <ore:plateBronze> * 2, <forestry:thermionic_tubes:10>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm>.withTag({FarmBlock: 5}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<minecraft:nether_brick>, <ore:screwSteel> * 4, <ore:gearSmallSteel>, <ore:plateBronze> * 2, <forestry:thermionic_tubes:10>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm>.withTag({FarmBlock: 6}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<minecraft:stonebrick:3>, <ore:screwSteel> * 4, <ore:gearSmallSteel>, <ore:plateBronze> * 2, <forestry:thermionic_tubes:10>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm>.withTag({FarmBlock: 7}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<minecraft:quartz_block>, <ore:screwSteel> * 4, <ore:gearSmallSteel>, <ore:plateBronze> * 2, <forestry:thermionic_tubes:10>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm>.withTag({FarmBlock: 8}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<minecraft:quartz_block:1>, <ore:screwSteel> * 4, <ore:gearSmallSteel>, <ore:plateBronze> * 2, <forestry:thermionic_tubes:10>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm>.withTag({FarmBlock: 9}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<minecraft:quartz_block:2>, <ore:screwSteel> * 4, <ore:gearSmallSteel>, <ore:plateBronze> * 2, <forestry:thermionic_tubes:10>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm>.withTag({FarmBlock: 10}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
#multifarm gearboxes
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 0}), <gregtech:meta_item_1:32600>, <ore:gearSteel> * 4, <forestry:thermionic_tubes:2>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 0}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 1}), <gregtech:meta_item_1:32600>, <ore:gearSteel> * 4, <forestry:thermionic_tubes:2>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 1}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 2}), <gregtech:meta_item_1:32600>, <ore:gearSteel> * 4, <forestry:thermionic_tubes:2>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 2}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 3}), <gregtech:meta_item_1:32600>, <ore:gearSteel> * 4, <forestry:thermionic_tubes:2>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 3}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 4}), <gregtech:meta_item_1:32600>, <ore:gearSteel> * 4, <forestry:thermionic_tubes:2>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 4}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 5}), <gregtech:meta_item_1:32600>, <ore:gearSteel> * 4, <forestry:thermionic_tubes:2>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 5}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 6}), <gregtech:meta_item_1:32600>, <ore:gearSteel> * 4, <forestry:thermionic_tubes:2>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 6}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 7}), <gregtech:meta_item_1:32600>, <ore:gearSteel> * 4, <forestry:thermionic_tubes:2>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 7}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 8}), <gregtech:meta_item_1:32600>, <ore:gearSteel> * 4, <forestry:thermionic_tubes:2>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 8}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 9}), <gregtech:meta_item_1:32600>, <ore:gearSteel> * 4, <forestry:thermionic_tubes:2>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 9}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 10}), <gregtech:meta_item_1:32600>, <ore:gearSteel> * 4, <forestry:thermionic_tubes:2>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:2>.withTag({FarmBlock: 10}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
#multifarm hatches
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 0}), <ore:gearSteel>, <ore:circuitBasic> * 2, <forestry:thermionic_tubes:4> * 4, <ore:cableGtSingleTin>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 0}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 1}), <ore:gearSteel>, <ore:circuitBasic> * 2, <forestry:thermionic_tubes:4> * 4, <ore:cableGtSingleTin>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 1}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 2}), <ore:gearSteel>, <ore:circuitBasic> * 2, <forestry:thermionic_tubes:4> * 4, <ore:cableGtSingleTin>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 2}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 3}), <ore:gearSteel>, <ore:circuitBasic> * 2, <forestry:thermionic_tubes:4> * 4, <ore:cableGtSingleTin>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 3}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 4}), <ore:gearSteel>, <ore:circuitBasic> * 2, <forestry:thermionic_tubes:4> * 4, <ore:cableGtSingleTin>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 4}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 5}), <ore:gearSteel>, <ore:circuitBasic> * 2, <forestry:thermionic_tubes:4> * 4, <ore:cableGtSingleTin>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 5}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 6}), <ore:gearSteel>, <ore:circuitBasic> * 2, <forestry:thermionic_tubes:4> * 4, <ore:cableGtSingleTin>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 6}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 7}), <ore:gearSteel>, <ore:circuitBasic> * 2, <forestry:thermionic_tubes:4> * 4, <ore:cableGtSingleTin>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 7}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 8}), <ore:gearSteel>, <ore:circuitBasic> * 2, <forestry:thermionic_tubes:4> * 4, <ore:cableGtSingleTin>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 8}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 9}), <ore:gearSteel>, <ore:circuitBasic> * 2, <forestry:thermionic_tubes:4> * 4, <ore:cableGtSingleTin>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 9}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 10}), <ore:gearSteel>, <ore:circuitBasic> * 2, <forestry:thermionic_tubes:4> * 4, <ore:cableGtSingleTin>)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:3>.withTag({FarmBlock: 10}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
#multifarm hatches
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 0}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:11> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 0}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 1}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:11> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 1}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 2}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:11> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 2}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 3}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:11> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 3}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 4}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:11> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 4}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 5}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:11> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 5}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 6}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:11> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 6}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 7}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:11> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 7}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 8}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:11> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 8}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 9}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:11> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 9}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 10}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:11> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:4>.withTag({FarmBlock: 10}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
#multifarm controllers
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 0}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32630> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:1> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 0}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 1}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32630> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:1> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 1}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 2}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32630> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:1> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 2}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 3}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32630> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:1> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 3}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 4}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32630> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:1> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 4}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 5}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32630> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:1> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 5}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 6}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32630> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:1> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 6}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 7}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32630> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:1> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 7}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 8}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32630> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:1> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 8}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 9}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32630> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:1> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 9}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
assembler.recipeBuilder()
		.inputs(<forestry:ffarm>.withTag({FarmBlock: 10}), <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32630> * 2, <ore:gearSteel>, <forestry:thermionic_tubes:1> * 4)
		.fluidInputs([<liquid:redstone> * 144])
		.outputs(<forestry:ffarm:5>.withTag({FarmBlock: 10}))
		.duration(150)
		.EUt(30)
		.buildAndRegister();
#machines
recipes.addShaped(<forestry:moistener>, [[<ore:screwSteel>, <minecraft:glass>, <ore:screwSteel>],[<ore:plankWood>, <forestry:sturdy_machine>, <ore:plankWood>], [<ore:plankWood>, <gregtech:machine:812>, <ore:plankWood>]]);
recipes.addShaped(<forestry:carpenter>, [[<ore:screwSteel>, <ore:circuitBasic>, <ore:screwSteel>],[<ore:plateBronze>, <forestry:sturdy_machine>, <ore:plateBronze>], [<ore:plateBronze>, <gregtech:machine:812>, <ore:plateBronze>]]);
recipes.addShaped(<forestry:rainmaker>, [[null, <gregtech:meta_item_2:32500>, null],[<ore:plateIridium>, <ore:gearDiamond>, <ore:plateIridium>], [<gregtech:machine:814>, <forestry:hardened_machine>, <gregtech:machine:814>]]);
recipes.addShaped(<forestry:raintank>, [[<ore:plateIron>, <minecraft:glass:*>, <ore:plateIron>],[<ore:plateIron>, <forestry:sturdy_machine>, <ore:plateIron>], [<ore:plateIron>, <minecraft:glass:*>, <ore:plateIron>]]);
recipes.addShaped(<forestry:worktable>, [[<ore:screwBronze>, <minecraft:carpet:13>, <ore:screwBronze>],[<ore:plateBronze>, <minecraft:crafting_table>, <ore:plateBronze>], [<ore:screwBronze>, <minecraft:book>, <ore:screwBronze>]]);
#items
recipes.addShaped(<forestry:portable_alyzer>, [[<ore:screwAluminium>, <forestry:portable_alyzer>, <ore:screwAluminium>],[<ore:plateAluminium>, <forestry:sturdy_machine>, <ore:plateAluminium>], [<ore:plateAluminium>, <ore:circuitGood>, <ore:plateAluminium>]]);
recipes.addShaped(<forestry:portable_alyzer>, [[<ore:plateAluminium>, <ore:circuitGood>, <ore:plateAluminium>],[<ore:plateAluminium>, <ore:paneGlassColorless>, <ore:plateAluminium>], [null, <gregtech:meta_item_1:32690>, null]]);
recipes.addShaped(<forestry:impregnated_casing>, [[<ore:screwIron>, <gregtech:meta_item_1:12196>, <ore:screwIron>],[<gregtech:meta_item_1:12196>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "creosote", Amount: 1000}}).onlyWithTag({Fluid: {FluidName: "creosote", Amount: 1000}}), <gregtech:meta_item_1:12196>], [<ore:screwIron>, <gregtech:meta_item_1:12196>, <ore:screwIron>]]);
recipes.addShaped(<forestry:sturdy_machine>, [[<ore:screwBronze>, <ore:plateBronze>, <ore:screwBronze>],[<ore:plateBronze>, <gregtech:meta_tool:6>, <ore:plateBronze>], [<ore:screwBronze>, <ore:plateBronze>, <ore:screwBronze>]]);
recipes.addShaped(<forestry:soldering_iron>, [[<ore:wireGtSingleAnnealedCopper>, null, null],[null, <ore:wireGtDoubleAnnealedCopper>, <ore:plateRubber>], [null, <gregtech:meta_item_1:32519>, <ore:plateRubber>]]);

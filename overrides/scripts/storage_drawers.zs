
#REMOVAL
#blocks
recipes.removeByRecipeName("storagedrawers:controller");
recipes.removeByRecipeName("storagedrawers:controllerslave");
recipes.removeByRecipeName("storagedrawers:compdrawers");
#items
recipes.removeByRecipeName("storagedrawers:drawer_key");
recipes.removeByRecipeName("storagedrawers:tape");
#upgrades
recipes.removeByRecipeName("storagedrawers:upgrade_template");
recipes.removeByRecipeName("storagedrawers:upgrade_storage_obsidian");
recipes.removeByRecipeName("storagedrawers:upgrade_storage_iron");
recipes.removeByRecipeName("storagedrawers:upgrade_storage_gold");
recipes.removeByRecipeName("storagedrawers:upgrade_storage_diamond");
recipes.removeByRecipeName("storagedrawers:upgrade_storage_emerald");

#ADDING RECIPES
#blocks
recipes.addShaped(<storagedrawers:controller>, [[<minecraft:stone_slab>, <ore:circuitGood>, <minecraft:stone_slab>],[<gregtech:meta_item_1:32691>, <ore:drawerBasic>, <gregtech:meta_item_1:32651>], [<minecraft:stone_slab>, <minecraft:hopper>, <minecraft:stone_slab>]]);
recipes.addShaped(<storagedrawers:controllerslave>, [[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>],[<gregtech:meta_item_1:32690>, <ore:drawerBasic>, <gregtech:meta_item_1:32630>], [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);
recipes.addShaped(<storagedrawers:compdrawers>, [[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>],[<ore:craftingPiston>, <ore:drawerBasic>, <ore:craftingPiston>], [<minecraft:stone_slab>, <ore:blockSteel>, <minecraft:stone_slab>]]);
#items
recipes.addShaped(<storagedrawers:drawer_key>, [[<ore:plateGold>, <ore:stickGold>, null],[null, <ore:stickGold>, null], [null, <ore:ringIron>, null]]);
recipes.addShaped(<storagedrawers:tape>, [[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],[<ore:ringPaper>, <gregtech:meta_item_1:32762>, <ore:ringPaper>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);
#upgrades
recipes.addShaped(<storagedrawers:upgrade_template>, [[<ore:screwSteel>, <ore:stickSteel>, <ore:screwSteel>],[<ore:stickSteel>, <ore:drawerBasic>, <ore:stickSteel>], [<ore:screwSteel>, <ore:stickSteel>, <ore:screwSteel>]]);
recipes.addShaped(<storagedrawers:upgrade_storage>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],[<ore:blockObsidian>, <storagedrawers:upgrade_template>, <ore:blockObsidian>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
recipes.addShaped(<storagedrawers:upgrade_storage:1>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],[<ore:plateIron>, <storagedrawers:upgrade_template>, <ore:plateIron>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
recipes.addShaped(<storagedrawers:upgrade_storage:2>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],[<ore:plateGold>, <storagedrawers:upgrade_template>, <ore:plateGold>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
recipes.addShaped(<storagedrawers:upgrade_storage:3>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],[<ore:plateDiamond>, <storagedrawers:upgrade_template>, <ore:plateDiamond>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
recipes.addShaped(<storagedrawers:upgrade_storage:4>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],[<ore:plateEmerald>, <storagedrawers:upgrade_template>, <ore:plateEmerald>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

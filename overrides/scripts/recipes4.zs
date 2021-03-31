#---------------------------------remove--------------------------------------
mods.jei.JEI.removeAndHide(<tconstruct:wood_rail_trapdoor>);
mods.jei.JEI.removeAndHide(<tconstruct:wood_rail>);
recipes.remove(<tconstruct:wooden_hopper>);
recipes.addShaped(<tconstruct:wooden_hopper>,[[<ore:plankWood>,null,<ore:plankWood>], [<ore:plankWood>,<ore:chestWood>,<ore:plankWood>], [<gregtech:meta_tool:5>,<ore:plankWood>,<gregtech:meta_tool:6>]]);

#-----------------------------plates-gears------------------------------------
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
mods.jei.JEI.removeAndHide(<tconstruct:cast_custom:3>);
mods.jei.JEI.removeAndHide(<tconstruct:cast_custom:4>);

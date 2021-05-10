#remove
mods.jei.JEI.removeAndHide(<tconstruct:wood_rail_trapdoor>);
mods.jei.JEI.removeAndHide(<tconstruct:wood_rail>);
recipes.remove(<tconstruct:wooden_hopper>);
recipes.addShaped(<tconstruct:wooden_hopper>,[[<ore:plankWood>,null,<ore:plankWood>], [<ore:plankWood>,<ore:chestWood>,<ore:plankWood>], [<gregtech:meta_tool:5>,<ore:plankWood>,<gregtech:meta_tool:6>]]);
#plates-gears
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
mods.jei.JEI.removeAndHide(<tconstruct:cast_custom:3>);
mods.jei.JEI.removeAndHide(<tconstruct:cast_custom:4>);
#fixes
mods.tconstruct.Alloy.removeRecipe(<liquid:alubrass>);
mods.tconstruct.Alloy.addRecipe(<liquid:alubrass> * 4, [<liquid:copper> * 1, <liquid:aluminium> * 3]);
#harder toll forge
recipes.remove(<tconstruct:toolforge>);
recipes.addShaped(<tconstruct:toolforge>.withTag({textureBlock: {id: "minecraft:iron_block", Count: 1 as byte, Damage: 0 as short}}),[[<ore:blockSeared>, <tconstruct:large_plate>.withTag({Material: "blue_steel"}), <ore:blockSeared>], [<ore:plateDenseIron>, <tconstruct:tooltables:3>, <ore:plateDenseIron>], [<ore:plateDenseIron>, null, <ore:plateDenseIron>]]);
//Removedthings
mods.jei.JEI.removeAndHide(<immersiveengineering:wooden_device1>);
mods.jei.JEI.removeAndHide(<immersiveengineering:wooden_device1:1>);
mods.jei.JEI.removeAndHide(<immersiveengineering:material:6>);
mods.jei.JEI.removeAndHide(<immersiveengineering:stone_decoration:3>);

//CokeOven
recipes.remove(<immersiveengineering:stone_decoration>*3);

//AlloyKIln
recipes.remove(<immersiveengineering:stone_decoration:10>*2);
recipes.addShapedMirrored("2x_tile_immersiveengineering_stone_decoration_alloybrick_shaped", <immersiveengineering:stone_decoration:10> * 2, [
	[<enderio:item_alloy_endergy_ingot>, <pyrotech:material:5>],
	[<pyrotech:material:5>, <enderio:item_alloy_endergy_ingot>]
]);


//ChangeCraftingComponentBlueprintCausenoAluminium
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));
recipes.addShapedMirrored("1x_item_immersiveengineering_blueprint_shaped", <immersiveengineering:blueprint>.withTag({blueprint: "components"}), [
	[<minecraft:iron_ingot>, <ore:ingotCopper>, <ore:ingotTin>],
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
	[<ore:paper>, <ore:paper>, <ore:paper>]
]);

//CraftingComponentsRecipes
mods.immersiveengineering.Blueprint.addRecipe("components", <thaumcraft:inlay>, [<minecraft:redstone>, <materialpart:angmallen:plate>]);

//Blueprints
//CraftingComponentsRecipes
mods.immersiveengineering.Blueprint.addRecipe("blueprint", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:swamp_reactor"}), [<minecraft:paper>, <thebetweenlands:swamp_dirt>*16]);
//CraftingComponentsRecipes
mods.immersiveengineering.Blueprint.addRecipe("blueprint", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:clay_forge"}), [<minecraft:paper>, <minecraft:paper>,<avaritia:resource:4>*16,<minecraft:paper>*8,<avaritia:block_resource:1>*3]);


//Pressrecipes
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:22>*2, <ore:ingotSilver>, <immersiveengineering:mold:4>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:20>*2, <ore:ingotBrass>, <immersiveengineering:mold:4>, 2000, 16);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:21>*2, <ore:ingotScandium>, <immersiveengineering:mold:4>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:23>*2, <ore:ingotNeodymium>, <immersiveengineering:mold:4>, 2000, 16);

//Engineersworkbenchtakesnotreatedwood
recipes.addShapedMirrored("1x_tile_immersiveengineering_wooden_device0_workbench_shaped", <immersiveengineering:wooden_device0:2>, [
	[<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>],
	[<minecraft:crafting_table>, null, <pyrotech:material:23>]
]);

//Conveyor
recipes.addShapedMirrored("8x_tile_immersiveengineering_conveyor_immersiveengineering_conveyor_shaped", (<immersiveengineering:conveyor> * 8).withTag({conveyorType: "immersiveengineering:conveyor"}), [
	[<ore:leather>, <contenttweaker:basicconveyor>, <ore:leather>],
	[<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>]
]);

//Blastfurnace
mods.immersiveengineering.BlastFurnace.removeAll();
mods.immersiveengineering.BlastFurnace.addRecipe(<metallurgy:steel_ingot>, <contenttweaker:material_part:94>, 2000, <pyrotech:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<enderio:item_alloy_endergy_ingot>, <minecraft:iron_ingot>, 2000, <pyrotech:slag>);

//Blastfurnace
mods.immersiveengineering.CokeOven.removeAll();
mods.immersiveengineering.BlastFurnace.addRecipe(<metallurgy:steel_ingot>, <contenttweaker:material_part:94>, 2000, <pyrotech:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<enderio:item_alloy_endergy_ingot>, <minecraft:iron_ingot>, 2000, <pyrotech:slag>);

//Blastfurnace
mods.immersiveengineering.BlastFurnace.removeAll();
mods.immersiveengineering.BlastFurnace.addRecipe(<metallurgy:steel_ingot>, <contenttweaker:material_part:94>, 2000, <pyrotech:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<enderio:item_alloy_endergy_ingot>, <minecraft:iron_ingot>, 2000, <pyrotech:slag>);

//Distillation Tower
//Wood Tar
mods.immersivepetroleum.Distillation.addRecipe([<liquid:benzene>*350,<liquid:toluene>*75,<liquid:dimethylbenzene>*200,<liquid:creosote>*300,<liquid:phenol>*75], [], <liquid:wood_tar>*1000, 40000, 40, []);

//Wood Gas
mods.immersivepetroleum.Distillation.addRecipe([<liquid:methane>*130,<liquid:carbon_monoxide>*340,<liquid:hydrogen>*20,<liquid:carbondioxide>*490,<liquid:ethene>*20], [], <liquid:wood_gas>*1000, 16000, 40, []);

//Coal Tar
mods.immersivepetroleum.Distillation.addRecipe([<liquid:ethylbenzene>*150,<liquid:anthracene>*50,<liquid:kerosene>*200,<liquid:coaloil>*500,<liquid:naphtha>*100], [], <liquid:coal_tar>*1000, 40000, 40, []);

//CharcoalByproducts
mods.immersivepetroleum.Distillation.addRecipe([<liquid:wood_gas>*250,<liquid:dimethylbenzene>*100,<liquid:wood_tar>*250,<liquid:winegar>*400], [], <liquid:charcoal>*1000, 40000, 40, []);
import mods.immersiveintelligence.PrecissionAssembler;
//Removedthings
mods.jei.JEI.removeAndHide(<immersiveengineering:wooden_device1>);
mods.jei.JEI.removeAndHide(<immersiveengineering:wooden_device1:1>);
mods.jei.JEI.removeAndHide(<immersiveengineering:material:6>);
mods.jei.JEI.removeAndHide(<immersiveengineering:stone_decoration:3>);
mods.jei.JEI.removeAndHide(<immersiveintelligence:material:19>);


//ByeMechanicalSaw
mods.jei.JEI.removeAndHide(<immersiveintelligence:wooden_multiblock:2>);

//CokeOven
recipes.remove(<immersiveengineering:stone_decoration>*3);

//AlloyKIln
recipes.remove(<immersiveengineering:stone_decoration:10>*2);
recipes.addShapedMirrored("2x_tile_immersiveengineering_stone_decoration_alloybrick_shaped", <immersiveengineering:stone_decoration:10> * 2, [
	[<thebetweenlands:limestone_bricks>, <pyrotech:material:5>],
	[<pyrotech:material:5>, <thebetweenlands:limestone_bricks>]
]);

//AlloykilnRecipe
mods.immersiveengineering.AlloySmelter.addRecipe(<metallurgy:angmallen_ingot>, <ore:ingotIron>, <ore:ingotGold>, 2000);
mods.immersiveengineering.AlloySmelter.addRecipe(<metallurgy:angmallen_ingot>, <ore:ingotGold>, <ore:ingotIron>, 2000);

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
recipes.remove(<immersiveengineering:wooden_device0:2>);
recipes.addShapedMirrored("1x_tile_immersiveengineering_wooden_device0_workbench_shaped", <immersiveengineering:wooden_device0:2>, [
	[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
	[<minecraft:crafting_table>, null, <primal:fence:2>]
]);
/*
//Conveyor
recipes.remove(<immersiveengineering:conveyor>);
recipes.addShapedMirrored("8x_tile_immersiveengineering_conveyor_immersiveengineering_conveyor_shaped", (<immersiveengineering:conveyor> * 8).withTag({conveyorType: "immersiveengineering:conveyor"}), [
	[<ore:leather>, <contenttweaker:basicconveyor>, <ore:leather>],
	[<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>]
]);
*/
//Blastfurnace'
recipes.remove(<immersiveengineering:stone_decoration:2>);
recipes.addShapedMirrored("3x_tile_immersiveengineering_stone_decoration_blastbrick_reinforced_shaped", <immersiveengineering:stone_decoration:2> * 3, [
	[<materialpart:Crude_Steel:bolt>, <materialpart:Crude_Steel:plate>, <materialpart:Crude_Steel:bolt>],
	[<immersiveengineering:stone_decoration:1>, <immersiveengineering:stone_decoration:1>, <immersiveengineering:stone_decoration:1>],
	[<materialpart:Crude_Steel:bolt>, <materialpart:Crude_Steel:plate>, <materialpart:Crude_Steel:bolt>]
]);
recipes.addShapedMirrored("1x_tile_immersiveengineering_stone_decoration_blastbrick_reinforced_shaped", <immersiveengineering:stone_decoration:2>, [
	[<immersiveengineering:stone_decoration_slab:2>],
	[<immersiveengineering:stone_decoration_slab:2>]
]);




recipes.remove(<immersiveengineering:stone_decoration:1> * 3);
recipes.addShapedMirrored("3x_tile_immersiveengineering_stone_decoration_blastbrick_shapedXD", <immersiveengineering:stone_decoration:1> * 3, [
	[<botania:quartz:2>, <pyrotech:material:33>, <botania:quartz:2>],
	[<minecraft:nether_brick>, <silentgems:craftingmaterial:19>, <minecraft:nether_brick>],
	[<botania:quartz:2>, <pyrotech:material:33>, <botania:quartz:2>]
]);
recipes.addShapedMirrored("3x_tile_immersiveengineering_stone_decoration_blastbrick_shaped", <immersiveengineering:stone_decoration:1> * 3, [
	[<botania:quartz:2>, <pyrotech:material:33>, <botania:quartz:2>],
	[<minecraft:nether_brick>, <ore:plateCrudeSteel>, <minecraft:nether_brick>],
	[<botania:quartz:2>, <pyrotech:material:33>, <botania:quartz:2>]
]);

//Cokeoven
mods.immersiveengineering.CokeOven.removeAll();


//Blastfurnace
mods.immersiveengineering.BlastFurnace.removeAll();
mods.immersiveengineering.BlastFurnace.addRecipe(<metallurgy:steel_ingot>, <materialpart:Pig_Iron:ingot>, 2000, <pyrotech:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<enderio:item_alloy_endergy_ingot>, <minecraft:iron_ingot>, 2000, <pyrotech:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:netherbrick>, <primal:soul_residue>, 200);


//Distillation Tower
//Wood Tar
mods.immersivepetroleum.Distillation.addRecipe([<liquid:benzene>*350,<liquid:toluene>*75,<liquid:creosote>*500,<liquid:phenol>*75], [], <liquid:wood_tar>*1000, 40000, 40, []);

//Wood Gas
mods.immersivepetroleum.Distillation.addRecipe([<liquid:methane>*130,<liquid:carbon_monoxide>*340,<liquid:hydrogen>*20,<liquid:carbondioxide>*490,<liquid:ethene>*20], [], <liquid:wood_gas>*1000, 16000, 40, []);

//Coal Tar
mods.immersivepetroleum.Distillation.addRecipe([<liquid:ethylbenzene>*150,<liquid:anthracene>*50,<liquid:kerosene>*200,<liquid:coaloil>*500,<liquid:naphtha>*100], [], <liquid:coal_tar>*1000, 40000, 40, []);

//CharcoalByproducts
mods.immersivepetroleum.Distillation.addRecipe([<liquid:wood_gas>*200,<liquid:wood_tar>*500,<liquid:winegar>*300], [], <liquid:charcoal>*1000, 40000, 40, []);

//MainOil
mods.immersivepetroleum.Distillation.addRecipe([<liquid:natural_gas>*100,<liquid:lpg>*200,<liquid:processedoil>*700], [], <liquid:hot_crude>*10000, 160000, 40, []);

//NaturalGas
mods.immersivepetroleum.Distillation.addRecipe([<liquid:lng>*700,<liquid:gascondensates>*200,<liquid:hydrogen_sulfide>*100], [], <liquid:hotnaturalgas>*10000, 160000, 40, []);

/*
'<materialpart:angmallen:plate>'
*/

//EngineeringBlocks
recipes.remove(<immersiveengineering:metal_decoration0:4> * 2);
recipes.addShapedMirrored("2x_tile_immersiveengineering_metal_decoration0_light_engineering_shaped", <immersiveengineering:metal_decoration0:4> * 2, [
	[<ore:plateSteel>, <immersiveengineering:material:8>, <ore:plateSteel>],
	[<contenttweaker:basicpiston>, <actuallyadditions:block_misc:9>, <contenttweaker:basicpiston>],
	[<ore:plateSteel>, <immersiveengineering:material:8>, <ore:plateSteel>]
]);
recipes.remove(<immersiveengineering:metal_decoration0:5> * 2);
recipes.addShapedMirrored("2x_tile_immersiveengineering_metal_decoration0_heavy_engineering_shaped", <immersiveengineering:metal_decoration0:5> * 2, [
	[<ore:plateAluminium>, <immersiveengineering:material:9>, <ore:plateAluminium>],
	[<contenttweaker:intermediatepiston>, <emergingtechnology:machinecase>, <contenttweaker:intermediatepiston>],
	[<ore:plateAluminium>, <immersiveengineering:material:9>, <ore:plateAluminium>]
]);





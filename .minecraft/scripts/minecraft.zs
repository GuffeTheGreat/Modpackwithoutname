
//CraftingTable
recipes.remove(<minecraft:crafting_table>);
recipes.addShapedMirrored("1x_tile_workbench_shaped", <minecraft:crafting_table>, [
	[<ore:plankWood>,<ore:plankWood>],
	[<ore:plankWood>,<ore:plankWood>]
]);

//Piston
recipes.addShapedMirrored("1x_tile_pistonBase_shaped", <minecraft:piston>, [
	[<immersiveengineering:treated_wood>, <immersiveengineering:metal:38>, <immersiveengineering:treated_wood>],
	[<minecraft:stone>, <betterwithmods:wooden_axle>, <minecraft:stone>],
	[<minecraft:stone>, <betterwithmods:material:34>, <minecraft:stone>]
]);


//RemovePyrotechCobblestoneSlabRecipe
recipes.remove(<minecraft:stone_slab:3>);

//WoodenGearRecipesRemoved
recipes.remove(<ore:gearWood>);

recipes.remove(<minecraft:stick>*2);

//ClearBookRecipe
recipes.remove(<minecraft:book>);
recipes.addShapeless("1x_item_book_shapeless", <minecraft:book>, [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <betterwithmods:material:32>]);

//Torches
recipes.remove(<minecraft:torch>);
recipes.addShapedMirrored("4x_tile_torch_shapedcoke", <minecraft:torch> * 4, [
	[<pyrotech:material:1>, null, null],
	[<minecraft:stick>, null, null],
	[null, null, null]
]);
recipes.addShapedMirrored("4x_tile_torch_shapedrosin", <minecraft:torch> * 4, [
	[<thermalfoundation:material:832>, null, null],
	[<minecraft:stick>, null, null],
	[null, null, null]
]);
recipes.addShapedMirrored("4x_tile_torch_shapedtar", <minecraft:torch> * 4, [
	[<thermalfoundation:material:833>, null, null],
	[<minecraft:stick>, null, null],
	[null, null, null]
]);
recipes.addShapedMirrored("6x_tile_torch_shapedncoal", <minecraft:torch> * 6, [
	[<betterwithmods:material:1>, null, null],
	[<minecraft:stick>, null, null],
	[null, null, null]
]);





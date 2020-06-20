 import mods.efabct.EFabRecipe;

//BlastBrick
 EFabRecipe.shaped(<immersiveengineering:stone_decoration:1>*3, [
[<embers:archaic_brick>, <ore:ingotBrickNether>, <embers:archaic_brick>],
[<ore:ingotBrickNether>, <pyrotech:refractory_brick_block>, <ore:ingotBrickNether>],
[<embers:archaic_brick>, <ore:ingotBrickNether>, <embers:archaic_brick>]])
    .time(20)
    .fluid(<liquid:lava> * 120);

//bookShelf
 EFabRecipe.shaped(<immersiveengineering:stone_decoration:1>*3, [
[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
[<minecraft:book>, <minecraft:enchanted_book>, <minecraft:book>],
[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]])
    .time(10)
    .fluid(<liquid:xpjuice> * 1000);

//BlastBrick
 EFabRecipe.shaped(<immersiveengineering:stone_decoration:1>*3, [
[<embers:archaic_brick>, <ore:ingotBrickNether>, <embers:archaic_brick>],
[<ore:ingotBrickNether>, <pyrotech:refractory_brick_block>, <ore:ingotBrickNether>],
[<embers:archaic_brick>, <ore:ingotBrickNether>, <embers:archaic_brick>]])
    .time(20)
    .fluid(<liquid:lava> * 120);


 EFabRecipe.shaped(<roughtweaks:medikit>, [
	[<ore:paper>, <roughtweaks:salve>, <ore:paper>],
	[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "herba"}]}), <roughtweaks:plaster>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]})],
	[<ore:paper>, <roughtweaks:bandage>, <ore:paper>]])
	    .time(40)
    .fluid(<liquid:coal_tar> * 250);


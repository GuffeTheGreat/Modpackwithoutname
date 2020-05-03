import mods.pyrotech.CrudeDryingRack;
import mods.pyrotech.SoakingPot;
import mods.pyrotech.DryingRack;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.Chopping;
import mods.pyrotech.IroncladAnvil;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;
import mods.pyrotech.PitKiln;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//RemovedItems
mods.jei.JEI.removeAndHide(<pyrotech:worktable>);
mods.jei.JEI.removeAndHide(<pyrotech:worktable_stone>);
mods.jei.JEI.removeAndHide(<pyrotech:planks_tarred>);
mods.jei.JEI.removeAndHide(<pyrotech:stone_shears>);
mods.jei.JEI.removeAndHide(<pyrotech:bone_shears>);
mods.jei.JEI.removeAndHide(<pyrotech:flint_shears>);
mods.jei.JEI.removeAndHide(<pyrotech:bucket_wood>);
mods.jei.JEI.removeAndHide(<pyrotech:bucket_stone>);
mods.jei.JEI.removeAndHide(<pyrotech:bucket_clay_unfired>);
mods.jei.JEI.removeAndHide(<pyrotech:material:17>);
mods.jei.JEI.removeAndHide(<pyrotech:dense_coal_ore>);
mods.jei.JEI.removeAndHide(<pyrotech:dense_nether_coal_ore>);
mods.jei.JEI.removeAndHide(<pyrotech:bone_pickaxe>);
mods.jei.JEI.removeAndHide(<pyrotech:flint_pickaxe>);
mods.jei.JEI.removeAndHide(<pyrotech:obsidian_pickaxe>);

//Liquidclay
mods.embers.Melter.add(<liquid:liquid_clay>*250,<minecraft:clay_ball>);
mods.embers.Melter.add(<liquid:liquid_clay>*1000,<minecraft:clay>);
mods.nuclearcraft.Melter.addRecipe(<minecraft:clay>, <liquid:liquid_clay>*1000);
mods.nuclearcraft.Melter.addRecipe(<minecraft:clay_ball>, <liquid:liquid_clay>*250);
//PotashMulch
recipes.remove(<pyrotech:mulch>);
recipes.addShapedMirrored("4x_item_pyrotech_mulch_shaped", <pyrotech:mulch> * 4, [
	[<pyrotech:rock:7>, <pyrotech:material>, <pyrotech:rock:7>],
	[<metallurgy:potash>, <ore:mulchNitrogen>, <metallurgy:potash>],
	[<pyrotech:rock:7>, <pyrotech:material>, <pyrotech:rock:7>]
]);

//EasyAsh
StoneKiln.addRecipe("ashpile", <pyrotech:material>, <ore:logWood>, 1200);
BrickKiln.addRecipe("ashpile2", <pyrotech:material>, <ore:logWood>, 600);

recipes.remove(<pyrotech:drying_rack:1>);
recipes.addShapedMirrored("pyrotech_tech/basic/drying_rack.normal", <pyrotech:drying_rack:1>, [
	[<immersiveengineering:material>, <pyrotech:material:26>, <immersiveengineering:material>],
	[<pyrotech:material:26>, <minecraft:ladder>, <pyrotech:material:26>],
	[<immersiveengineering:material>, <pyrotech:material:26>, <immersiveengineering:material>]
]);

//Refractoryclay
recipes.remove(<pyrotech:material:4>*5);
recipes.addShapedMirrored(
"5x_item_pyrotech_refractory_clay_ball_shaped", <pyrotech:material:4> * 5, [
	[<primal:adobe_clump>, <pyrotech:material>, <primal:adobe_clump>],
	[<pyrotech:material:8>, <pyrotech:material:3>, <pyrotech:material:8>],
	[<primal:adobe_clump>, <pyrotech:material>, <primal:adobe_clump>]
]);





//GraniteAnvil
recipes.remove(<pyrotech:anvil_granite>);
recipes.addShapedMirrored("pyrotech_tech/basic/anvil_granite", <pyrotech:anvil_granite>, [
	[<minecraft:stone:2>],
	[<ore:stoneSlab>]
]);
recipes.addShapedMirrored("pyrotech_tech/basic/anvil_granite_red", <pyrotech:anvil_granite>, [
	[<undergroundbiomes:igneous_stone>],
	[<ore:stoneSlab>]
]);
recipes.addShapedMirrored("pyrotech_tech/basic/anvil_granite_black", <pyrotech:anvil_granite>, [
	[<undergroundbiomes:igneous_stone:1>],
	[<ore:stoneSlab>]
]);
//IroncladAnvil
recipes.remove(<pyrotech:anvil_iron_plated>);
recipes.addShapedMirrored("1x_tile_pyrotech_anvil_iron_plated_shaped", <pyrotech:anvil_iron_plated>, [
	[<embers:plate_iron>],
	[<pyrotech:anvil_granite>]
]);


//RockBag
recipes.remove(<pyrotech:bag_simple>);
recipes.addShapedMirrored("1x_tile_pyrotech_bag_simple_shaped", <pyrotech:bag_simple>, [
	[<ore:wool>, <ore:twine>, <ore:wool>],
	[<ore:hide>, <ore:chest>, <ore:hide>],
	[<ore:hide>, <ore:hide>, <ore:hide>]
]);

//Straw
recipes.remove(<pyrotech:material:2>);
recipes.addShapeless("1x_item_pyrotech_straw_shapeless", <pyrotech:material:2>, [<pyrotech:material:13>, <primal:thatching_dry>, <primal:thatching_dry>, <pyrotech:material:13>]);



//Bellow
recipes.remove(<pyrotech:bellows>);
recipes.addShapedMirrored("pyrotech_tech/machine/bellows", <pyrotech:bellows>, [
	[<pyrotech:material:20>, <pyrotech:material:16>, <pyrotech:material:20>],
	[<minecraft:leather>, <pyrotech:material:27>, <minecraft:leather>],
	[<pyrotech:stone_bricks>, null, <pyrotech:stone_bricks>]
]);
//Mechanicalmachines
recipes.remove(<pyrotech:mechanical_bellows>);
recipes.remove(<pyrotech:mechanical_hopper>);
recipes.remove(<pyrotech:mechanical_compacting_bin>);
recipes.remove(<pyrotech:mechanical_mulch_spreader>);
//Bellow
recipes.addShapedMirrored("pyrotech_tech/machine/mechanical_bellows", <pyrotech:mechanical_bellows>, [
	[<pyrotech:material:23>, <ore:plateIron>, <pyrotech:material:23>],
	[<pyrotech:material:27>, <pyrotech:bellows>, <pyrotech:material:27>],
	[<immersiveengineering:treated_wood>, null, <immersiveengineering:treated_wood>]
	]);
//Mulcher
recipes.addShapedMirrored("1x_tile_pyrotech_mechanical_mulch_spreader_shaped", <pyrotech:mechanical_mulch_spreader>, [
	[<pyrotech:material:16>, <pyrotech:material:23>, <pyrotech:material:16>],
	[<pyrotech:mechanical_hopper>, <minecraft:dispenser>, <pyrotech:mechanical_hopper>],
	[<pyrotech:stone_bricks>, <ore:plankTreatedWood>, <pyrotech:stone_bricks>]
]);
//Hopper
recipes.addShapedMirrored("1x_tile_pyrotech_mechanical_hopper_shaped", <pyrotech:mechanical_hopper>, [
	[<pyrotech:material:16>, null, <pyrotech:material:16>],
	[<immersiveengineering:treated_wood>, <pyrotech:material:27>, <immersiveengineering:treated_wood>],
	[null, <pyrotech:material:16>, null]
]);
//Compactor
recipes.addShapedMirrored("1x_tile_pyrotech_mechanical_compacting_bin_shaped", <pyrotech:mechanical_compacting_bin>, [
	[<pyrotech:material:16>, <pyrotech:material:23>, <pyrotech:material:16>],
	[<pyrotech:mechanical_hopper>, <pyrotech:compacting_bin>, <minecraft:piston>],
	[<pyrotech:stone_bricks>, <immersiveengineering:treated_wood>, <pyrotech:stone_bricks>]
]);


//StoneTorches
recipes.addShapedMirrored("4x_tile_pyrotech_torch_stone_shaped", <pyrotech:torch_stone> * 4, [
	[<minecraft:coal>],
	[<pyrotech:material:27>]
]);
//GraniteRecipes
GraniteAnvil.removeRecipes(<pyrotech:material:10>);
IroncladAnvil.removeRecipes(<pyrotech:material:10>);
GraniteAnvil.removeRecipes(<pyrotech:material:11>);
IroncladAnvil.removeRecipes(<pyrotech:material:11>);
GraniteAnvil.removeRecipes(<pyrotech:material:18>);
IroncladAnvil.removeRecipes(<pyrotech:material:18>);
GraniteAnvil.removeRecipes(<pyrotech:material:31>);
IroncladAnvil.removeRecipes(<pyrotech:material:31>);
GraniteAnvil.removeRecipes(<pyrotech:material:28>);
IroncladAnvil.removeRecipes(<pyrotech:material:28>);

//RefractoryMachines#HoneyandWax
GraniteAnvil.addRecipe("honey", <harvestcraft:honeyitem>, <harvestcraft:honeycombitem>, 8, "hammer");
IroncladAnvil.addRecipe("honey2", <harvestcraft:honeyitem>, <harvestcraft:honeycombitem>, 8, "hammer");
GraniteAnvil.addRecipe("wax", <harvestcraft:beeswaxitem>, <harvestcraft:waxcombitem>, 8, "hammer");
IroncladAnvil.addRecipe("wax2", <harvestcraft:beeswaxitem>, <harvestcraft:waxcombitem>, 8, "hammer");
#FlakingBoneandFlint
GraniteAnvil.addRecipe("flint1", <pyrotech:material:10>*2, <minecraft:flint>, 4, "pickaxe");
IroncladAnvil.addRecipe("flint2", <pyrotech:material:10>*2, <minecraft:flint>, 4, "pickaxe");
GraniteAnvil.addRecipe("flint3", <primal:flint_point>*2, <pyrotech:material:10>, 4, "pickaxe");
IroncladAnvil.addRecipe("flint4", <primal:flint_point>*2, <pyrotech:material:10>, 4, "pickaxe");

GraniteAnvil.addRecipe("bone1", <primal:sharp_bone>, <minecraft:bone>, 4, "pickaxe");
IroncladAnvil.addRecipe("bone2", <primal:sharp_bone>, <minecraft:bone>, 4, "pickaxe");
GraniteAnvil.addRecipe("bone3", <pyrotech:material:11>*2, <primal:sharp_bone>, 4, "pickaxe");
IroncladAnvil.addRecipe("bone4", <pyrotech:material:11>*2, <primal:sharp_bone>, 4, "pickaxe");
GraniteAnvil.addRecipe("bone5", <primal:bone_point>*2, <pyrotech:material:11>, 4, "pickaxe");
IroncladAnvil.addRecipe("bone6", <primal:bone_point>*2, <pyrotech:material:11>, 4, "pickaxe");

IroncladAnvil.addRecipe("obsidian", <primal:obsidian_point>*2, <pyrotech:material:33>, 4, "pickaxe");

IroncladAnvil.addRecipe("diamond", <primal:diamond_point>*2, <pyrotech:material:18>, 4, "pickaxe");
IroncladAnvil.addRecipe("diamond2", <pyrotech:material:18>*2, <minecraft:diamond>, 4, "pickaxe");

IroncladAnvil.addRecipe("opal", <primal:opal_knapp>*2, <primal:opal>, 4, "pickaxe");
IroncladAnvil.addRecipe("opal2", <primal:opal_point>*2, <primal:opal_knapp>, 4, "pickaxe");

IroncladAnvil.addRecipe("emerald", <primal:emerald_knapp>*2, <minecraft:emerald>, 4, "pickaxe");
IroncladAnvil.addRecipe("emerald2", <primal:emerald_point>*2, <primal:emerald_knapp>, 4, "pickaxe");
#Plates
IroncladAnvil.addRecipe("uranium_plate", <immersiveengineering:metal:35>, <immersiveengineering:metal:5>, 8, "hammer");
IroncladAnvil.addRecipe("thaumium_plate", <thaumcraft:plate:2>, <thaumcraft:ingot>, 8, "hammer");
IroncladAnvil.addRecipe("void_plate", <thaumcraft:plate:3>, <thaumcraft:ingot:1>, 8, "hammer");
GraniteAnvil.addRecipe("constantan_plate", <immersiveengineering:metal:36>, <thaumcraft:ingot:2>, 8, "hammer");
IroncladAnvil.addRecipe("ironconstantan_plate", <immersiveengineering:metal:36>, <thaumcraft:ingot:2>, 8, "hammer");
IroncladAnvil.addRecipe("steel_plate", <immersiveengineering:metal:38>, <metallurgy:steel_ingot>, 8, "hammer");
IroncladAnvil.addRecipe("bioplastic_plate", <emergingtechnology:plasticsheet>, <emergingtechnology:plasticblock>, 8, "hammer");
IroncladAnvil.addRecipe("platinum_plate", <immersiveintelligence:material_plate:2>, <metallurgy:platinum_ingot>, 8, "hammer");
IroncladAnvil.addRecipe("mithrillium_plate", <thaumadditions:mithrillium_plate>, <thaumadditions:mithrillium_ingot>, 8, "hammer");
IroncladAnvil.addRecipe("adaminite_plate", <thaumadditions:adaminite_plate>, <thaumadditions:adaminite_ingot>, 8, "hammer");
IroncladAnvil.addRecipe("mithminite_plate", <thaumadditions:mithminite_plate>, <thaumadditions:mithminite_ingot>, 8, "hammer");
GraniteAnvil.addRecipe("copper_plate", <embers:plate_copper>, <metallurgy:copper_ingot>, 8, "hammer");
IroncladAnvil.addRecipe("ironcopper_plate", <embers:plate_copper>, <metallurgy:copper_ingot>, 8, "hammer");
GraniteAnvil.addRecipe("lead_plate", <embers:plate_lead>, <embers:ingot_lead>, 8, "hammer");
IroncladAnvil.addRecipe("ironlead_plate", <embers:plate_lead>, <embers:ingot_lead>, 8, "hammer");
GraniteAnvil.addRecipe("silver_plate", <embers:plate_silver>, <ore:ingotSilver>, 8, "hammer");
IroncladAnvil.addRecipe("ironsilver_plate", <embers:plate_silver>, <ore:ingotSilver>, 8, "hammer");
IroncladAnvil.addRecipe("dawnstone_plate", <embers:plate_dawnstone>, <embers:ingot_dawnstone>, 8, "hammer");
GraniteAnvil.addRecipe("iron_plate", <embers:plate_iron>, <minecraft:iron_ingot>, 8, "hammer");
IroncladAnvil.addRecipe("ironiron_plate", <embers:plate_iron>, <minecraft:iron_ingot>, 8, "hammer");
GraniteAnvil.addRecipe("gold_plate", <embers:plate_gold>, <minecraft:gold_ingot>, 8, "hammer");
IroncladAnvil.addRecipe("irongold_plate", <embers:plate_gold>, <minecraft:gold_ingot>, 8, "hammer");
IroncladAnvil.addRecipe("aluminium_plate", <embers:plate_aluminum>, <embers:ingot_aluminum>, 8, "hammer");
GraniteAnvil.addRecipe("bronze_plate", <embers:plate_bronze>, <metallurgy:bronze_ingot>, 8, "hammer");
IroncladAnvil.addRecipe("ironbronze_plate", <embers:plate_bronze>, <metallurgy:bronze_ingot>, 8, "hammer");
IroncladAnvil.addRecipe("electrum_plate", <embers:plate_electrum>, <metallurgy:electrum_ingot>, 8, "hammer");
IroncladAnvil.addRecipe("nickel_plate", <embers:plate_nickel>, <embers:ingot_nickel>, 8, "hammer");
GraniteAnvil.addRecipe("tin_plate", <embers:plate_tin>, <metallurgy:tin_ingot>, 8, "hammer");
IroncladAnvil.addRecipe("irontin_plate", <embers:plate_tin>, <metallurgy:tin_ingot>, 8, "hammer");
//Kiln
recipes.remove(<pyrotech:brick_kiln>);
recipes.addShapedMirrored("1x_tile_pyrotech_brick_kiln_shaped", <pyrotech:brick_kiln>, [
	[<embers:plate_iron>, <pyrotech:refractory_brick_block>, <embers:plate_iron>],
	[<pyrotech:refractory_brick_block>, <pyrotech:stone_kiln>, <pyrotech:refractory_brick_block>],
	[<embers:plate_iron>, <pyrotech:refractory_brick_block>, <embers:plate_iron>]
]);
recipes.remove(<pyrotech:brick_oven>);
recipes.addShapedMirrored("1x_tile_pyrotech_brick_oven_shaped", <pyrotech:brick_oven>, [
	[<embers:plate_iron>, <pyrotech:refractory_brick_block>, <embers:plate_iron>],
	[<pyrotech:refractory_brick_block>, <pyrotech:stone_oven>, <pyrotech:refractory_brick_block>],
	[<embers:plate_iron>, <pyrotech:refractory_brick_block>, <embers:plate_iron>]
]);
recipes.remove(<pyrotech:brick_sawmill>);
recipes.addShapedMirrored("1x_tile_pyrotech_brick_sawmill_shaped", <pyrotech:brick_sawmill>, [
	[<embers:plate_iron>, <pyrotech:refractory_brick_block>, <embers:plate_iron>],
	[<pyrotech:refractory_brick_block>, <pyrotech:stone_sawmill>, <pyrotech:refractory_brick_block>],
	[<embers:plate_iron>, <pyrotech:refractory_brick_block>, <embers:plate_iron>]
]);
recipes.remove(<pyrotech:brick_crucible>);
recipes.addShapedMirrored("1x_tile_pyrotech_brick_crucible_shaped", <pyrotech:brick_crucible>, [
	[<embers:plate_iron>, <pyrotech:refractory_brick_block>, <embers:plate_iron>],
	[<pyrotech:refractory_brick_block>, <pyrotech:stone_crucible>, <pyrotech:refractory_brick_block>],
	[<embers:plate_iron>, <pyrotech:refractory_brick_block>, <embers:plate_iron>]
]);

//SoakingPotReecipes
#RemovedRecipes
SoakingPot.removeRecipes(<pyrotech:wood_tar_block>);
SoakingPot.removeRecipes(<pyrotech:material:30>);
SoakingPot.removeRecipes(<pyrotech:living_tar>);
SoakingPot.removeRecipes(<minecraft:coal_block>);
SoakingPot.removeRecipes(<pyrotech:material:23>);
SoakingPot.removeRecipes(<pyrotech:wool_tarred>);
SoakingPot.removeRecipes(<pyrotech:planks_tarred>);
SoakingPot.removeRecipes(<pyrotech:material:26>);
#TreatedRecipes
SoakingPot.addRecipe("treated_planks_from_planks", <immersiveengineering:treated_wood>, <liquid:creosote>*200, <ore:plankWood>, 2 * 60 * 20);
SoakingPot.addRecipe("tar_bale", <pyrotech:wood_tar_block>, <liquid:tar>*1000, <pyrotech:thatch>, 3 * 30 * 20);
SoakingPot.addRecipe("treated_kindling", <pyrotech:material:30>, <liquid:creosote>*125, <pyrotech:material:29>, 3 * 30 * 20);
SoakingPot.addRecipe("treated_board", <pyrotech:material:23>, <liquid:creosote>*50, <pyrotech:material:20>, 3 * 30 * 20);
SoakingPot.addRecipe("durable_twine", <pyrotech:material:26>, <liquid:creosote>*125, <primal:plant_cordage>, 3 * 30 * 20);
SoakingPot.addRecipe("treated_wool", <pyrotech:wool_tarred>, <liquid:creosote>*250, <ore:woolBlock>, 3 * 30 * 20);
//TannedHide
SoakingPot.addRecipe("tanned_hide", <primal:hide_tanned>, <liquid:tannin>*250, <primal:hide_dried>, 3 * 30 * 20);
SoakingPot.addRecipe("tanned_pigman_hide", <primal:pigman_hide_tanned>, <liquid:tannin>*250, <primal:pigman_hide_dried>, 3 * 30 * 20);


//DryingRack
recipes.remove(<pyrotech:drying_rack>);
recipes.addShapedMirrored("1x_tile_pyrotech_drying_rack_crude_shaped", <pyrotech:drying_rack>, [
	[<ore:stickWood>, <ore:cordagePlant>, <ore:stickWood>]
]);
//CrudeEquipment
recipes.remove(<pyrotech:crude_fishing_rod>);
recipes.addShapedMirrored("1x_item_pyrotech_crude_fishing_rod_shaped", <pyrotech:crude_fishing_rod>, [
	[<ore:fiberPlant>, <ore:cordagePlant>],
	[<ore:stickWood>, <ore:rock>]
]);
recipes.remove(<pyrotech:crude_hammer>);
recipes.addShapedMirrored("1x_item_pyrotech_crude_hammer_shaped", <pyrotech:crude_hammer>, [
	[<ore:rock>, <ore:rock>],
	[<ore:stickWood>, <ore:cordagePlant>]
]);
recipes.remove(<pyrotech:crude_axe>);
recipes.addShapedMirrored("1x_item_pyrotech_crude_axe_shaped", <pyrotech:crude_axe>, [
	[<ore:rock>, <ore:cordagePlant>],
	[<ore:rock>, <ore:stickWood>]
]);
recipes.remove(<pyrotech:crude_hoe>);
recipes.addShapedMirrored("1x_item_pyrotech_crude_hoe_shaped", <pyrotech:crude_hoe>, [
	[<ore:cordagePlant>, <ore:rock>],
	[<ore:stickWood>, null]
]);
recipes.remove(<pyrotech:crude_shovel>);
recipes.addShapedMirrored("1x_item_pyrotech_crude_shovel_shaped", <pyrotech:crude_shovel>, [
	[<ore:rock>, <ore:cordagePlant>],
	[<ore:stickWood>, null]
]);
recipes.remove(<pyrotech:crude_pickaxe>);
recipes.addShapedMirrored("1x_item_pyrotech_crude_pickaxe_shaped", <pyrotech:crude_pickaxe>, [
	[<ore:rock>, <ore:cordagePlant>],
	[<ore:stickWood>, <ore:rock>]
]);

//CombingStone
var stoneRecipes as IItemStack[IIngredient] = {
	<pyrotech:rock> : <minecraft:cobblestone>,
	<pyrotech:rock:1> : <pyrotech:cobblestone:2>,
	<pyrotech:rock:2> : <pyrotech:cobblestone:1>,
	<pyrotech:rock:3> : <pyrotech:cobblestone>,
	<pyrotech:rock:8> : <pyrotech:cobblestone:3>,
	<pyrotech_compat:rock_igneous> : <undergroundbiomes:igneous_cobble>,
	<pyrotech_compat:rock_igneous:1> : <undergroundbiomes:igneous_cobble:1>,
	<pyrotech_compat:rock_igneous:2> : <undergroundbiomes:igneous_cobble:2>,
	<pyrotech_compat:rock_igneous:3> : <undergroundbiomes:igneous_cobble:3>,
	<pyrotech_compat:rock_igneous:4> : <undergroundbiomes:igneous_cobble:4>,
	<pyrotech_compat:rock_igneous:5> : <undergroundbiomes:igneous_cobble:5>,
	<pyrotech_compat:rock_igneous:6> : <undergroundbiomes:igneous_cobble:6>,
	<pyrotech_compat:rock_igneous:7> : <undergroundbiomes:igneous_cobble:7>,
	<pyrotech_compat:rock_metamorphic> : <undergroundbiomes:metamorphic_cobble>,
	<pyrotech_compat:rock_metamorphic:1> : <undergroundbiomes:metamorphic_cobble:1>,
	<pyrotech_compat:rock_metamorphic:2> : <undergroundbiomes:metamorphic_cobble:2>,
	<pyrotech_compat:rock_metamorphic:3> : <undergroundbiomes:metamorphic_cobble:3>,
	<pyrotech_compat:rock_metamorphic:4> : <undergroundbiomes:metamorphic_cobble:4>,
	<pyrotech_compat:rock_metamorphic:5> : <undergroundbiomes:metamorphic_cobble:5>,
	<pyrotech_compat:rock_metamorphic:6> : <undergroundbiomes:metamorphic_cobble:6>,
	<pyrotech_compat:rock_metamorphic:7> : <undergroundbiomes:metamorphic_cobble:7>,
	<pyrotech_compat:rock_sedimentary> : <undergroundbiomes:sedimentary_stone>,
	<pyrotech_compat:rock_sedimentary:1> : <undergroundbiomes:sedimentary_stone:1>,
	<pyrotech_compat:rock_sedimentary:2> : <undergroundbiomes:sedimentary_stone:2>,
	<pyrotech_compat:rock_sedimentary:3> : <undergroundbiomes:sedimentary_stone:3>,
	<pyrotech_compat:rock_sedimentary:4> : <undergroundbiomes:sedimentary_stone:4>,
	<pyrotech_compat:rock_sedimentary:5> : <undergroundbiomes:sedimentary_stone:5>,
	<pyrotech_compat:rock_netherrack> : <minecraft:netherrack>,
	};

for rock, stone in stoneRecipes {
recipes.addShapedMirrored(stone, [
    [rock, rock, rock],
    [rock, <primal:mortar>, rock],
    [rock, rock, rock]
]);
    recipes.remove(stone);
}
#CompactingBin
recipes.remove(<pyrotech:compacting_bin>);
recipes.addShapedMirrored(<pyrotech:compacting_bin>, [
    [<ore:cobblestone>, null, <ore:cobblestone>],
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:cobblestone>, <ore:slabWood>, <ore:cobblestone>]
]);

//RedoingAllTHekilnkilnRecipes
PitKiln.removeRecipes(<minecraft:brick>);
PitKiln.removeRecipes(<pyrotech:clay_shears>);
PitKiln.removeRecipes(<pyrotech:bucket_clay>);
PitKiln.addRecipe("brick", <minecraft:brick>, <pyrotech:material:24>, 7 * 60 * 20, 0.33, [
    <pyrotech:material:6>, // randomly chosen failure items
    <pyrotech:material:7>,
    <pyrotech:material>
]);
PitKiln.addRecipe("claybucket", <primal:bucket_clay>, <primal:bucket_clay_soft>, 2 * 60 * 20, 0.33, [
    <pyrotech:material:6>, // randomly chosen failure items
    <pyrotech:material:7>,
    <pyrotech:material>
]);
PitKiln.addRecipe("terrabucket", <primal:bucket_terra>, <primal:bucket_terra_soft>, 2 * 60 * 20, 0.33, [
    <pyrotech:material:6>, // randomly chosen failure items
    <pyrotech:material:7>,
    <pyrotech:material>
]);
PitKiln.addRecipe("shears", <pyrotech:clay_shears>, <pyrotech:unfired_clay_shears>, 2 * 60 * 20, 0.33, [
    <pyrotech:material:6>, // randomly chosen failure items
    <pyrotech:material:7>,
    <pyrotech:material>
]);


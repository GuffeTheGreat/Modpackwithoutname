import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;

mods.jei.JEI.removeAndHide(<embers:cinder_plinth>);
mods.jei.JEI.removeAndHide(<embers:stamp_bar_raw>);
mods.jei.JEI.removeAndHide(<embers:stamp_gear_raw>);
mods.jei.JEI.removeAndHide(<embers:stamp_plate_raw>);
mods.jei.JEI.removeAndHide(<soot:stamp_text_raw>);
mods.jei.JEI.removeAndHide(<soot:stamp_nugget_raw>);
furnace.remove(<embers:cinder_plinth>);
furnace.remove(<embers:stamp_bar_raw>);
furnace.remove(<embers:stamp_gear_raw>);
furnace.remove(<embers:stamp_plate_raw>);
furnace.remove(<soot:stamp_text_raw>);
furnace.remove(<soot:stamp_nugget_raw>);

//CaminiteBrick
recipes.remove(<embers:blend_caminite>);
StoneKiln.addRecipe("stone_caminitebricks", <embers:brick_caminite>, <embers:blend_caminite>, 1200, 0.08, [<pyrotech:material>]);
BrickKiln.addRecipe("brick_caminitebricks", <embers:brick_caminite>, <embers:blend_caminite>, 600, 0.02, [<pyrotech:material>]);
StoneKiln.addRecipe("stone_caminiteplate", <embers:plate_caminite>, <embers:plate_caminite_raw>, 1200, 0.08, [<pyrotech:material>]);
BrickKiln.addRecipe("brick_caminiteplate", <embers:plate_caminite>, <embers:plate_caminite_raw>, 600, 0.02, [<pyrotech:material>]);
//Stamp
StoneKiln.addRecipe("stone_stamp", <embers:stamp_flat>, <embers:stamp_flat_raw>, 1200, 0.08, [<pyrotech:material>]);
BrickKiln.addRecipe("brick_stamp", <embers:stamp_flat>, <embers:stamp_flat_raw>, 600, 0.02, [<pyrotech:material>]);
//Melter
recipes.remove(<embers:block_furnace>);
recipes.addShapedMirrored("1x_tile_block_furnace_shaped", <embers:block_furnace>, [
	[<embers:brick_caminite>, <embers:plate_caminite>, <embers:brick_caminite>],
	[<embers:brick_caminite>, <pyrotech:brick_crucible>, <embers:brick_caminite>],
	[<ore:plateLapis>, <aoa3:amethyst_block>, <ore:plateLapis>]
]);
//GeologicSeperator
recipes.remove(<embers:geo_separator>);
recipes.addShapedMirrored("1x_tile_geo_separator_shaped", <embers:geo_separator>, [[null, null, <embers:plate_nickel>],
	[null, null, <pyrotech:faucet_brick>],
	[<embers:brick_caminite>, <embers:block_tank>, <embers:brick_caminite>]
]);
//FluidVessel
recipes.remove(<embers:block_tank>);
recipes.addShapedMirrored("1x_tile_block_tank_shaped", <embers:block_tank>, [
	[<embers:brick_caminite>, null, <embers:brick_caminite>],
	[<ore:plateLapis>, <pyrotech:tank>, <ore:plateLapis>],
	[<embers:brick_caminite>, <embers:plate_iron>, <embers:brick_caminite>]
]);
//EmberUsers
recipes.remove(<embers:ember_emitter>);
recipes.addShapedMirrored("1x_tile_ember_emitter_shaped", <embers:ember_emitter>*4, [
	[null, <thaumcraft:ingot:2>, null],
	[null, <thaumcraft:ingot:2>, null],
	[<embers:plate_iron>, <embers:plate_caminite>, <embers:plate_iron>]
]);
recipes.remove(<embers:ember_receiver>);
recipes.addShapedMirrored("4x_tile_ember_receiver_shaped", <embers:ember_receiver> * 4, [
	[null, null, null],
	[<embers:plate_iron>, null, <embers:plate_iron>],
	[<thaumcraft:ingot:2>, <embers:plate_caminite>, <thaumcraft:ingot:2>]
]);
recipes.remove(<embers:ember_activator>);
recipes.addShapedMirrored("1x_tile_ember_activator_shaped", <embers:ember_activator>, [
	[<thaumcraft:plate>, null, <thaumcraft:plate>],
	[<thaumcraft:plate>, <ore:blockCopper>, <thaumcraft:plate>],
	[<jaopca:item_platesapphire>, <pyrotech:brick_kiln>, <jaopca:item_platesapphire>]
]);
//CopperCell
recipes.remove(<embers:copper_cell>);
recipes.addShapedMirrored("1x_tile_copper_cell_shaped", <embers:copper_cell>, [
	[<embers:block_caminite_brick>, <thaumcraft:plate>, <embers:block_caminite_brick>],
	[<thaumcraft:plate>, <ore:blockCopper>, <thaumcraft:plate>],
	[<embers:block_caminite_brick>, <thaumcraft:plate>, <embers:block_caminite_brick>]
]);
//StampBase
recipes.remove(<embers:stamper_base>);
recipes.addShapedMirrored("1x_tile_stamper_base_shaped", <embers:stamper_base>, [
	[<thaumcraft:ingot>, null, <thaumcraft:ingot>],
	[<embers:block_caminite_brick>, <embers:block_tank>, <embers:block_caminite_brick>]
]);
recipes.remove(<embers:stamper>);
recipes.addShapedMirrored("1x_tile_stamper_shaped", <embers:stamper>, [
	[<embers:brick_caminite>, <thaumcraft:ingot:2>, <embers:brick_caminite>],
	[<embers:brick_caminite>, <minecraft:piston>, <embers:brick_caminite>],
	[<embers:brick_caminite>, null, <embers:brick_caminite>]
]);
//EmberBore
recipes.remove(<embers:ember_bore>);
recipes.addShapedMirrored("1x_tile_ember_bore_shaped", <embers:ember_bore>, [
	[<embers:stairs_caminite_brick>, <thaumcraft:plate>, <embers:stairs_caminite_brick>],
	[<embers:stairs_caminite_brick>, <thaumcraft:metal_alchemical>, <embers:stairs_caminite_brick>],
	[<thaumcraft:ingot>, <thaumcraft:ingot>, <thaumcraft:ingot>]
]);
//MixerCentrifugde
recipes.remove(<embers:mixer>);
recipes.addShapedMirrored("1x_tile_mixer_shaped", <embers:mixer>, [
	[<embers:plate_iron>, null, <embers:plate_iron>],
	[<jaopca:item_platesyrmorite>, <thaumcraft:ingot>, <jaopca:item_platesyrmorite>],
	[<thaumcraft:ingot:2>, <thaumcraft:metal_alchemical>, <thaumcraft:ingot:2>]
]);
//ExchangeTablet
recipes.remove(<embers:alchemy_tablet>);
recipes.addShapedMirrored("1x_tile_alchemy_tablet_shaped", <embers:alchemy_tablet>, [
	[null, <thaumcraft:plate>, null],
	[<embers:stairs_caminite_brick>, <jaopca:item_plateamber>, <embers:stairs_caminite_brick>],
	[<embers:block_caminite_brick>, <thaumcraft:ingot:2>, <embers:block_caminite_brick>]
]);
//AlchemyPedestal
recipes.remove(<embers:alchemy_pedestal>);
recipes.addShapedMirrored("1x_tile_alchemy_pedestal_shaped", <embers:alchemy_pedestal>, [
	[<thaumcraft:plate>, null, <thaumcraft:plate>],
	[<thaumcraft:ingot:2>, <embers:crystal_ember>, <thaumcraft:ingot:2>],
	[<embers:stairs_caminite_brick>, <ore:blockLimonite>, <embers:stairs_caminite_brick>]
]);
//Beamcannon
recipes.remove(<embers:beam_cannon>);
recipes.addShapedMirrored("1x_tile_beam_cannon_shaped", <embers:beam_cannon>, [
	[<jaopca:item_plateamber>, <embers:crystal_ember>, <jaopca:item_plateamber>],
	[<jaopca:item_plateamber>, <embers:crystal_ember>, <jaopca:item_plateamber>],
	[<thaumcraft:ingot:2>, <embers:block_caminite_brick>, <thaumcraft:ingot:2>]
]);
//WindingGears
mods.embers.Alchemy.remove(<embers:winding_gears>);
mods.embers.Alchemy.add(<embers:winding_gears>, [<ore:gearLimonite>, <jaopca:item_gearamber>, <jaopca:item_gearamber>, <jaopca:item_gearamber>, <jaopca:item_gearamber>], {"copper": 32 to 64, "iron": 32 to 128});
//FelPumpkin
recipes.remove(<botania:felpumpkin>);
mods.embers.Alchemy.add(<botania:felpumpkin>, [<minecraft:pumpkin>, <thebetweenlands:shimmer_stone>, <minecraft:gunpowder>, <minecraft:fermented_spider_eye>, <thebetweenlands:sludge_ball>], {"copper": 32 to 64, "dawnstone": 16 to 48});

//ChangingDawnstone
mods.embers.Mixer.add(<liquid:dawnstone>*8,[<liquid:copper>*3,<liquid:gold>*3,<liquid:octine>*2]);
mods.embers.Mixer.remove(<liquid:dawnstone>*8);









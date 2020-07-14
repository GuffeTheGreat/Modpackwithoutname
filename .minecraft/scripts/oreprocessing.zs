import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.pyrotech.IroncladAnvil;
import mods.inworldcrafting.FluidToItem;

var counter = 0;

val gemmap = {
    <silentgems:gem:45> : [<materialpart:Rose_Quartz:exquisite>,<materialpart:Rose_Quartz:flawless>,<materialpart:Rose_Quartz:flaked>,<materialpart:Rose_Quartz:point>],

    <libvulpes:productgem> : [<materialpart:Dilithium:exquisite>,<materialpart:Dilithium:flawless>,<materialpart:Dilithium:flaked>,<materialpart:Dilithium:point>],

    <silentgems:gem:40> : [<materialpart:Fluorite:exquisite>,<materialpart:Fluorite:flawless>,<materialpart:Fluorite:flaked>,<materialpart:Fluorite:point>],

    <silentgems:gem:31> : [<materialpart:Alexandrite:exquisite>,<materialpart:Alexandrite:flawless>,<materialpart:Alexandrite:flaked>,<materialpart:Alexandrite:point>],

    <thaumcraft:amber> : [<materialpart:Amber:exquisite>,<materialpart:Amber:flawless>,<materialpart:Amber:flaked>,<materialpart:Amber:point>],

    <appliedenergistics2:material:1> : [<materialpart:Charged_Certus_Quartz:exquisite>,<materialpart:Charged_Certus_Quartz:flawless>,<materialpart:Charged_Certus_Quartz:flaked>,<materialpart:Charged_Certus_Quartz:point>],

    <thebetweenlands:items_misc:19> : [<materialpart:Valonite:exquisite>,<materialpart:Valonite:flawless>,<materialpart:Valonite:flaked>,<materialpart:Valonite:point>],

    <silentgems:gem:41> : [<materialpart:Kyanite:exquisite>,<materialpart:Kyanite:flawless>,<materialpart:Kyanite:flaked>,<materialpart:Kyanite:point>],

    <silentgems:gem:38> : [<materialpart:Chrysoprase:exquisite>,<materialpart:Chrysoprase:flawless>,<materialpart:Chrysoprase:flaked>,<materialpart:Chrysoprase:point>],

    <silentgems:gem:12> : [<materialpart:Agate:exquisite>,<materialpart:Agate:flawless>,<materialpart:Agate:flaked>,<materialpart:Agate:point>],

    <silentgems:gem:15> : [<materialpart:Opal:exquisite>,<materialpart:Opal:flawless>,<materialpart:Opal:flaked>,<materialpart:Opal:point>],

    <silentgems:gem:11> : [<materialpart:Amethyst:exquisite>,<materialpart:Amethyst:flawless>,<materialpart:Amethys:flaked>,<materialpart:Amethys:point>],

    <silentgems:gem:1> : [<materialpart:Garnet:exquisite>,<materialpart:Garnet:flawless>,<materialpart:Garnet:flaked>,<materialpart:Garnet:point>],

    <actuallyadditions:item_misc:5> : [<materialpart:Black_Quartz:exquisite>,<materialpart:Black_Quartz:flawless>,<materialpart:Black_Quartz:flaked>,<materialpart:Black_Quartz:point>],

    <silentgems:gem:10> : [<materialpart:Iolite:exquisite>,<materialpart:Iolite:flawless>,<materialpart:Iolite:flaked>,<materialpart:Iolite:point>],

    <iceandfire:sapphire_gem> : [<materialpart:Sapphire:exquisite>,<materialpart:Sapphire:flawless>,<materialpart:Sapphire:flaked>,<materialpart:Sapphire:point>],

    <silentgems:gem:30> : [<materialpart:Black_Diamond:exquisite>,<materialpart:Black_Diamond:flawless>,<materialpart:Black_Diamond:flaked>,<materialpart:Black_Diamond:point>],

    <minecraft:emerald> : [<materialpart:Emerald:exquisite>,<materialpart:Emerald:flawless>,<materialpart:Emerald:flaked>,<materialpart:Emerald:point>],

    <minecraft:coal> : [<materialpart:Coal:exquisite>,<materialpart:Coal:flawless>,<materialpart:Coal:flaked>,<materialpart:Coal:point>],

    <silentgems:gem:18> : [<materialpart:Citrine:exquisite>,<materialpart:Citrine:flawless>,<materialpart:Citrine:flaked>,<materialpart:Citrine:point>],

    <thebetweenlands:items_misc:18> : [<materialpart:Sulfur:exquisite>,<materialpart:Sulfur:flawless>,<materialpart:Sulfur:flaked>,<materialpart:Sulfur:point>],

    <silentgems:gem:20> : [<materialpart:Golden_Beryl:exquisite>,<materialpart:Golden_Beryl:flawless>,<materialpart:Golden_Beryl:flaked>,<materialpart:Golden_Beryl:point>],

    <silentgems:gem> : [<materialpart:Ruby:exquisite>,<materialpart:Ruby:flawless>,<materialpart:Ruby:flaked>,<materialpart:Ruby:point>],

    <silentgems:gem:7> : [<materialpart:Indicolite:exquisite>,<materialpart:Indicolite:flawless>,<materialpart:Indicolite:flaked>,<materialpart:Indicolite:point>],

    <silentgems:gem:4> : [<materialpart:Heliodor:exquisite>,<materialpart:Heliodor:flawless>,<materialpart:Heliodor:flaked>,<materialpart:Heliodor:point>],

    <silentgems:gem:42> : [<materialpart:Sodalite:exquisite>,<materialpart:Sodalite:flawless>,<materialpart:Sodalite:flaked>,<materialpart:Sodalite:point>],

    <minecraft:diamond> : [<materialpart:Diamond:exquisite>,<materialpart:Diamond:flawless>,<materialpart:Diamond:flaked>,<materialpart:Diamond:point>],

    <silentgems:gem:16> : [<materialpart:Carnelian:exquisite>,<materialpart:Carnelian:flawless>,<materialpart:Carnelian:flaked>,<materialpart:Carnelian:point>],

    <silentgems:gem:19> : [<materialpart:Jasper:exquisite>,<materialpart:Jasper:flawless>,<materialpart:Jasper:flaked>,<materialpart:Jasper:point>],

    <actuallyadditions:item_misc:22> : [<materialpart:Lignite:exquisite>,<materialpart:Lignite:flawless>,<materialpart:Lignite:flaked>,<materialpart:Lignite:point>],

    <thebetweenlands:items_misc:39> : [<materialpart:Scabyst:exquisite>,<materialpart:Scabyst:flawless>,<materialpart:Scabyst:flaked>,<materialpart:Scabyst:point>],

    <silentgems:gem:25> : [<materialpart:Blue_Topaz:exquisite>,<materialpart:Blue_Topaz:flawless>,<materialpart:Blue_Topaz:flaked>,<materialpart:Blue_Topaz:point>],

    <silentgems:gem:17> : [<materialpart:Spinel:exquisite>,<materialpart:Spinel:flawless>,<materialpart:Spinel:flaked>,<materialpart:Spinel:point>],

    <appliedenergistics2:material> : [<materialpart:Certus_Quartz:exquisite>,<materialpart:Certus_Quartz:flawless>,<materialpart:Certus_Quartz:flaked>,<materialpart:Certus_Quartz:point>],

    <silentgems:gem:27> : [<materialpart:Violet_Sapphire:exquisite>,<materialpart:Violet_Sapphire:flawless>,<materialpart:Violet_Sapphire:flaked>,<materialpart:Violet_Sapphire:point>],

    <minecraft:dye:4> : [<materialpart:Lapis:exquisite>,<materialpart:Lapis:flawless>,<materialpart:Lapis:flaked>,<materialpart:Lapis:point>],

    <silentgems:gem:28> : [<materialpart:Lepidolite:exquisite>,<materialpart:Lepidolite:flawless>,<materialpart:Lepidolite:flaked>,<materialpart:Lepidolite:point>],

    <silentgems:gem:32> : [<materialpart:Pyrope:exquisite>,<materialpart:Pyrope:flawless>,<materialpart:Pyrope:flaked>,<materialpart:Pyrope:point>],

    <silentgems:gem:39> : [<materialpart:Apatite:exquisite>,<materialpart:Apatite:flawless>,<materialpart:Apatite:flaked>,<materialpart:Apatite:point>],

    <silentgems:gem:26> : [<materialpart:Tanzanite:exquisite>,<materialpart:Tanzanite:flawless>,<materialpart:Tanzanite:flaked>,<materialpart:Tanzanite:point>],

    <silentgems:gem:37> : [<materialpart:Jade:exquisite>,<materialpart:Jade:flawless>,<materialpart:Jade:flaked>,<materialpart:Jade:point>],

    <silentgems:gem:14> : [<materialpart:Onyx:exquisite>,<materialpart:Onyx:flawless>,<materialpart:Onyx:flaked>,<materialpart:Onyx:point>],

    <silentgems:gem:2> : [<materialpart:Topaz:exquisite>,<materialpart:Topaz:flawless>,<materialpart:Topaz:flaked>,<materialpart:Topaz:point>],

    <silentgems:gem:13> : [<materialpart:Morganite:exquisite>,<materialpart:Morganite:flawless>,<materialpart:Morganite:flaked>,<materialpart:Morganite:point>],

    <minecraft:quartz> : [<materialpart:Nether_Quartz:exquisite>,<materialpart:Nether_Quartz:flawless>,<materialpart:Nether_Quartz:flaked>,<materialpart:Nether_Quartz:point>],

    <silentgems:gem:22> : [<materialpart:Malachite:exquisite>,<materialpart:Malachite:flawless>,<materialpart:Malachite:flaked>,<materialpart:Malachite:point>],

    <silentgems:gem:5> : [<materialpart:Peridot:exquisite>,<materialpart:Peridot:flawless>,<materialpart:Peridot:flaked>,<materialpart:Peridot:point>],

    <silentgems:gem:6> : [<materialpart:Green_Sapphire:exquisite>,<materialpart:Green_Sapphire:flawless>,<materialpart:Green_Sapphire:flaked>,<materialpart:Green_Sapphire:point>] 
} as IItemStack[][IItemStack];
counter = 0;
for gem, types in gemmap {
counter = counter +1;
 
	IroncladAnvil.addRecipe("exquisites"+counter, types[1]*2, types[0], 2, "pickaxe");
	IroncladAnvil.addRecipe("flawless"+counter, gem*2, types[1], 2, "pickaxe");
	IroncladAnvil.addRecipe("normal"+counter, types[2]*2, gem, 2, "pickaxe");
	IroncladAnvil.addRecipe("flawed"+counter, types[3]*2, types[2], 2, "pickaxe");
	mods.advancedrocketry.CuttingMachine.addRecipe(types[1]*2, 80, 4000, types[0]*1);
	mods.advancedrocketry.CuttingMachine.addRecipe(gem*2, 80, 2000, types[1]*1);
	mods.advancedrocketry.CuttingMachine.addRecipe(types[2]*2, 80, 1000, gem*1);
	mods.advancedrocketry.CuttingMachine.addRecipe(types[3]*2, 80, 500, types[2]*1);
}

val metalmap = {
    <materialpart:Octine:dust> : [<thebetweenlands:octine_ore>,<materialpart:Octine:dense_ore>,<materialpart:Octine:clump>,<pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.thebetweenlands.octine_ore", recipeId: "pyrotech:bloomery/bloom_from_oreoctine"}}),<pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.thebetweenlands.octine_ore;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreoctine_slag"}}),<materialpart:Octine:crushed_ore>,<materialpart:Octine:chunk>,<immersiveengineering:material:25>,<materialpart:Octine:shard>,<materialpart:Octine:crystal>,<materialpart:Octine:dirty_dust>,<materialpart:Octine:purified_ore>,<materialpart:Octine:pure_dust>,<metallurgy:copper_dust>,<materialpart:Sulfur:tiny_pile>,<pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.thebetweenlands.octine_ore", recipeId: "pyrotech:bloom_from_oreoctine"}}),<materialpart:Copper:tiny_pile>,<pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.thebetweenlands.octine_ore;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreoctine_slag"}})],
    
    <metallurgy:copper_dust> : [
    <metallurgy:copper_ore>,
    <materialpart:Copper:dense_ore>,
    <materialpart:Copper:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Copper:crushed_ore>,
    <materialpart:Copper:chunk>,
    <metallurgy:gold_dust>,
    <materialpart:Copper:shard>,
    <materialpart:Copper:crystal>,
    <materialpart:Copper:dirty_dust>,
    <materialpart:Copper:purified_ore>,
    <materialpart:Copper:pure_dust>,
    <rockhounding_chemistry:chemical_dusts:25>,
    <prodigytech:gold_dust_tiny>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Cobalt:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <metallurgy:gold_dust> : [
    <minecraft:gold_ore>,
    <materialpart:Gold:dense_ore>,
    <materialpart:Gold:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Gold:crushed_ore>,
    <materialpart:Gold:chunk>,
    <metallurgy:copper_dust>,
    <materialpart:Gold:shard>,
    <materialpart:Gold:crystal>,
    <materialpart:Gold:dirty_dust>,
    <materialpart:Gold:purified_ore>,
    <materialpart:Gold:pure_dust>,
    <metallurgy:midasium_dust>,
    <materialpart:Copper:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Midasium:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <metallurgy:tin_dust> : [
    <metallurgy:tin_ore>,
    <materialpart:Tin:dense_ore>,
    <materialpart:Tin:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Tin:crushed_ore>,
    <materialpart:Tin:chunk>,
    <metallurgy:iron_dust>,
    <materialpart:Tin:shard>,
    <materialpart:Tin:crystal>,
    <materialpart:Tin:dirty_dust>,
    <materialpart:Tin:purified_ore>,
    <materialpart:Tin:pure_dust>,
    <metallurgy:zinc_dust>,
    <prodigytech:iron_dust_tiny>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Zinc:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <metallurgy:atlarus_dust> : [
    <metallurgy:atlarus_ore>,
    <materialpart:Atlarus:dense_ore>,
    <materialpart:Atlarus:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Atlarus:crushed_ore>,
    <materialpart:Atlarus:chunk>,
    <metallurgy:gold_dust>,
    <materialpart:Atlarus:shard>,
    <materialpart:Atlarus:crystal>,
    <materialpart:Atlarus:dirty_dust>,
    <materialpart:Atlarus:purified_ore>,
    <materialpart:Atlarus:pure_dust>,
    <metallurgy:midasium_dust>,
    <prodigytech:gold_dust_tiny>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Midasium:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],
    
    <materialpart:Syrmorite:dust> : [
    <materialpart:Syrmorite:ore>,
    <materialpart:Syrmorite:dense_ore>,
    <materialpart:Syrmorite:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Syrmorite:crushed_ore>,
    <materialpart:Syrmorite:chunk>,
    <materialpart:Scabyst:dust>,
    <materialpart:Syrmorite:shard>,
    <materialpart:Syrmorite:crystal>,
    <materialpart:Syrmorite:dirty_dust>,
    <materialpart:Syrmorite:purified_ore>,
    <materialpart:Syrmorite:pure_dust>,
    <materialpart:Valonite:dust>,
    <materialpart:Scabyst:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Valonite:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <immersiveengineering:metal:13> : [
    <embers:ore_nickel>,
    <materialpart:Nickel:dense_ore>,
    <materialpart:Nickel:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Nickel:crushed_ore>,
    <materialpart:Nickel:chunk>,
    <rockhounding_chemistry:chemical_dusts:25>,
    <materialpart:Nickel:shard>,
    <materialpart:Nickel:crystal>,
    <materialpart:Nickel:dirty_dust>,
    <materialpart:Nickel:purified_ore>,
    <materialpart:Nickel:pure_dust>,
    <metallurgy:iron_dust>,
    <materialpart:Cobalt:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <prodigytech:iron_dust_tiny>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <immersiveengineering:metal:11> : [
    <embers:ore_lead>,
    <materialpart:Lead:dense_ore>,
    <materialpart:Lead:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Lead:crushed_ore>,
    <materialpart:Lead:chunk>,
    <metallurgy:silver_dust>,
    <materialpart:Lead:shard>,
    <materialpart:Lead:crystal>,
    <materialpart:Lead:dirty_dust>,
    <materialpart:Lead:purified_ore>,
    <materialpart:Lead:pure_dust>,
    <immersiveengineering:material:25>,
    <materialpart:Silver:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Sulfur:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <metallurgy:silver_dust> : [
    <embers:ore_silver>,
    <materialpart:Silver:dense_ore>,
    <materialpart:Silver:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Silver:crushed_ore>,
    <materialpart:Silver:chunk>,
    <immersiveengineering:metal:11>,
    <materialpart:Silver:shard>,
    <materialpart:Silver:crystal>,
    <materialpart:Silver:dirty_dust>,
    <materialpart:Silver:purified_ore>,
    <materialpart:Silver:pure_dust>,
    <immersiveengineering:material:25>,
    <materialpart:Lead:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Sulfur:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <metallurgy:astral_silver_dust> : [
    <metallurgy:astral_silver_ore>,
    <materialpart:Astral_Silver:dense_ore>,
    <materialpart:Astral_Silver:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Astral_Silver:crushed_ore>,
    <materialpart:Astral_Silver:chunk>,
    <metallurgy:silver_dust>,
    <materialpart:Astral_Silver:shard>,
    <materialpart:Astral_Silver:crystal>,
    <materialpart:Astral_Silver:dirty_dust>,
    <materialpart:Astral_Silver:purified_ore>,
    <materialpart:Astral_Silver:pure_dust>,
    <prodigytech:quartz_dust>,
    <materialpart:Silver:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Nether_Quartz:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <metallurgy:midasium_dust> : [
    <materialpart:Midasium:ore>,
    <materialpart:Midasium:dense_ore>,
    <materialpart:Midasium:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Midasium:crushed_ore>,
    <materialpart:Midasium:chunk>,
    <metallurgy:atlarus_dust>,
    <materialpart:Midasium:shard>,
    <materialpart:Midasium:crystal>,
    <materialpart:Midasium:dirty_dust>,
    <materialpart:Midasium:purified_ore>,
    <materialpart:Midasium:pure_dust>,
    <metallurgy:gold_dust>,
    <materialpart:Atlarus:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <prodigytech:gold_dust_tiny>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <rockhounding_chemistry:chemical_dusts:35> : [
    <materialpart:Molybdenum:ore>,
    <materialpart:Molybdenum:dense_ore>,
    <materialpart:Molybdenum:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Molybdenum:crushed_ore>,
    <materialpart:Molybdenum:chunk>,
    <immersiveengineering:metal:11>,
    <materialpart:Molybdenum:shard>,
    <materialpart:Molybdenum:crystal>,
    <materialpart:Molybdenum:dirty_dust>,
    <materialpart:Molybdenum:purified_ore>,
    <materialpart:Molybdenum:pure_dust>,
    <immersiveengineering:metal:10>,
    <materialpart:Lead:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Aluminium:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <nuclearcraft:dust:9> : [
    <materialpart:Beryllium:ore>,
    <materialpart:Beryllium:dense_ore>,
    <materialpart:Beryllium:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Beryllium:crushed_ore>,
    <materialpart:Beryllium:chunk>,
    <prodigytech:emerald_dust>,
    <materialpart:Beryllium:shard>,
    <materialpart:Beryllium:crystal>,
    <materialpart:Beryllium:dirty_dust>,
    <materialpart:Beryllium:purified_ore>,
    <materialpart:Beryllium:pure_dust>,
    <materialpart:Green_Sapphire:dust>,
    <materialpart:Emerald:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Green_Sapphire:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <nuclearcraft:dust:3> : [
    <nuclearcraft:ore:3>,
    <materialpart:Thorium:dense_ore>,
    <materialpart:Thorium:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Thorium:crushed_ore>,
    <materialpart:Thorium:chunk>,
    <materialpart:Uranium238:dust>,
    <materialpart:Thorium:shard>,
    <materialpart:Thorium:crystal>,
    <materialpart:Thorium:dirty_dust>,
    <materialpart:Thorium:purified_ore>,
    <materialpart:Thorium:pure_dust>,
    <immersiveengineering:metal:11>,
    <materialpart:Uranium238:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Lead:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <immersiveengineering:metal:10> : [
    <embers:ore_aluminum>,
    <materialpart:Aluminium:dense_ore>,
    <materialpart:Aluminium:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Aluminium:crushed_ore>,
    <materialpart:Aluminium:chunk>,
    <materialpart:Bauxite:dust>,
    <materialpart:Aluminium:shard>,
    <materialpart:Aluminium:crystal>,
    <materialpart:Aluminium:dirty_dust>,
    <materialpart:Aluminium:purified_ore>,
    <materialpart:Aluminium:pure_dust>,
    <materialpart:Rutile:dust>,
    <materialpart:Bauxite:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Rutile:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <rockhounding_chemistry:chemical_dusts:8> : [
    <materialpart:Neodymium:ore>,
    <materialpart:Neodymium:dense_ore>,
    <materialpart:Neodymium:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Neodymium:crushed_ore>,
    <materialpart:Neodymium:chunk>,
    <materialpart:Bastnasite:dust>,
    <materialpart:Neodymium:shard>,
    <materialpart:Neodymium:crystal>,
    <materialpart:Neodymium:dirty_dust>,
    <materialpart:Neodymium:purified_ore>,
    <materialpart:Neodymium:pure_dust>,
    <materialpart:Black_Diamond:dust>,
    <materialpart:Bastnasite:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Black_Diamond:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <materialpart:Uranium_238:dust> : [
    <materialpart:Uranium_238:ore>,
    <materialpart:Uranium_238:dense_ore>,
    <materialpart:Uranium_238:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Uranium_238:crushed_ore>,
    <materialpart:Uranium_238:chunk>,
    <immersiveengineering:metal:11>,
    <materialpart:Uranium_238:shard>,
    <materialpart:Uranium_238:crystal>,
    <materialpart:Uranium_238:dirty_dust>,
    <materialpart:Uranium_238:purified_ore>,
    <materialpart:Uranium_238:pure_dust>,
    <materialpart:Uranium_235:dust>,
    <materialpart:Lead:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Uranium_235:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <rockhounding_chemistry:chemical_dusts:18> : [
    <materialpart:Arsenic:ore>,
    <materialpart:Arsenic:dense_ore>,
    <materialpart:Arsenic:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Arsenic:crushed_ore>,
    <materialpart:Arsenic:chunk>,
    <metallurgy:iron_dust>,
    <materialpart:Arsenic:shard>,
    <materialpart:Arsenic:crystal>,
    <materialpart:Arsenic:dirty_dust>,
    <materialpart:Arsenic:purified_ore>,
    <materialpart:Arsenic:pure_dust>,
    <immersiveengineering:material:25>,
    <prodigytech:iron_dust_tiny>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Sulfur:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <rockhounding_chemistry:chemical_dusts:20> : [
    <materialpart:Bismuth:ore>,
    <materialpart:Bismuth:dense_ore>,
    <materialpart:Bismuth:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Bismuth:crushed_ore>,
    <materialpart:Bismuth:chunk>,
    <metallurgy:zinc_dust>,
    <materialpart:Bismuth:shard>,
    <materialpart:Bismuth:crystal>,
    <materialpart:Bismuth:dirty_dust>,
    <materialpart:Bismuth:purified_ore>,
    <materialpart:Bismuth:pure_dust>,
    <metallurgy:iron_dust>,
    <materialpart:Zinc:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <prodigytech:iron_dust_tiny>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <rockhounding_chemistry:chemical_dusts:17> : [
    <materialpart:Antimony:ore>,
    <materialpart:Antimony:dense_ore>,
    <materialpart:Antimony:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Antimony:crushed_ore>,
    <materialpart:Antimony:chunk>,
    <metallurgy:iron_dust>,
    <materialpart:Antimony:shard>,
    <materialpart:Antimony:crystal>,
    <materialpart:Antimony:dirty_dust>,
    <materialpart:Antimony:purified_ore>,
    <materialpart:Antimony:pure_dust>,
    <rockhounding_chemistry:chemical_dusts:35>,
    <prodigytech:iron_dust_tiny>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Molybdenum:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <nuclearcraft:dust:6> : [
    <materialpart:Lithium:ore>,
    <materialpart:Lithium:dense_ore>,
    <materialpart:Lithium:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Lithium:crushed_ore>,
    <materialpart:Lithium:chunk>,
    <metallurgy:iron_dust>,
    <materialpart:Lithium:shard>,
    <materialpart:Lithium:crystal>,
    <materialpart:Lithium:dirty_dust>,
    <materialpart:Lithium:purified_ore>,
    <materialpart:Lithium:pure_dust>,
    <materialpart:Scheelite:dust>,
    <prodigytech:iron_dust_tiny>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Scheelite:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <astralsorcery:itemcraftingcomponent:2> : [
    <astralsorcery:blockcustomore:1>,
    <materialpart:Starmetal:dense_ore>,
    <materialpart:Starmetal:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Starmetal:crushed_ore>,
    <materialpart:Starmetal:chunk>,
    <materialpart:Sapphire:dust>,
    <materialpart:Starmetal:shard>,
    <materialpart:Starmetal:crystal>,
    <materialpart:Starmetal:dirty_dust>,
    <materialpart:Starmetal:purified_ore>,
    <materialpart:Starmetal:pure_dust>,
    <materialpart:Tanzanite:dust>,
    <materialpart:Sapphire:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Tanzanite:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <metallurgy:oureclase_dust> : [
    <materialpart:Oureclase:ore>,
    <materialpart:Oureclase:dense_ore>,
    <materialpart:Oureclase:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Oureclase:crushed_ore>,
    <materialpart:Oureclase:chunk>,
    <metallurgy:ceruclase_dust>,
    <materialpart:Oureclase:shard>,
    <materialpart:Oureclase:crystal>,
    <materialpart:Oureclase:dirty_dust>,
    <materialpart:Oureclase:purified_ore>,
    <materialpart:Oureclase:pure_dust>,
    <metallurgy:vyroxeres_dust>,
    <materialpart:Ceruclase:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Vyroxeres:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <metallurgy:ceruclase_dust> : [
    <materialpart:Ceruclase:ore>,
    <materialpart:Ceruclase:dense_ore>,
    <materialpart:Ceruclase:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Ceruclase:crushed_ore>,
    <materialpart:Ceruclase:chunk>,
    <metallurgy:oureclase_dust>,
    <materialpart:Ceruclase:shard>,
    <materialpart:Ceruclase:crystal>,
    <materialpart:Ceruclase:dirty_dust>,
    <materialpart:Ceruclase:purified_ore>,
    <materialpart:Ceruclase:pure_dust>,
    <metallurgy:vyroxeres_dust>,
    <materialpart:Oureclase:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Vyroxeres:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <metallurgy:vyroxeres_dust> : [
    <materialpart:Vyroxeres:ore>,
    <materialpart:Vyroxeres:dense_ore>,
    <materialpart:Vyroxeres:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Vyroxeres:crushed_ore>,
    <materialpart:Vyroxeres:chunk>,
    <metallurgy:ceruclase_dust>,
    <materialpart:Vyroxeres:shard>,
    <materialpart:Vyroxeres:crystal>,
    <materialpart:Vyroxeres:dirty_dust>,
    <materialpart:Vyroxeres:purified_ore>,
    <materialpart:Vyroxeres:pure_dust>,
    <metallurgy:oureclase_dust>,
    <materialpart:Ceruclase:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Oureclase:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <rockhounding_chemistry:chemical_dusts:27> : [
    <materialpart:Chromium:ore>,
    <materialpart:Chromium:dense_ore>,
    <materialpart:Chromium:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Chromium:crushed_ore>,
    <materialpart:Chromium:chunk>,
    <rockhounding_chemistry:chemical_dusts:23>,
    <materialpart:Chromium:shard>,
    <materialpart:Chromium:crystal>,
    <materialpart:Chromium:dirty_dust>,
    <materialpart:Chromium:purified_ore>,
    <materialpart:Chromium:pure_dust>,
    <nuclearcraft:dust:7>,
    <materialpart:Calcium:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Magnesium:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})],

    <metallurgy:iron_dust> : [
    <minecraft:iron_ore>,
    <materialpart:Iron:dense_ore>,
    <materialpart:Iron:clump>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}}),
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre", recipeId: "pyrotech:bloom_from_oreiron"}}),
    <materialpart:Iron:crushed_ore>,
    <materialpart:Iron:chunk>,
    <immersiveengineering:metal:13>,
    <materialpart:Iron:shard>,
    <materialpart:Iron:crystal>,
    <materialpart:Iron:dirty_dust>,
    <materialpart:Iron:purified_ore>,
    <materialpart:Iron:pure_dust>,
    <metallurgy:tin_dust>,
    <materialpart:Nickel:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloom_from_oreiron_slag"}}),
    <materialpart:Tin:tiny_pile>,
    <pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 15, maxIntegrity: 15, langKey: "tile.atum.ironOre;item.pyrotech.slag.unique", recipeId: "pyrotech:bloomery/bloom_from_oreiron_slag"}})]
} as IItemStack[][IItemStack];
counter = 0;
for dust, things in metalmap {

    //Denseores
	mods.astralsorcery.LightTransmutation.addTransmutation(things[0], things[1], 10);

	//CrushingOrestoClumps
	mods.rockhounding_chemistry.MineralSizer.add(things[0], things[2]);
	mods.rockhounding_chemistry.MineralSizer.add(things[1], things[2]*2);

	//CoolingBlooms
	mods.nuclearcraft.infuser.addRecipe([things[3], <liquid:ice>*500, things[2]]);
	mods.nuclearcraft.infuser.addRecipe([things[4], <liquid:ice>*500, things[2]]);
	mods.nuclearcraft.infuser.addRecipe([things[15], <liquid:ice>*500, things[2]]);
	mods.nuclearcraft.infuser.addRecipe([things[17], <liquid:ice>*500, things[2]]);

	FluidToItem.transform(things[2], <liquid:ice>, things[3], true);
	FluidToItem.transform(things[2], <liquid:ice>, things[4], true);
	FluidToItem.transform(things[2], <liquid:ice>, things[15], true);
	FluidToItem.transform(things[2], <liquid:ice>, things[17], true);


    //Crushedore Recipes
    mods.magneticraft.Grinder.addRecipe(things[2], things[5]*3, things[7], 0.15, 60, true);
    mods.magneticraft.Grinder.addRecipe(things[6], things[5]*2, things[7], 0.15, 60, true);
    mods.immersiveengineering.Crusher.addRecipe(things[5]*3, things[2], 2048, things[7], 0.2);
    mods.immersiveengineering.Crusher.addRecipe(things[5]*2, things[6], 2048, things[7], 0.2);
    mods.prodigytech.orerefinery.addRecipe(things[2], things[5]*3, things[7], 0.1, 80);
    mods.prodigytech.orerefinery.addRecipe(things[6], things[5]*2, things[7], 0.1, 80);

    //CuttingFluid
    mods.bloodmagic.AlchemyTable.addRecipe(things[6]*2, [things[2], <bloodmagic:cutting_fluid>], 400,120,0);
    mods.bloodmagic.AlchemyTable.addRecipe(things[6]*3, [things[8], <bloodmagic:cutting_fluid>], 600,80,2);
    mods.bloodmagic.AlchemyTable.addRecipe(things[6]*2, [things[9], <bloodmagic:cutting_fluid>], 800,40,4);
    
    //OrePurifying
    mods.nuclearcraft.infuser.addRecipe([things[5], <liquid:distilledwater>*500, things[11]]);
    mods.immersiveintelligence.ChemicalBath.addRecipe(things[5],things[11],<liquid:distilledwater>*500,4000,40);

    //CrushedOre
    mods.magneticraft.SluiceBox.addRecipe(things[5], 1, things[10], 0.1, things[7], true);
    mods.magneticraft.Sieve.addRecipe(things[5], things[10], 1.0, things[7], 0.1, <minecraft:nether_star>, 0, 40, true);
    
    //PurifiedCrushedOre
    mods.magneticraft.Sieve.addRecipe(things[11], things[12], 1.0, things[13], 0.1, <minecraft:nether_star>, 0, 40, true);
    
    //Seperation
    mods.nuclearcraft.isotope_separator.addRecipe([things[10], dust, things[14]]);
    mods.nuclearcraft.isotope_separator.addRecipe([things[12], dust, things[16]]);
    
    //WashingDust
    FluidToItem.transform(dust, <liquid:water>, things[10], false);
    FluidToItem.transform(dust, <liquid:water>, things[12], false);
	
    //Removals
    recipes.remove(dust);
    mods.immersiveengineering.Crusher.removeRecipesForInput(things[0]);
    mods.astralsorcery.Grindstone.removeRecipe(dust);
    mods.bloodmagic.AlchemyTable.removeRecipe([things[0],<bloodmagic:cutting_fluid>.withTag({})]);
    mods.nuclearcraft.manufactory.removeRecipeWithOutput([dust*2]);
    mods.nuclearcraft.melter.removeRecipeWithInput([things[0]]);
    }

//mods.nuclearcraft.melter.addRecipe([things[2], fluid*244]);
	//mods.embers.Melter.add(fluid*244,things[2]);
    //mods.crossroads.HeatingCrucible.addRecipe(things[2], fluid*244,"tile.clay");

//Removals
furnace.remove(<thebetweenlands:octine_ingot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<thebetweenlands:octine_ingot>);

//ChemicalExtraction
//Octine
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Octine:crushed_ore>, ["dustOctine", "dustSulfur", "dustCopper","dustIgnatius"], [100, 20, 15, 10]);

//Iron
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Iron:crushed_ore>, ["dustIron", "dustNickel", "dustTin","dustGold"], [100, 20, 15, 10]);

//Copper
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Copper:crushed_ore>, ["dustCopper", "dustGold", "dustCobalt","dustIron"], [100, 20, 15, 10]);

//Gold
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Gold:crushed_ore>, ["dustGold", "dustCopper", "dustMidasium","dustGoldenBeryl"], [100, 20, 15, 10]);

//Tin
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Tin:crushed_ore>, ["dustTin", "dustIron", "dustZinc","dustManganese"], [100, 20, 15, 10]);

//Atlarus
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Atlarus:crushed_ore>, ["dustAtlarus", "dustGold", "dustMidasium","dustPlatinum"], [100, 20, 15, 10]);

//Syrmorite
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Syrmorite:crushed_ore>, ["dustSyrmorite", "dustScabyst", "dustValonite","dustNiobium"], [100, 20, 15, 10]);

//Nickel
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Nickel:crushed_ore>, ["dustNickel", "dustCobalt", "dustIron","dustPlatinum"], [100, 20, 15, 10]);

//Lead
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Lead:crushed_ore>, ["dustLead", "dustSilver", "dustSulfur","dustMolybdenum"], [100, 20, 15, 10]);

//Silver
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Silver:crushed_ore>, ["dustSilver","dustLead", "dustSulfur","dustChromium"], [100, 20, 15, 10]);

//Astral Silver
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Astral_Silver:crushed_ore>, ["dustAstralSilver","dustSilver", "dustNetherQuartz","dustAstralStarmetal"], [100, 20, 15, 10]);

//Midasium
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Midasium:crushed_ore>, ["dustMidasium","dustAtlarus", "dustHeliodor","dustGoldenBeryl"], [100, 20, 15, 10]);

//Molybdenum
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Molybdenum:crushed_ore>, ["dustMolybdenum","dustLead", "dustAluminium","dustTantalum"], [100, 20, 15, 10]);

//Beryllium
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Beryllium:crushed_ore>, ["dustBeryllium","dustEmerald", "dustGreenSapphire","dustLithium"], [100, 20, 15, 10]);

//Thorium
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Thorium:crushed_ore>, ["dustThorium","dustUranium-238", "dustLead","dustPlutonium-239"], [100, 20, 15, 10]);

//Aluminium
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Aluminium:crushed_ore>, ["dustAluminium","dustBauxite", "dustRutile","dustTitanium"], [100, 20, 15, 10]);

//Neodymium
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Neodymium:crushed_ore>, ["dustNeodymium","dustBastnasite", "dustBlackDiamond","dustBedrock"], [100, 20, 15, 10]);

//Uranium238
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Uranium_238:crushed_ore>, ["dustUranium-238","dustLead", "dustUranium-238","dustPitchblende"], [100, 20, 15, 10]);

//Arsenic
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Arsenic:crushed_ore>, ["dustArsenic","dustIron", "dustSulfur","dustAntimony"], [100, 20, 15, 10]);

//Bismuth
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Bismuth:crushed_ore>, ["dustBismuth","dustZinc", "dustIron","dustTellurium"], [100, 20, 15, 10]);

//Antimony
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Antimony:crushed_ore>, ["dustAntimony","dustIron", "dustMolybdenum","dustTellurium"], [100, 20, 15, 10]);

//Lithium
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Lithium:crushed_ore>, ["dustLithium","dustIron", "dustScheelite","dustDilithium"], [100, 20, 15, 10]);

//Starmetal
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Starmetal:crushed_ore>, ["dustAstralStarmetal","dustSapphire", "dustTanzanite","dustDraconium"], [100, 20, 15, 10]);

//Oureclase
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Starmetal:crushed_ore>, ["dustOureclase","dustCeruclase", "dustVyroxeres","dustGreenSapphire"], [100, 20, 15, 10]);

//Ceruclase
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Starmetal:crushed_ore>, ["dustCeruclase","dustOureclase", "dustVyroxeres","dustSapphire"], [100, 20, 15, 10]);

//Vyroxeres
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Vyroxeres:crushed_ore>, ["dustVyroxeres","dustCeruclase", "dustOureclase","dustVioletSapphire"], [100, 20, 15, 10]);

//Chromium
mods.rockhounding_chemistry.ChemicalExtractor.add("Ore", <materialpart:Chromium:crushed_ore>, ["dustChromium","dustCalcium", "dustMagnesium","dustCobalt"], [100, 20, 15, 10]);
import mods.roots.Mortar;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.prodigytech.rotarygrinder;



//RemovedRecipes
Mortar.removeRecipe(<minecraft:dye:14>);
Mortar.removeRecipe(<mysticalworld:silk_thread>);
recipes.remove(<mysticalworld:silk_thread>);



var mortarRecipes as IItemStack[IItemStack] = {
	<minecraft:carrot> : <cuisine:ingredient>.withTag({characteristics: [] as int[], effects: [], material: "carrot", form: "PASTE", doneness: 0, actions: [10, 10] as int[]}),
	<mysticalworld:silk_cocoon> : <mysticalworld:silk_thread>*5,
	<cuisine:material:3> : <primal:salt_dust_netjry>,
	<pyrotech:rock:8> : <pyrotech:material:28>,
	<pyrotech:material:10> : <pyrotech:material:31>*3,
	<minecraft:wheat> : <roots:flour>,
	<cuisine:crops:13> : <roots:flour>,
	<actuallyadditions:item_food:16> : <appliedenergistics2:material:4>,
	<cuisine:crops:2> : <roots:flour>,
	};
var counter = 0;
for input, output in mortarRecipes {
	counter = counter +1;
	#Primalcore
	mods.primal.Quern.addRecipe(
	    "mortarrecipe" + counter,
	    5, 
	    [input], 
	    [output]);

	#Crossroadss
	mods.crossroads.Grindstone.addRecipe(input, output);

	#Prodigytech
	mods.prodigytech.rotarygrinder.addRecipe(input, output);

	#ImmersiveEnginerring
	mods.immersiveengineering.Crusher.addRecipe(output, input, 2048);

	#Manufactory
	mods.nuclearcraft.Manufactory.addRecipe(input, output);

}

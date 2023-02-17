import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;


// --- Vals ---


// --- Removes ---


// --- Recipes ---

// Ender Chest
recipes.remove(<enderstorage:ender_storage>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("ender_chest", "", 200, 
	[<aspect:aqua> *64, <aspect:aer> *64, <aspect:ignis> *64, <aspect:terra> *64], 
	<enderstorage:ender_storage>, 
	[[<ore:plateNetherStar>, <ore:plateEnderPearl>, <ore:plateNetherStar>], 
	[sensorIv, crateSteel, emitterIv], 
	[<ore:plateNetherStar>, <ore:plateEnderPearl>, <ore:plateNetherStar>]]);
	
// Ender Tank
recipes.remove(<enderstorage:ender_storage:1>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("ender_tank", "", 200, 
	[<aspect:aqua> *64, <aspect:aer> *64, <aspect:ignis> *64, <aspect:terra> *64, <aspect:ordo> *64], 
	<enderstorage:ender_storage:1>, 
	[[<minecraft:blaze_rod>, <ore:plateEnderPearl>, <minecraft:blaze_rod>], 
	[sensorIv, drumSteel, emitterIv], 
	[<minecraft:blaze_rod>, <ore:plateEnderPearl>, <minecraft:blaze_rod>]]);
	
// Ender Pouch
recipes.remove(<enderstorage:ender_pouch>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("ender_pouch", "", 100, 
	[<aspect:aqua> *64, <aspect:aer> *64, <aspect:ignis> *64, <aspect:terra> *64, <aspect:ordo> *64, <aspect:perditio> *64], 
	<enderstorage:ender_pouch>, 
	[[<ore:gemExquisiteDiamond>, <ore:plateEnderPearl>, <ore:gemExquisiteDiamond>], 
	[sensorIv, <thaumcraft:focus_pouch>, emitterIv], 
	[<ore:gemExquisiteDiamond>, <ore:plateEnderPearl>, <ore:gemExquisiteDiamond>]]);
	
	
	

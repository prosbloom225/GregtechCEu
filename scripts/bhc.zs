import mods.thaumcraft.Infusion;


// --- Vals ---


// --- Removes ---


// --- Recipes ---

// Canister
recipes.remove(<bhc:canister>);
assembler.recipeBuilder()
	.inputs([<ore:plateAluminium>, <ore:screwStainlessSteel> *4])
	.outputs(<bhc:canister>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.duration(2400).EUt(480).buildAndRegister();

// Relic Apple
recipes.remove(<bhc:relic_apple>);
assembler.recipeBuilder()
	.inputs([<ore:blockDiamond> *8, <minecraft:golden_apple:1>])
	.outputs(<bhc:relic_apple>)
	.fluidInputs([<liquid:blaze> *144])
	.duration(2400).EUt(480).buildAndRegister();

//mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe);
mods.thaumcraft.Infusion.registerRecipe("testName", "", <minecraft:diamond>, 20, [<aspect:aer>, <aspect:ignis>], <minecraft:grass>, [<minecraft:stick>, <minecraft:dirt>]);
// Red Heart
recipes.remove(<bhc:red_heart>);
mods.thaumcraft.Infusion.registerRecipe("bhc_red_heart", "", <bhc:red_heart>, 2, 
	[<aspect:alkimia> *50 , <aspect:praecantatio> *50, <aspect:ignis> *35, <aspect:desiderium> *35, <aspect:exanimis> *35], 
	<minecraft:golden_apple>, 
		[<minecraft:apple>, <minecraft:apple>, <minecraft:apple>, <bhc:wither_bone>, <minecraft:apple>, 
		<minecraft:apple>, <minecraft:apple>, <minecraft:apple>, <minecraft:apple>, <minecraft:apple>]);

// Yellow Heart
recipes.remove(<bhc:yellow_heart>);
mods.thaumcraft.Infusion.registerRecipe("yellow_heart", "", <bhc:yellow_heart>, 4, 
	[<aspect:alkimia> *100 , <aspect:praecantatio> *100, <aspect:ignis> *100, <aspect:desiderium> *100, <aspect:exanimis> *100], 
	<minecraft:golden_apple:1>, 
		[<bhc:red_heart>, <bhc:wither_bone>, <bhc:red_heart>, <bhc:wither_bone>, <bhc:red_heart>, <bhc:wither_bone>, 
		<bhc:red_heart>, <bhc:wither_bone>, <bhc:red_heart>, <bhc:wither_bone>]);
		
// Green Heart
recipes.remove(<bhc:green_heart>);
mods.thaumcraft.Infusion.registerRecipe("green_heart", "", <bhc:green_heart>, 6, 
	[<aspect:alkimia> *150 , <aspect:praecantatio> *150, <aspect:ignis> *150, <aspect:desiderium> *150, <aspect:exanimis> *150], 
	<bhc:relic_apple>, 
		[<bhc:yellow_heart>, <bhc:wither_bone>, <bhc:yellow_heart>, <bhc:wither_bone>, <bhc:yellow_heart>, <bhc:wither_bone>, 
		<bhc:yellow_heart>, <bhc:wither_bone>, <bhc:yellow_heart>, <bhc:wither_bone>]);
		
// Blue Heart
recipes.remove(<bhc:blue_heart>);
mods.thaumcraft.Infusion.registerRecipe("blue_heart", "", <bhc:blue_heart>, 8, 
	[<aspect:alkimia> *250 , <aspect:praecantatio> *250, <aspect:ignis> *250, <aspect:desiderium> *250, <aspect:exanimis> *250], 
	<avaritia:resource:5>, 
		[<bhc:green_heart>, <bhc:wither_bone>, <bhc:green_heart>, <bhc:wither_bone>, <bhc:green_heart>, <bhc:wither_bone>, 
		<bhc:green_heart>, <bhc:wither_bone>, <bhc:green_heart>, <bhc:wither_bone>]);
		
		
// Red Heart Canister
recipes.remove(<bhc:red_heart_canister>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("red_heart_canister", "", 50, 
	[<aspect:aqua> *16, <aspect:aer> *16, <aspect:ordo> *16, <aspect:perditio> *16, <aspect:ignis> *16, <aspect:terra> *16], 
	<bhc:red_heart_canister>, 
	[[<bhc:wither_bone>, <bhc:canister>, <bhc:wither_bone>], 
	[<minecraft:golden_apple>, <bhc:red_heart>, <minecraft:golden_apple>], 
	[null, null, null]]);
	
// Yellow Heart Canister
recipes.remove(<bhc:yellow_heart_canister>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("yellow_heart_canister", "", 100, 
	[<aspect:aqua> *32, <aspect:aer> *32, <aspect:ordo> *32, <aspect:perditio> *32, <aspect:ignis> *32, <aspect:terra> *32], 
	<bhc:yellow_heart_canister>, 
	[[<bhc:wither_bone>, <bhc:canister>, <bhc:wither_bone>], 
	[<minecraft:golden_apple:1>, <bhc:yellow_heart>, <minecraft:golden_apple:1>], 
	[null, null, null]]);
	
// Green Heart Canister
recipes.remove(<bhc:green_heart_canister>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("green_heart_canister", "", 150, 
	[<aspect:aqua> *64, <aspect:aer> *64, <aspect:ordo> *64, <aspect:perditio> *64, <aspect:ignis> *64, <aspect:terra> *64], 
	<bhc:green_heart_canister>, 
	[[<bhc:wither_bone>, <bhc:canister>, <bhc:wither_bone>], 
	[<bhc:relic_apple>, <bhc:green_heart>, <bhc:relic_apple>], 
	[null, null, null]]);
	
// Blue Heart Canister
recipes.remove(<bhc:blue_heart_canister>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("blue_heart_canister", "", 200, 
	[<aspect:aqua> *64, <aspect:aer> *64, <aspect:ordo> *64, <aspect:perditio> *64, <aspect:ignis> *64, <aspect:terra> *64], 
	<bhc:blue_heart_canister>, 
	[[<bhc:wither_bone>, <bhc:canister>, <bhc:wither_bone>], 
	[<avaritia:cosmic_meatballs>, <bhc:blue_heart>, <avaritia:cosmic_meatballs>], 
	[null, null, null]]);
	
// Heart Amulet
recipes.remove(<bhc:heart_amulet>);
recipes.addShaped(<bhc:heart_amulet>, 
	[[<minecraft:apple>, <minecraft:apple>, <minecraft:apple>],
	[<minecraft:apple>, <thaumcraft:baubles>, <minecraft:apple>],
	[<minecraft:apple>, <minecraft:apple>, <minecraft:apple>]]);





// --- Vals ---
val mainframe = <gregtech:meta_item_1:631>;

// --- Removes ---
mods.jei.JEI.hide(<thaumcraft:condenser_lattice_dirty>);
mods.jei.JEI.removeAndHide(<thaumcraft:crimson_blade>);
mods.jei.JEI.removeAndHide(<thaumcraft:baubles:3>);
mods.jei.JEI.removeAndHide(<thaumcraft:amulet_vis>);


// --- Recipes ---

// Arcane Stone Bricks
recipes.remove(<thaumcraft:stone_arcane_brick>);
laser_engraver.recipeBuilder()
	.inputs([<thaumcraft:stone_arcane>])
	.outputs(<thaumcraft:stone_arcane_brick>)
	.notConsumable(<ore:lensRuby>)
	.duration(600).EUt(120).buildAndRegister();	
	
// Arcane Stone Slab
recipes.remove(<thaumcraft:slab_arcane_stone>);
cutter.recipeBuilder()
	.inputs([<thaumcraft:stone_arcane>])
	.outputs(<thaumcraft:slab_arcane_stone> *4)
	.duration(200).EUt(30).buildAndRegister();	

// Arcane Brick Slab
recipes.remove(<thaumcraft:slab_arcane_brick>);
cutter.recipeBuilder()
	.inputs([<thaumcraft:stone_arcane_brick>])
	.outputs(<thaumcraft:slab_arcane_brick> *4)
	.duration(200).EUt(30).buildAndRegister();	
	
// Ancient Stone Slab
recipes.remove(<thaumcraft:slab_arcane_brick>);
cutter.recipeBuilder()
	.inputs([<thaumcraft:stone_ancient>])
	.outputs(<thaumcraft:slab_ancient> *4)
	.duration(200).EUt(30).buildAndRegister();	

// Eldritch Stone Slab
recipes.remove(<thaumcraft:slab_eldritch>);
cutter.recipeBuilder()
	.inputs([<thaumcraft:stone_eldritch_tile>])
	.outputs(<thaumcraft:slab_ancient> *4)
	.duration(200).EUt(30).buildAndRegister();	
	
// Amber Block
recipes.remove(<thaumcraft:amber_block>);

// Wooden Table
recipes.remove(<thaumcraft:table_wood>);
recipes.addShaped(<thaumcraft:table_wood>, 
	[[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[<ore:stickWood>, <ore:screwIron>, <ore:stickWood>],
	[<ore:slabWood>, <ore:gregToolScrewdriver>, <ore:slabWood>]]);
	
// Stone Table
recipes.remove(<thaumcraft:table_stone>);
recipes.addShaped(<thaumcraft:table_wood>, 
	[[<ore:slabStone>, <ore:slabStone>, <ore:slabStone>],
	[<ore:stickWood>, <ore:screwIron>, <ore:stickWood>],
	[<ore:slabStone>, <ore:gregToolScrewdriver>, <ore:slabStone>]]);

// Metal Blocks
recipes.remove(<thaumcraft:metal_brass>);
recipes.remove(<thaumcraft:metal_thaumium>);
recipes.remove(<thaumcraft:metal_void>);
	
// Infusion Speed Stone
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:matrix_speed>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("matrix_speed", "INFUSIONBOOST", 200, 
	[<aspect:aqua> *32, <aspect:aer> *32, <aspect:ordo> *32, <aspect:perditio> *32, <aspect:ignis> *32, <aspect:terra> *32], 
	<thaumcraft:matrix_speed>, 
	[[<ore:plateThaumium>, <bloodmagic:component:29>, <ore:plateThaumium>], 
	[<bloodmagic:component:29>, <ore:frameGtStainlessSteel>, <bloodmagic:component:29>], 
	[<ore:plateThaumium>, <bloodmagic:component:29>, <ore:plateThaumium>]]);
	
// Infusion Speed Stone
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:matrix_cost>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("matrix_cost", "INFUSIONBOOST", 200, 
	[<aspect:aqua> *32, <aspect:aer> *32, <aspect:ordo> *32, <aspect:perditio> *32, <aspect:ignis> *32, <aspect:terra> *32], 
	<thaumcraft:matrix_cost>, 
	[[<ore:plateVoid>, <bloodmagic:component:29>, <ore:plateVoid>], 
	[<bloodmagic:component:29>, <ore:frameGtStainlessSteel>, <bloodmagic:component:29>], 
	[<ore:plateVoid>, <bloodmagic:component:29>, <ore:plateVoid>]]);
	
// Vis Battery
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_battery>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("vis_battery", "VISBATTERY", 150, 
	[<aspect:ordo> *32, <aspect:aer> *16, <aspect:terra> *16], 
	<thaumcraft:vis_battery>, 
	[[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>], 
	[<ore:circuitHv>, <ore:batteryHv>, <ore:circuitHv>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
	
// Redstone Inlay
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:inlay>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("inlay", "INFUSIONSTABLE", 15, 
	[<aspect:ordo> *4], 
	<thaumcraft:inlay>, 
	[[<minecraft:light_weighted_pressure_plate>, <ore:plateRedAlloy>], 
	[null, null, null], 
	[null, null, null]]);

// Workbench Charger
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_workbench_charger>);
mods.thaumcraft.Infusion.registerRecipe("workbench_charger", "WORKBENCHCHARGER", <thaumcraft:arcane_workbench_charger>, 6, 
	[<aspect:praecantatio> *50 , <aspect:instrumentum> *50, <aspect:motus> *50, <aspect:ordo> *50], 
        mainframe,
		[powerIc, <thaumcraft:stone_arcane>, <ore:batteryEv>, <thaumcraft:stone_arcane>, 
        powerIc, <thaumcraft:stone_arcane>, <ore:batteryEv>]);

		
// Thaumic Dioptra
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:dioptra>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("dioptra", "DIOPTRA", 30, 
	[<aspect:ordo> *4], 
	<thaumcraft:dioptra>, 
	[[<thaumcraft:stone_arcane>, <thaumcraft:vis_resonator>, <thaumcraft:stone_arcane>], 
	[sensorLv, <thaumcraft:thaumometer>, sensorLv], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
	
// Arcane Ear
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_ear>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("dioptra", "ARCANEEAR", 10, 
	[<aspect:aer> *10, <aspect:terra> *10, <aspect:ordo> *10], 
	<thaumcraft:arcane_ear>, 
	[[<ore:plateThaumium>, sensorLv, <ore:plateThaumium>], 
	[<ore:plateGold>, <thaumcraft:brain>, <ore:plateGold>], 
	[<thaumcraft:plank_greatwood>, <ore:wireGtSingleRedAlloy>, <thaumcraft:plank_greatwood>]]);
	
// Arcane Ear (Toggle)
recipes.remove(<thaumcraft:arcane_ear_toggle>);
assembler.recipeBuilder()
	.inputs([<thaumcraft:arcane_ear>, <minecraft:lever>])
	.outputs(<thaumcraft:arcane_ear_toggle>)
	.duration(200).EUt(16).buildAndRegister();
	
// Arcane Lamp
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:lamp_arcane>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("lamp_arcane", "", 10, 
	[<aspect:aer> *1, <aspect:ignis> *1], 
	<thaumcraft:lamp_arcane>, 
	[[<ore:plateGlass>, <minecraft:daylight_detector>, <ore:plateGlass>], 
	[<ore:plateIron>, <ore:blockAmber>, <ore:plateIron>], 
	[<ore:plateGlass>, <ore:nitor>, <ore:plateGlass>]]);

// Arcane Levitator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:levitator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("levitator", "LEVITATOR",  10, 
	[<aspect:aer> *10, <aspect:terra> *5, <aspect:ordo> *1], 
	<thaumcraft:levitator>, 
	[[<thaumcraft:plank_greatwood>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <thaumcraft:plank_greatwood>], 
	[<ore:nitor>, <ore:rotorSteel>, <thaumcraft:alumentum>], 
	[<thaumcraft:plank_greatwood>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), <thaumcraft:plank_greatwood>]]);

// Essentia Centrifuge
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:centrifuge>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("centrifuge", "CENTRIFUGE",  50, 
	[<aspect:ordo> *32, <aspect:aqua> *16, <aspect:perditio> *16], 
	<thaumcraft:centrifuge>, 
	[[<ore:screwAluminium>, <thaumcraft:tube>, <ore:screwAluminium>], 
	[<thaumcraft:alembic>, <thaumcraft:metal_alchemical>, pistonMv], 
	[<ore:screwAluminium>, <thaumcraft:tube>, <ore:screwAluminium>]]);
	
// Arcane Bellows
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:bellows>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("bellows", "BELLOWS",  50, 
	[<aspect:aer> *10, <aspect:ordo> *10], 
	<thaumcraft:bellows>, 
	[[<thaumcraft:slab_greatwood>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <thaumcraft:slab_greatwood>], 
	[<minecraft:leather>, pistonLv, <minecraft:leather>], 
	[<thaumcraft:slab_greatwood>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <thaumcraft:slab_greatwood>]]);
		
// TODO - thaumcraft smeltery
// TODO - thaumcraft slurry

// Arcane Alembic
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:alembic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("alembic", "ESSENTIASMELTER",  100, 
	[<aspect:aqua> *10, <aspect:aer> *5, <aspect:ignis> *5], 
	<thaumcraft:alembic>, 
	[[<ore:plateThaumium>, <ore:pipeLargeSteel>, <ore:plateThaumium>], 
	[<thaumcraft:filter>, <gregtech:machine:2>, <thaumcraft:filter>], 
	[<ore:plateThaumium>, <ore:pipeLargeSteel>, <ore:plateThaumium>]]);
	
// Recharge Pedestal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:recharge_pedestal>);
mods.thaumcraft.Infusion.registerRecipe("recharge_pedestal", "RECHARGEPEDESTAL", <thaumcraft:recharge_pedestal>, 2, 
	[<aspect:praecantatio> *20 , <aspect:permutatio> *15, <aspect:auram> *10, <aspect:ordo> *5], 
	<thaumcraft:pedestal_arcane>, 
		[<ore:plateGold>, <ore:gemFlawlessDiamond>, <thaumcraft:morphic_resonator>, <ore:gemFlawlessDiamond>]);
	
// Focal Manipulator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:wand_workbench>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("wand_workbench", "BASEAUROMANCY",  100, 
	[<aspect:aqua> *10, <aspect:aer> *5, <aspect:ignis> *5], 
	<thaumcraft:wand_workbench>, 
	[[<thaumadditions:crystal_block>, <thaumcraft:slab_arcane_stone>, <thaumadditions:crystal_block>], 
	[<thaumcraft:stone_arcane_brick>, <appliedenergistics2:charger>, <thaumcraft:stone_arcane_brick>], 
	[<ore:plateThaumium>, <thaumcraft:table_wood>, <ore:plateThaumium>]]);	
	
	
// Hungry Chest
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:hungry_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("hungry_chest", "HUNGRYCHEST",  100, 
	[<aspect:aer> *10, <aspect:terra> *10, <aspect:ordo> *5, <aspect:perditio> *5], 
	<thaumcraft:hungry_chest>, 
	[[<ore:screwSteel>, <thaumicaugmentation:arcane_trapdoor_metal>, <ore:screwSteel>], 
	[<thaumcraft:brain>, <ore:chest>, <thaumcraft:brain>], 
	[<ore:screwSteel>, <ore:gregToolScrewdriver>, <ore:screwSteel>]]);	
	
// Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube", "TUBES",  10, 
	[<aspect:aqua> *8, <aspect:ordo> *8], 
	<thaumcraft:tube> *4, 
	[[<ore:screwSteel>, <ore:nuggetGold>, <ore:screwSteel>], 
	[<ore:nuggetQuicksilver>, <ore:pipeSmallSteel>, <ore:nuggetQuicksilver>], 
	[<ore:screwSteel>, <ore:nuggetGold>, <ore:screwSteel>]]);	
	
// Essentia Valve
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_valve>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube_valve", "TUBES",  10, 
	[<aspect:aqua> *8, <aspect:ordo> *8], 
	<thaumcraft:tube_valve>, 
	[[<ore:screwSteel>, <minecraft:lever>, <ore:screwSteel>], 
	[<ore:plateRubber>, <thaumcraft:tube>, <ore:gearSmallSteel>], 
	[null, null, null]]);	
	
// Restricted Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_restrict>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube_restrict", "TUBES",  10, 
	[<aspect:aqua> *16, <aspect:ordo> *16], 
	<thaumcraft:tube_restrict>, 
	[[null, null, null], 
	[<ore:ringRubber>, <thaumcraft:tube>, <ore:ringRubber>], 
	[null, null, null]]);	
	
// Restricted Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_oneway>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube_oneway", "TUBES",  10, 
	[<aspect:ordo> *16, <aspect:aqua> *8, <aspect:perditio> *8], 
	<thaumcraft:tube_oneway>, 
	[[null, null, null], 
	[<ore:dye:4>, <thaumcraft:tube>, <ore:screwSteel>], 
	[null, null, null]]);	
	
// Filtered Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_filter>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube_filter", "TUBES",  10, 
	[<aspect:ordo> *16, <aspect:aqua> *16], 
	<thaumcraft:tube_filter>, 
	[[<ore:gregToolScrewdriver>, <thaumcraft:filter>, <ore:gregToolFile>], 
	[<ore:screwSteel>, <thaumcraft:tube>, <ore:screwSteel>], 
	[null, <thaumcraft:filter>, null]]);	
	
//  Essentia Buffer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_buffer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tube_buffer", "TUBES",  10, 
	[<aspect:ordo> *20, <aspect:aqua> *20], 
	<thaumcraft:tube_buffer> *4, 
	[[<thaumcraft:phial>, <thaumcraft:tube_valve>, <thaumcraft:phial>], 
	[<thaumcraft:tube>, <ore:screwSteel>, <thaumcraft:tube>], 
	[<thaumcraft:phial>, <thaumcraft:tube>, <thaumcraft:phial>]]);	
	
// Warded Jar
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:jar_normal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("jar_normal", "WARDEDJARS",  10, 
	[<aspect:aqua> *2], 
	<thaumcraft:jar_normal>, 
	[[<ore:paneGlass>, <ore:plateRubber>, <ore:paneGlass>], 
	[<ore:paneGlass>, null, <ore:paneGlass>], 
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);	
	
// Void Jar
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:jar_void>);
mods.thaumcraft.Infusion.registerRecipe("jar_void", "WARDEDJARS", <thaumcraft:jar_void>, 1, 
	[<aspect:vacuos> *7 , <aspect:praecantatio> *7, <aspect:perditio> *7, <aspect:aqua> *7], 
	<thaumcraft:jar_normal>, 
	[<ore:plateVoid>, <ore:dustBlaze>, <ore:plateEnderEye>, <ore:nuggetQuicksilver>]);
	
// Brain in a Jar
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:jar_brain>);
mods.thaumcraft.Infusion.registerRecipe("jar_brain", "JARBRAIN", <thaumcraft:jar_brain>, 6, 
	[<aspect:exanimis> *30 , <aspect:cognitio> *15, <aspect:sensus> *15, <aspect:alienis> *10], 
	<thaumcraft:jar_normal>, 
	[<thaumcraft:brain>, <minecraft:poisonous_potato>, <minecraft:spider_eye>, <minecraft:water_bucket>, 
	<minecraft:spider_eye>, <minecraft:poisonous_potato>]);
	
// Runic Matrix
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:infusion_matrix>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("infusion_matrix", "INFUSION",  100, 
	[<aspect:aer> *40, <aspect:terra> *40, <aspect:ignis> *40, <aspect:aqua> *40, <aspect:ordo> *40, <aspect:perditio> *40], 
	<thaumcraft:infusion_matrix>, 
	[[<thaumcraft:stone_arcane_brick>, <thaumadditions:crystal_block>, <thaumcraft:stone_arcane_brick>], 
	[<thaumadditions:crystal_block>, <minecraft:ender_eye>, <thaumadditions:crystal_block>], 
	[<thaumcraft:stone_arcane_brick>, <thaumadditions:crystal_block>, <thaumcraft:stone_arcane_brick>]]);	
	
	
// Everful Urn
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:everfull_urn>);
mods.thaumcraft.Infusion.registerRecipe("everfull_urn", "EVERFULLURN", <thaumcraft:everfull_urn>, 12, 
	[<aspect:aqua> *64, <aspect:praecantatio> *48, <aspect:vacuos> *32, <aspect:alienis> *32, <aspect:desiderium> *16], 
	<minecraft:flower_pot>, 
	[<minecraft:water_bucket>, <minecraft:netherbrick>, <minecraft:water_bucket>, <ore:plateTitanium>, 
	<minecraft:water_bucket>, <minecraft:netherbrick>, <minecraft:water_bucket>,
	<minecraft:brick>, <minecraft:water_bucket>, <ore:plateTitanium>, <minecraft:water_bucket>, <minecraft:brick>]);
	
// Mnemonic Matrix
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:brain_box>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("brain_box", "THAUMATORIUM",  100, 
	[<aspect:ignis> *10, <aspect:aqua> *10, <aspect:ordo> *10], 
	<thaumcraft:brain_box>, 
	[[<ore:plateTitanium>, <ore:gemAmber>, <ore:plateTitanium>], 
	[<ore:gemAmber>, <thaumcraft:brain>, <ore:gemAmber>], 
	[<ore:plateTitanium>, <ore:gemAmber>, <ore:plateTitanium>]]);	
	
// Arcane Spa
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:spa>);
mods.thaumcraft.Infusion.registerRecipe("spa", "ARCANESPA", <thaumcraft:spa>, 8, 
	[<aspect:aqua> *32, <aspect:ordo> *24, <aspect:praecantatio> *16, <aspect:alkimia> *16, <aspect:machina> *8], 
	<thaumcraft:jar_normal>, 
	[<ore:plateStainlessSteel>, <ore:blockNetherQuartz>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane_brick>, <thaumcraft:bath_salts>, 
	<thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane>, <ore:blockNetherQuartz>]);
	
// Magic Mirror
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:mirror>);
mods.thaumcraft.Infusion.registerRecipe("mirror", "MIRROR", <thaumcraft:mirror>, 12, 
	[<aspect:motus> *32, <aspect:permutatio> *24, <aspect:tenebrae> *16, <aspect:alienis> *8], 
	<thaumcraft:mirrored_glass>, 
	[<ore:plateEnderium>, <ore:screwStainlessSteel>, <ore:plateGold>, <ore:screwStainlessSteel>, <ore:plateEnderium>, 
	<ore:screwStainlessSteel>, <ore:plateGold>, <ore:screwStainlessSteel>]);
	
// Essentia Mirror
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:mirror_essentia>);
mods.thaumcraft.Infusion.registerRecipe("mirror_essentia", "MIRRORESSENTIA", <thaumcraft:mirror_essentia>, 8, 
	[<aspect:motus> *32, <aspect:aqua> *24, <aspect:permutatio> *16, <aspect:vitreus> *8], 
	<thaumcraft:mirrored_glass>, 
	[<ore:plateEnderium>, <ore:screwStainlessSteel>, <ore:plateSteel>, <ore:screwStainlessSteel>, <ore:plateEnderium>, 
	<ore:screwStainlessSteel>, <ore:plateSteel>, <ore:screwStainlessSteel>]);

// Filling Essentia Transfuser
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_input>);
mods.thaumcraft.Infusion.registerRecipe("essentia_input", "ESSENTIATRANSPORT", <thaumcraft:essentia_input>, 12, 
	[<aspect:motus> *64, <aspect:machina> *64, <aspect:praecantatio> *32, <aspect:aqua> *16, <aspect:potentia> *8, <aspect:auram> *8], 
	<thaumcraft:mirror_essentia>, 
	[<bloodmagic:component:17>, <ore:plateRoseGold>, <ore:ingotVoid>, <ore:ingotVoid>, <thaumcraft:salis_mundus>,
	<bloodmagic:component:17>, <ore:plateRoseGold>, <ore:ingotVoid>, <ore:ingotVoid>, <thaumcraft:salis_mundus>]);
	
// Emptying Essentia Transfuser
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_output>);
mods.thaumcraft.Infusion.registerRecipe("essentia_output", "ESSENTIATRANSPORT", <thaumcraft:essentia_output>, 12, 
	[<aspect:motus> *64, <aspect:machina> *64, <aspect:praecantatio> *32, <aspect:aqua> *16, <aspect:vacuos> *8, <aspect:auram> *8], 
	<thaumcraft:mirror_essentia>, 
	[<bloodmagic:component:18>, <ore:plateRoseGold>, <ore:ingotVoid>, <ore:ingotVoid>, <thaumcraft:salis_mundus>,
	<bloodmagic:component:18>, <ore:plateRoseGold>, <ore:ingotVoid>, <ore:ingotVoid>, <thaumcraft:salis_mundus>]);

// Potion Sprayer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:potion_sprayer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("potion_sprayer", "POTIONSPRAYER",  150, 
	[<aspect:aqua> *30, <aspect:aer> *10], 
	<thaumcraft:potion_sprayer>, 
	[[<ore:plateBrass>, <ore:gemAmber>, <ore:plateBrass>], 
	[<ore:plateSteel>, <minecraft:brewing_stand>, <ore:plateSteel>], 
	[<ore:plateSteel>, pumpMv, <ore:plateSteel>]]);	
	
// Stabilizer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:stabilizer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("stabilizer", "INFUSIONSTABLE",  200, 
	[<aspect:terra> *30, <aspect:aqua> *30, <aspect:perditio> *30], 
	<thaumcraft:stabilizer>, 
	[[<thaumcraft:slab_arcane_stone>, <ore:blockPlutonium>, <thaumcraft:slab_arcane_stone>], 
	[<thaumcraft:stone_arcane>, emitterIv, <thaumcraft:stone_arcane>], 
	[<thaumcraft:inlay>, <ore:circuitIv> , <thaumcraft:inlay>]]);	
	
// Vis Generator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_generator>);
mods.thaumcraft.Infusion.registerRecipe("vis_generator", "VISGENERATOR", <thaumcraft:vis_generator>, 8, 
	[<aspect:machina> *32, <aspect:potentia> *24, <aspect:praecantatio> *16], 
	motorMv, 
	[<gregtech:wire_coil>, <ore:wireGtQuadCopper>, <ore:wireGtQuadCopper>, <gregtech:wire_coil>, <ore:wireGtQuadCopper>, <ore:wireGtQuadCopper>]);
	
// Flux Condenser
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:condenser>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("condenser", "FLUXCLEANUP",  500, 
	[<aspect:ordo> *32], 
	<thaumcraft:condenser>, 
	[[<ore:plateStainlessSteel>, <thaumcraft:morphic_resonator>, <ore:plateStainlessSteel>], 
	[emitterHv, <ore:circuitHv>, emitterHv], 
	[<ore:plateStainlessSteel>, <thaumcraft:tube>, <ore:plateStainlessSteel>]]);	
	
// Flux Condenser Lattice
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:condenser_lattice>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("condenser_lattice", "FLUXCLEANUP",  100, 
	[<aspect:terra> *10, <aspect:aer> *10], 
	<thaumcraft:condenser_lattice>, 
	[[<ore:gemNetherQuartz>, <thaumcraft:tube>, <ore:gemNetherQuartz>], 
	[<ore:plateStainlessSteel>, <thaumcraft:filter>, <ore:plateStainlessSteel>], 
	[<ore:gemNetherQuartz>, <thaumcraft:tube>, <ore:gemNetherQuartz>]]);
	
// Void Siphon
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_siphon>);
mods.thaumcraft.Infusion.registerRecipe("void_siphon", "VOIDSIPHON", <thaumcraft:void_siphon>, 16, 
	[<aspect:perditio> *128, <aspect:machina> *64, <aspect:praecantatio> *32, <aspect:auram> *16, <aspect:potentia> *8], 
	<ore:blockVoid>, 
	[<ore:circuitEv>, <minecraft:nether_star>, <ore:plateTitanium>, <ore:circuitEv>, <minecraft:nether_star>, <ore:plateTitanium>]);
	
// Enchanted Fabric
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:fabric>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("fabric", "",  10, 
	[<aspect:terra> *10, <aspect:aer> *10], 
	<thaumcraft:fabric>, 
    [[null, <minecraft:string>, null],
    [<minecraft:string>, <ore:blockWool>, <minecraft:string>],
    [null, <minecraft:string>, null]]);
// expensive bee alternative
assembler.recipeBuilder()
	.inputs([<ore:wireFineBorosilicateGlass> *8, <ore:plateReinforcedEpoxyResin>, carbonFibers *8])
	.outputs(<thaumcraft:fabric>)
	.duration(500).EUt(500).buildAndRegister();
	
// Vis Resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("vis_resonator", "",  10, 
	[<aspect:aer> *10, <aspect:aqua> *10], 
	<thaumcraft:vis_resonator>, 
	[[<ore:plateSteel>, <ore:gemNetherQuartz>], 
	[null, null, null], 
	[null, null, null]]);
	
// Simple Arcane Mechanism
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_simple>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mechanism_simple", "BASEARTIFICE",  50, 
	[<aspect:aqua> *1, <aspect:ignis> *1], 
	<thaumcraft:mechanism_simple>, 
	[[null, <ore:plateBrass>, null], 
	[<ore:plateSteel>, <ore:circuitLv>, <ore:plateSteel>], 
	[null, <ore:plateBrass>, null]]);
	
// Complex Arcane Mechanism
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_complex>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mechanism_complex", "BASEARTIFICE",  150, 
	[<aspect:aqua> *10, <aspect:ignis> *10], 
	<thaumcraft:mechanism_complex>, 
	[[null, <thaumcraft:mechanism_simple>, null], 
	[<ore:plateAluminium>, <ore:circuitMv>, <ore:plateAluminium>], 
	[null, <thaumcraft:mechanism_simple>, null]]);	
	
// Brass Plate
recipes.remove(<thaumcraft:plate>);

// Iron Plate
recipes.remove(<thaumcraft:plate:1>);

// TODO - register thaumium/void metal with gt for plates/screws
// Thaumium Plate
recipes.remove(<thaumcraft:plate:2>);
bender.recipeBuilder()
	.inputs([<ore:ingotThaumium>])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<thaumcraft:plate:2>)
	.duration(160).EUt(24).buildAndRegister();

// Void Metal Plate
recipes.remove(<thaumcraft:plate:3>);
bender.recipeBuilder()
	.inputs([<ore:ingotVoid>])
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1}))
	.outputs(<thaumcraft:plate:3>)
	.duration(160).EUt(24).buildAndRegister();

// Essentia Filter
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:filter>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("vis_filter", "BASEALCHEMY",  10, 
	[<aspect:ordo> *10, <aspect:aqua> *5], 
	<thaumcraft:filter> *3, 
	[[<ore:stickGold>, <ore:plateGold>, <ore:stickGold>], 
	[<thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>], 
	[<ore:stickGold>, <ore:plateGold>, <ore:stickGold>]]);	
	
// Morphic Resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:morphic_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("morphic_resonator", "BASEALCHEMY",  10, 
	[<aspect:aer> *5, <aspect:ignis> *5], 
	<thaumcraft:morphic_resonator>, 
	[[null, <ore:paneGlass>, null], 
	[<ore:plateStainlessSteel>, <thaumcraft:nugget:10>, <ore:plateStainlessSteel>], 
	[null, <ore:paneGlass>, null]]);	
	
// Mirrored Glass
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mirrored_glass>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mirrored_glass", "MIRROR",  100, 
	[<aspect:aer> *30, <aspect:terra> *30, <aspect:ignis> *30], 
	<thaumcraft:mirrored_glass>, 
	[[<ore:plateEnderium>, <ore:quicksilver>, <ore:plateEnderium>], 
	[<ore:quicksilver>, <ore:paneGlass>, <ore:quicksilver>], 
	[<ore:plateEnderium>, <ore:quicksilver>, <ore:plateEnderium>]]);	
	
// Arcane Bore
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:turret:2>);
mods.thaumcraft.Infusion.registerRecipe("mirror", "ARCANEBORE", <thaumcraft:turret:2>, 10, 
	[<aspect:machina> *64, <aspect:perditio> *64, <aspect:motus> *32, <aspect:potentia> *32, <aspect:vacuos> *32], 
	pistonMv, 
	[<thaumcraft:plank_greatwood>, <ore:plateGold>, <ore:lensDiamond>, <ore:oreCrystalAir>, <thaumcraft:thaumium_shovel>, 
	<thaumcraft:plank_greatwood>, <ore:plateGold>, <ore:lensDiamond, <ore:oreCrystalEarth>, <ore:lensDiamond>, <thaumcraft:thaumium_pick>]);
	

// Causality Collapser
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:causality_collapser>);
mods.thaumcraft.Infusion.registerRecipe("causality_collapser", "RIFT_MANAGEMENT", <thaumcraft:causality_collapser>, 14, 
	[<aspect:alienis> *32, <aspect:permutatio> *32, <aspect:praecantatio> *16, <aspect:alkimia> *16], 
	<minecraft:nether_star>, 
	[<ore:ingotAdaminite>, <ore:crystalPureCertusQuartz>, <ore:lensDiamond>, <ore:crystalPureNetherQuartz>, <minecraft:ghast_tear>, <thaumcraft:salis_mundus>, 
	<minecraft:ghast_tear>, <ore:crystalPureNetherQuartz>, <ore:lensDiamond>, <ore:crystalPureCertusQuartz>]);

// Thaumometer
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:thaumometer>);
recipes.addShaped(<thaumcraft:thaumometer>, 
	[[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]})],
	[<ore:plateGold>, <ore:lensDiamond>, <ore:plateGold>],
	[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]})]]);
	
// Essentia Resonator
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("resonator", "TUBES",  30, 
	[<aspect:aer> *8, <aspect:aqua> *8], 
	<thaumcraft:resonator>, 
	[[<ore:gregToolScrewdriver>, <ore:stickAluminium>, null], 
	[<ore:stickAluminium>, <ore:nuggetQuicksilver>, <ore:stickAluminium>], 
	[<ore:stickWood>, <ore:screwAluminium>, <ore:gregToolFile>]]);	
	
// Sanity Checker
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:sanity_checker>);
mods.thaumcraft.Infusion.registerRecipe("sanity_checker", "", <thaumcraft:sanity_checker>, 14, 
	[<aspect:cognitio> *32, <aspect:sensus> *24, <aspect:alienis> *16, <aspect:alkimia> *16], 
	<thaumcraft:thaumometer>, 
	[<thaumcraft:mirror>, <ore:screwStainlessSteel>, <thaumcraft:brain>, <ore:screwStainlessSteel>, <ore:gemFlawlessDiamond>, 
	<ore:screwStainlessSteel>, <thaumcraft:brain>, <ore:screwStainlessSteel>]);
	
// Magic Hand Mirror
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:hand_mirror>);
mods.thaumcraft.Infusion.registerRecipe("hand_mirror", "", <thaumcraft:hand_mirror>, 12, 
	[<aspect:instrumentum> *64, <aspect:motus> *32, <aspect:alienis> *16, <aspect:potentia> *8], 
	<thaumcraft:mirror>, 
	[<minecraft:compass>, <ore:screwAluminium>, <ore:plateThaumium>, <ore:screwAluminium>, 
	<minecraft:map>, <ore:screwAluminium>, <astralsorcery:itemwand>, <ore:screwAluminium>]);
	
// Thaumium Axe
recipes.remove(<thaumcraft:thaumium_axe>);
recipes.addShaped(<thaumcraft:thaumium_axe>, 
	[[<ore:plateThaumium>, <ore:ingotThaumium>, <ore:gregToolHardHammer>],
	[<ore:plateThaumium>, <ore:stickWood>],
	[<ore:gregToolFile>, <ore:stickWood>]]);
	
// Thaumium Sword
recipes.remove(<thaumcraft:thaumium_sword>);
recipes.addShaped(<thaumcraft:thaumium_sword>, 
	[[null, <ore:plateThaumium>, null],
	[<ore:gregToolFile>, <ore:plateThaumium>, <ore:gregToolHardHammer>],
	[null, <ore:stickWood>, null]]);
	
// Thaumium Shovel
recipes.remove(<thaumcraft:thaumium_shovel>);
recipes.addShaped(<thaumcraft:thaumium_shovel>, 
	[[<ore:gregToolFile>, <ore:plateThaumium>, <ore:gregToolHardHammer>],
	[null, <ore:stickWood>, null],
	[null, <ore:stickWood>, null]]);
	
// Thaumium Pickaxe
recipes.remove(<thaumcraft:thaumium_pick>);
recipes.addShaped(<thaumcraft:thaumium_shovel>, 
	[[<ore:plateThaumium>, <ore:ingotThaumium>, <ore:ingotThaumium>],
	[<ore:gregToolFile>, <ore:stickWood>, <ore:gregToolHardHammer>],
	[null, <ore:stickWood>, null]]);
	
// Thaumium Shovel
recipes.remove(<thaumcraft:thaumium_hoe>);
recipes.addShaped(<thaumcraft:thaumium_hoe>, 
	[[<ore:plateThaumium>, <ore:ingotThaumium>, <ore:gregToolHardHammer>],
	[<ore:gregToolFile>, <ore:stickWood>, null],
	[null, <ore:stickWood>, null]]);
	
// Void Axe
recipes.remove(<thaumcraft:void_axe>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_axe", "",  50, 
	[<aspect:perditio> *30, <aspect:terra> *15], 
	<thaumcraft:void_axe>, 
	[[<ore:plateVoid>, <ore:ingotVoid>, <ore:gregToolHardHammer>], 
	[<ore:plateVoid>, <ore:stickWood>, null], 
	[<ore:gregToolFile>, <ore:stickWood>, null]]);	
	
// Void Sword
recipes.remove(<thaumcraft:void_sword>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_sword", "",  50, 
	[<aspect:perditio> *30, <aspect:terra> *15], 
	<thaumcraft:void_sword>, 
	[[null, <ore:plateVoid>, null], 
	[<ore:gregToolFile>, <ore:plateVoid>, <ore:gregToolHardHammer>], 
	[null, <ore:stickWood>, null]]);

// Void Shovel
recipes.remove(<thaumcraft:void_shovel>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_shovel", "",  50, 
	[<aspect:perditio> *30, <aspect:terra> *15], 
	<thaumcraft:void_shovel>, 
	[[<ore:gregToolFile>, <ore:ingotVoid>, <ore:gregToolHardHammer>], 
	[null, <ore:stickWood>, null], 
	[null, <ore:stickWood>, null]]);
	
// Void Pickaxe
recipes.remove(<thaumcraft:void_pick>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_pick", "",  50, 
	[<aspect:perditio> *30, <aspect:terra> *15], 
	<thaumcraft:void_pick>, 
	[[<ore:plateVoid>, <ore:ingotVoid>, <ore:ingotVoid>], 
	[<ore:gregToolFile>, <ore:stickWood>, <ore:gregToolHardHammer>], 
	[null, <ore:stickWood>, null]]);
	
// Void Hoe
recipes.remove(<thaumcraft:void_hoe>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_hoe", "",  50, 
	[<aspect:perditio> *30, <aspect:terra> *15], 
	<thaumcraft:void_hoe>, 
	[[<ore:plateVoid>, <ore:ingotVoid>, <ore:gregToolHardHammer>], 
	[<ore:gregToolFile>, <ore:stickWood>, null], 
	[null, <ore:stickWood>, null]]);
	
// Axe of the Stream
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_axe>);
mods.thaumcraft.Infusion.registerRecipe("elemental_axe", "ELEMENTALTOOLS", <thaumcraft:elemental_axe>, 4, 
	[<aspect:herba> *20, <aspect:instrumentum> *20, <aspect:motus> *20, <aspect:aqua> *10], 
	<thaumcraft:void_axe>, 
	[<ore:gemFlawlessSapphire>, <thaumcraft:log_silverwood>, <ore:oreCrystalWater>, <ore:gemFlawlessDiamond>, <thaumcraft:log_greatwood>, <ore:oreCrystalWater>]);

// Sword of the Zephyr
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_sword>);
mods.thaumcraft.Infusion.registerRecipe("elemental_sword", "ELEMENTALTOOLS", <thaumcraft:elemental_sword>, 4, 
	[<aspect:aer> *20, <aspect:motus> *20, <aspect:potentia> *20, <aspect:aversio> *20], 
	<thaumcraft:void_sword>, 
	[<ore:gemFlawlessGarnetYellow>, <thaumcraft:log_silverwood>, <ore:oreCrystalAir>, <ore:gemFlawlessDiamond>, <thaumcraft:log_greatwood>, <ore:oreCrystalAir>]);
	
// Sword of the Zephyr
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_sword>);
mods.thaumcraft.Infusion.registerRecipe("elemental_sword", "ELEMENTALTOOLS", <thaumcraft:elemental_sword>, 4, 
	[<aspect:aer> *20, <aspect:motus> *20, <aspect:potentia> *20, <aspect:aversio> *20], 
	<thaumcraft:void_sword>, 
	[<ore:gemFlawlessGarnetYellow>, <thaumcraft:log_silverwood>, <ore:oreCrystalAir>, <ore:gemFlawlessDiamond>, <thaumcraft:log_greatwood>, <ore:oreCrystalAir>]);
	
// Shovel of the Earthmover
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_shovel>);
mods.thaumcraft.Infusion.registerRecipe("elemental_shovel", "ELEMENTALTOOLS", <thaumcraft:elemental_shovel>, 4, 
	[<aspect:instrumentum> *20, <aspect:terra> *20, <aspect:praecantatio> *20, <aspect:motus> *10], 
	<thaumcraft:void_shovel>, 
	[<ore:gemFlawlessEmerald>, <thaumcraft:log_silverwood>, <ore:oreCrystalEarth>, <ore:gemFlawlessDiamond>, <thaumcraft:log_greatwood>, <ore:oreCrystalEarth>]);

// Pickaxe of the Core
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_pick>);
mods.thaumcraft.Infusion.registerRecipe("elemental_pick", "ELEMENTALTOOLS", <thaumcraft:elemental_pick>, 4, 
	[<aspect:ignis> *20, <aspect:ordo> *20, <aspect:sensus> *20, <aspect:desiderium> *20], 
	<thaumcraft:void_pick>, 
	[<ore:gemFlawlessRuby>, <thaumcraft:log_silverwood>, <ore:oreCrystalFire>, <ore:gemFlawlessDiamond>, <thaumcraft:log_greatwood>, <ore:oreCrystalFire>]);

// Hoe of Growth
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:elemental_hoe>);
mods.thaumcraft.Infusion.registerRecipe("elemental_hoe", "ELEMENTALTOOLS", <thaumcraft:elemental_hoe>, 4, 
	[<aspect:herba> *20, <aspect:terra> *20, <aspect:victus> *20, <aspect:vitreus> *10], 
	<thaumcraft:void_hoe>, 
	[<ore:gemFlawlessTopaz>, <thaumcraft:log_silverwood>, <ore:oreCrystalEarth>, <ore:gemFlawlessDiamond>, <thaumcraft:log_greatwood>, <ore:oreCrystalEarth>]);
	
// Arcane Grappler
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_sword", "GRAPPLEGUN",  150, 
	[<aspect:aer> *10, <aspect:ignis> *10], 
	<thaumcraft:grapple_gun>, 
	[[<ore:gregToolScrewdriver>, <ore:screwIron>, <thaumcraft:grapple_gun_spool>], 
	[<thaumcraft:grapple_gun_tip>, motorLv, <ore:plateIron>], 
	[null, <ore:plateBrass>, <ore:plankWood>]]);
	
// Grapple Gun Tip
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun_tip>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("grapple_gun_tip", "GRAPPLEGUN",  50, 
	[<aspect:aer> *7, <aspect:ignis> *5], 
	<thaumcraft:grapple_gun_tip>, 
	[[<ore:plateBrass>, <thaumcraft:nugget:10>, <ore:plateBrass>], 
	[<ore:gregToolHardHammer>, <minecraft:arrow>, <ore:gregToolFile>], 
	[<ore:plateBrass>, <thaumcraft:nugget:10>, <ore:plateBrass>]]);

// Grapple Gun Spool
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun_spool>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("grapple_gun_spool", "GRAPPLEGUN",  25, 
	[<aspect:aer> *5, <aspect:ignis> *5], 
	<thaumcraft:grapple_gun_spool>, 
	[[<minecraft:tripwire_hook>, <minecraft:tripwire_hook>, <minecraft:tripwire_hook>], 
	[<minecraft:string>, <thaumcraft:mechanism_simple>, <minecraft:string>], 
    [<bloodarsenal:blood_burned_string>, <bloodarsenal:blood_burned_string>, <bloodarsenal:blood_burned_string>]]);

// Goggles of Revealing
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:goggles>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("goggles", "BASEARTIFICE",  50, 
	[<aspect:aer> *10, <aspect:terra> *10, <aspect:ignis> *10, <aspect:aqua> *10, <aspect:ordo> *10, <aspect:perditio> *10], 
	<thaumcraft:goggles>, 
	[[<thaumcraft:fabric>, <ore:screwGold>, <thaumcraft:fabric>], 
	[<ore:ringGold>, <ore:gregToolScrewdriver>, <ore:ringGold>], 
	[<thaumcraft:thaumometer>, <ore:stickGold>, <thaumcraft:thaumometer>]]);
		
// Thaumium Helm
recipes.remove(<thaumcraft:thaumium_helm>);
recipes.addShaped(<thaumcraft:thaumium_helm>, 
	[[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>],
	[<ore:plateThaumium>, <ore:gregToolHardHammer>, <ore:plateThaumium>],
	[null, null, null]]);
	
// Thaumium Chest
recipes.remove(<thaumcraft:thaumium_chest>);
recipes.addShaped(<thaumcraft:thaumium_chest>, 
	[[<ore:plateThaumium>, <ore:gregToolHardHammer>, <ore:plateThaumium>],
	[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>],
	[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>]]);
	
// Thaumium Legs
recipes.remove(<thaumcraft:thaumium_legs>);
recipes.addShaped(<thaumcraft:thaumium_legs>, 
	[[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>],
	[<ore:plateThaumium>, <ore:gregToolHardHammer>, <ore:plateThaumium>],
	[<ore:plateThaumium>, null, <ore:plateThaumium>]]);
	
// Thaumium Boots
recipes.remove(<thaumcraft:thaumium_boots>);
recipes.addShaped(<thaumcraft:thaumium_boots>, 
	[[<ore:plateThaumium>, null, <ore:plateThaumium>],
	[<ore:plateThaumium>, <ore:gregToolHardHammer>, <ore:plateThaumium>],
	[null, null, null]]);
	
// Thaumaturges Robe
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("cloth_chest", "BASEINFUSION",  100, 
	[], 
	<thaumcraft:cloth_chest>, 
	[[<thaumcraft:fabric>, <ore:plateThaumium>, <thaumcraft:fabric>], 
	[<thaumcraft:fabric>, <ore:plateThaumium>, <thaumcraft:fabric>], 
	[<thaumcraft:fabric>, <thaumcraft:fabric>, <thaumcraft:fabric>]]);

// Thaumaturges Legs
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_legs>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("cloth_legs", "BASEINFUSION",  75, 
	[], 
	<thaumcraft:cloth_chest>, 
	[[<thaumcraft:fabric>, <thaumcraft:fabric>, <thaumcraft:fabric>], 
	[<thaumcraft:fabric>, <ore:plateThaumium>, <thaumcraft:fabric>], 
	[<thaumcraft:fabric>, <ore:plateThaumium>, <thaumcraft:fabric>]]);
	
// Thaumaturges Boots
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_boots>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("cloth_boots", "BASEINFUSION",  50, 
	[], 
	<thaumcraft:cloth_boots>, 
	[[null, null, null], 
	[<thaumcraft:fabric>, <ore:plateThaumium>, <thaumcraft:fabric>], 
	[<thaumcraft:fabric>, <ore:plateThaumium>, <thaumcraft:fabric>]]);

// Boots of the Traveller
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:traveller_boots>);
mods.thaumcraft.Infusion.registerRecipe("traveller_boots", "BOOTSTRAVELLER", <thaumcraft:traveller_boots>, 4, 
	[<aspect:volatus> *25, <aspect:aer> *25, <aspect:motus> *25, <aspect:aqua> *5], 
	<minecraft:leather_boots>, 
	[<ore:oreCrystalAir>, <thaumcraft:fabric>, <minecraft:feather>, <thaumcraft:fabric>, <ore:oreCrystalAir>, <thaumcraft:fabric>, <ore:fish>, <thaumcraft:fabric>]);	
	
// Thaumium Fortress Helm
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:fortress_helm>);
mods.thaumcraft.Infusion.registerRecipe("fortress_helm", "ARMORFORTRESS", <thaumcraft:fortress_helm>, 8, 
	[<aspect:metallum> *32, <aspect:praecantatio> *32, <aspect:praemunio> *32, <aspect:victus> *16], 
	<thaumcraft:thaumium_helm>, 
	[<ore:gemFlawlessEmerald>, <ore:plateGold>, <ore:plateThaumium>, <ore:plateThaumium>,
	 <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateGold>]);

// Thaumium Fortress Cuirass
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:fortress_chest>);
mods.thaumcraft.Infusion.registerRecipe("fortress_chest", "ARMORFORTRESS", <thaumcraft:fortress_chest>, 8, 
	[<aspect:praemunio> *40, <aspect:metallum> *32, <aspect:praecantatio> *32, <aspect:cognitio> *16], 
	<thaumcraft:thaumium_chest>, 
	[<ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>, 
	 <ore:plateGold>, <bloodarsenal:base_item:7>, <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>]);	

// Thaumium Fortress Thigh Guards
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:fortress_legs>);
mods.thaumcraft.Infusion.registerRecipe("fortress_legs", "ARMORFORTRESS", <thaumcraft:fortress_legs>, 8, 
	[<aspect:metallum> *32, <aspect:praecantatio> *32, <aspect:praemunio> *24, <aspect:terra> *16], 
	<thaumcraft:thaumium_legs>, 
	[<thaumcraft:baubles:2>, <ore:plateGold>, <ore:plateThaumium>, <ore:plateThaumium>,  
	 <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateGold>]);	

// Void Helm
recipes.remove(<thaumcraft:void_helm>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_helm", "BASEELDRITCH",  50, 
	[<aspect:perditio> *40, <aspect:terra> *20], 
	<thaumcraft:void_helm>, 
	[[<ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>], 
	[<ore:plateVoid>, <ore:gregToolHardHammer>, <ore:plateVoid>], 
	[null, null, null]]);	 

// Void Chest
recipes.remove(<thaumcraft:void_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_chest", "BASEELDRITCH",  150, 
	[<aspect:perditio> *40, <aspect:terra> *20], 
	<thaumcraft:void_chest>, 
	[[<ore:plateVoid>, <ore:gregToolHardHammer>, <ore:plateVoid>], 
	[<ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>], 
	[<ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>]]);	 
	
// Void Legs
recipes.remove(<thaumcraft:void_legs>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_legs", "BASEELDRITCH",  75, 
	[<aspect:perditio> *40, <aspect:terra> *20], 
	<thaumcraft:void_legs>, 
	[[<ore:plateVoid>, <ore:plateVoid>, <ore:plateVoid>], 
	[<ore:plateVoid>, <ore:gregToolHardHammer>, <ore:plateVoid>], 
	[<ore:plateVoid>, null, <ore:plateVoid>]]);	
	
// Void Boots
recipes.remove(<thaumcraft:void_boots>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("void_boots", "BASEELDRITCH",  50, 
	[<aspect:perditio> *40, <aspect:terra> *20], 
	<thaumcraft:void_boots>, 
	[[null, null, null], 
	[<ore:plateVoid>, null, <ore:plateVoid>], 
	[<ore:plateVoid>, <ore:gregToolHardHammer>, <ore:plateVoid>]]);	

// Void Thaumaturges Helm
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_robe_helm>);
mods.thaumcraft.Infusion.registerRecipe("void_robe_helm", "VOIDROBEARMOR", <thaumcraft:void_robe_helm>, 14, 
	[<aspect:alienis> *24, <aspect:metallum> *24, <aspect:bestia> *24, <aspect:sensus> *24, <aspect:praemunio> *24, <aspect:vacuos> *24, <aspect:praecantatio> *24], 
	<thaumcraft:void_helm>, 
	[<thaumcraft:goggles>, <thaumcraft:fabric>, <ore:plateVoid>, <thaumcraft:fabric>, <ore:gemNetherStar>, <ore:plateThaumium>, 
	<ore:gemNetherStar>, <thaumcraft:fabric>, <ore:plateVoid>, <thaumcraft:fabric>]);
	
// Void Thaumaturges Helm
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_robe_chest>);
mods.thaumcraft.Infusion.registerRecipe("void_robe_chest", "VOIDROBEARMOR", <thaumcraft:void_robe_chest>, 14, 
	[<aspect:alienis> *32, <aspect:metallum> *32, <aspect:bestia> *32, <aspect:sensus> *32, <aspect:praemunio> *32, <aspect:vacuos> *32, <aspect:praecantatio> *32], 
	<thaumcraft:void_chest>, 
	[<thaumcraft:cloth_chest>, <thaumcraft:fabric>, <ore:plateVoid>, <thaumcraft:fabric>,<ore:gemNetherStar>, <ore:plateThaumium>, 
	<ore:gemNetherStar>, <thaumcraft:fabric>, <ore:plateVoid>, <thaumcraft:fabric>]);
	
// Void Thaumaturges Leggings
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:void_robe_legs>);
mods.thaumcraft.Infusion.registerRecipe("void_robe_legs", "VOIDROBEARMOR", <thaumcraft:void_robe_legs>, 14, 
	[<aspect:alienis> *28, <aspect:metallum> *28, <aspect:bestia> *28, <aspect:sensus> *28, <aspect:praemunio> *28, <aspect:vacuos> *28, <aspect:praecantatio> *28], 
	<thaumcraft:void_legs>, 
	[<thaumcraft:cloth_legs>, <thaumcraft:fabric>, <ore:plateVoid>, <thaumcraft:fabric>, <ore:gemNetherStar>, <ore:plateThaumium>, 
	<ore:gemNetherStar>, <thaumcraft:fabric>, <ore:plateVoid>, <thaumcraft:fabric>]);
	
// Mundane Amulet
recipes.remove(<thaumcraft:baubles>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mundane_amulet", "BASEARTIFICE",  20, 
	[<aspect:ignis> *10, <aspect:ordo> *10, <aspect:terra> *5], 
	<thaumcraft:baubles>, 
	[[<ore:wireFineGold>, <ore:wireFineGold>, <ore:wireFineGold>], 
	[<ore:wireFineGold>, <ore:gregToolScrewdriver>, <ore:wireFineGold>], 
	[<ore:screwGold>, <ore:oreCrystalEarth>, <ore:screwGold>]]);	
	
// Mundane Ring
recipes.remove(<thaumcraft:baubles:1>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mundane_ring", "BASEARTIFICE",  10, 
	[<aspect:ignis> *10, <aspect:ordo> *10, <aspect:terra> *5], 
	<thaumcraft:baubles:1>, 
	[[<ore:screwGold>, <ore:stickGold>, <ore:screwGold>], 
	[<ore:stickGold>, <ore:gregToolScrewdriver>, <ore:stickGold>], 
	[<ore:screwGold>, <ore:stickGold>, <ore:screwGold>]]);	
	
// Mundane Belt
recipes.remove(<thaumcraft:baubles:2>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("mundane_belt", "BASEARTIFICE",  30, 
	[<aspect:ignis> *10, <aspect:ordo> *10, <aspect:terra> *5], 
	<thaumcraft:baubles:2>, 
	[[<ore:screwGold>, <ore:gemNetherStar>, <ore:screwGold>], 
	[<minecraft:leather>, <ore:gregToolScrewdriver>, <minecraft:leather>], 
	[<ore:screwGold>, <ore:ringBrass>, <ore:screwGold>]]);	

// Fancy Amulet
recipes.remove(<thaumcraft:baubles:4>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("fancy_amulet", "BASEARTIFICE",  20, 
	[<aspect:ignis> *10, <aspect:ordo> *10, <aspect:terra> *5], 
	<thaumcraft:baubles:4>, 
	[[<ore:wireFineRoseGold>, <ore:wireFineRoseGold>, <ore:wireFineRoseGold>], 
	[<ore:wireFineRoseGold>, <ore:gregToolScrewdriver>, <ore:wireFineRoseGold>], 
	[<ore:screwRoseGold>, <ore:oreCrystalAir>, <ore:screwRoseGold>]]);
	
// Fancy Ring
recipes.remove(<thaumcraft:baubles:5>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("fancy_ring", "BASEARTIFICE",  10, 
	[<aspect:ignis> *10, <aspect:ordo> *10, <aspect:terra> *5], 
	<thaumcraft:baubles:5>, 
	[[<ore:screwRoseGold>, <ore:stickRoseGold>, <ore:screwRoseGold>], 
	[<ore:stickRoseGold>, <ore:gregToolScrewdriver>, <ore:stickRoseGold>], 
	[<ore:screwRoseGold>, <ore:stickRoseGold>, <ore:screwRoseGold>]]);	
	
// Fancy Belt
recipes.remove(<thaumcraft:baubles:2>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("fancy_belt", "BASEARTIFICE",  30, 
	[<aspect:ignis> *10, <aspect:ordo> *10, <aspect:terra> *5], 
	<thaumcraft:baubles:6>, 
	[[<ore:screwRoseGold>, <ore:gemNetherStar>, <ore:screwRoseGold>], 
	[<minecraft:leather>, <ore:gregToolScrewdriver>, <minecraft:leather>], 
	[<ore:screwRoseGold>, <ore:ringTitanium>, <ore:screwRoseGold>]]);	
	
// Amulet of Vis
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:amulet_vis:1>);
mods.thaumcraft.Infusion.registerRecipe("amulet_of_vis", "VISAMULET", <thaumcraft:amulet_vis:1>, 10, 
	[<aspect:potentia> *88, <aspect:praecantatio> *88, <aspect:vacuos> *48, <aspect:auram> *48, <aspect:vitreus> *24], 
	<thaumcraft:baubles>, 
	[<ore:oreCrystalAir>, <ore:gemExquisiteDiamond>, <ore:oreCrystalEarth>, <ore:gemExquisiteDiamond>, 
	<ore:oreCrystalFire>, <ore:gemExquisiteDiamond>, <ore:oreCrystalWater>]);
	
// Cloudstepper Ring
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:cloud_ring>);
mods.thaumcraft.Infusion.registerRecipe("cloud_ring", "VISAMULET", <thaumcraft:cloud_ring>, 4, 
	[<aspect:potentia> *32, <aspect:praecantatio> *16, <aspect:volatus> *16], 
	<thaumcraft:baubles:1>, 
	[<minecraft:feather>, <ore:plateAluminium>, <minecraft:feather>, <ore:plateAluminium>, <minecraft:feather>, <ore:plateAluminium>]);
	
// Charm of Undying
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:charm_undying>);
mods.thaumcraft.Infusion.registerRecipe("charm_undying", "VISAMULET", <thaumcraft:charm_undying>, 4, 
	[<aspect:victus> *32, <aspect:praecantatio> *16, <aspect:ordo> *16], 
	<minecraft:totem_of_undying>, 
	[<ore:plateTitanium>, <bhc:yellow_heart>, <ore:plateTitanium>, <bhc:yellow_heart>]);
	
// Casters Gauntlet
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:caster_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("caster_basic", "BASEAUROMANCY",  100, 
	[<aspect:aer> *64, <aspect:terra> *64, <aspect:ignis> *64, <aspect:aqua> *64, <aspect:ordo> *64, <aspect:perditio> *64], 
	<thaumcraft:caster_basic>, 
	[[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>], 
	[<minecraft:leather>, <thaumcraft:vis_resonator>, <minecraft:leather>], 
	[<minecraft:leather>,<thaumcraft:thaumometer>, <minecraft:leather>]]);
	
// Blank Lesser Focus
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:focus_1>);
mods.thaumcraft.Infusion.registerRecipe("blank_lesser_focus", "BASEAUROMANCY", <thaumcraft:focus_1>, 12, 
	[<aspect:potentia> *64, <aspect:praecantatio> *64, <aspect:auram> *32], 
	<minecraft:nether_star>, 
	[<ore:plateStainlessSteel>, <bloodmagic:slate:1>, <ore:plateStainlessSteel>, <bloodmagic:slate:1>, <ore:plateStainlessSteel>, <bloodmagic:slate:1>, <ore:plateStainlessSteel>]);
	
// Blank Advanced Focus
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:focus_2>);
mods.thaumcraft.Infusion.registerRecipe("blank_advanced_focus", "FOCUSADVANCED", <thaumcraft:focus_2>, 14, 
	[<aspect:potentia> *128, <aspect:praecantatio> *128, <aspect:auram> *64], 
	<gregtech:meta_item_1:32725>, 
	[<ore:plateTitanium>, <bloodmagic:slate:2>, <ore:plateTitanium>, <bloodmagic:slate:2>, <ore:plateTitanium>, <bloodmagic:slate:2>, <ore:plateTitanium>]);
	
// Blank Greater Focus
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:focus_3>);
mods.thaumcraft.Infusion.registerRecipe("blank_greater_focus", "FOCUSGREATER", <thaumcraft:focus_3>, 18, 
	[<aspect:potentia> *256, <aspect:praecantatio> *256, <aspect:auram> *128], 
	<gregtech:meta_item_1:32726>, 
	[<ore:plateOsmiridium>, <bloodmagic:slate:3>, <ore:plateOsmiridium>, <bloodmagic:slate:3>, <ore:plateOsmiridium>, <bloodmagic:slate:3>, <ore:plateOsmiridium>]);
	
// Focus Pouch
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:focus_pouch>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("focus_pouch", "FOCUSPOUCH",  100, 
	[<aspect:terra> *20, <aspect:ordo> *20, <aspect:perditio> *20], 
	<thaumcraft:focus_pouch>, 
	[[<ore:boltGold>, <ore:ringBrass>, <ore:boltGold>], 
	[<minecraft:leather>, <thaumcraft:baubles:2>, <minecraft:leather>], 
	[<minecraft:leather>,<minecraft:leather>, <minecraft:leather>]]);
	
// Golemancers Ball
recipes.remove(<thaumcraft:golem_bell>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("golemancers_ball", "BASEGOLEMANCY",  10, 
	[<aspect:terra> *20, <aspect:ordo> *20, <aspect:perditio> *20], 
	<thaumcraft:golem_bell>, 
	[[<ore:gregToolScrewdriver>, <ore:plateNetherQuartz>, <ore:boltNetherQuartz>], 
	[<ore:screwIron>, <ore:plateNetherQuartz>, <ore:plateNetherQuartz>], 
	[<ore:stickWood>,<ore:screwIron>, <ore:gregToolFile>]]);
	
// Blank Seal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:seal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("blank_seal", "BASEGOLEMANCY",  10, 
	[<aspect:terra> *5, <aspect:ignis> *5, <aspect:ordo> *5], 
	<thaumcraft:seal>, 
	[[<ore:plateThaumium>, <minecraft:netherbrick>, <ore:plateThaumium>], 
	[<minecraft:brick>, <ore:nitor>, <minecraft:brick>], 
	[<ore:plateNetherQuartz>, <minecraft:netherbrick>, <ore:plateNetherQuartz>]]);
	
// Control Seal - Harvest
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:seal:7>);
mods.thaumcraft.Infusion.registerRecipe("seal_harvest", "SEALHARVEST", <thaumcraft:seal:7>, 8, 
	[<aspect:herba> *20, <aspect:victus> *10, <aspect:terra> *10], 
	<thaumcraft:seal>, 
	[<minecraft:nether_star>, <minecraft:wheat_seeds>, <thaumcraft:thaumium_hoe>, <ore:plateGold>]);
	
// Control Seal - Butcher
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:seal:8>);
mods.thaumcraft.Infusion.registerRecipe("seal_butcher", "SEALBUTCHER", <thaumcraft:seal:8>, 12, 
	[<aspect:bestia> *32, <aspect:mortuus> *32, <aspect:victus> *32, <aspect:aversio> *32], 
	<thaumcraft:seal:7>, 
	[<minecraft:nether_star>, <ore:gregToolBlade>, <minecraft:iron_sword>, <thaumcraft:brain>, <minecraft:bow>, <minecraft:arrow>]);
	
// Control Seal - Guard
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:seal:9>);
mods.thaumcraft.Infusion.registerRecipe("seal_guard", "SEALGUARD", <thaumcraft:seal:9>, 8, 
	[<aspect:bestia> *32, <aspect:mortuus> *32, <aspect:victus> *32, <aspect:aversio> *32], 
	<thaumcraft:seal>, 
	[<minecraft:nether_star>, <ore:plateThaumium>, <thaumcraft:thaumium_sword>, <ore:plateGold>]);
	
// Control Seal - Guard
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:seal:10>);
mods.thaumcraft.Infusion.registerRecipe("seal_guard_advanced", "SEALGUARD", <thaumcraft:seal:10>, 12, 
	[<aspect:instrumentum> *32, <aspect:machina> *24, <aspect:praemunio> *24, <aspect:aversio> *16, <aspect:auram> *8, <aspect:ordo> *8], 
	<thaumcraft:seal:9>, 
	[<thaumcraft:elemental_sword>, <thaumcraft:thaumium_helm>, <gregtech:meta_item_1:32724>, <thaumcraft:thaumium_chest>, 
	<thaumcraft:traveller_boots>, <thaumcraft:thaumium_legs>, <gregtech:meta_item_1:32724>, <thaumcraft:brain>]);
	
// Control Seal - Lumberjack
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:seal:11>);
mods.thaumcraft.Infusion.registerRecipe("seal_lumberjack", "SEALLUMBER", <thaumcraft:seal:11>, 12, 
	[<aspect:herba> *32, <aspect:instrumentum> *32, <aspect:potentia> *32, <aspect:terra> *20], 
	<thaumcraft:seal:7>, 
	[<minecraft:nether_star>, <thaumcraft:thaumium_axe>, <thaumcraft:elemental_axe>, <thaumcraft:brain>, <thaumcraft:thaumium_axe>]);
	
// Control Seal - Breaker
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:seal:12>);
mods.thaumcraft.Infusion.registerRecipe("seal_breaker", "SEALBREAK", <thaumcraft:seal:12>, 12, 
	[<aspect:instrumentum> *32, <aspect:machina> *24, <aspect:perditio> *16, <aspect:praecantatio> *8], 
	<thaumcraft:seal:7>, 
	[<thaumcraft:elemental_pick>, <ore:oreCrystalAir>, <thaumcraft:elemental_axe>, <ore:oreCrystalEarth>, <thaumcraft:elemental_shovel>, <ore:oreCrystalFire>]);
	
// Control Seal - Use
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:seal:13>);
mods.thaumcraft.Infusion.registerRecipe("seal_use", "SEALUSE", <thaumcraft:seal:13>, 12, 
	[<aspect:humanus> *20, <aspect:instrumentum> *20, <aspect:machina> *20, <aspect:desiderium> *20], 
	<thaumcraft:seal:5>, 
	[<minecraft:nether_star>, <minecraft:comparator>, <minecraft:lever>, <minecraft:flint_and_steel>, <minecraft:stone_pressure_plate>, <minecraft:shears>]);
